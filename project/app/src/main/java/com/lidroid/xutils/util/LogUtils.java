package com.lidroid.xutils.util;

import android.text.TextUtils;
import android.util.Log;

/* loaded from: classes.dex */
public class LogUtils {
    public static boolean allowD = true;
    public static boolean allowE = true;
    public static boolean allowI = true;
    public static boolean allowV = true;
    public static boolean allowW = true;
    public static boolean allowWtf = true;
    public static CustomLogger customLogger = null;
    public static String customTagPrefix = "";

    /* loaded from: classes.dex */
    public interface CustomLogger {
        /* renamed from: d */
        void m10377d(String str, String str2);

        /* renamed from: d */
        void m10378d(String str, String str2, Throwable th);

        /* renamed from: e */
        void m10379e(String str, String str2);

        /* renamed from: e */
        void m10380e(String str, String str2, Throwable th);

        /* renamed from: i */
        void m10381i(String str, String str2);

        /* renamed from: i */
        void m10382i(String str, String str2, Throwable th);

        /* renamed from: v */
        void m10383v(String str, String str2);

        /* renamed from: v */
        void m10384v(String str, String str2, Throwable th);

        /* renamed from: w */
        void m10385w(String str, String str2);

        /* renamed from: w */
        void m10386w(String str, String str2, Throwable th);

        /* renamed from: w */
        void m10387w(String str, Throwable th);

        void wtf(String str, String str2);

        void wtf(String str, String str2, Throwable th);

        void wtf(String str, Throwable th);
    }

    private LogUtils() {
    }

    /* renamed from: d */
    public static void m10366d(String str) {
        if (allowD) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10377d(generateTag, str);
            } else {
                Log.d(generateTag, str);
            }
        }
    }

    /* renamed from: d */
    public static void m10367d(String str, Throwable th) {
        if (allowD) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10378d(generateTag, str, th);
            } else {
                Log.d(generateTag, str, th);
            }
        }
    }

    /* renamed from: e */
    public static void m10368e(String str) {
        if (allowE) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10379e(generateTag, str);
            } else {
                Log.e(generateTag, str);
            }
        }
    }

    /* renamed from: e */
    public static void m10369e(String str, Throwable th) {
        if (allowE) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10380e(generateTag, str, th);
            } else {
                Log.e(generateTag, str, th);
            }
        }
    }

    private static String generateTag(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String format = String.format("%s.%s(L:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        if (TextUtils.isEmpty(customTagPrefix)) {
            return format;
        }
        return String.valueOf(customTagPrefix) + ":" + format;
    }

    /* renamed from: i */
    public static void m10370i(String str) {
        if (allowI) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10381i(generateTag, str);
            } else {
                Log.i(generateTag, str);
            }
        }
    }

    /* renamed from: i */
    public static void m10371i(String str, Throwable th) {
        if (allowI) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10382i(generateTag, str, th);
            } else {
                Log.i(generateTag, str, th);
            }
        }
    }

    /* renamed from: v */
    public static void m10372v(String str) {
        if (allowV) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10383v(generateTag, str);
            } else {
                Log.v(generateTag, str);
            }
        }
    }

    /* renamed from: v */
    public static void m10373v(String str, Throwable th) {
        if (allowV) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10384v(generateTag, str, th);
            } else {
                Log.v(generateTag, str, th);
            }
        }
    }

    /* renamed from: w */
    public static void m10374w(String str) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10385w(generateTag, str);
            } else {
                Log.w(generateTag, str);
            }
        }
    }

    /* renamed from: w */
    public static void m10375w(String str, Throwable th) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10386w(generateTag, str, th);
            } else {
                Log.w(generateTag, str, th);
            }
        }
    }

    /* renamed from: w */
    public static void m10376w(Throwable th) {
        if (allowW) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.m10387w(generateTag, th);
            } else {
                Log.w(generateTag, th);
            }
        }
    }

    public static void wtf(String str) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, str);
            } else {
                Log.wtf(generateTag, str);
            }
        }
    }

    public static void wtf(String str, Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, str, th);
            } else {
                Log.wtf(generateTag, str, th);
            }
        }
    }

    public static void wtf(Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, th);
            } else {
                Log.wtf(generateTag, th);
            }
        }
    }
}
