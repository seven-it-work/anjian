package com.didi.virtualapk.utils;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public class Reflector {
    public static final String LOG_TAG = "VA.Reflector";
    protected Object mCaller;
    protected Constructor mConstructor;
    protected Field mField;
    protected Method mMethod;
    protected Class<?> mType;

    /* loaded from: classes.dex */
    public static class QuietReflector extends Reflector {
        protected Throwable mIgnored;

        protected QuietReflector() {
        }

        /* renamed from: on */
        public static QuietReflector m7765on(@Nullable Class<?> cls) {
            return m7766on(cls, cls == null ? new ReflectedException("Type was null!") : null);
        }

        /* renamed from: on */
        private static QuietReflector m7766on(@Nullable Class<?> cls, @Nullable Throwable th) {
            QuietReflector quietReflector = new QuietReflector();
            quietReflector.mType = cls;
            quietReflector.mIgnored = th;
            return quietReflector;
        }

        /* renamed from: on */
        public static QuietReflector m7767on(@NonNull String str) {
            return m7769on(str, true, QuietReflector.class.getClassLoader());
        }

        /* renamed from: on */
        public static QuietReflector m7768on(@NonNull String str, boolean z) {
            return m7769on(str, z, QuietReflector.class.getClassLoader());
        }

        /* renamed from: on */
        public static QuietReflector m7769on(@NonNull String str, boolean z, @Nullable ClassLoader classLoader) {
            Class<?> cls;
            try {
                cls = Class.forName(str, z, classLoader);
            } catch (Throwable th) {
                th = th;
                cls = null;
            }
            try {
                return m7766on(cls, (Throwable) null);
            } catch (Throwable th2) {
                th = th2;
                return m7766on(cls, th);
            }
        }

        public static QuietReflector with(@Nullable Object obj) {
            return obj == null ? m7765on((Class<?>) null) : m7765on(obj.getClass()).bind(obj);
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector bind(@Nullable Object obj) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.bind(obj);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public <R> R call(@Nullable Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) super.call(objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public <R> R callByCaller(@Nullable Object obj, @Nullable Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) super.callByCaller(obj, objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector constructor(@Nullable Class<?>... clsArr) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.constructor(clsArr);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public /* bridge */ /* synthetic */ Reflector constructor(@Nullable Class[] clsArr) throws ReflectedException {
            return constructor((Class<?>[]) clsArr);
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector field(@NonNull String str) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.field(str);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public <R> R get() {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) super.get();
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public <R> R get(@Nullable Object obj) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) super.get(obj);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        public Throwable getIgnored() {
            return this.mIgnored;
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector method(@NonNull String str, @Nullable Class<?>... clsArr) {
            if (skipAlways()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.method(str, clsArr);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public /* bridge */ /* synthetic */ Reflector method(@NonNull String str, @Nullable Class[] clsArr) throws ReflectedException {
            return method(str, (Class<?>[]) clsArr);
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public <R> R newInstance(@Nullable Object... objArr) {
            if (skip()) {
                return null;
            }
            try {
                this.mIgnored = null;
                return (R) super.newInstance(objArr);
            } catch (Throwable th) {
                this.mIgnored = th;
                return null;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector set(@Nullable Object obj) {
            if (skip()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.set(obj);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector set(@Nullable Object obj, @Nullable Object obj2) {
            if (skip()) {
                return this;
            }
            try {
                this.mIgnored = null;
                super.set(obj, obj2);
                return this;
            } catch (Throwable th) {
                this.mIgnored = th;
                return this;
            }
        }

        protected boolean skip() {
            return skipAlways() || this.mIgnored != null;
        }

        protected boolean skipAlways() {
            return this.mType == null;
        }

        @Override // com.didi.virtualapk.utils.Reflector
        public QuietReflector unbind() {
            super.unbind();
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class ReflectedException extends Exception {
        public ReflectedException(String str) {
            super(str);
        }

        public ReflectedException(String str, Throwable th) {
            super(str, th);
        }
    }

    protected Reflector() {
    }

    /* renamed from: on */
    public static Reflector m7761on(@NonNull Class<?> cls) {
        Reflector reflector = new Reflector();
        reflector.mType = cls;
        return reflector;
    }

    /* renamed from: on */
    public static Reflector m7762on(@NonNull String str) throws ReflectedException {
        return m7764on(str, true, Reflector.class.getClassLoader());
    }

    /* renamed from: on */
    public static Reflector m7763on(@NonNull String str, boolean z) throws ReflectedException {
        return m7764on(str, z, Reflector.class.getClassLoader());
    }

    /* renamed from: on */
    public static Reflector m7764on(@NonNull String str, boolean z, @Nullable ClassLoader classLoader) throws ReflectedException {
        try {
            return m7761on(Class.forName(str, z, classLoader));
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    public static Reflector with(@NonNull Object obj) throws ReflectedException {
        return m7761on(obj.getClass()).bind(obj);
    }

    public Reflector bind(@Nullable Object obj) throws ReflectedException {
        this.mCaller = checked(obj);
        return this;
    }

    public <R> R call(@Nullable Object... objArr) throws ReflectedException {
        return (R) callByCaller(this.mCaller, objArr);
    }

    public <R> R callByCaller(@Nullable Object obj, @Nullable Object... objArr) throws ReflectedException {
        check(obj, this.mMethod, "Method");
        try {
            return (R) this.mMethod.invoke(obj, objArr);
        } catch (InvocationTargetException e) {
            throw new ReflectedException("Oops!", e.getTargetException());
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    protected void check(@Nullable Object obj, @Nullable Member member, @NonNull String str) throws ReflectedException {
        if (member == null) {
            throw new ReflectedException(str + " was null!");
        }
        if (obj == null && !Modifier.isStatic(member.getModifiers())) {
            throw new ReflectedException("Need a caller!");
        }
        checked(obj);
    }

    protected Object checked(@Nullable Object obj) throws ReflectedException {
        if (obj == null || this.mType.isInstance(obj)) {
            return obj;
        }
        throw new ReflectedException("Caller [" + obj + "] is not a instance of type [" + this.mType + "]!");
    }

    public Reflector constructor(@Nullable Class<?>... clsArr) throws ReflectedException {
        try {
            this.mConstructor = this.mType.getDeclaredConstructor(clsArr);
            this.mConstructor.setAccessible(true);
            this.mField = null;
            this.mMethod = null;
            return this;
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    public Reflector field(@NonNull String str) throws ReflectedException {
        try {
            this.mField = findField(str);
            this.mField.setAccessible(true);
            this.mConstructor = null;
            this.mMethod = null;
            return this;
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    protected Field findField(@NonNull String str) throws NoSuchFieldException {
        try {
            return this.mType.getField(str);
        } catch (NoSuchFieldException e) {
            for (Class<?> cls = this.mType; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredField(str);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e;
        }
    }

    protected Method findMethod(@NonNull String str, @Nullable Class<?>... clsArr) throws NoSuchMethodException {
        try {
            return this.mType.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            for (Class<?> cls = this.mType; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                }
            }
            throw e;
        }
    }

    public <R> R get() throws ReflectedException {
        return (R) get(this.mCaller);
    }

    public <R> R get(@Nullable Object obj) throws ReflectedException {
        check(obj, this.mField, "Field");
        try {
            return (R) this.mField.get(obj);
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    public Reflector method(@NonNull String str, @Nullable Class<?>... clsArr) throws ReflectedException {
        try {
            this.mMethod = findMethod(str, clsArr);
            this.mMethod.setAccessible(true);
            this.mConstructor = null;
            this.mField = null;
            return this;
        } catch (NoSuchMethodException e) {
            throw new ReflectedException("Oops!", e);
        }
    }

    public <R> R newInstance(@Nullable Object... objArr) throws ReflectedException {
        if (this.mConstructor == null) {
            throw new ReflectedException("Constructor was null!");
        }
        try {
            return (R) this.mConstructor.newInstance(objArr);
        } catch (InvocationTargetException e) {
            throw new ReflectedException("Oops!", e.getTargetException());
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    public Reflector set(@Nullable Object obj) throws ReflectedException {
        return set(this.mCaller, obj);
    }

    public Reflector set(@Nullable Object obj, @Nullable Object obj2) throws ReflectedException {
        check(obj, this.mField, "Field");
        try {
            this.mField.set(obj, obj2);
            return this;
        } catch (Throwable th) {
            throw new ReflectedException("Oops!", th);
        }
    }

    public Reflector unbind() {
        this.mCaller = null;
        return this;
    }
}
