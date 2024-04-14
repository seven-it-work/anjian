package org.litepal.p235b.p238c;

import java.lang.reflect.Field;

/* renamed from: org.litepal.b.c.a */
/* loaded from: classes2.dex */
public final class C3010a {

    /* renamed from: a */
    public String f11011a;

    /* renamed from: b */
    public String f11012b;

    /* renamed from: c */
    public String f11013c;

    /* renamed from: d */
    public Field f11014d;

    /* renamed from: e */
    public Field f11015e;

    /* renamed from: f */
    public int f11016f;

    /* renamed from: a */
    private String m13534a() {
        return this.f11011a;
    }

    /* renamed from: a */
    private void m13535a(int i) {
        this.f11016f = i;
    }

    /* renamed from: a */
    private void m13536a(String str) {
        this.f11011a = str;
    }

    /* renamed from: a */
    private void m13537a(Field field) {
        this.f11014d = field;
    }

    /* renamed from: b */
    private String m13538b() {
        return this.f11012b;
    }

    /* renamed from: b */
    private void m13539b(String str) {
        this.f11012b = str;
    }

    /* renamed from: b */
    private void m13540b(Field field) {
        this.f11015e = field;
    }

    /* renamed from: c */
    private String m13541c() {
        return this.f11013c;
    }

    /* renamed from: c */
    private void m13542c(String str) {
        this.f11013c = str;
    }

    /* renamed from: d */
    private Field m13543d() {
        return this.f11014d;
    }

    /* renamed from: e */
    private Field m13544e() {
        return this.f11015e;
    }

    /* renamed from: f */
    private int m13545f() {
        return this.f11016f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3010a)) {
            return false;
        }
        C3010a c3010a = (C3010a) obj;
        if (obj == null || c3010a == null || c3010a.f11016f != this.f11016f || !c3010a.f11013c.equals(this.f11013c)) {
            return false;
        }
        if (c3010a.f11011a.equals(this.f11011a) && c3010a.f11012b.equals(this.f11012b)) {
            return true;
        }
        return c3010a.f11011a.equals(this.f11012b) && c3010a.f11012b.equals(this.f11011a);
    }
}
