package com.google.p130a;

import org.apache.commons.io.FilenameUtils;

/* renamed from: com.google.a.j */
/* loaded from: classes.dex */
public abstract class AbstractC2013j {

    /* renamed from: a */
    public final int f7878a;

    /* renamed from: b */
    public final int f7879b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2013j(int i, int i2) {
        this.f7878a = i;
        this.f7879b = i2;
    }

    /* renamed from: g */
    private int m9272g() {
        return this.f7878a;
    }

    /* renamed from: h */
    private int m9273h() {
        return this.f7879b;
    }

    /* renamed from: a */
    public AbstractC2013j mo9097a(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    /* renamed from: a */
    public abstract byte[] mo9098a();

    /* renamed from: a */
    public abstract byte[] mo9099a(int i, byte[] bArr);

    /* renamed from: b */
    public boolean mo9100b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo9101c() {
        return false;
    }

    /* renamed from: d */
    public AbstractC2013j mo9102d() {
        return new C1988i(this);
    }

    /* renamed from: e */
    public AbstractC2013j mo9103e() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    /* renamed from: f */
    public AbstractC2013j mo9104f() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        byte[] bArr = new byte[this.f7878a];
        StringBuilder sb = new StringBuilder(this.f7879b * (this.f7878a + 1));
        byte[] bArr2 = bArr;
        for (int i = 0; i < this.f7879b; i++) {
            bArr2 = mo9099a(i, bArr2);
            for (int i2 = 0; i2 < this.f7878a; i2++) {
                int i3 = bArr2[i2] & 255;
                sb.append(i3 < 64 ? '#' : i3 < 128 ? '+' : i3 < 192 ? FilenameUtils.EXTENSION_SEPARATOR : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
