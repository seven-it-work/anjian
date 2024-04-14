package com.cyjh.common.util.toast;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.support.annotation.NonNull;
import android.util.Log;
import com.cyjh.common.util.toast.C1179b;
import com.cyjh.common.util.toast.C1192o;

/* renamed from: com.cyjh.common.util.toast.q */
/* loaded from: classes.dex */
public final class C1194q {

    /* renamed from: a */
    @SuppressLint({"StaticFieldLeak"})
    private static Application f4231a;

    /* renamed from: com.cyjh.common.util.toast.q$a */
    /* loaded from: classes.dex */
    public static class a {
        /* renamed from: a */
        private static void m5137a() {
        }

        /* renamed from: b */
        private static void m5138b() {
        }

        /* renamed from: c */
        private static void m5139c() {
        }

        /* renamed from: d */
        private static void m5140d() {
        }

        /* renamed from: e */
        private static void m5141e() {
        }

        /* renamed from: f */
        private static void m5142f() {
        }

        /* renamed from: a */
        public void mo5134a(@NonNull Activity activity) {
        }
    }

    /* renamed from: com.cyjh.common.util.toast.q$b */
    /* loaded from: classes.dex */
    public interface b<T> {
        /* renamed from: a */
        void m5143a();
    }

    /* renamed from: com.cyjh.common.util.toast.q$c */
    /* loaded from: classes.dex */
    public interface c<Ret, Par> {
        /* renamed from: a */
        Ret m5144a();
    }

    /* renamed from: com.cyjh.common.util.toast.q$d */
    /* loaded from: classes.dex */
    public interface d {
        /* renamed from: a */
        void m5145a();

        /* renamed from: b */
        void m5146b();
    }

    /* renamed from: com.cyjh.common.util.toast.q$e */
    /* loaded from: classes.dex */
    public interface e<T> {
        /* renamed from: a */
        T m5147a();
    }

    /* renamed from: com.cyjh.common.util.toast.q$f */
    /* loaded from: classes.dex */
    public static abstract class f<Result> extends C1192o.b<Result> {

        /* renamed from: d */
        private b<Result> f4232d;

        private f(b<Result> bVar) {
            this.f4232d = bVar;
        }

        @Override // com.cyjh.common.util.toast.C1192o.d
        /* renamed from: c */
        public final void mo5062c() {
        }
    }

    private C1194q() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static Application m5135a() {
        if (f4231a != null) {
            return f4231a;
        }
        C1195r c1195r = C1195r.f4233a;
        m5136a(C1195r.m5157b());
        if (f4231a == null) {
            throw new NullPointerException("reflect failed.");
        }
        Log.i("Utils", C1187j.m4878b() + " reflect app success.");
        return f4231a;
    }

    /* renamed from: a */
    public static void m5136a(Application application) {
        if (application == null) {
            Log.e("Utils", "app is null.");
            return;
        }
        if (f4231a == null) {
            f4231a = application;
            C1196s.m5184a(application);
            Runnable[] runnableArr = {new C1179b.AnonymousClass1()};
            for (int i = 0; i <= 0; i++) {
                C1192o.m4972a().execute(runnableArr[0]);
            }
            return;
        }
        if (f4231a.equals(application)) {
            return;
        }
        Application application2 = f4231a;
        C1195r c1195r = C1195r.f4233a;
        c1195r.f4235b.clear();
        application2.unregisterActivityLifecycleCallbacks(c1195r);
        f4231a = application;
        C1196s.m5184a(application);
    }
}
