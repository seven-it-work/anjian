package com.google.gson.internal.bind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.mail.EmailConstants;

/* loaded from: classes.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private static boolean checkOffset(String str, int i, char c2) {
        return i < str.length() && str.charAt(i) == c2;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder((z ? 4 : 0) + 19 + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / EmailConstants.SOCKET_TIMEOUT_MS;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, abs, 2);
            sb.append(':');
            padInt(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c7 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ad, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ad, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x004f, B:20:0x005f, B:21:0x0061, B:23:0x006d, B:24:0x006f, B:26:0x0075, B:30:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:41:0x00c1, B:43:0x00c7, B:44:0x00ce, B:45:0x00cf, B:47:0x00d6, B:48:0x017b, B:54:0x00e2, B:55:0x00fa, B:56:0x00fb, B:59:0x0117, B:61:0x0124, B:64:0x012d, B:66:0x0149, B:68:0x0157, B:69:0x0176, B:71:0x0179, B:72:0x0106, B:73:0x00b0, B:74:0x00b3), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cf A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ad, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01ad, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x004f, B:20:0x005f, B:21:0x0061, B:23:0x006d, B:24:0x006f, B:26:0x0075, B:30:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:41:0x00c1, B:43:0x00c7, B:44:0x00ce, B:45:0x00cf, B:47:0x00d6, B:48:0x017b, B:54:0x00e2, B:55:0x00fa, B:56:0x00fb, B:59:0x0117, B:61:0x0124, B:64:0x012d, B:66:0x0149, B:68:0x0157, B:69:0x0176, B:71:0x0179, B:72:0x0106, B:73:0x00b0, B:74:0x00b3), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date parse(java.lang.String r18, java.text.ParsePosition r19) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i3 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = -digit;
        } else {
            i3 = i;
            i4 = 0;
        }
        while (i3 < i2) {
            int i5 = i3 + 1;
            int digit2 = Character.digit(str.charAt(i3), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = (i4 * 10) - digit2;
            i3 = i5;
        }
        return -i4;
    }
}
