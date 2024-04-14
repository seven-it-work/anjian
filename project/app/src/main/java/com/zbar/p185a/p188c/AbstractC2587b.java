package com.zbar.p185a.p188c;

import org.apache.commons.io.FilenameUtils;

/* renamed from: com.zbar.a.c.b */
/* loaded from: classes.dex */
public abstract class AbstractC2587b {

    /* renamed from: a */
    public final int f10021a;

    /* renamed from: b */
    public final int f10022b;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2587b(int i, int i2) {
        this.f10021a = i;
        this.f10022b = i2;
    }

    /* renamed from: g */
    private int m11670g() {
        return this.f10021a;
    }

    /* renamed from: h */
    private int m11671h() {
        return this.f10022b;
    }

    /* renamed from: a */
    public AbstractC2587b mo11662a(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    /* renamed from: a */
    public abstract byte[] mo11663a();

    /* renamed from: a */
    public abstract byte[] mo11664a(int i, byte[] bArr);

    /* renamed from: b */
    public boolean mo11665b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo11666c() {
        return false;
    }

    /* renamed from: d */
    public AbstractC2587b mo11667d() {
        return new C2586a(this);
    }

    /* renamed from: e */
    public AbstractC2587b mo11668e() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    /* renamed from: f */
    public AbstractC2587b mo11669f() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        byte[] bArr = new byte[this.f10021a];
        StringBuilder sb = new StringBuilder(this.f10022b * (this.f10021a + 1));
        byte[] bArr2 = bArr;
        for (int i = 0; i < this.f10022b; i++) {
            bArr2 = mo11664a(i, bArr2);
            for (int i2 = 0; i2 < this.f10021a; i2++) {
                int i3 = bArr2[i2] & 255;
                sb.append(i3 < 64 ? '#' : i3 < 128 ? '+' : i3 < 192 ? FilenameUtils.EXTENSION_SEPARATOR : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
