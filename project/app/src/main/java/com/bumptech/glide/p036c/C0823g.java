package com.bumptech.glide.p036c;

import android.graphics.Bitmap;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.p036c.InterfaceC0818b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: com.bumptech.glide.c.g */
/* loaded from: classes.dex */
public class C0823g implements InterfaceC0818b {

    /* renamed from: f */
    private static final String f2315f = "g";

    /* renamed from: g */
    private static final int f2316g = 4096;

    /* renamed from: h */
    private static final int f2317h = -1;

    /* renamed from: i */
    private static final int f2318i = -1;

    /* renamed from: j */
    private static final int f2319j = 4;

    /* renamed from: k */
    private static final int f2320k = 255;

    /* renamed from: l */
    @ColorInt
    private static final int f2321l = 0;

    /* renamed from: A */
    private boolean f2322A;

    /* renamed from: B */
    private int f2323B;

    /* renamed from: C */
    private int f2324C;

    /* renamed from: D */
    private int f2325D;

    /* renamed from: E */
    private int f2326E;

    /* renamed from: F */
    @Nullable
    private Boolean f2327F;

    /* renamed from: G */
    @NonNull
    private Bitmap.Config f2328G;

    /* renamed from: m */
    @ColorInt
    private int[] f2329m;

    /* renamed from: n */
    @ColorInt
    private final int[] f2330n;

    /* renamed from: o */
    private final InterfaceC0818b.a f2331o;

    /* renamed from: p */
    private ByteBuffer f2332p;

    /* renamed from: q */
    private byte[] f2333q;

    /* renamed from: r */
    private C0821e f2334r;

    /* renamed from: s */
    private short[] f2335s;

    /* renamed from: t */
    private byte[] f2336t;

    /* renamed from: u */
    private byte[] f2337u;

    /* renamed from: v */
    private byte[] f2338v;

    /* renamed from: w */
    @ColorInt
    private int[] f2339w;

    /* renamed from: x */
    private int f2340x;

    /* renamed from: y */
    private C0820d f2341y;

    /* renamed from: z */
    private Bitmap f2342z;

    private C0823g(@NonNull InterfaceC0818b.a aVar) {
        this.f2330n = new int[256];
        this.f2328G = Bitmap.Config.ARGB_8888;
        this.f2331o = aVar;
        this.f2341y = new C0820d();
    }

    private C0823g(@NonNull InterfaceC0818b.a aVar, C0820d c0820d, ByteBuffer byteBuffer) {
        this(aVar, c0820d, byteBuffer, 1);
    }

    public C0823g(@NonNull InterfaceC0818b.a aVar, C0820d c0820d, ByteBuffer byteBuffer, int i) {
        this(aVar);
        mo2204a(c0820d, byteBuffer, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0069, code lost:
    
        return 0;
     */
    @android.support.annotation.ColorInt
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int m2250a(int r10, int r11, int r12) {
        /*
            r9 = this;
            r0 = 0
            r1 = r10
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
        L7:
            int r7 = r9.f2324C
            int r7 = r7 + r10
            if (r1 >= r7) goto L36
            byte[] r7 = r9.f2338v
            int r7 = r7.length
            if (r1 >= r7) goto L36
            if (r1 >= r11) goto L36
            byte[] r7 = r9.f2338v
            r7 = r7[r1]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int[] r8 = r9.f2329m
            r7 = r8[r7]
            if (r7 == 0) goto L33
            int r8 = r7 >> 24
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r8
            int r8 = r7 >> 16
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r8
            int r8 = r7 >> 8
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r4 = r4 + r8
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r5 = r5 + r7
            int r6 = r6 + 1
        L33:
            int r1 = r1 + 1
            goto L7
        L36:
            int r10 = r10 + r12
            r12 = r10
        L38:
            int r1 = r9.f2324C
            int r1 = r1 + r10
            if (r12 >= r1) goto L67
            byte[] r1 = r9.f2338v
            int r1 = r1.length
            if (r12 >= r1) goto L67
            if (r12 >= r11) goto L67
            byte[] r1 = r9.f2338v
            r1 = r1[r12]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int[] r7 = r9.f2329m
            r1 = r7[r1]
            if (r1 == 0) goto L64
            int r7 = r1 >> 24
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r7
            int r7 = r1 >> 16
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r3 = r3 + r7
            int r7 = r1 >> 8
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r4 = r4 + r7
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r5 = r5 + r1
            int r6 = r6 + 1
        L64:
            int r12 = r12 + 1
            goto L38
        L67:
            if (r6 != 0) goto L6a
            return r0
        L6a:
            int r2 = r2 / r6
            int r10 = r2 << 24
            int r3 = r3 / r6
            int r11 = r3 << 16
            r10 = r10 | r11
            int r4 = r4 / r6
            int r11 = r4 << 8
            r10 = r10 | r11
            int r5 = r5 / r6
            r10 = r10 | r5
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p036c.C0823g.m2250a(int, int, int):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0399, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        if (r50.f2341y.f2287l == r51.f2272l) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v34, types: [short] */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.graphics.Bitmap m2251a(com.bumptech.glide.p036c.C0819c r51, com.bumptech.glide.p036c.C0819c r52) {
        /*
            Method dump skipped, instructions count: 1094
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p036c.C0823g.m2251a(com.bumptech.glide.c.c, com.bumptech.glide.c.c):android.graphics.Bitmap");
    }

    /* renamed from: a */
    private void m2252a(C0819c c0819c) {
        C0819c c0819c2 = c0819c;
        int[] iArr = this.f2339w;
        int i = c0819c2.f2268h;
        int i2 = c0819c2.f2266f;
        int i3 = c0819c2.f2267g;
        int i4 = c0819c2.f2265e;
        boolean z = this.f2340x == 0;
        int i5 = this.f2326E;
        byte[] bArr = this.f2338v;
        int[] iArr2 = this.f2329m;
        int i6 = 0;
        byte b2 = -1;
        while (i6 < i) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            if (i10 < i9) {
                i9 = i10;
            }
            byte b3 = b2;
            int i11 = c0819c2.f2267g * i6;
            int i12 = i8;
            while (i12 < i9) {
                byte b4 = bArr[i11];
                int i13 = i;
                int i14 = b4 & 255;
                if (i14 != b3) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr[i12] = i15;
                    } else {
                        b3 = b4;
                    }
                }
                i11++;
                i12++;
                i = i13;
            }
            i6++;
            b2 = b3;
            c0819c2 = c0819c;
        }
        this.f2327F = Boolean.valueOf(this.f2327F == null && z && b2 != -1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x011d, code lost:
    
        r1 = 0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m2253b(com.bumptech.glide.p036c.C0819c r32) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p036c.C0823g.m2253b(com.bumptech.glide.c.c):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [short] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* renamed from: c */
    private void m2254c(C0819c c0819c) {
        int i;
        int i2;
        int i3;
        short s;
        C0823g c0823g = this;
        if (c0819c != null) {
            c0823g.f2332p.position(c0819c.f2274n);
        }
        int i4 = c0819c == null ? c0823g.f2341y.f2283h * c0823g.f2341y.f2284i : c0819c.f2268h * c0819c.f2267g;
        if (c0823g.f2338v == null || c0823g.f2338v.length < i4) {
            c0823g.f2338v = c0823g.f2331o.mo2224a(i4);
        }
        byte[] bArr = c0823g.f2338v;
        if (c0823g.f2335s == null) {
            c0823g.f2335s = new short[4096];
        }
        short[] sArr = c0823g.f2335s;
        if (c0823g.f2336t == null) {
            c0823g.f2336t = new byte[4096];
        }
        byte[] bArr2 = c0823g.f2336t;
        if (c0823g.f2337u == null) {
            c0823g.f2337u = new byte[4097];
        }
        byte[] bArr3 = c0823g.f2337u;
        int m2256q = m2256q();
        int i5 = 1 << m2256q;
        int i6 = i5 + 1;
        int i7 = i5 + 2;
        int i8 = m2256q + 1;
        int i9 = (1 << i8) - 1;
        for (int i10 = 0; i10 < i5; i10++) {
            sArr[i10] = 0;
            bArr2[i10] = (byte) i10;
        }
        byte[] bArr4 = c0823g.f2333q;
        int i11 = i8;
        int i12 = i7;
        int i13 = i9;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            if (i14 >= i4) {
                break;
            }
            if (i15 == 0) {
                i3 = m2256q();
                if (i3 <= 0) {
                    i = i14;
                    i2 = i8;
                } else {
                    i = i14;
                    i2 = i8;
                    c0823g.f2332p.get(c0823g.f2333q, 0, Math.min(i3, c0823g.f2332p.remaining()));
                }
                if (i3 <= 0) {
                    c0823g.f2323B = 3;
                    break;
                }
                i19 = 0;
            } else {
                i = i14;
                i2 = i8;
                i3 = i15;
            }
            i18 += (bArr4[i19] & 255) << i17;
            i19++;
            i15 = i3 - 1;
            int i23 = i17 + 8;
            int i24 = i20;
            int i25 = i21;
            int i26 = i12;
            int i27 = i11;
            while (i23 >= i27) {
                int i28 = i18 & i13;
                i18 >>= i27;
                i23 -= i27;
                if (i28 == i5) {
                    i26 = i7;
                    i13 = i9;
                    i27 = i2;
                    i24 = -1;
                } else if (i28 != i6) {
                    if (i24 == -1) {
                        bArr[i16] = bArr2[i28];
                        i16++;
                        i++;
                        i24 = i28;
                        i25 = i24;
                    } else {
                        if (i28 >= i26) {
                            bArr3[i22] = (byte) i25;
                            i22++;
                            s = i24;
                        } else {
                            s = i28;
                        }
                        while (s >= i5) {
                            bArr3[i22] = bArr2[s];
                            i22++;
                            s = sArr[s];
                        }
                        int i29 = bArr2[s] & 255;
                        byte b2 = (byte) i29;
                        bArr[i16] = b2;
                        while (true) {
                            i16++;
                            i++;
                            if (i22 <= 0) {
                                break;
                            }
                            i22--;
                            bArr[i16] = bArr3[i22];
                        }
                        if (i26 < 4096) {
                            sArr[i26] = (short) i24;
                            bArr2[i26] = b2;
                            i26++;
                            if ((i26 & i13) == 0 && i26 < 4096) {
                                i27++;
                                i13 += i26;
                            }
                        }
                        i24 = i28;
                        i25 = i29;
                    }
                }
            }
            i12 = i26;
            i17 = i23;
            i11 = i27;
            i20 = i24;
            i14 = i;
            i8 = i2;
            i21 = i25;
            c0823g = this;
        }
        Arrays.fill(bArr, i16, i4, (byte) 0);
    }

    @NonNull
    /* renamed from: p */
    private C0821e m2255p() {
        if (this.f2334r == null) {
            this.f2334r = new C0821e();
        }
        return this.f2334r;
    }

    /* renamed from: q */
    private int m2256q() {
        return this.f2332p.get() & 255;
    }

    /* renamed from: r */
    private int m2257r() {
        int m2256q = m2256q();
        if (m2256q <= 0) {
            return m2256q;
        }
        this.f2332p.get(this.f2333q, 0, Math.min(m2256q, this.f2332p.remaining()));
        return m2256q;
    }

    /* renamed from: s */
    private Bitmap m2258s() {
        Bitmap mo2220a = this.f2331o.mo2220a(this.f2326E, this.f2325D, (this.f2327F == null || this.f2327F.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f2328G);
        mo2220a.setHasAlpha(true);
        return mo2220a;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final int mo2198a() {
        return this.f2341y.f2283h;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final int mo2199a(int i) {
        if (i < 0 || i >= this.f2341y.f2280e) {
            return -1;
        }
        return this.f2341y.f2282g.get(i).f2273m;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final int mo2200a(@Nullable InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                mo2201a(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(f2315f, "Error reading data from stream", e);
            }
        } else {
            this.f2323B = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(f2315f, "Error closing stream", e2);
            }
        }
        return this.f2323B;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final synchronized int mo2201a(@Nullable byte[] bArr) {
        if (this.f2334r == null) {
            this.f2334r = new C0821e();
        }
        C0821e c0821e = this.f2334r;
        if (bArr != null) {
            c0821e.m2249a(ByteBuffer.wrap(bArr));
        } else {
            c0821e.f2311c = null;
            c0821e.f2312d.f2279d = 2;
        }
        this.f2341y = c0821e.m2248a();
        if (bArr != null) {
            mo2205a(this.f2341y, bArr);
        }
        return this.f2323B;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final void mo2202a(@NonNull Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f2328G = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final synchronized void mo2203a(@NonNull C0820d c0820d, @NonNull ByteBuffer byteBuffer) {
        mo2204a(c0820d, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final synchronized void mo2204a(@NonNull C0820d c0820d, @NonNull ByteBuffer byteBuffer, int i) {
        try {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f2323B = 0;
            this.f2341y = c0820d;
            this.f2340x = -1;
            this.f2332p = byteBuffer.asReadOnlyBuffer();
            this.f2332p.position(0);
            this.f2332p.order(ByteOrder.LITTLE_ENDIAN);
            this.f2322A = false;
            Iterator<C0819c> it = c0820d.f2282g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f2271k == 3) {
                    this.f2322A = true;
                    break;
                }
            }
            this.f2324C = highestOneBit;
            this.f2326E = c0820d.f2283h / highestOneBit;
            this.f2325D = c0820d.f2284i / highestOneBit;
            this.f2338v = this.f2331o.mo2224a(c0820d.f2283h * c0820d.f2284i);
            this.f2339w = this.f2331o.mo2225b(this.f2326E * this.f2325D);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: a */
    public final synchronized void mo2205a(@NonNull C0820d c0820d, @NonNull byte[] bArr) {
        mo2203a(c0820d, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: b */
    public final int mo2206b() {
        return this.f2341y.f2284i;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    @NonNull
    /* renamed from: c */
    public final ByteBuffer mo2207c() {
        return this.f2332p;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: d */
    public final int mo2208d() {
        return this.f2323B;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: e */
    public final void mo2209e() {
        this.f2340x = (this.f2340x + 1) % this.f2341y.f2280e;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: f */
    public final int mo2210f() {
        if (this.f2341y.f2280e <= 0 || this.f2340x < 0) {
            return 0;
        }
        int i = this.f2340x;
        if (i < 0 || i >= this.f2341y.f2280e) {
            return -1;
        }
        return this.f2341y.f2282g.get(i).f2273m;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: g */
    public final int mo2211g() {
        return this.f2341y.f2280e;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: h */
    public final int mo2212h() {
        return this.f2340x;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: i */
    public final void mo2213i() {
        this.f2340x = -1;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    @Deprecated
    /* renamed from: j */
    public final int mo2214j() {
        if (this.f2341y.f2290o == -1) {
            return 1;
        }
        return this.f2341y.f2290o;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: k */
    public final int mo2215k() {
        return this.f2341y.f2290o;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: l */
    public final int mo2216l() {
        if (this.f2341y.f2290o == -1) {
            return 1;
        }
        if (this.f2341y.f2290o == 0) {
            return 0;
        }
        return this.f2341y.f2290o + 1;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: m */
    public final int mo2217m() {
        return this.f2332p.limit() + this.f2338v.length + (this.f2339w.length * 4);
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    @Nullable
    /* renamed from: n */
    public final synchronized Bitmap mo2218n() {
        if (this.f2341y.f2280e <= 0 || this.f2340x < 0) {
            if (Log.isLoggable(f2315f, 3)) {
                Log.d(f2315f, "Unable to decode frame, frameCount=" + this.f2341y.f2280e + ", framePointer=" + this.f2340x);
            }
            this.f2323B = 1;
        }
        if (this.f2323B != 1 && this.f2323B != 2) {
            this.f2323B = 0;
            if (this.f2333q == null) {
                this.f2333q = this.f2331o.mo2224a(255);
            }
            C0819c c0819c = this.f2341y.f2282g.get(this.f2340x);
            int i = this.f2340x - 1;
            C0819c c0819c2 = i >= 0 ? this.f2341y.f2282g.get(i) : null;
            this.f2329m = c0819c.f2275o != null ? c0819c.f2275o : this.f2341y.f2278c;
            if (this.f2329m != null) {
                if (c0819c.f2270j) {
                    System.arraycopy(this.f2329m, 0, this.f2330n, 0, this.f2329m.length);
                    this.f2329m = this.f2330n;
                    this.f2329m[c0819c.f2272l] = 0;
                }
                return m2251a(c0819c, c0819c2);
            }
            if (Log.isLoggable(f2315f, 3)) {
                Log.d(f2315f, "No valid color table found for frame #" + this.f2340x);
            }
            this.f2323B = 1;
            return null;
        }
        if (Log.isLoggable(f2315f, 3)) {
            Log.d(f2315f, "Unable to decode frame, status=" + this.f2323B);
        }
        return null;
    }

    @Override // com.bumptech.glide.p036c.InterfaceC0818b
    /* renamed from: o */
    public final void mo2219o() {
        this.f2341y = null;
        if (this.f2338v != null) {
            this.f2331o.mo2222a(this.f2338v);
        }
        if (this.f2339w != null) {
            this.f2331o.mo2223a(this.f2339w);
        }
        if (this.f2342z != null) {
            this.f2331o.mo2221a(this.f2342z);
        }
        this.f2342z = null;
        this.f2332p = null;
        this.f2327F = null;
        if (this.f2333q != null) {
            this.f2331o.mo2222a(this.f2333q);
        }
    }
}
