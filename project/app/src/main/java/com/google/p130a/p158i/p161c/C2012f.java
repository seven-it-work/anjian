package com.google.p130a.p158i.p161c;

import com.google.p130a.p158i.p159a.C1999j;
import com.google.p130a.p158i.p159a.EnumC1995f;
import com.google.p130a.p158i.p159a.EnumC1997h;

/* renamed from: com.google.a.i.c.f */
/* loaded from: classes.dex */
public final class C2012f {

    /* renamed from: a */
    public static final int f7872a = 8;

    /* renamed from: b */
    EnumC1997h f7873b;

    /* renamed from: c */
    EnumC1995f f7874c;

    /* renamed from: d */
    C1999j f7875d;

    /* renamed from: e */
    int f7876e = -1;

    /* renamed from: f */
    public C2008b f7877f;

    /* renamed from: a */
    private EnumC1997h m9261a() {
        return this.f7873b;
    }

    /* renamed from: a */
    private void m9262a(int i) {
        this.f7876e = i;
    }

    /* renamed from: a */
    private void m9263a(EnumC1995f enumC1995f) {
        this.f7874c = enumC1995f;
    }

    /* renamed from: a */
    private void m9264a(EnumC1997h enumC1997h) {
        this.f7873b = enumC1997h;
    }

    /* renamed from: a */
    private void m9265a(C1999j c1999j) {
        this.f7875d = c1999j;
    }

    /* renamed from: a */
    private void m9266a(C2008b c2008b) {
        this.f7877f = c2008b;
    }

    /* renamed from: b */
    private EnumC1995f m9267b() {
        return this.f7874c;
    }

    /* renamed from: b */
    private static boolean m9268b(int i) {
        return i >= 0 && i < 8;
    }

    /* renamed from: c */
    private C1999j m9269c() {
        return this.f7875d;
    }

    /* renamed from: d */
    private int m9270d() {
        return this.f7876e;
    }

    /* renamed from: e */
    private C2008b m9271e() {
        return this.f7877f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.f7873b);
        sb.append("\n ecLevel: ");
        sb.append(this.f7874c);
        sb.append("\n version: ");
        sb.append(this.f7875d);
        sb.append("\n maskPattern: ");
        sb.append(this.f7876e);
        if (this.f7877f == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.f7877f);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
