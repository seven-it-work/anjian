package p003b;

import javax.annotation.Nullable;

/* renamed from: b.h */
/* loaded from: classes.dex */
public final class C0510h {

    /* renamed from: a */
    private final String f776a;

    /* renamed from: b */
    private final String f777b;

    public C0510h(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("scheme == null");
        }
        if (str2 == null) {
            throw new NullPointerException("realm == null");
        }
        this.f776a = str;
        this.f777b = str2;
    }

    /* renamed from: a */
    private String m726a() {
        return this.f776a;
    }

    /* renamed from: b */
    private String m727b() {
        return this.f777b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C0510h)) {
            return false;
        }
        C0510h c0510h = (C0510h) obj;
        return c0510h.f776a.equals(this.f776a) && c0510h.f777b.equals(this.f777b);
    }

    public final int hashCode() {
        return ((this.f777b.hashCode() + 899) * 31) + this.f776a.hashCode();
    }

    public final String toString() {
        return this.f776a + " realm=\"" + this.f777b + "\"";
    }
}
