package com.umeng.commonsdk.proguard;

/* renamed from: com.umeng.commonsdk.proguard.ax */
/* loaded from: classes.dex */
public final class C2479ax {

    /* renamed from: a */
    public final String f9335a;

    /* renamed from: b */
    public final byte f9336b;

    /* renamed from: c */
    public final int f9337c;

    public C2479ax() {
        this("", (byte) 0, 0);
    }

    public C2479ax(String str, byte b2, int i) {
        this.f9335a = str;
        this.f9336b = b2;
        this.f9337c = i;
    }

    /* renamed from: a */
    public final boolean m10848a(C2479ax c2479ax) {
        return this.f9335a.equals(c2479ax.f9335a) && this.f9336b == c2479ax.f9336b && this.f9337c == c2479ax.f9337c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2479ax) {
            return m10848a((C2479ax) obj);
        }
        return false;
    }

    public final String toString() {
        return "<TMessage name:'" + this.f9335a + "' type: " + ((int) this.f9336b) + " seqid:" + this.f9337c + ">";
    }
}
