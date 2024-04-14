package com.bumptech.glide.load.p042b.p044b;

import android.util.Log;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p042b.p044b.C0890c;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import com.bumptech.glide.p035b.C0813a;
import java.io.File;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.b.b.e */
/* loaded from: classes.dex */
public final class C0892e implements InterfaceC0888a {

    /* renamed from: a */
    private static final String f2579a = "DiskLruCacheWrapper";

    /* renamed from: b */
    private static final int f2580b = 1;

    /* renamed from: c */
    private static final int f2581c = 1;

    /* renamed from: d */
    private static C0892e f2582d;

    /* renamed from: f */
    private final File f2584f;

    /* renamed from: g */
    private final long f2585g;

    /* renamed from: i */
    private C0813a f2587i;

    /* renamed from: h */
    private final C0890c f2586h = new C0890c();

    /* renamed from: e */
    private final C0900m f2583e = new C0900m();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public C0892e(File file, long j) {
        this.f2584f = file;
        this.f2585g = j;
    }

    @Deprecated
    /* renamed from: a */
    private static synchronized InterfaceC0888a m2540a(File file, long j) {
        C0892e c0892e;
        synchronized (C0892e.class) {
            if (f2582d == null) {
                f2582d = new C0892e(file, j);
            }
            c0892e = f2582d;
        }
        return c0892e;
    }

    /* renamed from: b */
    private synchronized C0813a m2541b() throws IOException {
        if (this.f2587i == null) {
            this.f2587i = C0813a.m2127a(this.f2584f, this.f2585g);
        }
        return this.f2587i;
    }

    /* renamed from: b */
    private static InterfaceC0888a m2542b(File file, long j) {
        return new C0892e(file, j);
    }

    /* renamed from: c */
    private synchronized void m2543c() {
        this.f2587i = null;
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a
    /* renamed from: a */
    public final File mo2529a(InterfaceC1022g interfaceC1022g) {
        String m2574a = this.f2583e.m2574a(interfaceC1022g);
        if (Log.isLoggable(f2579a, 2)) {
            Log.v(f2579a, "Get: Obtained: " + m2574a + " for for Key: " + interfaceC1022g);
        }
        try {
            C0813a.d m2156a = m2541b().m2156a(m2574a);
            if (m2156a != null) {
                return m2156a.f2234a[0];
            }
        } catch (IOException e) {
            if (Log.isLoggable(f2579a, 5)) {
                Log.w(f2579a, "Unable to get from disk cache", e);
            }
        }
        return null;
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a
    /* renamed from: a */
    public final synchronized void mo2530a() {
        try {
            try {
                m2541b().m2157a();
            } finally {
                m2543c();
            }
        } catch (IOException e) {
            if (Log.isLoggable(f2579a, 5)) {
                Log.w(f2579a, "Unable to clear disk cache or disk cache cleared externally", e);
            }
        }
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a
    /* renamed from: a */
    public final void mo2531a(InterfaceC1022g interfaceC1022g, InterfaceC0888a.b bVar) {
        C0890c.a aVar;
        String m2574a = this.f2583e.m2574a(interfaceC1022g);
        C0890c c0890c = this.f2586h;
        synchronized (c0890c) {
            aVar = c0890c.f2568a.get(m2574a);
            if (aVar == null) {
                aVar = c0890c.f2569b.m2538a();
                c0890c.f2568a.put(m2574a, aVar);
            }
            aVar.f2571b++;
        }
        aVar.f2570a.lock();
        try {
            if (Log.isLoggable(f2579a, 2)) {
                Log.v(f2579a, "Put: Obtained: " + m2574a + " for for Key: " + interfaceC1022g);
            }
            try {
                C0813a m2541b = m2541b();
                if (m2541b.m2156a(m2574a) == null) {
                    C0813a.b m2155a = m2541b.m2155a(m2574a, -1L);
                    if (m2155a == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: " + m2574a);
                    }
                    try {
                        if (bVar.mo2534a(m2155a.m2166a(0))) {
                            C0813a.this.m2131a(m2155a, true);
                            m2155a.f2224c = true;
                        }
                        m2155a.m2168b();
                    } catch (Throwable th) {
                        m2155a.m2168b();
                        throw th;
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable(f2579a, 5)) {
                    Log.w(f2579a, "Unable to put to disk cache", e);
                }
            }
        } finally {
            this.f2586h.m2536a(m2574a);
        }
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a
    /* renamed from: b */
    public final void mo2532b(InterfaceC1022g interfaceC1022g) {
        try {
            m2541b().m2158b(this.f2583e.m2574a(interfaceC1022g));
        } catch (IOException e) {
            if (Log.isLoggable(f2579a, 5)) {
                Log.w(f2579a, "Unable to delete from disk cache", e);
            }
        }
    }
}
