package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* renamed from: com.android.volley.t */
/* loaded from: classes.dex */
public class C0607t {

    /* renamed from: a */
    public static String f1295a = "Volley";

    /* renamed from: b */
    public static boolean f1296b = Log.isLoggable("Volley", 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.volley.t$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public static final boolean f1297a = C0607t.f1296b;

        /* renamed from: b */
        private static final long f1298b = 0;

        /* renamed from: c */
        private final List<C3065a> f1299c = new ArrayList();

        /* renamed from: d */
        private boolean f1300d = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.android.volley.t$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C3065a {

            /* renamed from: a */
            public final String f1301a;

            /* renamed from: b */
            public final long f1302b;

            /* renamed from: c */
            public final long f1303c;

            public C3065a(String str, long j, long j2) {
                this.f1301a = str;
                this.f1302b = j;
                this.f1303c = j2;
            }
        }

        /* renamed from: a */
        private long m1417a() {
            if (this.f1299c.size() == 0) {
                return 0L;
            }
            return this.f1299c.get(this.f1299c.size() - 1).f1303c - this.f1299c.get(0).f1303c;
        }

        /* renamed from: a */
        public final synchronized void m1418a(String str) {
            this.f1300d = true;
            long j = this.f1299c.size() == 0 ? 0L : this.f1299c.get(this.f1299c.size() - 1).f1303c - this.f1299c.get(0).f1303c;
            if (j <= 0) {
                return;
            }
            long j2 = this.f1299c.get(0).f1303c;
            C0607t.m1412b("(%-4d ms) %s", Long.valueOf(j), str);
            for (C3065a c3065a : this.f1299c) {
                long j3 = c3065a.f1303c;
                C0607t.m1412b("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c3065a.f1302b), c3065a.f1301a);
                j2 = j3;
            }
        }

        /* renamed from: a */
        public final synchronized void m1419a(String str, long j) {
            if (this.f1300d) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f1299c.add(new C3065a(str, j, SystemClock.elapsedRealtime()));
        }

        protected final void finalize() throws Throwable {
            if (this.f1300d) {
                return;
            }
            m1418a("Request on the loose");
            C0607t.m1414c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    /* renamed from: a */
    private static void m1409a(String str) {
        m1412b("Changing log tag to %s", str);
        f1295a = str;
        f1296b = Log.isLoggable(str, 2);
    }

    /* renamed from: a */
    public static void m1410a(String str, Object... objArr) {
        if (f1296b) {
            Log.v(f1295a, m1416e(str, objArr));
        }
    }

    /* renamed from: a */
    public static void m1411a(Throwable th, String str, Object... objArr) {
        Log.e(f1295a, m1416e(str, objArr), th);
    }

    /* renamed from: b */
    public static void m1412b(String str, Object... objArr) {
        Log.d(f1295a, m1416e(str, objArr));
    }

    /* renamed from: b */
    private static void m1413b(Throwable th, String str, Object... objArr) {
        Log.wtf(f1295a, m1416e(str, objArr), th);
    }

    /* renamed from: c */
    public static void m1414c(String str, Object... objArr) {
        Log.e(f1295a, m1416e(str, objArr));
    }

    /* renamed from: d */
    public static void m1415d(String str, Object... objArr) {
        Log.wtf(f1295a, m1416e(str, objArr));
    }

    /* renamed from: e */
    private static String m1416e(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str2 = "<unknown>";
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                break;
            }
            if (!stackTrace[i].getClass().equals(C0607t.class)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }
}
