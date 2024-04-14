package com.bumptech.glide.load.p042b.p043a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.b.a.k */
/* loaded from: classes.dex */
public final class C0881k implements InterfaceC0875e {

    /* renamed from: a */
    private static final String f2525a = "LruBitmapPool";

    /* renamed from: b */
    private static final Bitmap.Config f2526b = Bitmap.Config.ARGB_8888;

    /* renamed from: c */
    private final InterfaceC0882l f2527c;

    /* renamed from: d */
    private final Set<Bitmap.Config> f2528d;

    /* renamed from: e */
    private final long f2529e;

    /* renamed from: f */
    private final a f2530f;

    /* renamed from: g */
    private long f2531g;

    /* renamed from: h */
    private long f2532h;

    /* renamed from: i */
    private int f2533i;

    /* renamed from: j */
    private int f2534j;

    /* renamed from: k */
    private int f2535k;

    /* renamed from: l */
    private int f2536l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.a.k$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo2510a(Bitmap bitmap);

        /* renamed from: b */
        void mo2511b(Bitmap bitmap);
    }

    /* renamed from: com.bumptech.glide.load.b.a.k$b */
    /* loaded from: classes.dex */
    private static final class b implements a {
        b() {
        }

        @Override // com.bumptech.glide.load.p042b.p043a.C0881k.a
        /* renamed from: a */
        public final void mo2510a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.p042b.p043a.C0881k.a
        /* renamed from: b */
        public final void mo2511b(Bitmap bitmap) {
        }
    }

    /* renamed from: com.bumptech.glide.load.b.a.k$c */
    /* loaded from: classes.dex */
    private static class c implements a {

        /* renamed from: a */
        private final Set<Bitmap> f2537a = Collections.synchronizedSet(new HashSet());

        private c() {
        }

        @Override // com.bumptech.glide.load.p042b.p043a.C0881k.a
        /* renamed from: a */
        public final void mo2510a(Bitmap bitmap) {
            if (!this.f2537a.contains(bitmap)) {
                this.f2537a.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }

        @Override // com.bumptech.glide.load.p042b.p043a.C0881k.a
        /* renamed from: b */
        public final void mo2511b(Bitmap bitmap) {
            if (!this.f2537a.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.f2537a.remove(bitmap);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C0881k(long r5) {
        /*
            r4 = this;
            com.bumptech.glide.load.b.a.l r0 = m2508f()
            java.util.HashSet r1 = new java.util.HashSet
            android.graphics.Bitmap$Config[] r2 = android.graphics.Bitmap.Config.values()
            java.util.List r2 = java.util.Arrays.asList(r2)
            r1.<init>(r2)
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 19
            if (r2 < r3) goto L1b
            r2 = 0
            r1.add(r2)
        L1b:
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 26
            if (r2 < r3) goto L26
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.HARDWARE
            r1.remove(r2)
        L26:
            java.util.Set r1 = java.util.Collections.unmodifiableSet(r1)
            r4.<init>(r5, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p042b.p043a.C0881k.<init>(long):void");
    }

    private C0881k(long j, InterfaceC0882l interfaceC0882l, Set<Bitmap.Config> set) {
        this.f2529e = j;
        this.f2531g = j;
        this.f2527c = interfaceC0882l;
        this.f2528d = set;
        this.f2530f = new b();
    }

    private C0881k(long j, Set<Bitmap.Config> set) {
        this(j, m2508f(), set);
    }

    /* renamed from: a */
    private synchronized void m2499a(long j) {
        while (this.f2532h > j) {
            Bitmap mo2452a = this.f2527c.mo2452a();
            if (mo2452a == null) {
                if (Log.isLoggable(f2525a, 5)) {
                    Log.w(f2525a, "Size mismatch, resetting");
                    m2507e();
                }
                this.f2532h = 0L;
                return;
            }
            this.f2530f.mo2511b(mo2452a);
            this.f2532h -= this.f2527c.mo2457c(mo2452a);
            this.f2536l++;
            if (Log.isLoggable(f2525a, 3)) {
                Log.d(f2525a, "Evicting bitmap=" + this.f2527c.mo2456b(mo2452a));
            }
            m2506d();
            mo2452a.recycle();
        }
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m2500a(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    /* renamed from: b */
    private static void m2501b(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    @NonNull
    /* renamed from: c */
    private static Bitmap m2502c(int i, int i2, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f2526b;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: c */
    private void m2503c() {
        m2499a(this.f2531g);
    }

    @TargetApi(19)
    /* renamed from: c */
    private static void m2504c(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    @Nullable
    /* renamed from: d */
    private synchronized Bitmap m2505d(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap mo2453a;
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
        mo2453a = this.f2527c.mo2453a(i, i2, config != null ? config : f2526b);
        if (mo2453a == null) {
            if (Log.isLoggable(f2525a, 3)) {
                Log.d(f2525a, "Missing bitmap=" + this.f2527c.mo2455b(i, i2, config));
            }
            this.f2534j++;
        } else {
            this.f2533i++;
            this.f2532h -= this.f2527c.mo2457c(mo2453a);
            this.f2530f.mo2511b(mo2453a);
            mo2453a.setHasAlpha(true);
            if (Build.VERSION.SDK_INT >= 19) {
                mo2453a.setPremultiplied(true);
            }
        }
        if (Log.isLoggable(f2525a, 2)) {
            Log.v(f2525a, "Get bitmap=" + this.f2527c.mo2455b(i, i2, config));
        }
        m2506d();
        return mo2453a;
    }

    /* renamed from: d */
    private void m2506d() {
        if (Log.isLoggable(f2525a, 2)) {
            m2507e();
        }
    }

    /* renamed from: e */
    private void m2507e() {
        Log.v(f2525a, "Hits=" + this.f2533i + ", misses=" + this.f2534j + ", puts=" + this.f2535k + ", evictions=" + this.f2536l + ", currentSize=" + this.f2532h + ", maxSize=" + this.f2531g + "\nStrategy=" + this.f2527c);
    }

    /* renamed from: f */
    private static InterfaceC0882l m2508f() {
        return Build.VERSION.SDK_INT >= 19 ? new C0885o() : new C0873c();
    }

    @TargetApi(26)
    /* renamed from: g */
    private static Set<Bitmap.Config> m2509g() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        if (Build.VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    /* renamed from: a */
    public final long mo2465a() {
        return this.f2531g;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    @NonNull
    /* renamed from: a */
    public final Bitmap mo2466a(int i, int i2, Bitmap.Config config) {
        Bitmap m2505d = m2505d(i, i2, config);
        if (m2505d == null) {
            return m2502c(i, i2, config);
        }
        m2505d.eraseColor(0);
        return m2505d;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    /* renamed from: a */
    public final synchronized void mo2467a(float f) {
        this.f2531g = Math.round(((float) this.f2529e) * f);
        m2503c();
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public final void mo2468a(int i) {
        if (Log.isLoggable(f2525a, 3)) {
            Log.d(f2525a, "trimMemory, level=" + i);
        }
        if (i >= 40) {
            mo2471b();
        } else if (i >= 20 || i == 15) {
            m2499a(this.f2531g / 2);
        }
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    /* renamed from: a */
    public final synchronized void mo2469a(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f2527c.mo2457c(bitmap) <= this.f2531g && this.f2528d.contains(bitmap.getConfig())) {
                int mo2457c = this.f2527c.mo2457c(bitmap);
                this.f2527c.mo2454a(bitmap);
                this.f2530f.mo2510a(bitmap);
                this.f2535k++;
                this.f2532h += mo2457c;
                if (Log.isLoggable(f2525a, 2)) {
                    Log.v(f2525a, "Put bitmap in pool=" + this.f2527c.mo2456b(bitmap));
                }
                m2506d();
                m2503c();
                return;
            }
            if (Log.isLoggable(f2525a, 2)) {
                Log.v(f2525a, "Reject bitmap from pool, bitmap: " + this.f2527c.mo2456b(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f2528d.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    @NonNull
    /* renamed from: b */
    public final Bitmap mo2470b(int i, int i2, Bitmap.Config config) {
        Bitmap m2505d = m2505d(i, i2, config);
        return m2505d == null ? m2502c(i, i2, config) : m2505d;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0875e
    /* renamed from: b */
    public final void mo2471b() {
        if (Log.isLoggable(f2525a, 3)) {
            Log.d(f2525a, "clearMemory");
        }
        m2499a(0L);
    }
}
