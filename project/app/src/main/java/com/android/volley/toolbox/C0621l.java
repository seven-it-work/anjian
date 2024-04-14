package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0591d;
import com.android.volley.C0596i;
import com.android.volley.C0598k;
import com.android.volley.C0601n;
import com.android.volley.C0607t;

/* renamed from: com.android.volley.toolbox.l */
/* loaded from: classes.dex */
public final class C0621l extends AbstractC0599l<Bitmap> {

    /* renamed from: m */
    private static final int f1378m = 1000;

    /* renamed from: n */
    private static final int f1379n = 2;

    /* renamed from: o */
    private static final float f1380o = 2.0f;

    /* renamed from: v */
    private static final Object f1381v = new Object();

    /* renamed from: p */
    private final C0601n.b<Bitmap> f1382p;

    /* renamed from: q */
    private final Bitmap.Config f1383q;

    /* renamed from: r */
    private final int f1384r;

    /* renamed from: s */
    private final int f1385s;

    /* renamed from: t */
    private ImageView.ScaleType f1386t;

    /* renamed from: u */
    private a f1387u;

    /* renamed from: com.android.volley.toolbox.l$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        Bitmap m1511a();

        /* renamed from: b */
        String m1512b();
    }

    private C0621l(String str, C0601n.b<Bitmap> bVar, int i, int i2, Bitmap.Config config, C0601n.a aVar) {
        this(str, bVar, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, null, aVar);
    }

    private C0621l(String str, C0601n.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, C0601n.a aVar) {
        this(str, bVar, i, i2, scaleType, config, null, aVar);
    }

    public C0621l(String str, C0601n.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, a aVar, C0601n.a aVar2) {
        super(0, str, aVar2);
        this.f1260j = new C0591d(1000, 2, f1380o);
        this.f1382p = bVar;
        this.f1383q = config;
        this.f1384r = i;
        this.f1385s = i2;
        this.f1386t = scaleType;
        this.f1387u = aVar;
    }

    /* renamed from: a */
    private static int m1508a(int i, int i2, int i3, int i4) {
        double min = Math.min(i / i3, i2 / i4);
        float f = 1.0f;
        while (true) {
            float f2 = f1380o * f;
            if (f2 > min) {
                return (int) f;
            }
            f = f2;
        }
    }

    /* renamed from: a */
    private static int m1509a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (i3 * (i2 / i4));
        }
        if (i2 == 0) {
            return i;
        }
        double d = i4 / i3;
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d2 = i2;
            return ((double) i) * d < d2 ? (int) (d2 / d) : i;
        }
        double d3 = i2;
        return ((double) i) * d > d3 ? (int) (d3 / d) : i;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private void a2(Bitmap bitmap) {
        this.f1382p.mo1408a(bitmap);
    }

    /* renamed from: b */
    private C0601n<Bitmap> m1510b(C0596i c0596i) {
        Bitmap decodeByteArray;
        byte[] bArr = c0596i.f1245b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.f1384r == 0 && this.f1385s == 0) {
            options.inPreferredConfig = this.f1383q;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int m1509a = m1509a(this.f1384r, this.f1385s, i, i2, this.f1386t);
            int m1509a2 = m1509a(this.f1385s, this.f1384r, i2, i, this.f1386t);
            options.inJustDecodeBounds = false;
            options.inSampleSize = m1508a(i, i2, m1509a, m1509a2);
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null && m1509a > 0 && m1509a2 > 0 && (decodeByteArray.getWidth() > m1509a || decodeByteArray.getHeight() > m1509a2)) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, m1509a, m1509a2, true);
                decodeByteArray.recycle();
                decodeByteArray = createScaledBitmap;
            }
        }
        if (decodeByteArray == null) {
            return C0601n.m1404a(new C0598k(c0596i));
        }
        if (this.f1387u != null) {
            decodeByteArray = this.f1387u.m1511a();
        }
        return C0601n.m1405a(decodeByteArray, C0617h.m1467a(c0596i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final C0601n<Bitmap> mo1379a(C0596i c0596i) {
        Bitmap decodeByteArray;
        C0601n<Bitmap> m1405a;
        synchronized (f1381v) {
            try {
                try {
                    byte[] bArr = c0596i.f1245b;
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    if (this.f1384r == 0 && this.f1385s == 0) {
                        options.inPreferredConfig = this.f1383q;
                        decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    } else {
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        int i = options.outWidth;
                        int i2 = options.outHeight;
                        int m1509a = m1509a(this.f1384r, this.f1385s, i, i2, this.f1386t);
                        int m1509a2 = m1509a(this.f1385s, this.f1384r, i2, i, this.f1386t);
                        options.inJustDecodeBounds = false;
                        options.inSampleSize = m1508a(i, i2, m1509a, m1509a2);
                        decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        if (decodeByteArray != null && m1509a > 0 && m1509a2 > 0 && (decodeByteArray.getWidth() > m1509a || decodeByteArray.getHeight() > m1509a2)) {
                            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, m1509a, m1509a2, true);
                            decodeByteArray.recycle();
                            decodeByteArray = createScaledBitmap;
                        }
                    }
                    if (decodeByteArray == null) {
                        m1405a = C0601n.m1404a(new C0598k(c0596i));
                    } else {
                        if (this.f1387u != null) {
                            decodeByteArray = this.f1387u.m1511a();
                        }
                        m1405a = C0601n.m1405a(decodeByteArray, C0617h.m1467a(c0596i));
                    }
                } catch (OutOfMemoryError e) {
                    C0607t.m1414c("Caught OOM for %d byte image, url=%s", Integer.valueOf(c0596i.f1245b.length), this.f1252b);
                    return C0601n.m1404a(new C0598k(e));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m1405a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.AbstractC0599l
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo1380a(Bitmap bitmap) {
        this.f1382p.mo1408a(bitmap);
    }

    @Override // com.android.volley.AbstractC0599l
    /* renamed from: h */
    public final AbstractC0599l.b mo1390h() {
        return AbstractC0599l.b.LOW;
    }
}
