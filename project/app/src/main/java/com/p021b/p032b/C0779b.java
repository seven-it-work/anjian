package com.p021b.p032b;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.b.b.b */
/* loaded from: classes.dex */
public final class C0779b implements InterfaceC0800w {

    /* renamed from: a */
    final /* synthetic */ InterfaceC0800w f2136a;

    /* renamed from: b */
    final /* synthetic */ C0777a f2137b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0779b(C0777a c0777a, InterfaceC0800w interfaceC0800w) {
        this.f2137b = c0777a;
        this.f2136a = interfaceC0800w;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a */
    public final C0802y mo1662a() {
        return this.f2137b;
    }

    @Override // com.p021b.p032b.InterfaceC0800w
    /* renamed from: a_ */
    public final void mo1663a_(C0783f c0783f, long j) {
        C0778aa.m2015a(c0783f.f2144b, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            C0797t c0797t = c0783f.f2143a;
            while (true) {
                if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    break;
                }
                long j3 = j2 + (c0783f.f2143a.f2175c - c0783f.f2143a.f2174b);
                if (j3 >= j) {
                    j2 = j;
                    break;
                }
                j2 = j3;
            }
            this.f2137b.m2012c();
            try {
                try {
                    this.f2136a.mo1663a_(c0783f, j2);
                    this.f2137b.m2009a(true);
                    j -= j2;
                } catch (IOException e) {
                    throw this.f2137b.m2011b(e);
                }
            } catch (Throwable th) {
                this.f2137b.m2009a(false);
                throw th;
            }
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2137b.m2012c();
        try {
            try {
                this.f2136a.close();
                this.f2137b.m2009a(true);
            } catch (IOException e) {
                throw this.f2137b.m2011b(e);
            }
        } catch (Throwable th) {
            this.f2137b.m2009a(false);
            throw th;
        }
    }

    @Override // com.p021b.p032b.InterfaceC0800w, java.io.Flushable
    public final void flush() {
        this.f2137b.m2012c();
        try {
            try {
                this.f2136a.flush();
                this.f2137b.m2009a(true);
            } catch (IOException e) {
                throw this.f2137b.m2011b(e);
            }
        } catch (Throwable th) {
            this.f2137b.m2009a(false);
            throw th;
        }
    }

    public final String toString() {
        return "AsyncTimeout.sink(" + this.f2136a + ")";
    }
}
