package com.bumptech.glide.load.p042b.p044b;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.b.b.l */
/* loaded from: classes.dex */
public final class C0899l {

    /* renamed from: a */
    @VisibleForTesting
    static final int f2596a = 4;

    /* renamed from: e */
    private static final String f2597e = "MemorySizeCalculator";

    /* renamed from: f */
    private static final int f2598f = 2;

    /* renamed from: b */
    public final int f2599b;

    /* renamed from: c */
    public final int f2600c;

    /* renamed from: d */
    public final int f2601d;

    /* renamed from: g */
    private final Context f2602g;

    /* renamed from: com.bumptech.glide.load.b.b.l$a */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a */
        @VisibleForTesting
        static final int f2603a = 2;

        /* renamed from: b */
        static final int f2604b;

        /* renamed from: c */
        static final float f2605c = 0.4f;

        /* renamed from: d */
        static final float f2606d = 0.33f;

        /* renamed from: e */
        static final int f2607e = 4194304;

        /* renamed from: f */
        final Context f2608f;

        /* renamed from: g */
        ActivityManager f2609g;

        /* renamed from: h */
        c f2610h;

        /* renamed from: j */
        float f2612j;

        /* renamed from: i */
        float f2611i = 2.0f;

        /* renamed from: k */
        float f2613k = f2605c;

        /* renamed from: l */
        float f2614l = f2606d;

        /* renamed from: m */
        int f2615m = 4194304;

        static {
            f2604b = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f2612j = f2604b;
            this.f2608f = context;
            this.f2609g = (ActivityManager) context.getSystemService("activity");
            this.f2610h = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !C0899l.m2560a(this.f2609g)) {
                return;
            }
            this.f2612j = 0.0f;
        }

        /* renamed from: a */
        private a m2563a(float f) {
            C1084i.m3473a(f >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.f2611i = f;
            return this;
        }

        /* renamed from: a */
        private a m2564a(int i) {
            this.f2615m = i;
            return this;
        }

        @VisibleForTesting
        /* renamed from: a */
        private a m2565a(ActivityManager activityManager) {
            this.f2609g = activityManager;
            return this;
        }

        @VisibleForTesting
        /* renamed from: a */
        private a m2566a(c cVar) {
            this.f2610h = cVar;
            return this;
        }

        /* renamed from: b */
        private a m2567b(float f) {
            C1084i.m3473a(f >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f2612j = f;
            return this;
        }

        /* renamed from: c */
        private a m2568c(float f) {
            C1084i.m3473a(f >= 0.0f && f <= 1.0f, "Size multiplier must be between 0 and 1");
            this.f2613k = f;
            return this;
        }

        /* renamed from: d */
        private a m2569d(float f) {
            C1084i.m3473a(f >= 0.0f && f <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.f2614l = f;
            return this;
        }

        /* renamed from: a */
        public final C0899l m2570a() {
            return new C0899l(this);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.b.l$b */
    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a */
        private final DisplayMetrics f2616a;

        b(DisplayMetrics displayMetrics) {
            this.f2616a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.p042b.p044b.C0899l.c
        /* renamed from: a */
        public final int mo2571a() {
            return this.f2616a.widthPixels;
        }

        @Override // com.bumptech.glide.load.p042b.p044b.C0899l.c
        /* renamed from: b */
        public final int mo2572b() {
            return this.f2616a.heightPixels;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.b.l$c */
    /* loaded from: classes.dex */
    interface c {
        /* renamed from: a */
        int mo2571a();

        /* renamed from: b */
        int mo2572b();
    }

    C0899l(a aVar) {
        this.f2602g = aVar.f2608f;
        this.f2601d = m2560a(aVar.f2609g) ? aVar.f2615m / 2 : aVar.f2615m;
        int round = Math.round(r0.getMemoryClass() * 1024 * 1024 * (m2560a(aVar.f2609g) ? aVar.f2614l : aVar.f2613k));
        float mo2571a = aVar.f2610h.mo2571a() * aVar.f2610h.mo2572b() * 4;
        int round2 = Math.round(aVar.f2612j * mo2571a);
        int round3 = Math.round(mo2571a * aVar.f2611i);
        int i = round - this.f2601d;
        int i2 = round3 + round2;
        if (i2 <= i) {
            this.f2600c = round3;
            this.f2599b = round2;
        } else {
            float f = i / (aVar.f2612j + aVar.f2611i);
            this.f2600c = Math.round(aVar.f2611i * f);
            this.f2599b = Math.round(f * aVar.f2612j);
        }
        if (Log.isLoggable(f2597e, 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(m2559a(this.f2600c));
            sb.append(", pool size: ");
            sb.append(m2559a(this.f2599b));
            sb.append(", byte array size: ");
            sb.append(m2559a(this.f2601d));
            sb.append(", memory class limited? ");
            sb.append(i2 > round);
            sb.append(", max size: ");
            sb.append(m2559a(round));
            sb.append(", memoryClass: ");
            sb.append(aVar.f2609g.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m2560a(aVar.f2609g));
            Log.d(f2597e, sb.toString());
        }
    }

    /* renamed from: a */
    private int m2557a() {
        return this.f2600c;
    }

    /* renamed from: a */
    private static int m2558a(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m2560a(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    /* renamed from: a */
    private String m2559a(int i) {
        return Formatter.formatFileSize(this.f2602g, i);
    }

    @TargetApi(19)
    /* renamed from: a */
    static boolean m2560a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    /* renamed from: b */
    private int m2561b() {
        return this.f2599b;
    }

    /* renamed from: c */
    private int m2562c() {
        return this.f2601d;
    }
}
