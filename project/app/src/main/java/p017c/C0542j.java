package p017c;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* renamed from: c.j */
/* loaded from: classes.dex */
public final class C0542j extends C0558z {

    /* renamed from: a */
    public C0558z f1093a;

    public C0542j(C0558z c0558z) {
        if (c0558z == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f1093a = c0558z;
    }

    /* renamed from: a */
    private C0542j m1182a(C0558z c0558z) {
        if (c0558z == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f1093a = c0558z;
        return this;
    }

    /* renamed from: g */
    private C0558z m1183g() {
        return this.f1093a;
    }

    @Override // p017c.C0558z
    /* renamed from: a */
    public final C0558z mo1184a(long j) {
        return this.f1093a.mo1184a(j);
    }

    @Override // p017c.C0558z
    /* renamed from: a */
    public final C0558z mo1185a(long j, TimeUnit timeUnit) {
        return this.f1093a.mo1185a(j, timeUnit);
    }

    @Override // p017c.C0558z
    /* renamed from: c */
    public final long mo1186c() {
        return this.f1093a.mo1186c();
    }

    @Override // p017c.C0558z
    /* renamed from: d */
    public final C0558z mo1187d() {
        return this.f1093a.mo1187d();
    }

    @Override // p017c.C0558z
    /* renamed from: f */
    public final void mo1188f() throws IOException {
        this.f1093a.mo1188f();
    }

    @Override // p017c.C0558z
    /* renamed from: l_ */
    public final long mo1189l_() {
        return this.f1093a.mo1189l_();
    }

    @Override // p017c.C0558z
    /* renamed from: m_ */
    public final boolean mo1190m_() {
        return this.f1093a.mo1190m_();
    }

    @Override // p017c.C0558z
    /* renamed from: n_ */
    public final C0558z mo1191n_() {
        return this.f1093a.mo1191n_();
    }
}
