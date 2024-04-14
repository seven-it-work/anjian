package org.apache.commons.mail;

import android.support.v7.widget.ActivityChooserView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;
import java.util.Random;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/* loaded from: classes2.dex */
final class EmailUtils {
    private static final char ESCAPE_CHAR = '%';
    private static final int RADIX = 16;
    private static final Random RANDOM = new Random();
    private static final BitSet SAFE_URL = new BitSet(256);
    private static final String US_ASCII = "US-ASCII";

    static {
        for (int i = 97; i <= 122; i++) {
            SAFE_URL.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            SAFE_URL.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            SAFE_URL.set(i3);
        }
        SAFE_URL.set(45);
        SAFE_URL.set(95);
        SAFE_URL.set(46);
        SAFE_URL.set(42);
        SAFE_URL.set(43);
        SAFE_URL.set(36);
        SAFE_URL.set(33);
        SAFE_URL.set(39);
        SAFE_URL.set(40);
        SAFE_URL.set(41);
        SAFE_URL.set(44);
        SAFE_URL.set(64);
    }

    private EmailUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encodeUrl(String str) throws UnsupportedEncodingException {
        char upperCase;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        byte[] bytes = str.getBytes(US_ASCII);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            int i2 = bytes[i];
            if (i2 < 0) {
                i2 += 256;
            }
            if (SAFE_URL.get(i2)) {
                upperCase = (char) i2;
            } else {
                sb.append(ESCAPE_CHAR);
                char upperCase2 = Character.toUpperCase(Character.forDigit((i2 >> 4) & 15, 16));
                upperCase = Character.toUpperCase(Character.forDigit(i2 & 15, 16));
                sb.append(upperCase2);
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNotEmpty(String str) {
        return str != null && str.length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void notNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    private static String random(int i, int i2, int i3, boolean z, boolean z2, char[] cArr, Random random) {
        if (i == 0) {
            return "";
        }
        if (i < 0) {
            throw new IllegalArgumentException("Requested random string length " + i + " is less than 0.");
        }
        if (i2 == 0 && i3 == 0) {
            i3 = 123;
            i2 = 32;
            if (!z && !z2) {
                i2 = 0;
                i3 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i4 = i3 - i2;
        while (true) {
            int i5 = i - 1;
            if (i == 0) {
                return stringBuffer.toString();
            }
            char nextInt = cArr == null ? (char) (random.nextInt(i4) + i2) : cArr[random.nextInt(i4) + i2];
            if (!(z && z2 && Character.isLetterOrDigit(nextInt)) && (!(z && Character.isLetter(nextInt)) && (!(z2 && Character.isDigit(nextInt)) && (z || z2)))) {
                i = i5 + 1;
            } else {
                stringBuffer.append(nextInt);
                i = i5;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String randomAlphabetic(int i) {
        return random(i, 0, 0, true, false, null, RANDOM);
    }

    static void writeMimeMessage(File file, MimeMessage mimeMessage) throws IOException, MessagingException {
        FileOutputStream fileOutputStream = null;
        try {
            if (!file.getParentFile().exists() && !file.getParentFile().mkdirs()) {
                throw new IOException("Failed to create the following parent directories: " + file.getParentFile());
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                mimeMessage.writeTo(fileOutputStream2);
                fileOutputStream2.flush();
                fileOutputStream2.close();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
