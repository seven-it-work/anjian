package com.umeng.commonsdk.proguard;

/* renamed from: com.umeng.commonsdk.proguard.au */
/* loaded from: classes.dex */
public class C2476au {

    /* renamed from: a */
    public final String f9327a;

    /* renamed from: b */
    public final byte f9328b;

    /* renamed from: c */
    public final short f9329c;

    public C2476au() {
        this("", (byte) 0, (short) 0);
    }

    public C2476au(String str, byte b2, short s) {
        this.f9327a = str;
        this.f9328b = b2;
        this.f9329c = s;
    }

    /* renamed from: a */
    public boolean m10847a(C2476au c2476au) {
        return this.f9328b == c2476au.f9328b && this.f9329c == c2476au.f9329c;
    }

    public String toString() {
        return "<TField name:'" + this.f9327a + "' type:" + ((int) this.f9328b) + " field-id:" + ((int) this.f9329c) + ">";
    }
}
