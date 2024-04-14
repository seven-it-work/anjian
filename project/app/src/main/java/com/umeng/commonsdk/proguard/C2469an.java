package com.umeng.commonsdk.proguard;

import java.io.Serializable;

/* renamed from: com.umeng.commonsdk.proguard.an */
/* loaded from: classes.dex */
public class C2469an implements Serializable {

    /* renamed from: a */
    private final boolean f9270a;

    /* renamed from: b */
    public final byte f9271b;

    /* renamed from: c */
    private final String f9272c;

    /* renamed from: d */
    private final boolean f9273d;

    public C2469an(byte b2) {
        this(b2, false);
    }

    public C2469an(byte b2, String str) {
        this.f9271b = b2;
        this.f9270a = true;
        this.f9272c = str;
        this.f9273d = false;
    }

    public C2469an(byte b2, boolean z) {
        this.f9271b = b2;
        this.f9270a = false;
        this.f9272c = null;
        this.f9273d = z;
    }

    /* renamed from: a */
    public boolean m10775a() {
        return this.f9270a;
    }

    /* renamed from: b */
    public String m10776b() {
        return this.f9272c;
    }

    /* renamed from: c */
    public boolean m10777c() {
        return this.f9271b == 12;
    }

    /* renamed from: d */
    public boolean m10778d() {
        return this.f9271b == 15 || this.f9271b == 13 || this.f9271b == 14;
    }

    /* renamed from: e */
    public boolean m10779e() {
        return this.f9273d;
    }
}
