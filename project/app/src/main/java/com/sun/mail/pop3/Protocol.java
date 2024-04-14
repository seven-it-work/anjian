package com.sun.mail.pop3;

import com.cyjh.common.util.C1176s;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.SocketFetcher;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
class Protocol {
    private static final String CRLF = "\r\n";
    private static final int POP3_PORT = 110;
    private static char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private String apopChallenge;
    private boolean debug;
    private DataInputStream input;
    private PrintStream out;
    private PrintWriter output;
    private Socket socket;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Protocol(String str, int i, boolean z, PrintStream printStream, Properties properties, String str2, boolean z2) throws IOException {
        boolean z3 = false;
        this.debug = false;
        this.apopChallenge = null;
        this.debug = z;
        this.out = printStream;
        String property = properties.getProperty(String.valueOf(str2) + ".apop.enable");
        if (property != null && property.equalsIgnoreCase("true")) {
            z3 = true;
        }
        i = i == -1 ? 110 : i;
        if (z) {
            try {
                printStream.println("DEBUG POP3: connecting to host \"" + str + "\", port " + i + ", isSSL " + z2);
            } catch (IOException e) {
                try {
                    this.socket.close();
                } catch (Throwable unused) {
                }
                throw e;
            }
        }
        this.socket = SocketFetcher.getSocket(str, i, properties, str2, z2);
        this.input = new DataInputStream(new BufferedInputStream(this.socket.getInputStream()));
        this.output = new PrintWriter(new BufferedWriter(new OutputStreamWriter(this.socket.getOutputStream(), "iso-8859-1")));
        Response simpleCommand = simpleCommand(null);
        if (!simpleCommand.f8853ok) {
            try {
                this.socket.close();
            } catch (Throwable unused2) {
            }
            throw new IOException("Connect failed");
        }
        if (z3) {
            int indexOf = simpleCommand.data.indexOf(60);
            int indexOf2 = simpleCommand.data.indexOf(62, indexOf);
            if (indexOf != -1 && indexOf2 != -1) {
                this.apopChallenge = simpleCommand.data.substring(indexOf, indexOf2 + 1);
            }
            if (z) {
                printStream.println("DEBUG POP3: APOP challenge: " + this.apopChallenge);
            }
        }
    }

    private String getDigest(String str) {
        try {
            return toHex(MessageDigest.getInstance("MD5").digest((String.valueOf(this.apopChallenge) + str).getBytes("iso-8859-1")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private Response multilineCommand(String str, int i) throws IOException {
        int read;
        Response simpleCommand = simpleCommand(str);
        if (!simpleCommand.f8853ok) {
            return simpleCommand;
        }
        SharedByteArrayOutputStream sharedByteArrayOutputStream = new SharedByteArrayOutputStream(i);
        int i2 = 10;
        while (true) {
            read = this.input.read();
            if (read < 0) {
                break;
            }
            if (i2 == 10 && read == 46) {
                if (this.debug) {
                    this.out.write(read);
                }
                i2 = this.input.read();
                if (i2 == 13) {
                    if (this.debug) {
                        this.out.write(i2);
                    }
                    read = this.input.read();
                    if (this.debug) {
                        this.out.write(read);
                    }
                }
            } else {
                i2 = read;
            }
            sharedByteArrayOutputStream.write(i2);
            if (this.debug) {
                this.out.write(i2);
            }
        }
        if (read < 0) {
            throw new EOFException("EOF on socket");
        }
        simpleCommand.bytes = sharedByteArrayOutputStream.toStream();
        return simpleCommand;
    }

    private Response simpleCommand(String str) throws IOException {
        if (this.socket == null) {
            throw new IOException("Folder is closed");
        }
        if (str != null) {
            if (this.debug) {
                this.out.println("C: " + str);
            }
            this.output.print(String.valueOf(str) + "\r\n");
            this.output.flush();
        }
        String readLine = this.input.readLine();
        if (readLine == null) {
            if (this.debug) {
                this.out.println("S: EOF");
            }
            throw new EOFException("EOF on socket");
        }
        if (this.debug) {
            this.out.println("S: " + readLine);
        }
        Response response = new Response();
        if (readLine.startsWith("+OK")) {
            response.f8853ok = true;
        } else {
            if (!readLine.startsWith("-ERR")) {
                throw new IOException("Unexpected response: " + readLine);
            }
            response.f8853ok = false;
        }
        int indexOf = readLine.indexOf(32);
        if (indexOf >= 0) {
            response.data = readLine.substring(indexOf + 1);
        }
        return response;
    }

    private static String toHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = b2 & 255;
            int i3 = i + 1;
            cArr[i] = digits[i2 >> 4];
            i = i3 + 1;
            cArr[i3] = digits[i2 & 15];
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean dele(int i) throws IOException {
        return simpleCommand("DELE " + i).f8853ok;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.socket != null) {
            quit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized int list(int i) throws IOException {
        int i2;
        Response simpleCommand = simpleCommand("LIST " + i);
        if (simpleCommand.f8853ok && simpleCommand.data != null) {
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(simpleCommand.data);
                stringTokenizer.nextToken();
                i2 = Integer.parseInt(stringTokenizer.nextToken());
            } catch (Exception unused) {
            }
        }
        i2 = -1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized InputStream list() throws IOException {
        return multilineCommand("LIST", 128).bytes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String login(String str, String str2) throws IOException {
        String str3;
        String digest = this.apopChallenge != null ? getDigest(str2) : null;
        if (this.apopChallenge == null || digest == null) {
            Response simpleCommand = simpleCommand("USER " + str);
            if (!simpleCommand.f8853ok) {
                if (simpleCommand.data != null) {
                    return simpleCommand.data;
                }
                return "USER command failed";
            }
            str3 = "PASS " + str2;
        } else {
            str3 = "APOP " + str + C1176s.a.f4108a + digest;
        }
        Response simpleCommand2 = simpleCommand(str3);
        if (simpleCommand2.f8853ok) {
            return null;
        }
        if (simpleCommand2.data != null) {
            return simpleCommand2.data;
        }
        return "login failed";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean noop() throws IOException {
        return simpleCommand("NOOP").f8853ok;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean quit() throws IOException {
        boolean z;
        try {
            z = simpleCommand("QUIT").f8853ok;
            try {
                this.socket.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                this.socket.close();
                throw th;
            } finally {
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized InputStream retr(int i, int i2) throws IOException {
        return multilineCommand("RETR " + i, i2).bytes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean rset() throws IOException {
        return simpleCommand("RSET").f8853ok;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Status stat() throws IOException {
        Status status;
        Response simpleCommand = simpleCommand("STAT");
        status = new Status();
        if (simpleCommand.f8853ok && simpleCommand.data != null) {
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(simpleCommand.data);
                status.total = Integer.parseInt(stringTokenizer.nextToken());
                status.size = Integer.parseInt(stringTokenizer.nextToken());
            } catch (Exception unused) {
            }
        }
        return status;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized InputStream top(int i, int i2) throws IOException {
        return multilineCommand("TOP " + i + C1176s.a.f4108a + i2, 0).bytes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String uidl(int i) throws IOException {
        Response simpleCommand = simpleCommand("UIDL " + i);
        if (!simpleCommand.f8853ok) {
            return null;
        }
        int indexOf = simpleCommand.data.indexOf(32);
        if (indexOf <= 0) {
            return null;
        }
        return simpleCommand.data.substring(indexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean uidl(String[] strArr) throws IOException {
        int parseInt;
        Response multilineCommand = multilineCommand("UIDL", strArr.length * 15);
        if (!multilineCommand.f8853ok) {
            return false;
        }
        LineInputStream lineInputStream = new LineInputStream(multilineCommand.bytes);
        while (true) {
            String readLine = lineInputStream.readLine();
            if (readLine == null) {
                return true;
            }
            int indexOf = readLine.indexOf(32);
            if (indexOf > 0 && indexOf < readLine.length() && (parseInt = Integer.parseInt(readLine.substring(0, indexOf))) > 0 && parseInt <= strArr.length) {
                strArr[parseInt - 1] = readLine.substring(indexOf + 1);
            }
        }
    }
}
