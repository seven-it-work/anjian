package com.umeng.commonsdk.proguard;

import com.cyjh.common.util.C1176s;

/* renamed from: com.umeng.commonsdk.proguard.y */
/* loaded from: classes.dex */
public class C2521y {

    /* renamed from: a */
    private short[] f9625a;

    /* renamed from: b */
    private int f9626b = -1;

    public C2521y(int i) {
        this.f9625a = new short[i];
    }

    /* renamed from: d */
    private void m11135d() {
        short[] sArr = new short[this.f9625a.length * 2];
        System.arraycopy(this.f9625a, 0, sArr, 0, this.f9625a.length);
        this.f9625a = sArr;
    }

    /* renamed from: a */
    public short m11136a() {
        short[] sArr = this.f9625a;
        int i = this.f9626b;
        this.f9626b = i - 1;
        return sArr[i];
    }

    /* renamed from: a */
    public void m11137a(short s) {
        if (this.f9625a.length == this.f9626b + 1) {
            m11135d();
        }
        short[] sArr = this.f9625a;
        int i = this.f9626b + 1;
        this.f9626b = i;
        sArr[i] = s;
    }

    /* renamed from: b */
    public short m11138b() {
        return this.f9625a[this.f9626b];
    }

    /* renamed from: c */
    public void m11139c() {
        this.f9626b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i = 0; i < this.f9625a.length; i++) {
            if (i != 0) {
                sb.append(C1176s.a.f4108a);
            }
            if (i == this.f9626b) {
                sb.append(">>");
            }
            sb.append((int) this.f9625a[i]);
            if (i == this.f9626b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }
}
