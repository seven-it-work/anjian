package com.umeng.commonsdk.proguard;

/* renamed from: com.umeng.commonsdk.proguard.bn */
/* loaded from: classes.dex */
public abstract class AbstractC2496bn {
    /* renamed from: a */
    public abstract int mo10862a(byte[] bArr, int i, int i2) throws C2497bo;

    /* renamed from: a */
    public void mo10868a(int i) {
    }

    /* renamed from: a */
    public abstract boolean mo10863a();

    /* renamed from: b */
    public abstract void mo10864b() throws C2497bo;

    /* renamed from: b */
    public void m10875b(byte[] bArr) throws C2497bo {
        mo10865b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public abstract void mo10865b(byte[] bArr, int i, int i2) throws C2497bo;

    /* renamed from: c */
    public abstract void mo10866c();

    /* renamed from: d */
    public int m10876d(byte[] bArr, int i, int i2) throws C2497bo {
        int i3 = 0;
        while (i3 < i2) {
            int mo10862a = mo10862a(bArr, i + i3, i2 - i3);
            if (mo10862a <= 0) {
                throw new C2497bo("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += mo10862a;
        }
        return i3;
    }

    /* renamed from: d */
    public void mo10867d() throws C2497bo {
    }

    /* renamed from: f */
    public byte[] mo10872f() {
        return null;
    }

    /* renamed from: g */
    public int mo10873g() {
        return 0;
    }

    /* renamed from: h */
    public int mo10874h() {
        return -1;
    }

    /* renamed from: i */
    public boolean m10877i() {
        return mo10863a();
    }
}
