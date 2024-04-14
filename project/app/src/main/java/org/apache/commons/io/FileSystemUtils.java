package org.apache.commons.io;

import android.support.v7.widget.ActivityChooserView;
import com.cyjh.common.util.C1176s;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

/* loaded from: classes2.dex */
public class FileSystemUtils {

    /* renamed from: DF */
    private static final String f10436DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();

    /* renamed from: OS */
    private static final int f10437OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        String property;
        String str = "df";
        int i = 3;
        try {
            property = System.getProperty("os.name");
        } catch (Exception unused) {
            i = -1;
        }
        if (property == null) {
            throw new IOException("os.name not found");
        }
        String lowerCase = property.toLowerCase(Locale.ENGLISH);
        if (lowerCase.contains("windows")) {
            i = 1;
        } else {
            if (!lowerCase.contains("linux") && !lowerCase.contains("mpe/ix") && !lowerCase.contains("freebsd") && !lowerCase.contains("irix") && !lowerCase.contains("digital unix") && !lowerCase.contains("unix") && !lowerCase.contains("mac os x")) {
                if (!lowerCase.contains("sun os") && !lowerCase.contains("sunos") && !lowerCase.contains("solaris")) {
                    if (!lowerCase.contains("hp-ux") && !lowerCase.contains("aix")) {
                        i = 0;
                    }
                }
                str = "/usr/xpg4/bin/df";
            }
            i = 2;
        }
        f10437OS = i;
        f10436DF = str;
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, f10437OS, false, -1L);
    }

    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }

    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, f10437OS, true, j);
    }

    long freeSpaceOS(String str, int i, boolean z, long j) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be null");
        }
        switch (i) {
            case 0:
                throw new IllegalStateException("Unsupported operating system");
            case 1:
                return z ? freeSpaceWindows(str, j) / 1024 : freeSpaceWindows(str, j);
            case 2:
                return freeSpaceUnix(str, z, false, j);
            case 3:
                return freeSpaceUnix(str, z, true, j);
            default:
                throw new IllegalStateException("Exception caught when determining operating system");
        }
    }

    long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws IOException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String str2 = "-";
        if (z) {
            str2 = "-k";
        }
        if (z2) {
            str2 = str2 + "P";
        }
        List<String> performCommand = performCommand(str2.length() > 1 ? new String[]{f10436DF, str2, str} : new String[]{f10436DF, str}, 3, j);
        if (performCommand.size() < 2) {
            throw new IOException("Command line '" + f10436DF + "' did not return info as expected for path '" + str + "'- response was " + performCommand);
        }
        StringTokenizer stringTokenizer = new StringTokenizer(performCommand.get(1), C1176s.a.f4108a);
        if (stringTokenizer.countTokens() >= 4) {
            stringTokenizer.nextToken();
        } else {
            if (stringTokenizer.countTokens() != 1 || performCommand.size() < 3) {
                throw new IOException("Command line '" + f10436DF + "' did not return data as expected for path '" + str + "'- check path is valid");
            }
            stringTokenizer = new StringTokenizer(performCommand.get(2), C1176s.a.f4108a);
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    long freeSpaceWindows(String str, long j) throws IOException {
        String normalize = FilenameUtils.normalize(str, false);
        if (normalize.length() > 0 && normalize.charAt(0) != '\"') {
            normalize = "\"" + normalize + "\"";
        }
        List<String> performCommand = performCommand(new String[]{"cmd.exe", "/C", "dir /a /-c " + normalize}, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, j);
        for (int size = performCommand.size() - 1; size >= 0; size--) {
            String str2 = performCommand.get(size);
            if (str2.length() > 0) {
                return parseDir(str2, normalize);
            }
        }
        throw new IOException("Command line 'dir /-c' did not return any info for path '" + normalize + "'");
    }

    Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }

    long parseBytes(String str, String str2) throws IOException {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong >= 0) {
                return parseLong;
            }
            throw new IOException("Command line '" + f10436DF + "' did not find free space in response for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            throw new IOException("Command line '" + f10436DF + "' did not return numeric data as expected for path '" + str2 + "'- check path is valid", e);
        }
    }

    long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int length = str.length();
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                i2 = 0;
                break;
            }
            if (Character.isDigit(str.charAt(length))) {
                i2 = length + 1;
                break;
            }
        }
        while (true) {
            if (length < 0) {
                i3 = 0;
                break;
            }
            char charAt = str.charAt(length);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != '.') {
                i3 = length + 1;
                break;
            }
            length--;
        }
        if (length < 0) {
            throw new IOException("Command line 'dir /-c' did not return valid info for path '" + str2 + "'");
        }
        StringBuilder sb = new StringBuilder(str.substring(i3, i2));
        while (i < sb.length()) {
            if (sb.charAt(i) == ',' || sb.charAt(i) == '.') {
                i4 = i - 1;
                sb.deleteCharAt(i);
            } else {
                i4 = i;
            }
            i = i4 + 1;
        }
        return parseBytes(sb.toString(), str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0102  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.io.BufferedReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.util.List<java.lang.String> performCommand(java.lang.String[] r11, int r12, long r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }
}
