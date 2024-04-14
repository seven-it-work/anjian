package org.junit.runner.p233b;

import org.junit.runner.C2980c;
import org.junit.runner.C2986i;
import org.junit.runner.p233b.C2976b;

/* JADX INFO: Access modifiers changed from: package-private */
@C2976b.a
/* renamed from: org.junit.runner.b.e */
/* loaded from: classes2.dex */
public final class C2979e extends C2976b {

    /* renamed from: a */
    private final C2976b f10923a;

    /* renamed from: b */
    private final Object f10924b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2979e(C2976b c2976b, Object obj) {
        this.f10923a = c2976b;
        this.f10924b = obj;
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: a */
    public final void mo11739a(C2975a c2975a) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo11739a(c2975a);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: a */
    public final void mo11740a(C2980c c2980c) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo11740a(c2980c);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: a */
    public final void mo12760a(C2986i c2986i) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo12760a(c2986i);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: b */
    public final void mo13356b(C2975a c2975a) {
        synchronized (this.f10924b) {
            this.f10923a.mo13356b(c2975a);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: b */
    public final void mo11741b(C2980c c2980c) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo11741b(c2980c);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: c */
    public final void mo13000c(C2980c c2980c) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo13000c(c2980c);
        }
    }

    @Override // org.junit.runner.p233b.C2976b
    /* renamed from: d */
    public final void mo13357d(C2980c c2980c) throws Exception {
        synchronized (this.f10924b) {
            this.f10923a.mo13357d(c2980c);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2979e) {
            return this.f10923a.equals(((C2979e) obj).f10923a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10923a.hashCode();
    }

    public final String toString() {
        return this.f10923a.toString() + " (with synchronization wrapper)";
    }
}
