package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Formatter;
import java.util.Locale;

/* renamed from: com.umeng.commonsdk.statistics.common.e */
/* loaded from: classes.dex */
public class C2536e {

    /* renamed from: a */
    public static boolean f9760a = false;

    /* renamed from: b */
    private static String f9761b = "ULog";

    /* renamed from: c */
    private static final int f9762c = 1;

    /* renamed from: d */
    private static final int f9763d = 2;

    /* renamed from: e */
    private static final int f9764e = 3;

    /* renamed from: f */
    private static final int f9765f = 4;

    /* renamed from: g */
    private static final int f9766g = 5;

    /* renamed from: h */
    private static int f9767h = 2000;

    private C2536e() {
    }

    /* renamed from: a */
    private static void m11325a(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = f9767h;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 < 100) {
                    if (length <= i2) {
                        switch (i) {
                            case 1:
                                Log.v(str, str2.substring(i4, length));
                                break;
                            case 2:
                                Log.d(str, str2.substring(i4, length));
                                break;
                            case 3:
                                Log.i(str, str2.substring(i4, length));
                                break;
                            case 4:
                                Log.w(str, str2.substring(i4, length));
                                break;
                            case 5:
                                Log.e(str, str2.substring(i4, length));
                                break;
                        }
                    } else {
                        switch (i) {
                            case 1:
                                Log.v(str, str2.substring(i4, i2));
                                break;
                            case 2:
                                Log.d(str, str2.substring(i4, i2));
                                break;
                            case 3:
                                Log.i(str, str2.substring(i4, i2));
                                break;
                            case 4:
                                Log.w(str, str2.substring(i4, i2));
                                break;
                            case 5:
                                Log.e(str, str2.substring(i4, i2));
                                break;
                        }
                        i3++;
                        i4 = i2;
                        i2 = f9767h + i2;
                    }
                }
            }
        }
        if (th != null) {
            String m11356f = m11356f(th);
            if (TextUtils.isEmpty(m11356f)) {
                return;
            }
            switch (i) {
                case 1:
                    Log.v(str, m11356f);
                    return;
                case 2:
                    Log.d(str, m11356f);
                    return;
                case 3:
                    Log.i(str, m11356f);
                    return;
                case 4:
                    Log.w(str, m11356f);
                    return;
                case 5:
                    Log.e(str, m11356f);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: a */
    public static void m11326a(String str) {
        m11327a(f9761b, str, (Throwable) null);
    }

    /* renamed from: a */
    public static void m11327a(String str, String str2, Throwable th) {
        if (f9760a) {
            m11325a(1, str, str2, th);
        }
    }

    /* renamed from: a */
    public static void m11328a(String str, Throwable th) {
        m11339c(f9761b, str, th);
    }

    /* renamed from: a */
    public static void m11329a(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11339c(f9761b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11339c(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: a */
    public static void m11330a(Throwable th) {
        m11339c(f9761b, (String) null, th);
    }

    /* renamed from: a */
    public static void m11331a(Locale locale, String str, Object... objArr) {
        try {
            m11339c(f9761b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: b */
    public static void m11332b(String str) {
        m11333b(f9761b, str, (Throwable) null);
    }

    /* renamed from: b */
    public static void m11333b(String str, String str2, Throwable th) {
        if (f9760a) {
            m11325a(2, str, str2, th);
        }
    }

    /* renamed from: b */
    public static void m11334b(String str, Throwable th) {
        m11327a(f9761b, str, th);
    }

    /* renamed from: b */
    public static void m11335b(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11333b(f9761b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11333b(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: b */
    public static void m11336b(Throwable th) {
        m11327a(f9761b, (String) null, th);
    }

    /* renamed from: b */
    public static void m11337b(Locale locale, String str, Object... objArr) {
        try {
            m11333b(f9761b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: c */
    public static void m11338c(String str) {
        m11339c(f9761b, str, (Throwable) null);
    }

    /* renamed from: c */
    public static void m11339c(String str, String str2, Throwable th) {
        if (f9760a) {
            m11325a(3, str, str2, th);
        }
    }

    /* renamed from: c */
    public static void m11340c(String str, Throwable th) {
        m11345d(f9761b, str, th);
    }

    /* renamed from: c */
    public static void m11341c(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11351e(f9761b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11351e(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: c */
    public static void m11342c(Throwable th) {
        m11345d(f9761b, (String) null, th);
    }

    /* renamed from: c */
    public static void m11343c(Locale locale, String str, Object... objArr) {
        try {
            m11351e(f9761b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: d */
    public static void m11344d(String str) {
        m11345d(f9761b, str, (Throwable) null);
    }

    /* renamed from: d */
    public static void m11345d(String str, String str2, Throwable th) {
        if (f9760a) {
            m11325a(4, str, str2, th);
        }
    }

    /* renamed from: d */
    public static void m11346d(String str, Throwable th) {
        m11333b(f9761b, str, th);
    }

    /* renamed from: d */
    public static void m11347d(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11327a(f9761b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11327a(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: d */
    public static void m11348d(Throwable th) {
        m11333b(f9761b, (String) null, th);
    }

    /* renamed from: d */
    public static void m11349d(Locale locale, String str, Object... objArr) {
        try {
            m11327a(f9761b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: e */
    public static void m11350e(String str) {
        m11351e(f9761b, str, (Throwable) null);
    }

    /* renamed from: e */
    public static void m11351e(String str, String str2, Throwable th) {
        if (f9760a) {
            m11325a(5, str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m11352e(String str, Throwable th) {
        m11351e(f9761b, str, th);
    }

    /* renamed from: e */
    public static void m11353e(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11345d(f9761b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11345d(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: e */
    public static void m11354e(Throwable th) {
        m11351e(f9761b, (String) null, th);
    }

    /* renamed from: e */
    public static void m11355e(Locale locale, String str, Object... objArr) {
        try {
            m11345d(f9761b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11354e(th);
        }
    }

    /* renamed from: f */
    public static String m11356f(Throwable th) {
        StringWriter stringWriter;
        PrintWriter printWriter;
        PrintWriter printWriter2 = null;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            stringWriter = null;
        }
        try {
            th.printStackTrace(printWriter);
            printWriter.flush();
            stringWriter.flush();
            String stringWriter2 = stringWriter.toString();
            try {
                stringWriter.close();
            } catch (Throwable unused) {
            }
            printWriter.close();
            return stringWriter2;
        } catch (Throwable th4) {
            th = th4;
            printWriter2 = printWriter;
            if (stringWriter != null) {
                try {
                    stringWriter.close();
                } catch (Throwable unused2) {
                }
            }
            if (printWriter2 == null) {
                throw th;
            }
            printWriter2.close();
            throw th;
        }
    }
}
