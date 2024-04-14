package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1024i;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0930c;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;

/* renamed from: com.bumptech.glide.load.d.a.e */
/* loaded from: classes.dex */
public final class C0970e implements InterfaceC1027l<Bitmap> {

    /* renamed from: a */
    public static final C1024i<Integer> f3005a = C1024i.m3056a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: b */
    public static final C1024i<Bitmap.CompressFormat> f3006b = C1024i.m3054a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: c */
    private static final String f3007c = "BitmapEncoder";

    /* renamed from: d */
    @Nullable
    private final InterfaceC0872b f3008d;

    @Deprecated
    public C0970e() {
        this.f3008d = null;
    }

    public C0970e(@NonNull InterfaceC0872b interfaceC0872b) {
        this.f3008d = interfaceC0872b;
    }

    /* renamed from: a */
    private static Bitmap.CompressFormat m2865a(Bitmap bitmap, C1025j c1025j) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) c1025j.m3064a(f3006b);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0073, code lost:
    
        if (r5 != null) goto L48;
     */
    @Override // com.bumptech.glide.load.InterfaceC0961d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo2770a(@android.support.annotation.NonNull com.bumptech.glide.load.p042b.InterfaceC0925u<android.graphics.Bitmap> r8, @android.support.annotation.NonNull java.io.File r9, @android.support.annotation.NonNull com.bumptech.glide.load.C1025j r10) {
        /*
            r7 = this;
            java.lang.Object r8 = r8.mo2724b()
            android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8
            com.bumptech.glide.load.i<android.graphics.Bitmap$CompressFormat> r0 = com.bumptech.glide.load.p049d.p050a.C0970e.f3006b
            java.lang.Object r0 = r10.m3064a(r0)
            android.graphics.Bitmap$CompressFormat r0 = (android.graphics.Bitmap.CompressFormat) r0
            if (r0 == 0) goto L11
            goto L1c
        L11:
            boolean r0 = r8.hasAlpha()
            if (r0 == 0) goto L1a
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG
            goto L1c
        L1a:
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG
        L1c:
            int r1 = r8.getWidth()
            java.lang.Integer.valueOf(r1)
            int r1 = r8.getHeight()
            java.lang.Integer.valueOf(r1)
            long r1 = com.bumptech.glide.util.C1080e.m3453a()     // Catch: java.lang.Throwable -> Lcb
            com.bumptech.glide.load.i<java.lang.Integer> r3 = com.bumptech.glide.load.p049d.p050a.C0970e.f3005a     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r3 = r10.m3064a(r3)     // Catch: java.lang.Throwable -> Lcb
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> Lcb
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> Lcb
            r4 = 0
            r5 = 0
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            com.bumptech.glide.load.b.a.b r9 = r7.f3008d     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L5d
            if (r9 == 0) goto L4e
            com.bumptech.glide.load.a.c r9 = new com.bumptech.glide.load.a.c     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L5d
            com.bumptech.glide.load.b.a.b r5 = r7.f3008d     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L5d
            r9.<init>(r6, r5)     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L5d
            r5 = r9
            goto L4f
        L4e:
            r5 = r6
        L4f:
            r8.compress(r0, r3, r5)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            r5.close()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L62
            r4 = 1
        L56:
            r5.close()     // Catch: java.io.IOException -> L76 java.lang.Throwable -> Lcb
            goto L76
        L5a:
            r8 = move-exception
            r5 = r6
            goto Lc5
        L5d:
            r9 = move-exception
            r5 = r6
            goto L63
        L60:
            r8 = move-exception
            goto Lc5
        L62:
            r9 = move-exception
        L63:
            java.lang.String r3 = "BitmapEncoder"
            r6 = 3
            boolean r3 = android.util.Log.isLoggable(r3, r6)     // Catch: java.lang.Throwable -> L60
            if (r3 == 0) goto L73
            java.lang.String r3 = "BitmapEncoder"
            java.lang.String r6 = "Failed to encode Bitmap"
            android.util.Log.d(r3, r6, r9)     // Catch: java.lang.Throwable -> L60
        L73:
            if (r5 == 0) goto L76
            goto L56
        L76:
            java.lang.String r9 = "BitmapEncoder"
            r3 = 2
            boolean r9 = android.util.Log.isLoggable(r9, r3)     // Catch: java.lang.Throwable -> Lcb
            if (r9 == 0) goto Lc4
            java.lang.String r9 = "BitmapEncoder"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r5 = "Compressed with type: "
            r3.<init>(r5)     // Catch: java.lang.Throwable -> Lcb
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r0 = " of size "
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            int r0 = com.bumptech.glide.util.C1086k.m3477a(r8)     // Catch: java.lang.Throwable -> Lcb
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r0 = " in "
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            double r0 = com.bumptech.glide.util.C1080e.m3452a(r1)     // Catch: java.lang.Throwable -> Lcb
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r0 = ", options format: "
            r3.append(r0)     // Catch: java.lang.Throwable -> Lcb
            com.bumptech.glide.load.i<android.graphics.Bitmap$CompressFormat> r0 = com.bumptech.glide.load.p049d.p050a.C0970e.f3006b     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r10 = r10.m3064a(r0)     // Catch: java.lang.Throwable -> Lcb
            r3.append(r10)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r10 = ", hasAlpha: "
            r3.append(r10)     // Catch: java.lang.Throwable -> Lcb
            boolean r8 = r8.hasAlpha()     // Catch: java.lang.Throwable -> Lcb
            r3.append(r8)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r8 = r3.toString()     // Catch: java.lang.Throwable -> Lcb
            android.util.Log.v(r9, r8)     // Catch: java.lang.Throwable -> Lcb
        Lc4:
            return r4
        Lc5:
            if (r5 == 0) goto Lca
            r5.close()     // Catch: java.io.IOException -> Lca java.lang.Throwable -> Lcb
        Lca:
            throw r8     // Catch: java.lang.Throwable -> Lcb
        Lcb:
            r8 = move-exception
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p049d.p050a.C0970e.mo2770a(com.bumptech.glide.load.b.u, java.io.File, com.bumptech.glide.load.j):boolean");
    }

    @Override // com.bumptech.glide.load.InterfaceC1027l
    @NonNull
    /* renamed from: a */
    public final EnumC0930c mo2861a(@NonNull C1025j c1025j) {
        return EnumC0930c.TRANSFORMED;
    }
}
