package javax.mail.internet;

import com.cyjh.common.util.C1176s;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.util.CharsetUtils;
import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import com.sun.mail.util.BEncoderStream;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.QEncoderStream;
import com.sun.mail.util.QPDecoderStream;
import com.sun.mail.util.QPEncoderStream;
import com.sun.mail.util.UUDecoderStream;
import com.sun.mail.util.UUEncoderStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Hashtable;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.MessagingException;
import org.apache.commons.io.IOUtils;
import org.apache.commons.mail.EmailConstants;

/* loaded from: classes.dex */
public class MimeUtility {
    public static final int ALL = -1;
    static final int ALL_ASCII = 1;
    static final int MOSTLY_ASCII = 2;
    static final int MOSTLY_NONASCII = 3;
    private static boolean decodeStrict = true;
    private static String defaultJavaCharset = null;
    private static String defaultMIMECharset = null;
    private static boolean encodeEolStrict = false;
    private static boolean foldEncodedWords = false;
    private static boolean foldText = true;
    private static Hashtable java2mime;
    private static Hashtable mime2java;

    static {
        InputStream inputStream;
        Throwable th;
        try {
            String property = System.getProperty("mail.mime.decodetext.strict");
            boolean z = true;
            decodeStrict = property == null || !property.equalsIgnoreCase("false");
            String property2 = System.getProperty("mail.mime.encodeeol.strict");
            encodeEolStrict = property2 != null && property2.equalsIgnoreCase("true");
            String property3 = System.getProperty("mail.mime.foldencodedwords");
            foldEncodedWords = property3 != null && property3.equalsIgnoreCase("true");
            String property4 = System.getProperty("mail.mime.foldtext");
            if (property4 != null && property4.equalsIgnoreCase("false")) {
                z = false;
            }
            foldText = z;
        } catch (SecurityException unused) {
        }
        java2mime = new Hashtable(40);
        mime2java = new Hashtable(10);
        try {
            InputStream resourceAsStream = MimeUtility.class.getResourceAsStream("/META-INF/javamail.charset.map");
            if (resourceAsStream != null) {
                try {
                    inputStream = new LineInputStream(resourceAsStream);
                } catch (Throwable th2) {
                    inputStream = resourceAsStream;
                    th = th2;
                }
                try {
                    loadMappings((LineInputStream) inputStream, java2mime);
                    loadMappings((LineInputStream) inputStream, mime2java);
                    inputStream.close();
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
            }
        } catch (Exception unused3) {
        }
        if (java2mime.isEmpty()) {
            java2mime.put("8859_1", CharsetUtils.DEFAULT_ENCODING_CHARSET);
            java2mime.put("iso8859_1", CharsetUtils.DEFAULT_ENCODING_CHARSET);
            java2mime.put("iso8859-1", CharsetUtils.DEFAULT_ENCODING_CHARSET);
            java2mime.put("8859_2", "ISO-8859-2");
            java2mime.put("iso8859_2", "ISO-8859-2");
            java2mime.put("iso8859-2", "ISO-8859-2");
            java2mime.put("8859_3", "ISO-8859-3");
            java2mime.put("iso8859_3", "ISO-8859-3");
            java2mime.put("iso8859-3", "ISO-8859-3");
            java2mime.put("8859_4", "ISO-8859-4");
            java2mime.put("iso8859_4", "ISO-8859-4");
            java2mime.put("iso8859-4", "ISO-8859-4");
            java2mime.put("8859_5", "ISO-8859-5");
            java2mime.put("iso8859_5", "ISO-8859-5");
            java2mime.put("iso8859-5", "ISO-8859-5");
            java2mime.put("8859_6", "ISO-8859-6");
            java2mime.put("iso8859_6", "ISO-8859-6");
            java2mime.put("iso8859-6", "ISO-8859-6");
            java2mime.put("8859_7", "ISO-8859-7");
            java2mime.put("iso8859_7", "ISO-8859-7");
            java2mime.put("iso8859-7", "ISO-8859-7");
            java2mime.put("8859_8", "ISO-8859-8");
            java2mime.put("iso8859_8", "ISO-8859-8");
            java2mime.put("iso8859-8", "ISO-8859-8");
            java2mime.put("8859_9", "ISO-8859-9");
            java2mime.put("iso8859_9", "ISO-8859-9");
            java2mime.put("iso8859-9", "ISO-8859-9");
            java2mime.put("sjis", "Shift_JIS");
            java2mime.put("jis", "ISO-2022-JP");
            java2mime.put("iso2022jp", "ISO-2022-JP");
            java2mime.put("euc_jp", "euc-jp");
            java2mime.put("koi8_r", "koi8-r");
            java2mime.put("euc_cn", "euc-cn");
            java2mime.put("euc_tw", "euc-tw");
            java2mime.put("euc_kr", "euc-kr");
        }
        if (mime2java.isEmpty()) {
            mime2java.put("iso-2022-cn", "ISO2022CN");
            mime2java.put("iso-2022-kr", "ISO2022KR");
            mime2java.put("utf-8", "UTF8");
            mime2java.put("utf8", "UTF8");
            mime2java.put("ja_jp.iso2022-7", "ISO2022JP");
            mime2java.put("ja_jp.eucjp", "EUCJIS");
            mime2java.put("euc-kr", "KSC5601");
            mime2java.put("euckr", "KSC5601");
            mime2java.put("us-ascii", CharsetUtils.DEFAULT_ENCODING_CHARSET);
            mime2java.put("x-us-ascii", CharsetUtils.DEFAULT_ENCODING_CHARSET);
        }
    }

    private MimeUtility() {
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static int checkAscii(java.io.InputStream r18, int r19, boolean r20) {
        /*
            r0 = r19
            boolean r2 = javax.mail.internet.MimeUtility.encodeEolStrict
            r4 = 0
            if (r2 == 0) goto Lb
            if (r20 == 0) goto Lb
            r2 = 1
            goto Lc
        Lb:
            r2 = 0
        Lc:
            r5 = 0
            r6 = -1
            r7 = 4096(0x1000, float:5.74E-42)
            if (r0 == 0) goto L1c
            if (r0 != r6) goto L15
            goto L1a
        L15:
            int r5 = java.lang.Math.min(r0, r7)
            r7 = r5
        L1a:
            byte[] r5 = new byte[r7]
        L1c:
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
        L21:
            if (r0 != 0) goto L25
            goto L7f
        L25:
            r14 = r18
            int r15 = r14.read(r5, r4, r7)     // Catch: java.io.IOException -> L7f
            if (r15 != r6) goto L2f
            goto L7f
        L2f:
            r16 = r12
            r12 = r10
            r10 = r9
            r9 = r8
            r8 = 0
        L35:
            if (r8 < r15) goto L41
            if (r0 == r6) goto L3a
            int r0 = r0 - r15
        L3a:
            r8 = r9
            r9 = r10
            r10 = r12
            r12 = r16
            r4 = 0
            goto L21
        L41:
            r6 = r5[r8]     // Catch: java.io.IOException -> L7c
            r6 = r6 & 255(0xff, float:3.57E-43)
            r3 = 10
            r13 = 13
            if (r2 == 0) goto L54
            if (r4 != r13) goto L4f
            if (r6 != r3) goto L53
        L4f:
            if (r4 == r13) goto L54
            if (r6 != r3) goto L54
        L53:
            r12 = 1
        L54:
            if (r6 == r13) goto L66
            if (r6 != r3) goto L59
            goto L66
        L59:
            int r4 = r16 + 1
            r3 = 998(0x3e6, float:1.398E-42)
            if (r4 <= r3) goto L63
            r16 = r4
            r11 = 1
            goto L68
        L63:
            r16 = r4
            goto L68
        L66:
            r16 = 0
        L68:
            boolean r3 = nonascii(r6)     // Catch: java.io.IOException -> L7c
            if (r3 == 0) goto L75
            if (r20 == 0) goto L72
            r3 = 3
            return r3
        L72:
            int r10 = r10 + 1
            goto L77
        L75:
            int r9 = r9 + 1
        L77:
            int r8 = r8 + 1
            r4 = r6
            r6 = -1
            goto L35
        L7c:
            r8 = r9
            r9 = r10
            r10 = r12
        L7f:
            if (r0 != 0) goto L85
            if (r20 == 0) goto L85
            r0 = 3
            return r0
        L85:
            r0 = 3
            r1 = 2
            if (r9 != 0) goto L91
            if (r10 == 0) goto L8c
            return r0
        L8c:
            if (r11 == 0) goto L8f
            return r1
        L8f:
            r0 = 1
            return r0
        L91:
            if (r8 <= r9) goto L94
            return r1
        L94:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeUtility.checkAscii(java.io.InputStream, int, boolean):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkAscii(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (nonascii(str.charAt(i3))) {
                i++;
            } else {
                i2++;
            }
        }
        if (i == 0) {
            return 1;
        }
        return i2 > i ? 2 : 3;
    }

    static int checkAscii(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (byte b2 : bArr) {
            if (nonascii(b2 & 255)) {
                i++;
            } else {
                i2++;
            }
        }
        if (i == 0) {
            return 1;
        }
        return i2 > i ? 2 : 3;
    }

    public static InputStream decode(InputStream inputStream, String str) throws MessagingException {
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64DecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPDecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new UUDecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase(MIME.ENC_BINARY) || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase(MIME.ENC_8BIT)) {
            return inputStream;
        }
        throw new MessagingException("Unknown encoding: " + str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String decodeInnerWords(java.lang.String r5) throws java.io.UnsupportedEncodingException {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            r1 = 0
        L6:
            java.lang.String r2 = "=?"
            int r2 = r5.indexOf(r2, r1)
            if (r2 >= 0) goto Lf
            goto L41
        Lf:
            java.lang.String r3 = r5.substring(r1, r2)
            r0.append(r3)
            int r3 = r2 + 2
            r4 = 63
            int r3 = r5.indexOf(r4, r3)
            if (r3 < 0) goto L41
            int r3 = r3 + 1
            int r3 = r5.indexOf(r4, r3)
            if (r3 < 0) goto L41
            java.lang.String r4 = "?="
            int r3 = r3 + 1
            int r3 = r5.indexOf(r4, r3)
            if (r3 < 0) goto L41
            int r1 = r3 + 2
            java.lang.String r2 = r5.substring(r2, r1)
            java.lang.String r3 = decodeWord(r2)     // Catch: javax.mail.internet.ParseException -> L3d
            r2 = r3
        L3d:
            r0.append(r2)
            goto L6
        L41:
            if (r1 != 0) goto L44
            return r5
        L44:
            int r2 = r5.length()
            if (r1 >= r2) goto L51
            java.lang.String r5 = r5.substring(r1)
            r0.append(r5)
        L51:
            java.lang.String r5 = r0.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeUtility.decodeInnerWords(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0080, code lost:
    
        if (r0.length() > 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        r8.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0087, code lost:
    
        if (r0.length() > 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String decodeText(java.lang.String r8) throws java.io.UnsupportedEncodingException {
        /*
            java.lang.String r0 = " \t\n\r"
            java.lang.String r1 = "=?"
            int r1 = r8.indexOf(r1)
            r2 = -1
            if (r1 != r2) goto Lc
            return r8
        Lc:
            java.util.StringTokenizer r1 = new java.util.StringTokenizer
            r2 = 1
            r1.<init>(r8, r0, r2)
            java.lang.StringBuffer r8 = new java.lang.StringBuffer
            r8.<init>()
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            r3 = 0
            r4 = 0
        L1e:
            boolean r5 = r1.hasMoreTokens()
            if (r5 != 0) goto L2c
            r8.append(r0)
            java.lang.String r8 = r8.toString()
            return r8
        L2c:
            java.lang.String r5 = r1.nextToken()
            char r6 = r5.charAt(r3)
            r7 = 32
            if (r6 == r7) goto L94
            r7 = 9
            if (r6 == r7) goto L94
            r7 = 13
            if (r6 == r7) goto L94
            r7 = 10
            if (r6 != r7) goto L45
            goto L94
        L45:
            java.lang.String r6 = decodeWord(r5)     // Catch: javax.mail.internet.ParseException -> L57
            if (r4 != 0) goto L54
            int r7 = r0.length()     // Catch: javax.mail.internet.ParseException -> L57
            if (r7 <= 0) goto L54
            r8.append(r0)     // Catch: javax.mail.internet.ParseException -> L57
        L54:
            r5 = r6
            r4 = 1
            goto L8d
        L57:
            boolean r6 = javax.mail.internet.MimeUtility.decodeStrict
            if (r6 != 0) goto L83
            java.lang.String r6 = decodeInnerWords(r5)
            if (r6 == r5) goto L7c
            if (r4 == 0) goto L6b
            java.lang.String r4 = "=?"
            boolean r4 = r5.startsWith(r4)
            if (r4 != 0) goto L74
        L6b:
            int r4 = r0.length()
            if (r4 <= 0) goto L74
            r8.append(r0)
        L74:
            java.lang.String r4 = "?="
            boolean r4 = r5.endsWith(r4)
            r5 = r6
            goto L8d
        L7c:
            int r4 = r0.length()
            if (r4 <= 0) goto L8c
            goto L89
        L83:
            int r4 = r0.length()
            if (r4 <= 0) goto L8c
        L89:
            r8.append(r0)
        L8c:
            r4 = 0
        L8d:
            r8.append(r5)
            r0.setLength(r3)
            goto L1e
        L94:
            r0.append(r6)
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeUtility.decodeText(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00e0 A[Catch: IllegalArgumentException -> 0x00fd, IOException -> 0x0103, UnsupportedEncodingException -> 0x010e, TryCatch #2 {UnsupportedEncodingException -> 0x010e, IOException -> 0x0103, IllegalArgumentException -> 0x00fd, blocks: (B:20:0x0084, B:22:0x008a, B:24:0x009b, B:25:0x00ae, B:27:0x00be, B:28:0x00d9, B:30:0x00e0, B:32:0x00e8, B:33:0x00ec, B:36:0x00a1, B:38:0x00a9, B:39:0x00c5, B:40:0x00d8), top: B:19:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String decodeWord(java.lang.String r7) throws javax.mail.internet.ParseException, java.io.UnsupportedEncodingException {
        /*
            Method dump skipped, instructions count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MimeUtility.decodeWord(java.lang.String):java.lang.String");
    }

    private static void doEncode(String str, boolean z, String str2, int i, String str3, boolean z2, boolean z3, StringBuffer stringBuffer) throws UnsupportedEncodingException {
        byte[] bytes;
        int length;
        int i2 = 0;
        String str4 = str;
        boolean z4 = z2;
        while (true) {
            bytes = str4.getBytes(str2);
            if ((z ? BEncoderStream.encodedLength(bytes) : QEncoderStream.encodedLength(bytes, z3)) <= i || (length = str4.length()) <= 1) {
                break;
            }
            int i3 = length / 2;
            doEncode(str4.substring(i2, i3), z, str2, i, str3, z4, z3, stringBuffer);
            str4 = str4.substring(i3, length);
            z4 = false;
            i2 = 0;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream bEncoderStream = z ? new BEncoderStream(byteArrayOutputStream) : new QEncoderStream(byteArrayOutputStream, z3);
        try {
            bEncoderStream.write(bytes);
            bEncoderStream.close();
        } catch (IOException unused) {
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (!z4) {
            stringBuffer.append(foldEncodedWords ? "\r\n " : C1176s.a.f4108a);
        }
        stringBuffer.append(str3);
        for (byte b2 : byteArray) {
            stringBuffer.append((char) b2);
        }
        stringBuffer.append("?=");
    }

    public static OutputStream encode(OutputStream outputStream, String str) throws MessagingException {
        if (str == null) {
            return outputStream;
        }
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64EncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPEncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new UUEncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase(MIME.ENC_BINARY) || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase(MIME.ENC_8BIT)) {
            return outputStream;
        }
        throw new MessagingException("Unknown encoding: " + str);
    }

    public static OutputStream encode(OutputStream outputStream, String str, String str2) throws MessagingException {
        if (str == null) {
            return outputStream;
        }
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64EncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPEncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new UUEncoderStream(outputStream, str2);
        }
        if (str.equalsIgnoreCase(MIME.ENC_BINARY) || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase(MIME.ENC_8BIT)) {
            return outputStream;
        }
        throw new MessagingException("Unknown encoding: " + str);
    }

    public static String encodeText(String str) throws UnsupportedEncodingException {
        return encodeText(str, null, null);
    }

    public static String encodeText(String str, String str2, String str3) throws UnsupportedEncodingException {
        return encodeWord(str, str2, str3, false);
    }

    public static String encodeWord(String str) throws UnsupportedEncodingException {
        return encodeWord(str, null, null);
    }

    public static String encodeWord(String str, String str2, String str3) throws UnsupportedEncodingException {
        return encodeWord(str, str2, str3, true);
    }

    private static String encodeWord(String str, String str2, String str3, boolean z) throws UnsupportedEncodingException {
        String javaCharset;
        boolean z2;
        int checkAscii = checkAscii(str);
        if (checkAscii == 1) {
            return str;
        }
        if (str2 == null) {
            javaCharset = getDefaultJavaCharset();
            str2 = getDefaultMIMECharset();
        } else {
            javaCharset = javaCharset(str2);
        }
        if (str3 == null) {
            str3 = checkAscii != 3 ? "Q" : "B";
        }
        if (str3.equalsIgnoreCase("B")) {
            z2 = true;
        } else {
            if (!str3.equalsIgnoreCase("Q")) {
                throw new UnsupportedEncodingException("Unknown transfer encoding: " + str3);
            }
            z2 = false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        doEncode(str, z2, javaCharset, 68 - str2.length(), "=?" + str2 + "?" + str3 + "?", true, z, stringBuffer);
        return stringBuffer.toString();
    }

    public static String fold(int i, String str) {
        char charAt;
        if (!foldText) {
            return str;
        }
        int length = str.length() - 1;
        while (length >= 0 && ((charAt = str.charAt(length)) == ' ' || charAt == '\t' || charAt == '\r' || charAt == '\n')) {
            length--;
        }
        if (length != str.length() - 1) {
            str = str.substring(0, length + 1);
        }
        if (str.length() + i <= 76) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 4);
        int i2 = i;
        String str2 = str;
        char c2 = 0;
        while (true) {
            if (str2.length() + i2 <= 76) {
                break;
            }
            char c3 = c2;
            int i3 = 0;
            int i4 = -1;
            while (i3 < str2.length() && (i4 == -1 || i2 + i3 <= 76)) {
                char charAt2 = str2.charAt(i3);
                if ((charAt2 == ' ' || charAt2 == '\t') && c3 != ' ' && c3 != '\t') {
                    i4 = i3;
                }
                i3++;
                c3 = charAt2;
            }
            if (i4 == -1) {
                stringBuffer.append(str2);
                str2 = "";
                break;
            }
            stringBuffer.append(str2.substring(0, i4));
            stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
            c2 = str2.charAt(i4);
            stringBuffer.append(c2);
            str2 = str2.substring(i4 + 1);
            i2 = 1;
        }
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }

    public static String getDefaultJavaCharset() {
        if (defaultJavaCharset == null) {
            String str = null;
            try {
                str = System.getProperty(EmailConstants.MAIL_MIME_CHARSET);
            } catch (SecurityException unused) {
            }
            if (str != null && str.length() > 0) {
                String javaCharset = javaCharset(str);
                defaultJavaCharset = javaCharset;
                return javaCharset;
            }
            try {
                defaultJavaCharset = System.getProperty("file.encoding", "8859_1");
            } catch (SecurityException unused2) {
                String encoding = new InputStreamReader(new InputStream() { // from class: javax.mail.internet.MimeUtility.1NullInputStream
                    @Override // java.io.InputStream
                    public int read() {
                        return 0;
                    }
                }).getEncoding();
                defaultJavaCharset = encoding;
                if (encoding == null) {
                    defaultJavaCharset = "8859_1";
                }
            }
        }
        return defaultJavaCharset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDefaultMIMECharset() {
        if (defaultMIMECharset == null) {
            try {
                defaultMIMECharset = System.getProperty(EmailConstants.MAIL_MIME_CHARSET);
            } catch (SecurityException unused) {
            }
        }
        if (defaultMIMECharset == null) {
            defaultMIMECharset = mimeCharset(getDefaultJavaCharset());
        }
        return defaultMIMECharset;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static String getEncoding(DataHandler dataHandler) {
        if (dataHandler.getName() != null) {
            return getEncoding(dataHandler.getDataSource());
        }
        try {
            if (!new ContentType(dataHandler.getContentType()).match("text/*")) {
                AsciiOutputStream asciiOutputStream = new AsciiOutputStream(true, encodeEolStrict);
                try {
                    dataHandler.writeTo(asciiOutputStream);
                } catch (IOException unused) {
                }
                return asciiOutputStream.getAscii() == 1 ? "7bit" : "base64";
            }
            AsciiOutputStream asciiOutputStream2 = new AsciiOutputStream(false, false);
            try {
                dataHandler.writeTo(asciiOutputStream2);
            } catch (IOException unused2) {
            }
            switch (asciiOutputStream2.getAscii()) {
                case 1:
                    return "7bit";
                case 2:
                    return "quoted-printable";
                default:
                    return "base64";
            }
        } catch (Exception unused3) {
            return "base64";
        }
    }

    public static String getEncoding(DataSource dataSource) {
        String str;
        try {
            ContentType contentType = new ContentType(dataSource.getContentType());
            InputStream inputStream = dataSource.getInputStream();
            switch (checkAscii(inputStream, -1, !contentType.match("text/*"))) {
                case 1:
                    str = "7bit";
                    break;
                case 2:
                    str = "quoted-printable";
                    break;
                default:
                    str = "base64";
                    break;
            }
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            return str;
        } catch (Exception unused2) {
            return "base64";
        }
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

    public static String javaCharset(String str) {
        String str2;
        return (mime2java == null || str == null || (str2 = (String) mime2java.get(str.toLowerCase(Locale.ENGLISH))) == null) ? str : str2;
    }

    private static void loadMappings(LineInputStream lineInputStream, Hashtable hashtable) {
        while (true) {
            try {
                String readLine = lineInputStream.readLine();
                if (readLine == null) {
                    return;
                }
                if (readLine.startsWith("--") && readLine.endsWith("--")) {
                    return;
                }
                if (readLine.trim().length() != 0 && !readLine.startsWith("#")) {
                    StringTokenizer stringTokenizer = new StringTokenizer(readLine, " \t");
                    try {
                        String nextToken = stringTokenizer.nextToken();
                        hashtable.put(nextToken.toLowerCase(Locale.ENGLISH), stringTokenizer.nextToken());
                    } catch (NoSuchElementException unused) {
                    }
                }
            } catch (IOException unused2) {
                return;
            }
        }
    }

    public static String mimeCharset(String str) {
        String str2;
        return (java2mime == null || str == null || (str2 = (String) java2mime.get(str.toLowerCase(Locale.ENGLISH))) == null) ? str : str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean nonascii(int i) {
        if (i < 127) {
            return (i >= 32 || i == 13 || i == 10 || i == 9) ? false : true;
        }
        return true;
    }

    public static String quote(String str, String str2) {
        StringBuffer stringBuffer;
        int length = str.length();
        char c2 = 0;
        int i = 0;
        boolean z = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '\\' || charAt == '\r' || charAt == '\n') {
                stringBuffer = new StringBuffer(length + 3);
                stringBuffer.append('\"');
                stringBuffer.append(str.substring(0, i));
                while (i < length) {
                    char charAt2 = str.charAt(i);
                    if ((charAt2 == '\"' || charAt2 == '\\' || charAt2 == '\r' || charAt2 == '\n') && (charAt2 != '\n' || c2 != '\r')) {
                        stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    stringBuffer.append(charAt2);
                    i++;
                    c2 = charAt2;
                }
                stringBuffer.append('\"');
                return stringBuffer.toString();
            }
            if (charAt < ' ' || charAt >= 127 || str2.indexOf(charAt) >= 0) {
                z = true;
            }
            i++;
        }
        if (!z) {
            return str;
        }
        stringBuffer = new StringBuffer(length + 2);
        stringBuffer.append('\"');
        stringBuffer.append(str);
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public static String unfold(String str) {
        String substring;
        char charAt;
        char charAt2;
        if (!foldText) {
            return str;
        }
        StringBuffer stringBuffer = null;
        while (true) {
            int indexOfAny = indexOfAny(str, IOUtils.LINE_SEPARATOR_WINDOWS);
            if (indexOfAny < 0) {
                break;
            }
            int length = str.length();
            int i = indexOfAny + 1;
            if (i < length && str.charAt(i - 1) == '\r' && str.charAt(i) == '\n') {
                i++;
            }
            if (indexOfAny != 0) {
                int i2 = indexOfAny - 1;
                if (str.charAt(i2) == '\\') {
                    if (stringBuffer == null) {
                        stringBuffer = new StringBuffer(str.length());
                    }
                    stringBuffer.append(str.substring(0, i2));
                    substring = str.substring(indexOfAny, i);
                    stringBuffer.append(substring);
                    str = str.substring(i);
                }
            }
            if (i >= length || !((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.length());
                }
                substring = str.substring(0, i);
                stringBuffer.append(substring);
                str = str.substring(i);
            } else {
                while (true) {
                    i++;
                    if (i >= length || ((charAt2 = str.charAt(i)) != ' ' && charAt2 != '\t')) {
                        break;
                    }
                }
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.length());
                }
                if (indexOfAny != 0) {
                    stringBuffer.append(str.substring(0, indexOfAny));
                    stringBuffer.append(' ');
                }
                str = str.substring(i);
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        stringBuffer.append(str);
        return stringBuffer.toString();
    }
}
