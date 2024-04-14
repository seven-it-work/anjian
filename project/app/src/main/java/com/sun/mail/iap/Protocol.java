package com.sun.mail.iap;

import com.cyjh.common.util.C1176s;
import com.sun.mail.util.SocketFetcher;
import com.sun.mail.util.TraceInputStream;
import com.sun.mail.util.TraceOutputStream;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Properties;
import java.util.Vector;

/* loaded from: classes.dex */
public class Protocol {
    private static final byte[] CRLF = {C2489bg.f9368k, 10};
    private boolean connected;
    protected boolean debug;
    private volatile Vector handlers;
    protected String host;
    private volatile ResponseInputStream input;
    protected PrintStream out;
    private volatile DataOutputStream output;
    protected String prefix;
    protected Properties props;
    protected boolean quote;
    private Socket socket;
    private int tagCounter;
    private volatile long timestamp;
    private TraceInputStream traceInput;
    private TraceOutputStream traceOutput;

    public Protocol(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        this.connected = false;
        this.tagCounter = 0;
        this.handlers = null;
        this.host = "localhost";
        this.debug = z;
        this.quote = false;
        this.out = System.out;
        this.traceInput = new TraceInputStream(inputStream, System.out);
        this.traceInput.setTrace(z);
        this.traceInput.setQuote(this.quote);
        this.input = new ResponseInputStream(this.traceInput);
        this.traceOutput = new TraceOutputStream(outputStream, System.out);
        this.traceOutput.setTrace(z);
        this.traceOutput.setQuote(this.quote);
        this.output = new DataOutputStream(new BufferedOutputStream(this.traceOutput));
        this.timestamp = System.currentTimeMillis();
    }

    public Protocol(String str, int i, boolean z, PrintStream printStream, Properties properties, String str2, boolean z2) throws IOException, ProtocolException {
        boolean z3 = false;
        this.connected = false;
        this.tagCounter = 0;
        this.handlers = null;
        try {
            this.host = str;
            this.debug = z;
            this.out = printStream;
            this.props = properties;
            this.prefix = str2;
            this.socket = SocketFetcher.getSocket(str, i, properties, str2, z2);
            String property = properties.getProperty("mail.debug.quote");
            if (property != null && property.equalsIgnoreCase("true")) {
                z3 = true;
            }
            this.quote = z3;
            initStreams(printStream);
            processGreeting(readResponse());
            this.timestamp = System.currentTimeMillis();
            this.connected = true;
        } finally {
            if (!this.connected) {
                disconnect();
            }
        }
    }

    private void initStreams(PrintStream printStream) throws IOException {
        this.traceInput = new TraceInputStream(this.socket.getInputStream(), printStream);
        this.traceInput.setTrace(this.debug);
        this.traceInput.setQuote(this.quote);
        this.input = new ResponseInputStream(this.traceInput);
        this.traceOutput = new TraceOutputStream(this.socket.getOutputStream(), printStream);
        this.traceOutput.setTrace(this.debug);
        this.traceOutput.setQuote(this.quote);
        this.output = new DataOutputStream(new BufferedOutputStream(this.traceOutput));
    }

    public synchronized void addResponseHandler(ResponseHandler responseHandler) {
        if (this.handlers == null) {
            this.handlers = new Vector();
        }
        this.handlers.addElement(responseHandler);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x001d -> B:8:0x001e). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized com.sun.mail.iap.Response[] command(java.lang.String r5, com.sun.mail.iap.Argument r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.Vector r0 = new java.util.Vector     // Catch: java.lang.Throwable -> L56
            r0.<init>()     // Catch: java.lang.Throwable -> L56
            r1 = 0
            r2 = 0
            r3 = 1
            java.lang.String r5 = r4.writeCommand(r5, r6)     // Catch: java.lang.Exception -> Lf com.sun.mail.iap.LiteralException -> L15 java.lang.Throwable -> L56
            r2 = r5
            goto L1e
        Lf:
            r5 = move-exception
            com.sun.mail.iap.Response r5 = com.sun.mail.iap.Response.byeResponse(r5)     // Catch: java.lang.Throwable -> L56
            goto L1a
        L15:
            r5 = move-exception
            com.sun.mail.iap.Response r5 = r5.getResponse()     // Catch: java.lang.Throwable -> L56
        L1a:
            r0.addElement(r5)     // Catch: java.lang.Throwable -> L56
        L1d:
            r1 = 1
        L1e:
            if (r1 == 0) goto L31
            int r5 = r0.size()     // Catch: java.lang.Throwable -> L56
            com.sun.mail.iap.Response[] r5 = new com.sun.mail.iap.Response[r5]     // Catch: java.lang.Throwable -> L56
            r0.copyInto(r5)     // Catch: java.lang.Throwable -> L56
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L56
            r4.timestamp = r0     // Catch: java.lang.Throwable -> L56
            monitor-exit(r4)
            return r5
        L31:
            com.sun.mail.iap.Response r5 = r4.readResponse()     // Catch: com.sun.mail.iap.ProtocolException -> L1e java.io.IOException -> L36 java.lang.Throwable -> L56
            goto L3b
        L36:
            r5 = move-exception
            com.sun.mail.iap.Response r5 = com.sun.mail.iap.Response.byeResponse(r5)     // Catch: java.lang.Throwable -> L56
        L3b:
            r0.addElement(r5)     // Catch: java.lang.Throwable -> L56
            boolean r6 = r5.isBYE()     // Catch: java.lang.Throwable -> L56
            if (r6 == 0) goto L45
            r1 = 1
        L45:
            boolean r6 = r5.isTagged()     // Catch: java.lang.Throwable -> L56
            if (r6 == 0) goto L1e
            java.lang.String r5 = r5.getTag()     // Catch: java.lang.Throwable -> L56
            boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L56
            if (r5 == 0) goto L1e
            goto L1d
        L56:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.iap.Protocol.command(java.lang.String, com.sun.mail.iap.Argument):com.sun.mail.iap.Response[]");
    }

    public synchronized void disconnect() {
        if (this.socket != null) {
            try {
                this.socket.close();
            } catch (IOException unused) {
            }
            this.socket = null;
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        disconnect();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ResponseInputStream getInputStream() {
        return this.input;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OutputStream getOutputStream() {
        return this.output;
    }

    public ByteArray getResponseBuffer() {
        return null;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void handleResult(Response response) throws ProtocolException {
        if (response.isOK()) {
            return;
        }
        if (response.isNO()) {
            throw new CommandFailedException(response);
        }
        if (response.isBAD()) {
            throw new BadCommandException(response);
        }
        if (response.isBYE()) {
            disconnect();
            throw new ConnectionException(this, response);
        }
    }

    public void notifyResponseHandlers(Response[] responseArr) {
        if (this.handlers == null) {
            return;
        }
        for (Response response : responseArr) {
            if (response != null) {
                int size = this.handlers.size();
                if (size == 0) {
                    return;
                }
                Object[] objArr = new Object[size];
                this.handlers.copyInto(objArr);
                for (int i = 0; i < size; i++) {
                    ((ResponseHandler) objArr[i]).handleResponse(response);
                }
            }
        }
    }

    public void processGreeting(Response response) throws ProtocolException {
        if (response.isBYE()) {
            throw new ConnectionException(this, response);
        }
    }

    public Response readResponse() throws IOException, ProtocolException {
        return new Response(this);
    }

    public synchronized void removeResponseHandler(ResponseHandler responseHandler) {
        if (this.handlers != null) {
            this.handlers.removeElement(responseHandler);
        }
    }

    public void simpleCommand(String str, Argument argument) throws ProtocolException {
        Response[] command = command(str, argument);
        notifyResponseHandlers(command);
        handleResult(command[command.length - 1]);
    }

    public synchronized void startTLS(String str) throws IOException, ProtocolException {
        simpleCommand(str, null);
        this.socket = SocketFetcher.startTLS(this.socket, this.props, this.prefix);
        initStreams(this.out);
    }

    public synchronized boolean supportsNonSyncLiterals() {
        return false;
    }

    public String writeCommand(String str, Argument argument) throws IOException, ProtocolException {
        StringBuilder sb = new StringBuilder("A");
        int i = this.tagCounter;
        this.tagCounter = i + 1;
        sb.append(Integer.toString(i, 10));
        String sb2 = sb.toString();
        this.output.writeBytes(String.valueOf(sb2) + C1176s.a.f4108a + str);
        if (argument != null) {
            this.output.write(32);
            argument.write(this);
        }
        this.output.write(CRLF);
        this.output.flush();
        return sb2;
    }
}
