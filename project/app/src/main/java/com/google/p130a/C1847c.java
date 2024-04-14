package com.google.p130a;

import com.google.p130a.p137c.C1848a;
import com.google.p130a.p137c.C1852b;

/* renamed from: com.google.a.c */
/* loaded from: classes.dex */
public final class C1847c {

    /* renamed from: a */
    public final AbstractC1809b f7240a;

    /* renamed from: b */
    private C1852b f7241b;

    public C1847c(AbstractC1809b abstractC1809b) {
        if (abstractC1809b == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f7240a = abstractC1809b;
    }

    /* renamed from: a */
    private C1848a m8423a(int i, C1848a c1848a) throws C2016m {
        return this.f7240a.mo8254a(i, c1848a);
    }

    /* renamed from: d */
    private boolean m8424d() {
        return this.f7240a.f7128a.mo9100b();
    }

    /* renamed from: e */
    private boolean m8425e() {
        return this.f7240a.f7128a.mo9101c();
    }

    /* renamed from: f */
    private C1847c m8426f() {
        return new C1847c(this.f7240a.mo8253a(this.f7240a.f7128a.mo9103e()));
    }

    /* renamed from: g */
    private C1847c m8427g() {
        return new C1847c(this.f7240a.mo8253a(this.f7240a.f7128a.mo9104f()));
    }

    /* renamed from: a */
    public final int m8428a() {
        return this.f7240a.f7128a.f7878a;
    }

    /* renamed from: a */
    public final C1847c m8429a(int i, int i2, int i3, int i4) {
        return new C1847c(this.f7240a.mo8253a(this.f7240a.f7128a.mo9097a(i, i2, i3, i4)));
    }

    /* renamed from: b */
    public final int m8430b() {
        return this.f7240a.f7128a.f7879b;
    }

    /* renamed from: c */
    public final C1852b m8431c() throws C2016m {
        if (this.f7241b == null) {
            this.f7241b = this.f7240a.mo8255a();
        }
        return this.f7241b;
    }

    public final String toString() {
        try {
            return m8431c().toString();
        } catch (C2016m unused) {
            return "";
        }
    }
}
