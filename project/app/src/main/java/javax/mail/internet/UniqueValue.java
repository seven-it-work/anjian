package javax.mail.internet;

import javax.mail.Session;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes.dex */
class UniqueValue {

    /* renamed from: id */
    private static int f10043id;

    UniqueValue() {
    }

    public static String getUniqueBoundaryValue() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("----=_Part_");
        stringBuffer.append(getUniqueId());
        stringBuffer.append("_");
        stringBuffer.append(stringBuffer.hashCode());
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(System.currentTimeMillis());
        return stringBuffer.toString();
    }

    private static synchronized int getUniqueId() {
        int i;
        synchronized (UniqueValue.class) {
            i = f10043id;
            f10043id = i + 1;
        }
        return i;
    }

    public static String getUniqueMessageIDValue(Session session) {
        InternetAddress localAddress = InternetAddress.getLocalAddress(session);
        String address = localAddress != null ? localAddress.getAddress() : "javamailuser@localhost";
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(stringBuffer.hashCode());
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(getUniqueId());
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append("JavaMail.");
        stringBuffer.append(address);
        return stringBuffer.toString();
    }
}
