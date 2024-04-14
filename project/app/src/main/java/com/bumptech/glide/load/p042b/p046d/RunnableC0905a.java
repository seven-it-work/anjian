package com.bumptech.glide.load.p042b.p046d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.load.p049d.p050a.C0971f;
import com.bumptech.glide.util.C1086k;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.load.b.d.a */
/* loaded from: classes.dex */
public final class RunnableC0905a implements Runnable {

    /* renamed from: a */
    @VisibleForTesting
    static final String f2651a = "PreFillRunner";

    /* renamed from: b */
    static final long f2652b = 32;

    /* renamed from: c */
    static final long f2653c = 40;

    /* renamed from: d */
    static final int f2654d = 4;

    /* renamed from: f */
    public boolean f2657f;

    /* renamed from: h */
    private final InterfaceC0875e f2658h;

    /* renamed from: i */
    private final InterfaceC0897j f2659i;

    /* renamed from: j */
    private final C0907c f2660j;

    /* renamed from: k */
    private final a f2661k;

    /* renamed from: l */
    private final Set<C0908d> f2662l;

    /* renamed from: m */
    private final Handler f2663m;

    /* renamed from: n */
    private long f2664n;

    /* renamed from: g */
    private static final a f2656g = new a();

    /* renamed from: e */
    static final long f2655e = TimeUnit.SECONDS.toMillis(1);

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.d.a$a */
    /* loaded from: classes.dex */
    static class a {
        a() {
        }

        /* renamed from: a */
        private static long m2597a() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    /* renamed from: com.bumptech.glide.load.b.d.a$b */
    /* loaded from: classes.dex */
    private static final class b implements InterfaceC1022g {
        b() {
        }

        @Override // com.bumptech.glide.load.InterfaceC1022g
        /* renamed from: a */
        public final void mo2330a(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public RunnableC0905a(InterfaceC0875e interfaceC0875e, InterfaceC0897j interfaceC0897j, C0907c c0907c) {
        this(interfaceC0875e, interfaceC0897j, c0907c, f2656g, new Handler(Looper.getMainLooper()));
    }

    @VisibleForTesting
    private RunnableC0905a(InterfaceC0875e interfaceC0875e, InterfaceC0897j interfaceC0897j, C0907c c0907c, a aVar, Handler handler) {
        this.f2662l = new HashSet();
        this.f2664n = f2653c;
        this.f2658h = interfaceC0875e;
        this.f2659i = interfaceC0897j;
        this.f2660j = c0907c;
        this.f2661k = aVar;
        this.f2663m = handler;
    }

    /* renamed from: a */
    private void m2592a() {
        this.f2657f = true;
    }

    /* renamed from: a */
    private static boolean m2593a(long j) {
        return SystemClock.currentThreadTimeMillis() - j >= 32;
    }

    @VisibleForTesting
    /* renamed from: b */
    private boolean m2594b() {
        Bitmap createBitmap;
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        while (true) {
            if (!this.f2660j.m2603a()) {
                if (SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis >= 32) {
                    break;
                }
                C0907c c0907c = this.f2660j;
                C0908d c0908d = c0907c.f2671b.get(c0907c.f2673d);
                Integer num = c0907c.f2670a.get(c0908d);
                if (num.intValue() == 1) {
                    c0907c.f2670a.remove(c0908d);
                    c0907c.f2671b.remove(c0907c.f2673d);
                } else {
                    c0907c.f2670a.put(c0908d, Integer.valueOf(num.intValue() - 1));
                }
                c0907c.f2672c--;
                c0907c.f2673d = c0907c.f2671b.isEmpty() ? 0 : (c0907c.f2673d + 1) % c0907c.f2671b.size();
                if (this.f2662l.contains(c0908d)) {
                    createBitmap = Bitmap.createBitmap(c0908d.f2675b, c0908d.f2676c, c0908d.f2677d);
                } else {
                    this.f2662l.add(c0908d);
                    createBitmap = this.f2658h.mo2470b(c0908d.f2675b, c0908d.f2676c, c0908d.f2677d);
                }
                int m3477a = C1086k.m3477a(createBitmap);
                if (this.f2659i.mo2554b() - this.f2659i.mo2552a() >= m3477a) {
                    this.f2659i.mo2548a(new b(), C0971f.m2867a(createBitmap, this.f2658h));
                } else {
                    this.f2658h.mo2469a(createBitmap);
                }
                if (Log.isLoggable(f2651a, 3)) {
                    Log.d(f2651a, "allocated [" + c0908d.f2675b + "x" + c0908d.f2676c + "] " + c0908d.f2677d + " size: " + m3477a);
                }
            } else {
                break;
            }
        }
        return (this.f2657f || this.f2660j.m2603a()) ? false : true;
    }

    /* renamed from: c */
    private long m2595c() {
        return this.f2659i.mo2554b() - this.f2659i.mo2552a();
    }

    /* renamed from: d */
    private long m2596d() {
        long j = this.f2664n;
        this.f2664n = Math.min(this.f2664n * 4, f2655e);
        return j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        Bitmap createBitmap;
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        while (true) {
            if (!this.f2660j.m2603a()) {
                if (SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis >= 32) {
                    break;
                }
                C0907c c0907c = this.f2660j;
                C0908d c0908d = c0907c.f2671b.get(c0907c.f2673d);
                Integer num = c0907c.f2670a.get(c0908d);
                if (num.intValue() == 1) {
                    c0907c.f2670a.remove(c0908d);
                    c0907c.f2671b.remove(c0907c.f2673d);
                } else {
                    c0907c.f2670a.put(c0908d, Integer.valueOf(num.intValue() - 1));
                }
                c0907c.f2672c--;
                c0907c.f2673d = c0907c.f2671b.isEmpty() ? 0 : (c0907c.f2673d + 1) % c0907c.f2671b.size();
                if (this.f2662l.contains(c0908d)) {
                    createBitmap = Bitmap.createBitmap(c0908d.f2675b, c0908d.f2676c, c0908d.f2677d);
                } else {
                    this.f2662l.add(c0908d);
                    createBitmap = this.f2658h.mo2470b(c0908d.f2675b, c0908d.f2676c, c0908d.f2677d);
                }
                int m3477a = C1086k.m3477a(createBitmap);
                if (this.f2659i.mo2554b() - this.f2659i.mo2552a() >= m3477a) {
                    this.f2659i.mo2548a(new b(), C0971f.m2867a(createBitmap, this.f2658h));
                } else {
                    this.f2658h.mo2469a(createBitmap);
                }
                if (Log.isLoggable(f2651a, 3)) {
                    Log.d(f2651a, "allocated [" + c0908d.f2675b + "x" + c0908d.f2676c + "] " + c0908d.f2677d + " size: " + m3477a);
                }
            } else {
                break;
            }
        }
        if (!this.f2657f && !this.f2660j.m2603a()) {
            i = 1;
        }
        if (i != 0) {
            Handler handler = this.f2663m;
            long j = this.f2664n;
            this.f2664n = Math.min(this.f2664n * 4, f2655e);
            handler.postDelayed(this, j);
        }
    }
}
