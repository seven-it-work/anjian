package p003b.p004a.p010f;

import p003b.p004a.C0439c;
import p017c.C0538f;

/* renamed from: b.a.f.c */
/* loaded from: classes.dex */
public final class C0463c {

    /* renamed from: a */
    public static final C0538f f288a = C0538f.encodeUtf8(":");

    /* renamed from: b */
    public static final C0538f f289b = C0538f.encodeUtf8(":status");

    /* renamed from: c */
    public static final C0538f f290c = C0538f.encodeUtf8(":method");

    /* renamed from: d */
    public static final C0538f f291d = C0538f.encodeUtf8(":path");

    /* renamed from: e */
    public static final C0538f f292e = C0538f.encodeUtf8(":scheme");

    /* renamed from: f */
    public static final C0538f f293f = C0538f.encodeUtf8(":authority");

    /* renamed from: g */
    public final C0538f f294g;

    /* renamed from: h */
    public final C0538f f295h;

    /* renamed from: i */
    final int f296i;

    public C0463c(C0538f c0538f, C0538f c0538f2) {
        this.f294g = c0538f;
        this.f295h = c0538f2;
        this.f296i = c0538f.size() + 32 + c0538f2.size();
    }

    public C0463c(C0538f c0538f, String str) {
        this(c0538f, C0538f.encodeUtf8(str));
    }

    public C0463c(String str, String str2) {
        this(C0538f.encodeUtf8(str), C0538f.encodeUtf8(str2));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0463c) {
            C0463c c0463c = (C0463c) obj;
            if (this.f294g.equals(c0463c.f294g) && this.f295h.equals(c0463c.f295h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f294g.hashCode() + 527) * 31) + this.f295h.hashCode();
    }

    public final String toString() {
        return C0439c.m138a("%s: %s", this.f294g.utf8(), this.f295h.utf8());
    }
}
