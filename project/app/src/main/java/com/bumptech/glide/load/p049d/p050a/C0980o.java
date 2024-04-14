package com.bumptech.glide.load.p049d.p050a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.C1021f;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p050a.AbstractC0979n;
import com.bumptech.glide.util.C1080e;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* renamed from: com.bumptech.glide.load.d.a.o */
/* loaded from: classes.dex */
public final class C0980o {

    /* renamed from: a */
    static final String f3053a = "Downsampler";

    /* renamed from: l */
    private static final int f3064l = 10485760;

    /* renamed from: m */
    private final InterfaceC0875e f3065m;

    /* renamed from: n */
    private final DisplayMetrics f3066n;

    /* renamed from: o */
    private final InterfaceC0872b f3067o;

    /* renamed from: p */
    private final List<ImageHeaderParser> f3068p;

    /* renamed from: q */
    private final C0985t f3069q = C0985t.m2930a();

    /* renamed from: b */
    public static final C1024i<EnumC0869b> f3054b = C1024i.m3056a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", EnumC0869b.DEFAULT);

    /* renamed from: c */
    @Deprecated
    public static final C1024i<AbstractC0979n> f3055c = AbstractC0979n.f3052h;

    /* renamed from: d */
    public static final C1024i<Boolean> f3056d = C1024i.m3056a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", false);

    /* renamed from: e */
    public static final C1024i<Boolean> f3057e = C1024i.m3056a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", false);

    /* renamed from: g */
    private static final String f3059g = "image/vnd.wap.wbmp";

    /* renamed from: h */
    private static final String f3060h = "image/x-ico";

    /* renamed from: i */
    private static final Set<String> f3061i = Collections.unmodifiableSet(new HashSet(Arrays.asList(f3059g, f3060h)));

    /* renamed from: f */
    static final a f3058f = new a() { // from class: com.bumptech.glide.load.d.a.o.1
        @Override // com.bumptech.glide.load.p049d.p050a.C0980o.a
        /* renamed from: a */
        public final void mo2924a() {
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0980o.a
        /* renamed from: a */
        public final void mo2925a(InterfaceC0875e interfaceC0875e, Bitmap bitmap) {
        }
    };

    /* renamed from: j */
    private static final Set<ImageHeaderParser.ImageType> f3062j = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: k */
    private static final Queue<BitmapFactory.Options> f3063k = C1086k.m3484a(0);

    /* renamed from: com.bumptech.glide.load.d.a.o$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo2924a();

        /* renamed from: a */
        void mo2925a(InterfaceC0875e interfaceC0875e, Bitmap bitmap) throws IOException;
    }

    public C0980o(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, InterfaceC0875e interfaceC0875e, InterfaceC0872b interfaceC0872b) {
        this.f3068p = list;
        this.f3066n = (DisplayMetrics) C1084i.m3470a(displayMetrics, "Argument must not be null");
        this.f3065m = (InterfaceC0875e) C1084i.m3470a(interfaceC0875e, "Argument must not be null");
        this.f3067o = (InterfaceC0872b) C1084i.m3470a(interfaceC0872b, "Argument must not be null");
    }

    /* renamed from: a */
    private static int m2902a(double d) {
        return (int) (((d / (r1 / r0)) * ((int) ((m2915b(d) * d) + 0.5d))) + 0.5d);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0327  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.graphics.Bitmap m2903a(java.io.InputStream r29, android.graphics.BitmapFactory.Options r30, com.bumptech.glide.load.p049d.p050a.AbstractC0979n r31, com.bumptech.glide.load.EnumC0869b r32, boolean r33, int r34, int r35, boolean r36, com.bumptech.glide.load.p049d.p050a.C0980o.a r37) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1185
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p049d.p050a.C0980o.m2903a(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.d.a.n, com.bumptech.glide.load.b, boolean, int, int, boolean, com.bumptech.glide.load.d.a.o$a):android.graphics.Bitmap");
    }

    /* renamed from: a */
    private InterfaceC0925u<Bitmap> m2904a(InputStream inputStream, int i, int i2, C1025j c1025j) throws IOException {
        return m2923a(inputStream, i, i2, c1025j, f3058f);
    }

    /* renamed from: a */
    private static IOException m2905a(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m2906a(options.inBitmap), illegalArgumentException);
    }

    @TargetApi(19)
    @Nullable
    /* renamed from: a */
    private static String m2906a(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    /* renamed from: a */
    private static void m2907a(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v(f3053a, "Decoded " + m2906a(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m2906a(options.inBitmap) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + C1080e.m3452a(j));
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m2908a(BitmapFactory.Options options, InterfaceC0875e interfaceC0875e, int i, int i2) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = interfaceC0875e.mo2470b(i, i2, config);
    }

    /* renamed from: a */
    private static void m2909a(ImageHeaderParser.ImageType imageType, InputStream inputStream, a aVar, InterfaceC0875e interfaceC0875e, AbstractC0979n abstractC0979n, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        int i6;
        int floor;
        int floor2;
        if (i2 <= 0 || i3 <= 0) {
            if (Log.isLoggable(f3053a, 3)) {
                Log.d(f3053a, "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
                return;
            }
            return;
        }
        float mo2900a = (i == 90 || i == 270) ? abstractC0979n.mo2900a(i3, i2, i4, i5) : abstractC0979n.mo2900a(i2, i3, i4, i5);
        if (mo2900a <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + mo2900a + " from: " + abstractC0979n + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        int mo2901a = abstractC0979n.mo2901a();
        if (mo2901a == 0) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i2;
        float f2 = i3;
        int i7 = i2 / ((int) ((mo2900a * f) + 0.5d));
        int i8 = i3 / ((int) ((mo2900a * f2) + 0.5d));
        int max = mo2901a == AbstractC0979n.g.MEMORY$3973276c ? Math.max(i7, i8) : Math.min(i7, i8);
        if (Build.VERSION.SDK_INT > 23 || !f3061i.contains(options.outMimeType)) {
            int max2 = Math.max(1, Integer.highestOneBit(max));
            i6 = (mo2901a != AbstractC0979n.g.MEMORY$3973276c || ((float) max2) >= 1.0f / mo2900a) ? max2 : max2 << 1;
        } else {
            i6 = 1;
        }
        options.inSampleSize = i6;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float min = Math.min(i6, 8);
            floor = (int) Math.ceil(f / min);
            floor2 = (int) Math.ceil(f2 / min);
            int i9 = i6 / 8;
            if (i9 > 0) {
                floor /= i9;
                floor2 /= i9;
            }
        } else {
            if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        float f3 = i6;
                        floor = Math.round(f / f3);
                        floor2 = Math.round(f2 / f3);
                    }
                } else if (i2 % i6 == 0 && i3 % i6 == 0) {
                    floor = i2 / i6;
                    floor2 = i3 / i6;
                } else {
                    int[] m2914a = m2914a(inputStream, options, aVar, interfaceC0875e);
                    floor = m2914a[0];
                    floor2 = m2914a[1];
                }
            }
            float f4 = i6;
            floor = (int) Math.floor(f / f4);
            floor2 = (int) Math.floor(f2 / f4);
        }
        double mo2900a2 = abstractC0979n.mo2900a(floor, floor2, i4, i5);
        if (Build.VERSION.SDK_INT >= 19) {
            options.inTargetDensity = (int) (((mo2900a2 / (r14 / r1)) * ((int) ((m2915b(mo2900a2) * mo2900a2) + 0.5d))) + 0.5d);
            options.inDensity = m2915b(mo2900a2);
        }
        if (m2912a(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(f3053a, 2)) {
            Log.v(f3053a, "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + mo2900a + ", power of 2 sample size: " + i6 + ", adjusted scale factor: " + mo2900a2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    /* renamed from: a */
    private void m2910a(InputStream inputStream, EnumC0869b enumC0869b, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        boolean z4;
        C0985t c0985t = this.f3069q;
        if (!z || Build.VERSION.SDK_INT < 26 || z2) {
            z3 = false;
        } else {
            z3 = i >= 128 && i2 >= 128 && c0985t.m2932b();
            if (z3) {
                options.inPreferredConfig = Bitmap.Config.HARDWARE;
                options.inMutable = false;
            }
        }
        if (z3) {
            return;
        }
        if (enumC0869b == EnumC0869b.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z4 = C1021f.m3051a(this.f3068p, inputStream, this.f3067o).hasAlpha();
        } catch (IOException e) {
            if (Log.isLoggable(f3053a, 3)) {
                Log.d(f3053a, "Cannot determine whether the image has alpha or not from header, format " + enumC0869b, e);
            }
            z4 = false;
        }
        options.inPreferredConfig = z4 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        if (options.inPreferredConfig == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    /* renamed from: a */
    public static boolean m2911a() {
        return true;
    }

    /* renamed from: a */
    private static boolean m2912a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    /* renamed from: a */
    private static boolean m2913a(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f3062j.contains(imageType);
    }

    /* renamed from: a */
    private static int[] m2914a(InputStream inputStream, BitmapFactory.Options options, a aVar, InterfaceC0875e interfaceC0875e) throws IOException {
        options.inJustDecodeBounds = true;
        m2916b(inputStream, options, aVar, interfaceC0875e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: b */
    private static int m2915b(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        throw r5;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Bitmap m2916b(java.io.InputStream r8, android.graphics.BitmapFactory.Options r9, com.bumptech.glide.load.p049d.p050a.C0980o.a r10, com.bumptech.glide.load.p042b.p043a.InterfaceC0875e r11) throws java.io.IOException {
        /*
            boolean r0 = r9.inJustDecodeBounds
            if (r0 == 0) goto La
            r0 = 10485760(0xa00000, float:1.469368E-38)
            r8.mark(r0)
            goto Ld
        La:
            r10.mo2924a()
        Ld:
            int r0 = r9.outWidth
            int r1 = r9.outHeight
            java.lang.String r2 = r9.outMimeType
            java.util.concurrent.locks.Lock r3 = com.bumptech.glide.load.p049d.p050a.C0991z.m2950a()
            r3.lock()
            r3 = 0
            android.graphics.Bitmap r4 = android.graphics.BitmapFactory.decodeStream(r8, r3, r9)     // Catch: java.lang.Throwable -> L2e java.lang.IllegalArgumentException -> L30
            java.util.concurrent.locks.Lock r10 = com.bumptech.glide.load.p049d.p050a.C0991z.m2950a()
            r10.unlock()
            boolean r9 = r9.inJustDecodeBounds
            if (r9 == 0) goto L2d
            r8.reset()
        L2d:
            return r4
        L2e:
            r8 = move-exception
            goto L8e
        L30:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L2e
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2e
            java.lang.String r7 = "Exception decoding bitmap, outWidth: "
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L2e
            r6.append(r0)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = ", outHeight: "
            r6.append(r0)     // Catch: java.lang.Throwable -> L2e
            r6.append(r1)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = ", outMimeType: "
            r6.append(r0)     // Catch: java.lang.Throwable -> L2e
            r6.append(r2)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = ", inBitmap: "
            r6.append(r0)     // Catch: java.lang.Throwable -> L2e
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = m2906a(r0)     // Catch: java.lang.Throwable -> L2e
            r6.append(r0)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> L2e
            r5.<init>(r0, r4)     // Catch: java.lang.Throwable -> L2e
            java.lang.String r0 = "Downsampler"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L72
            java.lang.String r0 = "Downsampler"
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L2e
        L72:
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch: java.lang.Throwable -> L2e
            if (r0 == 0) goto L8d
            r8.reset()     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L8c
            android.graphics.Bitmap r0 = r9.inBitmap     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L8c
            r11.mo2469a(r0)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L8c
            r9.inBitmap = r3     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L8c
            android.graphics.Bitmap r8 = m2916b(r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L8c
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.p049d.p050a.C0991z.m2950a()
            r9.unlock()
            return r8
        L8c:
            throw r5     // Catch: java.lang.Throwable -> L2e
        L8d:
            throw r5     // Catch: java.lang.Throwable -> L2e
        L8e:
            java.util.concurrent.locks.Lock r9 = com.bumptech.glide.load.p049d.p050a.C0991z.m2950a()
            r9.unlock()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p049d.p050a.C0980o.m2916b(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.d.a.o$a, com.bumptech.glide.load.b.a.e):android.graphics.Bitmap");
    }

    /* renamed from: b */
    private static String m2917b(BitmapFactory.Options options) {
        return m2906a(options.inBitmap);
    }

    /* renamed from: b */
    public static boolean m2918b() {
        return true;
    }

    /* renamed from: c */
    private static int m2919c(double d) {
        return (int) (d + 0.5d);
    }

    /* renamed from: c */
    private static synchronized BitmapFactory.Options m2920c() {
        BitmapFactory.Options poll;
        synchronized (C0980o.class) {
            synchronized (f3063k) {
                poll = f3063k.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                m2922d(poll);
            }
        }
        return poll;
    }

    /* renamed from: c */
    private static void m2921c(BitmapFactory.Options options) {
        m2922d(options);
        synchronized (f3063k) {
            f3063k.offer(options);
        }
    }

    /* renamed from: d */
    private static void m2922d(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:18|(20:(5:22|(3:27|28|(2:30|31)(2:33|(2:35|36)(34:37|38|(1:40)(1:193)|41|(2:187|(1:192)(1:191))(1:45)|46|(2:48|(1:50))(31:162|(4:167|(31:172|(1:177)|178|179|180|52|(1:54)(1:161)|55|(1:57)(1:160)|58|(1:60)(1:159)|61|62|63|64|(3:141|142|(14:146|(1:155)(1:151)|(1:153)(1:154)|(2:68|(1:92)(5:73|74|(1:76)(1:80)|77|(1:79)))|93|(1:95)|96|(3:111|(1:113)(2:139|140)|(2:(5:131|(1:133)(1:138)|134|(1:136)|137)(1:119)|(4:122|(2:124|(1:126))(1:130)|(1:128)|129)))|99|(1:101)|(2:103|(1:105))|107|108|109))|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109)|181|(29:183|179|180|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|62|63|64|(0)|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109)(29:184|185|180|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|62|63|64|(0)|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109))|186|185|180|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|62|63|64|(0)|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109)|51|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|62|63|64|(0)|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109)))|194|28|(0)(0))|62|63|64|(0)|66|(0)|93|(0)|96|(0)|111|(0)(0)|(0)|99|(0)|(0)|107|108|109)|195|196|197|(1:199)|61) */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0527, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0528, code lost:
    
        r7 = r7;
        r2 = r34;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0469 A[Catch: all -> 0x0324, TRY_ENTER, TryCatch #3 {all -> 0x0324, blocks: (B:142:0x0302, B:149:0x030f, B:153:0x031a, B:68:0x032e, B:70:0x0334, B:74:0x033b, B:76:0x0369, B:77:0x036e, B:79:0x0376, B:80:0x036c, B:84:0x034a, B:86:0x0353, B:92:0x037a, B:101:0x0469, B:103:0x04fa, B:105:0x050f, B:122:0x0439, B:124:0x043f, B:126:0x0445, B:128:0x044b, B:129:0x044d, B:131:0x03a8, B:133:0x03ae, B:134:0x03bb, B:136:0x03e5), top: B:141:0x0302, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x04fa A[Catch: all -> 0x0324, TryCatch #3 {all -> 0x0324, blocks: (B:142:0x0302, B:149:0x030f, B:153:0x031a, B:68:0x032e, B:70:0x0334, B:74:0x033b, B:76:0x0369, B:77:0x036e, B:79:0x0376, B:80:0x036c, B:84:0x034a, B:86:0x0353, B:92:0x037a, B:101:0x0469, B:103:0x04fa, B:105:0x050f, B:122:0x0439, B:124:0x043f, B:126:0x0445, B:128:0x044b, B:129:0x044d, B:131:0x03a8, B:133:0x03ae, B:134:0x03bb, B:136:0x03e5), top: B:141:0x0302, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0394 A[Catch: all -> 0x0525, TRY_LEAVE, TryCatch #4 {all -> 0x0525, blocks: (B:63:0x02fc, B:93:0x037e, B:96:0x0385, B:99:0x0453, B:107:0x0514, B:111:0x038d, B:139:0x0394), top: B:62:0x02fc }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0302 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x023a A[Catch: all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:38:0x012a, B:40:0x0132, B:41:0x013b, B:43:0x0141, B:46:0x0165, B:48:0x016b, B:50:0x0184, B:52:0x0202, B:54:0x020d, B:55:0x0230, B:57:0x0236, B:58:0x023f, B:60:0x0248, B:160:0x023a, B:162:0x0194, B:164:0x0198, B:167:0x019d, B:169:0x01a1, B:172:0x01a6, B:174:0x01aa, B:177:0x01af, B:178:0x01b4, B:181:0x01c3, B:183:0x01cd, B:184:0x01dd, B:185:0x01f8, B:186:0x01e9, B:187:0x014d, B:189:0x015a, B:191:0x0161, B:193:0x0137, B:199:0x02c9), top: B:18:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5 A[Catch: all -> 0x052d, TryCatch #6 {all -> 0x052d, blocks: (B:12:0x007a, B:17:0x0098, B:27:0x00b7, B:30:0x00c5, B:31:0x0105, B:33:0x0106, B:35:0x010c, B:36:0x0113, B:194:0x00bc), top: B:11:0x007a }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0106 A[Catch: all -> 0x052d, TryCatch #6 {all -> 0x052d, blocks: (B:12:0x007a, B:17:0x0098, B:27:0x00b7, B:30:0x00c5, B:31:0x0105, B:33:0x0106, B:35:0x010c, B:36:0x0113, B:194:0x00bc), top: B:11:0x007a }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x020d A[Catch: all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:38:0x012a, B:40:0x0132, B:41:0x013b, B:43:0x0141, B:46:0x0165, B:48:0x016b, B:50:0x0184, B:52:0x0202, B:54:0x020d, B:55:0x0230, B:57:0x0236, B:58:0x023f, B:60:0x0248, B:160:0x023a, B:162:0x0194, B:164:0x0198, B:167:0x019d, B:169:0x01a1, B:172:0x01a6, B:174:0x01aa, B:177:0x01af, B:178:0x01b4, B:181:0x01c3, B:183:0x01cd, B:184:0x01dd, B:185:0x01f8, B:186:0x01e9, B:187:0x014d, B:189:0x015a, B:191:0x0161, B:193:0x0137, B:199:0x02c9), top: B:18:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0236 A[Catch: all -> 0x02f2, TryCatch #0 {all -> 0x02f2, blocks: (B:38:0x012a, B:40:0x0132, B:41:0x013b, B:43:0x0141, B:46:0x0165, B:48:0x016b, B:50:0x0184, B:52:0x0202, B:54:0x020d, B:55:0x0230, B:57:0x0236, B:58:0x023f, B:60:0x0248, B:160:0x023a, B:162:0x0194, B:164:0x0198, B:167:0x019d, B:169:0x01a1, B:172:0x01a6, B:174:0x01aa, B:177:0x01af, B:178:0x01b4, B:181:0x01c3, B:183:0x01cd, B:184:0x01dd, B:185:0x01f8, B:186:0x01e9, B:187:0x014d, B:189:0x015a, B:191:0x0161, B:193:0x0137, B:199:0x02c9), top: B:18:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0248 A[Catch: all -> 0x02f2, TRY_LEAVE, TryCatch #0 {all -> 0x02f2, blocks: (B:38:0x012a, B:40:0x0132, B:41:0x013b, B:43:0x0141, B:46:0x0165, B:48:0x016b, B:50:0x0184, B:52:0x0202, B:54:0x020d, B:55:0x0230, B:57:0x0236, B:58:0x023f, B:60:0x0248, B:160:0x023a, B:162:0x0194, B:164:0x0198, B:167:0x019d, B:169:0x01a1, B:172:0x01a6, B:174:0x01aa, B:177:0x01af, B:178:0x01b4, B:181:0x01c3, B:183:0x01cd, B:184:0x01dd, B:185:0x01f8, B:186:0x01e9, B:187:0x014d, B:189:0x015a, B:191:0x0161, B:193:0x0137, B:199:0x02c9), top: B:18:0x00a8 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x032e A[Catch: all -> 0x0324, TryCatch #3 {all -> 0x0324, blocks: (B:142:0x0302, B:149:0x030f, B:153:0x031a, B:68:0x032e, B:70:0x0334, B:74:0x033b, B:76:0x0369, B:77:0x036e, B:79:0x0376, B:80:0x036c, B:84:0x034a, B:86:0x0353, B:92:0x037a, B:101:0x0469, B:103:0x04fa, B:105:0x050f, B:122:0x0439, B:124:0x043f, B:126:0x0445, B:128:0x044b, B:129:0x044d, B:131:0x03a8, B:133:0x03ae, B:134:0x03bb, B:136:0x03e5), top: B:141:0x0302, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x038b A[ADDED_TO_REGION] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.bumptech.glide.load.p042b.InterfaceC0925u<android.graphics.Bitmap> m2923a(java.io.InputStream r35, int r36, int r37, com.bumptech.glide.load.C1025j r38, com.bumptech.glide.load.p049d.p050a.C0980o.a r39) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p049d.p050a.C0980o.m2923a(java.io.InputStream, int, int, com.bumptech.glide.load.j, com.bumptech.glide.load.d.a.o$a):com.bumptech.glide.load.b.u");
    }
}
