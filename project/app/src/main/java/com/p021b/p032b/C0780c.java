package com.p021b.p032b;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.c */
/* loaded from: classes.dex */
public final class C0780c implements InterfaceC0801x {

    /* renamed from: a */
    final /* synthetic */ InterfaceC0801x f2138a;

    /* renamed from: b */
    final /* synthetic */ C0777a f2139b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0780c(C0777a c0777a, InterfaceC0801x interfaceC0801x) {
        this.f2139b = c0777a;
        this.f2138a = interfaceC0801x;
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final long mo1543a(C0783f c0783f, long j) {
        this.f2139b.m2012c();
        try {
            try {
                long mo1543a = this.f2138a.mo1543a(c0783f, j);
                this.f2139b.m2009a(true);
                return mo1543a;
            } catch (IOException e) {
                throw this.f2139b.m2011b(e);
            }
        } catch (Throwable th) {
            this.f2139b.m2009a(false);
            throw th;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0801x
    /* renamed from: a */
    public final C0802y mo1544a() {
        return this.f2139b;
    }

    @Override // com.p021b.p032b.InterfaceC0801x, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            try {
                this.f2138a.close();
                this.f2139b.m2009a(true);
            } catch (IOException e) {
                throw this.f2139b.m2011b(e);
            }
        } catch (Throwable th) {
            this.f2139b.m2009a(false);
            throw th;
        }
    }

    public final String toString() {
        return "AsyncTimeout.source(" + this.f2138a + ")";
    }
}
