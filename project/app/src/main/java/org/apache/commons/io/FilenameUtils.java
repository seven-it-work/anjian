package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
public class FilenameUtils {
    private static final int NOT_FOUND = -1;
    private static final char OTHER_SEPARATOR;
    private static final char UNIX_SEPARATOR = '/';
    private static final char WINDOWS_SEPARATOR = '\\';
    public static final char EXTENSION_SEPARATOR = '.';
    public static final String EXTENSION_SEPARATOR_STR = Character.toString(EXTENSION_SEPARATOR);
    private static final char SYSTEM_SEPARATOR = File.separatorChar;

    static {
        OTHER_SEPARATOR = isSystemWindows() ? '/' : '\\';
    }

    public static String concat(String str, String str2) {
        StringBuilder sb;
        int prefixLength = getPrefixLength(str2);
        if (prefixLength < 0) {
            return null;
        }
        if (prefixLength > 0) {
            return normalize(str2);
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return normalize(str2);
        }
        if (isSeparator(str.charAt(length - 1))) {
            sb = new StringBuilder();
            sb.append(str);
        } else {
            sb = new StringBuilder();
            sb.append(str);
            sb.append('/');
        }
        sb.append(str2);
        return normalize(sb.toString());
    }

    public static boolean directoryContains(String str, String str2) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Directory must not be null");
        }
        if (str2 == null || IOCase.SYSTEM.checkEquals(str, str2)) {
            return false;
        }
        return IOCase.SYSTEM.checkStartsWith(str2, str);
    }

    private static String doGetFullPath(String str, boolean z) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength >= str.length()) {
            return z ? getPrefix(str) : str;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        if (indexOfLastSeparator < 0) {
            return str.substring(0, prefixLength);
        }
        int i = indexOfLastSeparator + (z ? 1 : 0);
        if (i == 0) {
            i++;
        }
        return str.substring(0, i);
    }

    private static String doGetPath(String str, int i) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        int indexOfLastSeparator = indexOfLastSeparator(str);
        int i2 = i + indexOfLastSeparator;
        if (prefixLength >= str.length() || indexOfLastSeparator < 0 || prefixLength >= i2) {
            return "";
        }
        String substring = str.substring(prefixLength, i2);
        failIfNullBytePresent(substring);
        return substring;
    }

    private static String doNormalize(String str, char c2, boolean z) {
        int i;
        boolean z2;
        int i2;
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        int length = str.length();
        if (length == 0) {
            return str;
        }
        int prefixLength = getPrefixLength(str);
        if (prefixLength < 0) {
            return null;
        }
        char[] cArr = new char[length + 2];
        str.getChars(0, str.length(), cArr, 0);
        char c3 = c2 == SYSTEM_SEPARATOR ? OTHER_SEPARATOR : SYSTEM_SEPARATOR;
        for (int i3 = 0; i3 < cArr.length; i3++) {
            if (cArr[i3] == c3) {
                cArr[i3] = c2;
            }
        }
        if (cArr[length - 1] != c2) {
            i = length + 1;
            cArr[length] = c2;
            z2 = false;
        } else {
            i = length;
            z2 = true;
        }
        int i4 = prefixLength + 1;
        int i5 = i;
        int i6 = i4;
        while (i6 < i5) {
            if (cArr[i6] == c2) {
                int i7 = i6 - 1;
                if (cArr[i7] == c2) {
                    System.arraycopy(cArr, i6, cArr, i7, i5 - i6);
                    i5--;
                    i6--;
                }
            }
            i6++;
        }
        int i8 = i4;
        while (i8 < i5) {
            if (cArr[i8] == c2) {
                int i9 = i8 - 1;
                if (cArr[i9] == '.' && (i8 == i4 || cArr[i8 - 2] == c2)) {
                    if (i8 == i5 - 1) {
                        z2 = true;
                    }
                    System.arraycopy(cArr, i8 + 1, cArr, i9, i5 - i8);
                    i5 -= 2;
                    i8--;
                }
            }
            i8++;
        }
        int i10 = prefixLength + 2;
        boolean z3 = z2;
        int i11 = i10;
        while (i11 < i5) {
            if (cArr[i11] != c2 || cArr[i11 - 1] != '.' || cArr[i11 - 2] != '.' || (i11 != i10 && cArr[i11 - 3] != c2)) {
                i2 = i11;
            } else {
                if (i11 == i10) {
                    return null;
                }
                if (i11 == i5 - 1) {
                    z3 = true;
                }
                int i12 = i11 - 4;
                while (true) {
                    if (i12 < prefixLength) {
                        int i13 = i11 + 1;
                        System.arraycopy(cArr, i13, cArr, prefixLength, i5 - i11);
                        i5 -= i13 - prefixLength;
                        i2 = i4;
                        break;
                    }
                    if (cArr[i12] == c2) {
                        i2 = i12 + 1;
                        System.arraycopy(cArr, i11 + 1, cArr, i2, i5 - i11);
                        i5 -= i11 - i12;
                        break;
                    }
                    i12--;
                }
            }
            i11 = i2 + 1;
        }
        return i5 <= 0 ? "" : i5 <= prefixLength ? new String(cArr, 0, i5) : (z3 && z) ? new String(cArr, 0, i5) : new String(cArr, 0, i5 - 1);
    }

    public static boolean equals(String str, String str2) {
        return equals(str, str2, false, IOCase.SENSITIVE);
    }

    public static boolean equals(String str, String str2, boolean z, IOCase iOCase) {
        if (str == null || str2 == null) {
            return str == null && str2 == null;
        }
        if (z) {
            str = normalize(str);
            str2 = normalize(str2);
            if (str == null || str2 == null) {
                throw new NullPointerException("Error normalizing one or both of the file names");
            }
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        return iOCase.checkEquals(str, str2);
    }

    public static boolean equalsNormalized(String str, String str2) {
        return equals(str, str2, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String str, String str2) {
        return equals(str, str2, true, IOCase.SYSTEM);
    }

    public static boolean equalsOnSystem(String str, String str2) {
        return equals(str, str2, false, IOCase.SYSTEM);
    }

    private static void failIfNullBytePresent(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) == 0) {
                throw new IllegalArgumentException("Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
            }
        }
    }

    public static String getBaseName(String str) {
        return removeExtension(getName(str));
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension == -1 ? "" : str.substring(indexOfExtension + 1);
    }

    public static String getFullPath(String str) {
        return doGetFullPath(str, true);
    }

    public static String getFullPathNoEndSeparator(String str) {
        return doGetFullPath(str, false);
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        return str.substring(indexOfLastSeparator(str) + 1);
    }

    public static String getPath(String str) {
        return doGetPath(str, 1);
    }

    public static String getPathNoEndSeparator(String str) {
        return doGetPath(str, 0);
    }

    public static String getPrefix(String str) {
        int prefixLength;
        if (str == null || (prefixLength = getPrefixLength(str)) < 0) {
            return null;
        }
        if (prefixLength <= str.length()) {
            String substring = str.substring(0, prefixLength);
            failIfNullBytePresent(substring);
            return substring;
        }
        failIfNullBytePresent(str + '/');
        return str + '/';
    }

    public static int getPrefixLength(String str) {
        int min;
        if (str == null) {
            return -1;
        }
        int length = str.length();
        if (length == 0) {
            return 0;
        }
        char charAt = str.charAt(0);
        if (charAt == ':') {
            return -1;
        }
        if (length == 1) {
            if (charAt == '~') {
                return 2;
            }
            return isSeparator(charAt) ? 1 : 0;
        }
        if (charAt == '~') {
            int indexOf = str.indexOf(47, 1);
            int indexOf2 = str.indexOf(92, 1);
            if (indexOf == -1 && indexOf2 == -1) {
                return length + 1;
            }
            if (indexOf == -1) {
                indexOf = indexOf2;
            }
            if (indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            min = Math.min(indexOf, indexOf2);
        } else {
            char charAt2 = str.charAt(1);
            if (charAt2 == ':') {
                char upperCase = Character.toUpperCase(charAt);
                if (upperCase < 'A' || upperCase > 'Z') {
                    return -1;
                }
                return (length == 2 || !isSeparator(str.charAt(2))) ? 2 : 3;
            }
            if (!isSeparator(charAt) || !isSeparator(charAt2)) {
                return isSeparator(charAt) ? 1 : 0;
            }
            int indexOf3 = str.indexOf(47, 2);
            int indexOf4 = str.indexOf(92, 2);
            if ((indexOf3 == -1 && indexOf4 == -1) || indexOf3 == 2 || indexOf4 == 2) {
                return -1;
            }
            if (indexOf3 == -1) {
                indexOf3 = indexOf4;
            }
            if (indexOf4 == -1) {
                indexOf4 = indexOf3;
            }
            min = Math.min(indexOf3, indexOf4);
        }
        return min + 1;
    }

    public static int indexOfExtension(String str) {
        int lastIndexOf;
        if (str != null && indexOfLastSeparator(str) <= (lastIndexOf = str.lastIndexOf(46))) {
            return lastIndexOf;
        }
        return -1;
    }

    public static int indexOfLastSeparator(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    public static boolean isExtension(String str, String str2) {
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        return (str2 == null || str2.isEmpty()) ? indexOfExtension(str) == -1 : getExtension(str).equals(str2);
    }

    public static boolean isExtension(String str, Collection<String> collection) {
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        if (collection == null || collection.isEmpty()) {
            return indexOfExtension(str) == -1;
        }
        String extension = getExtension(str);
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            if (extension.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExtension(String str, String[] strArr) {
        if (str == null) {
            return false;
        }
        failIfNullBytePresent(str);
        if (strArr == null || strArr.length == 0) {
            return indexOfExtension(str) == -1;
        }
        String extension = getExtension(str);
        for (String str2 : strArr) {
            if (extension.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isSeparator(char c2) {
        return c2 == '/' || c2 == '\\';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == '\\';
    }

    public static String normalize(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', true);
    }

    public static String normalizeNoEndSeparator(String str) {
        return doNormalize(str, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String str, boolean z) {
        return doNormalize(str, z ? '/' : '\\', false);
    }

    public static String removeExtension(String str) {
        if (str == null) {
            return null;
        }
        failIfNullBytePresent(str);
        int indexOfExtension = indexOfExtension(str);
        return indexOfExtension == -1 ? str : str.substring(0, indexOfExtension);
    }

    public static String separatorsToSystem(String str) {
        if (str == null) {
            return null;
        }
        return isSystemWindows() ? separatorsToWindows(str) : separatorsToUnix(str);
    }

    public static String separatorsToUnix(String str) {
        return (str == null || str.indexOf(92) == -1) ? str : str.replace('\\', '/');
    }

    public static String separatorsToWindows(String str) {
        return (str == null || str.indexOf(47) == -1) ? str : str.replace('/', '\\');
    }

    static String[] splitOnTokens(String str) {
        String str2;
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        int i = 0;
        char c2 = 0;
        while (i < length) {
            char c3 = charArray[i];
            if (c3 == '?' || c3 == '*') {
                if (sb.length() != 0) {
                    arrayList.add(sb.toString());
                    sb.setLength(0);
                }
                if (c3 == '?') {
                    str2 = "?";
                } else if (c2 != '*') {
                    str2 = Marker.ANY_MARKER;
                }
                arrayList.add(str2);
            } else {
                sb.append(c3);
            }
            i++;
            c2 = c3;
        }
        if (sb.length() != 0) {
            arrayList.add(sb.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        boolean z;
        int i;
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        String[] splitOnTokens = splitOnTokens(str2);
        Stack stack = new Stack();
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                int i4 = iArr[0];
                i = iArr[1];
                i3 = i4;
                z = true;
            } else {
                int i5 = i2;
                z = z2;
                i = i5;
            }
            while (i3 < splitOnTokens.length) {
                if (splitOnTokens[i3].equals("?")) {
                    i++;
                    if (i > str.length()) {
                        break;
                    }
                    z = false;
                } else if (splitOnTokens[i3].equals(Marker.ANY_MARKER)) {
                    if (i3 == splitOnTokens.length - 1) {
                        i = str.length();
                    }
                    z = true;
                } else {
                    if (z) {
                        i = iOCase.checkIndexOf(str, i, splitOnTokens[i3]);
                        if (i == -1) {
                            break;
                        }
                        int checkIndexOf = iOCase.checkIndexOf(str, i + 1, splitOnTokens[i3]);
                        if (checkIndexOf >= 0) {
                            stack.push(new int[]{i3, checkIndexOf});
                        }
                        i += splitOnTokens[i3].length();
                    } else {
                        if (!iOCase.checkRegionMatches(str, i, splitOnTokens[i3])) {
                            break;
                        }
                        i += splitOnTokens[i3].length();
                    }
                    z = false;
                }
                i3++;
            }
            if (i3 == splitOnTokens.length && i == str.length()) {
                return true;
            }
            if (stack.size() <= 0) {
                return false;
            }
            boolean z3 = z;
            i2 = i;
            z2 = z3;
        }
    }

    public static boolean wildcardMatchOnSystem(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SYSTEM);
    }
}
