package com.bumptech.glide.load.p042b.p043a;

import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.C1086k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@RequiresApi(19)
/* renamed from: com.bumptech.glide.load.b.a.o */
/* loaded from: classes.dex */
public final class C0885o implements InterfaceC0882l {

    /* renamed from: a */
    private static final int f2538a = 8;

    /* renamed from: b */
    private static final Bitmap.Config[] f2539b;

    /* renamed from: c */
    private static final Bitmap.Config[] f2540c;

    /* renamed from: d */
    private static final Bitmap.Config[] f2541d;

    /* renamed from: e */
    private static final Bitmap.Config[] f2542e;

    /* renamed from: f */
    private static final Bitmap.Config[] f2543f;

    /* renamed from: g */
    private final b f2544g = new b();

    /* renamed from: h */
    private final C0878h<a, Bitmap> f2545h = new C0878h<>();

    /* renamed from: i */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f2546i = new HashMap();

    /* renamed from: com.bumptech.glide.load.b.a.o$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2547a = new int[Bitmap.Config.values().length];

        static {
            try {
                f2547a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2547a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2547a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2547a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.o$a */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0883m {

        /* renamed from: a */
        int f2548a;

        /* renamed from: b */
        private final b f2549b;

        /* renamed from: c */
        private Bitmap.Config f2550c;

        public a(b bVar) {
            this.f2549b = bVar;
        }

        @VisibleForTesting
        private a(b bVar, int i, Bitmap.Config config) {
            this(bVar);
            m2517a(i, config);
        }

        @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0883m
        /* renamed from: a */
        public final void mo2459a() {
            this.f2549b.m2463a(this);
        }

        /* renamed from: a */
        public final void m2517a(int i, Bitmap.Config config) {
            this.f2548a = i;
            this.f2550c = config;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.f2548a == aVar.f2548a && C1086k.m3487a(this.f2550c, aVar.f2550c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f2548a * 31) + (this.f2550c != null ? this.f2550c.hashCode() : 0);
        }

        public final String toString() {
            return C0885o.m2512a(this.f2548a, this.f2550c);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.b.a.o$b */
    /* loaded from: classes.dex */
    static class b extends AbstractC0874d<a> {
        b() {
        }

        /* renamed from: c */
        private a m2518c() {
            return new a(this);
        }

        @Override // com.bumptech.glide.load.p042b.p043a.AbstractC0874d
        /* renamed from: a */
        protected final /* synthetic */ a mo2462a() {
            return new a(this);
        }

        /* renamed from: a */
        public final a m2519a(int i, Bitmap.Config config) {
            a b2 = m2464b();
            b2.m2517a(i, config);
            return b2;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f2539b = configArr;
        f2540c = configArr;
        f2541d = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f2542e = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f2543f = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: a */
    static String m2512a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m2513a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f2546i.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f2546i.put(config, treeMap);
        return treeMap;
    }

    /* renamed from: a */
    private void m2514a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m2513a = m2513a(bitmap.getConfig());
        Integer num2 = (Integer) m2513a.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                m2513a.remove(num);
                return;
            } else {
                m2513a.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo2456b(bitmap) + ", this: " + this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        return r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.bumptech.glide.load.p042b.p043a.C0885o.a m2515b(int r9, android.graphics.Bitmap.Config r10) {
        /*
            r8 = this;
            com.bumptech.glide.load.b.a.o$b r0 = r8.f2544g
            com.bumptech.glide.load.b.a.o$a r0 = r0.m2519a(r9, r10)
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 0
            r3 = 26
            if (r1 < r3) goto L18
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.RGBA_F16
            boolean r1 = r1.equals(r10)
            if (r1 == 0) goto L18
            android.graphics.Bitmap$Config[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.f2540c
            goto L34
        L18:
            int[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.AnonymousClass1.f2547a
            int r3 = r10.ordinal()
            r1 = r1[r3]
            switch(r1) {
                case 1: goto L32;
                case 2: goto L2f;
                case 3: goto L2c;
                case 4: goto L29;
                default: goto L23;
            }
        L23:
            r1 = 1
            android.graphics.Bitmap$Config[] r1 = new android.graphics.Bitmap.Config[r1]
            r1[r2] = r10
            goto L34
        L29:
            android.graphics.Bitmap$Config[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.f2543f
            goto L34
        L2c:
            android.graphics.Bitmap$Config[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.f2542e
            goto L34
        L2f:
            android.graphics.Bitmap$Config[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.f2541d
            goto L34
        L32:
            android.graphics.Bitmap$Config[] r1 = com.bumptech.glide.load.p042b.p043a.C0885o.f2539b
        L34:
            int r3 = r1.length
        L35:
            if (r2 >= r3) goto L75
            r4 = r1[r2]
            java.util.NavigableMap r5 = r8.m2513a(r4)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r9)
            java.lang.Object r5 = r5.ceilingKey(r6)
            java.lang.Integer r5 = (java.lang.Integer) r5
            if (r5 == 0) goto L72
            int r6 = r5.intValue()
            int r7 = r9 * 8
            if (r6 > r7) goto L72
            int r1 = r5.intValue()
            if (r1 != r9) goto L62
            if (r4 != 0) goto L5c
            if (r10 == 0) goto L75
            goto L62
        L5c:
            boolean r9 = r4.equals(r10)
            if (r9 != 0) goto L75
        L62:
            com.bumptech.glide.load.b.a.o$b r9 = r8.f2544g
            r9.m2463a(r0)
            com.bumptech.glide.load.b.a.o$b r9 = r8.f2544g
            int r10 = r5.intValue()
            com.bumptech.glide.load.b.a.o$a r0 = r9.m2519a(r10, r4)
            return r0
        L72:
            int r2 = r2 + 1
            goto L35
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p042b.p043a.C0885o.m2515b(int, android.graphics.Bitmap$Config):com.bumptech.glide.load.b.a.o$a");
    }

    /* renamed from: b */
    private static Bitmap.Config[] m2516b(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f2540c;
        }
        switch (AnonymousClass1.f2547a[config.ordinal()]) {
            case 1:
                return f2539b;
            case 2:
                return f2541d;
            case 3:
                return f2542e;
            case 4:
                return f2543f;
            default:
                return new Bitmap.Config[]{config};
        }
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    @Nullable
    /* renamed from: a */
    public final Bitmap mo2452a() {
        Bitmap m2477a = this.f2545h.m2477a();
        if (m2477a != null) {
            m2514a(Integer.valueOf(C1086k.m3477a(m2477a)), m2477a);
        }
        return m2477a;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    @Nullable
    /* renamed from: a */
    public final Bitmap mo2453a(int i, int i2, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int m3475a = C1086k.m3475a(i, i2, config);
        a m2519a = this.f2544g.m2519a(m3475a, config);
        int i3 = 0;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            switch (AnonymousClass1.f2547a[config.ordinal()]) {
                case 1:
                    configArr = f2539b;
                    break;
                case 2:
                    configArr = f2541d;
                    break;
                case 3:
                    configArr = f2542e;
                    break;
                case 4:
                    configArr = f2543f;
                    break;
                default:
                    configArr = new Bitmap.Config[]{config};
                    break;
            }
        } else {
            configArr = f2540c;
        }
        int length = configArr.length;
        while (true) {
            if (i3 < length) {
                Bitmap.Config config2 = configArr[i3];
                Integer ceilingKey = m2513a(config2).ceilingKey(Integer.valueOf(m3475a));
                if (ceilingKey == null || ceilingKey.intValue() > m3475a * 8) {
                    i3++;
                } else if (ceilingKey.intValue() != m3475a || (config2 != null ? !config2.equals(config) : config != null)) {
                    this.f2544g.m2463a(m2519a);
                    m2519a = this.f2544g.m2519a(ceilingKey.intValue(), config2);
                }
            }
        }
        Bitmap m2478a = this.f2545h.m2478a((C0878h<a, Bitmap>) m2519a);
        if (m2478a != null) {
            m2514a(Integer.valueOf(m2519a.f2548a), m2478a);
            m2478a.reconfigure(i, i2, m2478a.getConfig() != null ? m2478a.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return m2478a;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: a */
    public final void mo2454a(Bitmap bitmap) {
        a m2519a = this.f2544g.m2519a(C1086k.m3477a(bitmap), bitmap.getConfig());
        this.f2545h.m2479a(m2519a, bitmap);
        NavigableMap<Integer, Integer> m2513a = m2513a(bitmap.getConfig());
        Integer num = (Integer) m2513a.get(Integer.valueOf(m2519a.f2548a));
        m2513a.put(Integer.valueOf(m2519a.f2548a), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2455b(int i, int i2, Bitmap.Config config) {
        return m2512a(C1086k.m3475a(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: b */
    public final String mo2456b(Bitmap bitmap) {
        return m2512a(C1086k.m3477a(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0882l
    /* renamed from: c */
    public final int mo2457c(Bitmap bitmap) {
        return C1086k.m3477a(bitmap);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SizeConfigStrategy{groupedMap=");
        sb.append(this.f2545h);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f2546i.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f2546i.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
