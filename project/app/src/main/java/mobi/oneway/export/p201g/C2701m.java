package mobi.oneway.export.p201g;

import android.util.Log;
import org.apache.commons.io.IOUtils;

/* renamed from: mobi.oneway.export.g.m */
/* loaded from: classes2.dex */
public class C2701m {

    /* renamed from: a */
    private static final String f10367a = "OnewaySdk";

    /* renamed from: b */
    private static boolean f10368b = false;

    /* renamed from: c */
    private static boolean f10369c = false;

    /* renamed from: mobi.oneway.export.g.m$a */
    /* loaded from: classes2.dex */
    private static class a extends Exception {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public String toString() {
            String sb;
            String str;
            StackTraceElement[] stackTrace = getStackTrace();
            StringBuilder sb2 = new StringBuilder();
            for (int i = 1; i < 4 && i < stackTrace.length; i++) {
                StackTraceElement stackTraceElement = stackTrace[i];
                boolean isNativeMethod = stackTraceElement.isNativeMethod();
                String m12267a = C2707s.m12267a(stackTraceElement.getClassName());
                int lineNumber = stackTraceElement.getLineNumber();
                String fileName = stackTraceElement.getFileName();
                String methodName = stackTraceElement.getMethodName();
                if (i == 1) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(m12267a);
                    sb3.append(".");
                    sb3.append(methodName);
                    if (isNativeMethod) {
                        str = "(Native)";
                    } else if (fileName != null) {
                        str = "(" + fileName + ":" + lineNumber + ")";
                    } else {
                        str = "(UnSrc)";
                    }
                    sb3.append(str);
                    sb = sb3.toString();
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(m12267a);
                    sb4.append(".");
                    sb4.append(methodName);
                    sb4.append(isNativeMethod ? "(Native)" : "(" + lineNumber + ")");
                    sb = sb4.toString();
                }
                sb2.append("[");
                sb2.append(sb);
                sb2.append("]");
                if (i < 3) {
                    sb2.append("->");
                }
            }
            return ((Object) sb2) + IOUtils.LINE_SEPARATOR_WINDOWS + getMessage();
        }
    }

    /* renamed from: a */
    public static void m12235a(Object obj) {
        if (f10369c) {
            Log.v("OnewaySdk-", String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m12236a(String str) {
        if (f10368b) {
            Log.d(f10367a, new a(str).toString());
        }
    }

    /* renamed from: a */
    public static void m12237a(String str, Throwable th) {
        Log.e(f10367a, str, th);
    }

    /* renamed from: a */
    public static void m12238a(boolean z) {
        f10368b = z;
    }

    /* renamed from: a */
    public static void m12239a(Object... objArr) {
        if (f10368b) {
            Log.v(f10367a, new a(C2707s.m12273a(objArr)).toString());
        }
    }

    /* renamed from: a */
    public static boolean m12240a() {
        return f10368b;
    }

    /* renamed from: b */
    public static void m12241b(String str) {
        if (f10368b) {
            Log.i(f10367a, new a(str).toString());
        }
    }

    /* renamed from: b */
    public static void m12242b(boolean z) {
        f10369c = z;
    }

    /* renamed from: b */
    public static boolean m12243b() {
        return f10369c;
    }

    /* renamed from: c */
    public static void m12244c(String str) {
        String str2;
        if (f10368b) {
            str2 = f10367a;
            str = new a(str).toString();
        } else {
            str2 = f10367a;
        }
        Log.w(str2, str);
    }

    /* renamed from: d */
    public static void m12245d(String str) {
        Log.e(f10367a, new a(str).toString());
    }
}
