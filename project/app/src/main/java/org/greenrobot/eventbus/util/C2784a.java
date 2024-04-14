package org.greenrobot.eventbus.util;

import android.app.Activity;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.C2772c;

/* renamed from: org.greenrobot.eventbus.util.a */
/* loaded from: classes2.dex */
public final class C2784a {

    /* renamed from: a */
    final Constructor<?> f10569a;

    /* renamed from: b */
    final C2772c f10570b;

    /* renamed from: c */
    final Object f10571c;

    /* renamed from: d */
    private final Executor f10572d;

    /* renamed from: org.greenrobot.eventbus.util.a$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a */
        private Executor f10575a;

        /* renamed from: b */
        private Class<?> f10576b;

        /* renamed from: c */
        private C2772c f10577c;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* renamed from: a */
        private a m12565a(Class<?> cls) {
            this.f10576b = cls;
            return this;
        }

        /* renamed from: a */
        private a m12566a(Executor executor) {
            this.f10575a = executor;
            return this;
        }

        /* renamed from: a */
        private a m12567a(C2772c c2772c) {
            this.f10577c = c2772c;
            return this;
        }

        /* renamed from: a */
        private C2784a m12568a() {
            return m12570a((Object) null);
        }

        /* renamed from: a */
        private C2784a m12569a(Activity activity) {
            return m12570a((Object) activity.getClass());
        }

        /* renamed from: a */
        public final C2784a m12570a(Object obj) {
            if (this.f10577c == null) {
                this.f10577c = C2772c.m12482a();
            }
            if (this.f10575a == null) {
                this.f10575a = Executors.newCachedThreadPool();
            }
            if (this.f10576b == null) {
                this.f10576b = C2789f.class;
            }
            return new C2784a(this.f10575a, this.f10577c, this.f10576b, obj, (byte) 0);
        }
    }

    /* renamed from: org.greenrobot.eventbus.util.a$b */
    /* loaded from: classes2.dex */
    public interface b {
        /* renamed from: a */
        void m12571a() throws Exception;
    }

    private C2784a(Executor executor, C2772c c2772c, Class<?> cls, Object obj) {
        this.f10572d = executor;
        this.f10570b = c2772c;
        this.f10571c = obj;
        try {
            this.f10569a = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e);
        }
    }

    /* synthetic */ C2784a(Executor executor, C2772c c2772c, Class cls, Object obj, byte b2) {
        this(executor, c2772c, cls, obj);
    }

    /* renamed from: a */
    private static a m12560a() {
        return new a((byte) 0);
    }

    /* renamed from: a */
    private void m12561a(final b bVar) {
        this.f10572d.execute(new Runnable() { // from class: org.greenrobot.eventbus.util.a.1
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    /* renamed from: b */
    private static C2784a m12563b() {
        return new a((byte) 0).m12570a((Object) null);
    }
}
