package javax.mail.internet;

import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Locale;
import javax.mail.Address;
import javax.mail.Session;
import org.apache.commons.io.IOUtils;
import org.apache.commons.mail.EmailConstants;

/* loaded from: classes.dex */
public class InternetAddress extends Address implements Cloneable {
    private static final String rfc822phrase = HeaderTokenizer.RFC822.replace(' ', (char) 0).replace('\t', (char) 0);
    private static final long serialVersionUID = -7507595530758302903L;
    private static final String specialsNoDot = "()<>,;:\\\"[]@";
    private static final String specialsNoDotNoAt = "()<>,;:\\\"[]";
    protected String address;
    protected String encodedPersonal;
    protected String personal;

    public InternetAddress() {
    }

    public InternetAddress(String str) throws AddressException {
        InternetAddress[] parse = parse(str, true);
        if (parse.length != 1) {
            throw new AddressException("Illegal address", str);
        }
        this.address = parse[0].address;
        this.personal = parse[0].personal;
        this.encodedPersonal = parse[0].encodedPersonal;
    }

    public InternetAddress(String str, String str2) throws UnsupportedEncodingException {
        this(str, str2, null);
    }

    public InternetAddress(String str, String str2, String str3) throws UnsupportedEncodingException {
        this.address = str;
        setPersonal(str2, str3);
    }

    public InternetAddress(String str, boolean z) throws AddressException {
        this(str);
        if (z) {
            checkAddress(this.address, true, true);
        }
    }

    private static void checkAddress(String str, boolean z, boolean z2) throws AddressException {
        String str2;
        String str3;
        if (str.indexOf(34) >= 0) {
            return;
        }
        int i = 0;
        if (z) {
            while (true) {
                int indexOfAny = indexOfAny(str, ",:", i);
                if (indexOfAny < 0) {
                    break;
                }
                if (str.charAt(i) != '@') {
                    throw new AddressException("Illegal route-addr", str);
                }
                if (str.charAt(indexOfAny) == ':') {
                    i = indexOfAny + 1;
                    break;
                }
                i = indexOfAny + 1;
            }
        }
        int indexOf = str.indexOf(64, i);
        if (indexOf >= 0) {
            if (indexOf == i) {
                throw new AddressException("Missing local name", str);
            }
            if (indexOf == str.length() - 1) {
                throw new AddressException("Missing domain", str);
            }
            str3 = str.substring(i, indexOf);
            str2 = str.substring(indexOf + 1);
        } else {
            if (z2) {
                throw new AddressException("Missing final '@domain'", str);
            }
            str2 = null;
            str3 = str;
        }
        if (indexOfAny(str, " \t\n\r") >= 0) {
            throw new AddressException("Illegal whitespace in address", str);
        }
        if (indexOfAny(str3, specialsNoDot) >= 0) {
            throw new AddressException("Illegal character in local name", str);
        }
        if (str2 != null && str2.indexOf(91) < 0 && indexOfAny(str2, specialsNoDot) >= 0) {
            throw new AddressException("Illegal character in domain", str);
        }
    }

    public static InternetAddress getLocalAddress(Session session) {
        String property;
        String str;
        String str2;
        InetAddress localHost;
        try {
            if (session == null) {
                str2 = System.getProperty("user.name");
                str = InetAddress.getLocalHost().getHostName();
                property = null;
            } else {
                property = session.getProperty(EmailConstants.MAIL_FROM);
                if (property == null) {
                    str2 = session.getProperty("mail.user");
                    if (str2 == null || str2.length() == 0) {
                        str2 = session.getProperty("user.name");
                    }
                    if (str2 == null || str2.length() == 0) {
                        str2 = System.getProperty("user.name");
                    }
                    str = session.getProperty("mail.host");
                    if ((str == null || str.length() == 0) && (localHost = InetAddress.getLocalHost()) != null) {
                        str = localHost.getHostName();
                    }
                } else {
                    str = null;
                    str2 = null;
                }
            }
            if (property == null && str2 != null && str2.length() != 0 && str != null && str.length() != 0) {
                property = String.valueOf(str2) + "@" + str;
            }
            if (property != null) {
                return new InternetAddress(property);
            }
        } catch (SecurityException | UnknownHostException | AddressException unused) {
        }
        return null;
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

    private boolean isSimple() {
        return this.address == null || indexOfAny(this.address, specialsNoDotNoAt) < 0;
    }

    private static int lengthOfFirstSegment(String str) {
        int indexOf = str.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS);
        return indexOf != -1 ? indexOf : str.length();
    }

    private static int lengthOfLastSegment(String str, int i) {
        return str.lastIndexOf(IOUtils.LINE_SEPARATOR_WINDOWS) != -1 ? (str.length() - r0) - 2 : str.length() + i;
    }

    public static InternetAddress[] parse(String str) throws AddressException {
        return parse(str, true);
    }

    public static InternetAddress[] parse(String str, boolean z) throws AddressException {
        return parse(str, z, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0081. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x020b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static javax.mail.internet.InternetAddress[] parse(java.lang.String r18, boolean r19, boolean r20) throws javax.mail.internet.AddressException {
        /*
            Method dump skipped, instructions count: 612
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.InternetAddress.parse(java.lang.String, boolean, boolean):javax.mail.internet.InternetAddress[]");
    }

    public static InternetAddress[] parseHeader(String str, boolean z) throws AddressException {
        return parse(str, z, true);
    }

    private static String quotePhrase(String str) {
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(length + 3);
                stringBuffer.append('\"');
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 == '\"' || charAt2 == '\\') {
                        stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                    }
                    stringBuffer.append(charAt2);
                }
                stringBuffer.append('\"');
                return stringBuffer.toString();
            }
            if ((charAt < ' ' && charAt != '\r' && charAt != '\n' && charAt != '\t') || charAt >= 127 || rfc822phrase.indexOf(charAt) >= 0) {
                z = true;
            }
        }
        if (!z) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer(length + 2);
        stringBuffer2.append('\"');
        stringBuffer2.append(str);
        stringBuffer2.append('\"');
        return stringBuffer2.toString();
    }

    public static String toString(Address[] addressArr) {
        return toString(addressArr, 0);
    }

    public static String toString(Address[] addressArr, int i) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < addressArr.length; i2++) {
            if (i2 != 0) {
                stringBuffer.append(", ");
                i += 2;
            }
            String address = addressArr[i2].toString();
            if (lengthOfFirstSegment(address) + i > 76) {
                stringBuffer.append("\r\n\t");
                i = 8;
            }
            stringBuffer.append(address);
            i = lengthOfLastSegment(address, i);
        }
        return stringBuffer.toString();
    }

    private static String unquote(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            str = str.substring(1, str.length() - 1);
            if (str.indexOf(92) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length());
                int i = 0;
                while (i < str.length()) {
                    char charAt = str.charAt(i);
                    if (charAt == '\\' && i < str.length() - 1) {
                        i++;
                        charAt = str.charAt(i);
                    }
                    stringBuffer.append(charAt);
                    i++;
                }
                return stringBuffer.toString();
            }
        }
        return str;
    }

    public Object clone() {
        try {
            return (InternetAddress) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        if (!(obj instanceof InternetAddress)) {
            return false;
        }
        String address = ((InternetAddress) obj).getAddress();
        if (address == this.address) {
            return true;
        }
        return this.address != null && this.address.equalsIgnoreCase(address);
    }

    public String getAddress() {
        return this.address;
    }

    public InternetAddress[] getGroup(boolean z) throws AddressException {
        int indexOf;
        String address = getAddress();
        if (address.endsWith(";") && (indexOf = address.indexOf(58)) >= 0) {
            return parseHeader(address.substring(indexOf + 1, address.length() - 1), z);
        }
        return null;
    }

    public String getPersonal() {
        if (this.personal != null) {
            return this.personal;
        }
        if (this.encodedPersonal == null) {
            return null;
        }
        try {
            this.personal = MimeUtility.decodeText(this.encodedPersonal);
            return this.personal;
        } catch (Exception unused) {
            return this.encodedPersonal;
        }
    }

    @Override // javax.mail.Address
    public String getType() {
        return "rfc822";
    }

    public int hashCode() {
        if (this.address == null) {
            return 0;
        }
        return this.address.toLowerCase(Locale.ENGLISH).hashCode();
    }

    public boolean isGroup() {
        return this.address != null && this.address.endsWith(";") && this.address.indexOf(58) > 0;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setPersonal(String str) throws UnsupportedEncodingException {
        this.personal = str;
        this.encodedPersonal = str != null ? MimeUtility.encodeWord(str) : null;
    }

    public void setPersonal(String str, String str2) throws UnsupportedEncodingException {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str, str2, null);
        } else {
            this.encodedPersonal = null;
        }
    }

    @Override // javax.mail.Address
    public String toString() {
        StringBuilder sb;
        if (this.encodedPersonal == null && this.personal != null) {
            try {
                this.encodedPersonal = MimeUtility.encodeWord(this.personal);
            } catch (UnsupportedEncodingException unused) {
            }
        }
        if (this.encodedPersonal != null) {
            sb = new StringBuilder(String.valueOf(quotePhrase(this.encodedPersonal)));
            sb.append(" <");
        } else {
            if (isGroup() || isSimple()) {
                return this.address;
            }
            sb = new StringBuilder("<");
        }
        sb.append(this.address);
        sb.append(">");
        return sb.toString();
    }

    public String toUnicodeString() {
        String personal = getPersonal();
        if (personal != null) {
            return String.valueOf(quotePhrase(personal)) + " <" + this.address + ">";
        }
        if (isGroup() || isSimple()) {
            return this.address;
        }
        return "<" + this.address + ">";
    }

    public void validate() throws AddressException {
        checkAddress(getAddress(), true, true);
    }
}
