package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import com.p021b.p032b.C0783f;
import com.p021b.p032b.InterfaceC0785h;
import java.io.Closeable;

/* renamed from: com.b.a.au */
/* loaded from: classes.dex */
public abstract class AbstractC0748au implements Closeable {
    /* renamed from: a */
    public static AbstractC0748au m1939a(byte[] bArr) {
        C0783f mo2039b = new C0783f().mo2039b(bArr);
        long length = bArr.length;
        if (mo2039b == null) {
            throw new NullPointerException("source == null");
        }
        return new C0749av(length, mo2039b);
    }

    /* renamed from: a */
    public abstract C0735ah mo1647a();

    /* renamed from: b */
    public abstract long mo1648b();

    /* renamed from: c */
    public abstract InterfaceC0785h mo1649c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C0650c.m1612a(mo1649c());
    }

    /* renamed from: d */
    public final String m1940d() {
        InterfaceC0785h mo1649c = mo1649c();
        try {
            C0735ah mo1647a = mo1647a();
            return mo1649c.mo2033a(C0650c.m1607a(mo1649c, mo1647a != null ? mo1647a.m1864a(C0650c.f1503e) : C0650c.f1503e));
        } finally {
            C0650c.m1612a(mo1649c);
        }
    }
}
