package org.apache.harmony.misc;

/* loaded from: classes2.dex */
public class SystemUtils {
    public static final int ARC_IA32 = 1;
    public static final int ARC_IA64 = 2;
    public static final int ARC_UNKNOWN = -1;
    public static final int OS_LINUX = 2;
    public static final int OS_UNKNOWN = -1;
    public static final int OS_WINDOWS = 1;
    private static int arc;

    /* renamed from: os */
    private static int f10453os;

    public static int getOS() {
        if (f10453os == 0) {
            String substring = System.getProperty("os.name").substring(0, 3);
            f10453os = substring.compareToIgnoreCase("win") == 0 ? 1 : substring.compareToIgnoreCase("lin") == 0 ? 2 : -1;
        }
        return f10453os;
    }
}
