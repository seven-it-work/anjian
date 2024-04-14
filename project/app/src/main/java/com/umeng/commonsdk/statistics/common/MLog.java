package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: classes.dex */
public class MLog {
    public static boolean DEBUG = false;
    private static final int LEVEL_DEBUG = 2;
    private static final int LEVEL_ERROR = 5;
    private static final int LEVEL_INFO = 3;
    private static final int LEVEL_VERBOSE = 1;
    private static final int LEVEL_WARN = 4;
    private static int LOG_MAXLENGTH = 2000;
    private static String TAG = "MobclickAgent";

    private MLog() {
    }

    /* renamed from: d */
    public static void m11263d(String str) {
        m11264d(TAG, str, (Throwable) null);
    }

    /* renamed from: d */
    public static void m11264d(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(2, str, str2, th);
        }
    }

    /* renamed from: d */
    public static void m11265d(String str, Throwable th) {
        m11264d(TAG, str, th);
    }

    /* renamed from: d */
    public static void m11266d(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11264d(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11264d(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: d */
    public static void m11267d(Throwable th) {
        m11264d(TAG, (String) null, th);
    }

    /* renamed from: d */
    public static void m11268d(Locale locale, String str, Object... objArr) {
        try {
            m11264d(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: e */
    public static void m11269e(String str) {
        m11270e(TAG, str, (Throwable) null);
    }

    /* renamed from: e */
    public static void m11270e(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(5, str, str2, th);
        }
    }

    /* renamed from: e */
    public static void m11271e(String str, Throwable th) {
        m11270e(TAG, str, th);
    }

    /* renamed from: e */
    public static void m11272e(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11270e(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11270e(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: e */
    public static void m11273e(Throwable th) {
        m11270e(TAG, (String) null, th);
    }

    /* renamed from: e */
    public static void m11274e(Locale locale, String str, Object... objArr) {
        try {
            m11270e(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    public static String getStackTrace(Throwable th) {
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

    /* renamed from: i */
    public static void m11275i(String str) {
        m11276i(TAG, str, (Throwable) null);
    }

    /* renamed from: i */
    public static void m11276i(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(3, str, str2, th);
        }
    }

    /* renamed from: i */
    public static void m11277i(String str, Throwable th) {
        m11276i(TAG, str, th);
    }

    /* renamed from: i */
    public static void m11278i(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11276i(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11276i(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: i */
    public static void m11279i(Throwable th) {
        m11276i(TAG, (String) null, th);
    }

    /* renamed from: i */
    public static void m11280i(Locale locale, String str, Object... objArr) {
        try {
            m11276i(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    private static void print(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = LOG_MAXLENGTH;
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
                        i2 = LOG_MAXLENGTH + i2;
                    }
                }
            }
        }
        if (th != null) {
            String stackTrace = getStackTrace(th);
            if (TextUtils.isEmpty(stackTrace)) {
                return;
            }
            switch (i) {
                case 1:
                    Log.v(str, stackTrace);
                    return;
                case 2:
                    Log.d(str, stackTrace);
                    return;
                case 3:
                    Log.i(str, stackTrace);
                    return;
                case 4:
                    Log.w(str, stackTrace);
                    return;
                case 5:
                    Log.e(str, stackTrace);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: v */
    public static void m11281v(String str) {
        m11282v(TAG, str, (Throwable) null);
    }

    /* renamed from: v */
    public static void m11282v(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(1, str, str2, th);
        }
    }

    /* renamed from: v */
    public static void m11283v(String str, Throwable th) {
        m11282v(TAG, str, th);
    }

    /* renamed from: v */
    public static void m11284v(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11282v(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11282v(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: v */
    public static void m11285v(Throwable th) {
        m11282v(TAG, (String) null, th);
    }

    /* renamed from: v */
    public static void m11286v(Locale locale, String str, Object... objArr) {
        try {
            m11282v(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: w */
    public static void m11287w(String str) {
        m11288w(TAG, str, (Throwable) null);
    }

    /* renamed from: w */
    public static void m11288w(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(4, str, str2, th);
        }
    }

    /* renamed from: w */
    public static void m11289w(String str, Throwable th) {
        m11288w(TAG, str, th);
    }

    /* renamed from: w */
    public static void m11290w(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                m11288w(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                m11288w(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            m11273e(th);
        }
    }

    /* renamed from: w */
    public static void m11291w(Throwable th) {
        m11288w(TAG, (String) null, th);
    }

    /* renamed from: w */
    public static void m11292w(Locale locale, String str, Object... objArr) {
        try {
            m11288w(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            m11273e(th);
        }
    }
}
