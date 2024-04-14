package javax.mail;

import com.umeng.commonsdk.proguard.C2489bg;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.BitSet;
import java.util.Locale;

/* loaded from: classes.dex */
public class URLName {
    static final int caseDiff = 32;
    private static boolean doEncode = true;
    static BitSet dontNeedEncoding;
    private String file;
    protected String fullURL;
    private int hashCode;
    private String host;
    private InetAddress hostAddress;
    private boolean hostAddressKnown;
    private String password;
    private int port;
    private String protocol;
    private String ref;
    private String username;

    static {
        try {
            doEncode = !Boolean.getBoolean("mail.URLName.dontencode");
        } catch (Exception unused) {
        }
        dontNeedEncoding = new BitSet(256);
        for (int i = 97; i <= 122; i++) {
            dontNeedEncoding.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            dontNeedEncoding.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            dontNeedEncoding.set(i3);
        }
        dontNeedEncoding.set(32);
        dontNeedEncoding.set(45);
        dontNeedEncoding.set(95);
        dontNeedEncoding.set(46);
        dontNeedEncoding.set(42);
    }

    public URLName(String str) {
        this.hostAddressKnown = false;
        this.port = -1;
        this.hashCode = 0;
        parseString(str);
    }

    public URLName(String str, String str2, int i, String str3, String str4, String str5) {
        String str6;
        int indexOf;
        this.hostAddressKnown = false;
        this.port = -1;
        this.hashCode = 0;
        this.protocol = str;
        this.host = str2;
        this.port = i;
        if (str3 == null || (indexOf = str3.indexOf(35)) == -1) {
            this.file = str3;
            str6 = null;
        } else {
            this.file = str3.substring(0, indexOf);
            str6 = str3.substring(indexOf + 1);
        }
        this.ref = str6;
        this.username = doEncode ? encode(str4) : str4;
        this.password = doEncode ? encode(str5) : str5;
    }

    public URLName(URL url) {
        this(url.toString());
    }

    private static String _encode(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(10);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (dontNeedEncoding.get(charAt)) {
                if (charAt == ' ') {
                    charAt = '+';
                }
                stringBuffer.append(charAt);
            } else {
                try {
                    outputStreamWriter.write(charAt);
                    outputStreamWriter.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    for (int i2 = 0; i2 < byteArray.length; i2++) {
                        stringBuffer.append('%');
                        char forDigit = Character.forDigit((byteArray[i2] >> 4) & 15, 16);
                        if (Character.isLetter(forDigit)) {
                            forDigit = (char) (forDigit - ' ');
                        }
                        stringBuffer.append(forDigit);
                        char forDigit2 = Character.forDigit(byteArray[i2] & C2489bg.f9370m, 16);
                        if (Character.isLetter(forDigit2)) {
                            forDigit2 = (char) (forDigit2 - ' ');
                        }
                        stringBuffer.append(forDigit2);
                    }
                } catch (IOException unused) {
                }
                byteArrayOutputStream.reset();
            }
        }
        return stringBuffer.toString();
    }

    static String decode(String str) {
        if (str == null) {
            return null;
        }
        if (indexOfAny(str, "+%") == -1) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != '%') {
                if (charAt == '+') {
                    charAt = ' ';
                }
                stringBuffer.append(charAt);
            } else {
                try {
                    stringBuffer.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                    i += 2;
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException();
                }
            }
            i++;
        }
        String stringBuffer2 = stringBuffer.toString();
        try {
            return new String(stringBuffer2.getBytes("8859_1"));
        } catch (UnsupportedEncodingException unused2) {
            return stringBuffer2;
        }
    }

    static String encode(String str) {
        if (str == null) {
            return null;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == ' ' || !dontNeedEncoding.get(charAt)) {
                return _encode(str);
            }
        }
        return str;
    }

    private synchronized InetAddress getHostAddress() {
        if (this.hostAddressKnown) {
            return this.hostAddress;
        }
        if (this.host == null) {
            return null;
        }
        try {
            this.hostAddress = InetAddress.getByName(this.host);
        } catch (UnknownHostException unused) {
            this.hostAddress = null;
        }
        this.hostAddressKnown = true;
        return this.hostAddress;
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    private static int indexOfAny(String str, String str2, int i) {
        try {
            int length = str.length();
            while (i < length) {
                if (str2.indexOf(str.charAt(i)) >= 0) {
                    return i;
                }
                i++;
            }
            return -1;
        } catch (StringIndexOutOfBoundsException unused) {
            return -1;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof URLName)) {
            return false;
        }
        URLName uRLName = (URLName) obj;
        if (uRLName.protocol == null || !uRLName.protocol.equals(this.protocol)) {
            return false;
        }
        InetAddress hostAddress = getHostAddress();
        InetAddress hostAddress2 = uRLName.getHostAddress();
        if (hostAddress == null || hostAddress2 == null) {
            if (this.host == null || uRLName.host == null) {
                if (this.host != uRLName.host) {
                    return false;
                }
            } else if (!this.host.equalsIgnoreCase(uRLName.host)) {
                return false;
            }
        } else if (!hostAddress.equals(hostAddress2)) {
            return false;
        }
        if (this.username == uRLName.username || (this.username != null && this.username.equals(uRLName.username))) {
            return (this.file == null ? "" : this.file).equals(uRLName.file == null ? "" : uRLName.file) && this.port == uRLName.port;
        }
        return false;
    }

    public String getFile() {
        return this.file;
    }

    public String getHost() {
        return this.host;
    }

    public String getPassword() {
        return doEncode ? decode(this.password) : this.password;
    }

    public int getPort() {
        return this.port;
    }

    public String getProtocol() {
        return this.protocol;
    }

    public String getRef() {
        return this.ref;
    }

    public URL getURL() throws MalformedURLException {
        return new URL(getProtocol(), getHost(), getPort(), getFile());
    }

    public String getUsername() {
        return doEncode ? decode(this.username) : this.username;
    }

    public int hashCode() {
        if (this.hashCode != 0) {
            return this.hashCode;
        }
        if (this.protocol != null) {
            this.hashCode += this.protocol.hashCode();
        }
        InetAddress hostAddress = getHostAddress();
        if (hostAddress != null) {
            this.hashCode += hostAddress.hashCode();
        } else if (this.host != null) {
            this.hashCode += this.host.toLowerCase(Locale.ENGLISH).hashCode();
        }
        if (this.username != null) {
            this.hashCode += this.username.hashCode();
        }
        if (this.file != null) {
            this.hashCode += this.file.hashCode();
        }
        this.hashCode += this.port;
        return this.hashCode;
    }

    protected void parseString(String str) {
        int indexOf;
        String substring;
        this.password = null;
        this.username = null;
        this.host = null;
        this.ref = null;
        this.file = null;
        this.protocol = null;
        this.port = -1;
        int length = str.length();
        int indexOf2 = str.indexOf(58);
        if (indexOf2 != -1) {
            this.protocol = str.substring(0, indexOf2);
        }
        int i = indexOf2 + 1;
        if (str.regionMatches(i, "//", 0, 2)) {
            int i2 = indexOf2 + 3;
            int indexOf3 = str.indexOf(47, i2);
            if (indexOf3 != -1) {
                substring = str.substring(i2, indexOf3);
                int i3 = indexOf3 + 1;
                this.file = i3 < length ? str.substring(i3) : "";
            } else {
                substring = str.substring(i2);
            }
            int indexOf4 = substring.indexOf(64);
            if (indexOf4 != -1) {
                String substring2 = substring.substring(0, indexOf4);
                substring = substring.substring(indexOf4 + 1);
                int indexOf5 = substring2.indexOf(58);
                if (indexOf5 != -1) {
                    this.username = substring2.substring(0, indexOf5);
                    this.password = substring2.substring(indexOf5 + 1);
                } else {
                    this.username = substring2;
                }
            }
            int indexOf6 = (substring.length() <= 0 || substring.charAt(0) != '[') ? substring.indexOf(58) : substring.indexOf(58, substring.indexOf(93));
            if (indexOf6 != -1) {
                String substring3 = substring.substring(indexOf6 + 1);
                if (substring3.length() > 0) {
                    try {
                        this.port = Integer.parseInt(substring3);
                    } catch (NumberFormatException unused) {
                        this.port = -1;
                    }
                }
                this.host = substring.substring(0, indexOf6);
            } else {
                this.host = substring;
            }
        } else if (i < length) {
            this.file = str.substring(i);
        }
        if (this.file == null || (indexOf = this.file.indexOf(35)) == -1) {
            return;
        }
        this.ref = this.file.substring(indexOf + 1);
        this.file = this.file.substring(0, indexOf);
    }

    public String toString() {
        if (this.fullURL == null) {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.protocol != null) {
                stringBuffer.append(this.protocol);
                stringBuffer.append(":");
            }
            if (this.username != null || this.host != null) {
                stringBuffer.append("//");
                if (this.username != null) {
                    stringBuffer.append(this.username);
                    if (this.password != null) {
                        stringBuffer.append(":");
                        stringBuffer.append(this.password);
                    }
                    stringBuffer.append("@");
                }
                if (this.host != null) {
                    stringBuffer.append(this.host);
                }
                if (this.port != -1) {
                    stringBuffer.append(":");
                    stringBuffer.append(Integer.toString(this.port));
                }
                if (this.file != null) {
                    stringBuffer.append("/");
                }
            }
            if (this.file != null) {
                stringBuffer.append(this.file);
            }
            if (this.ref != null) {
                stringBuffer.append("#");
                stringBuffer.append(this.ref);
            }
            this.fullURL = stringBuffer.toString();
        }
        return this.fullURL;
    }
}
