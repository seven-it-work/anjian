package com.p021b.p022a;

import com.p021b.p022a.p023a.C0650c;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.b.a.ab */
/* loaded from: classes.dex */
public final class C0729ab {

    /* renamed from: a */
    final List<String> f1780a = new ArrayList(20);

    /* renamed from: d */
    private static void m1822d(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= ' ' || charAt >= 127) {
                throw new IllegalArgumentException(C0650c.m1606a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
            }
        }
        if (str2 == null) {
            throw new NullPointerException("value == null");
        }
        int length2 = str2.length();
        for (int i2 = 0; i2 < length2; i2++) {
            char charAt2 = str2.charAt(i2);
            if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                throw new IllegalArgumentException(C0650c.m1606a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
            }
        }
    }

    /* renamed from: a */
    public final C0728aa m1823a() {
        return new C0728aa(this);
    }

    /* renamed from: a */
    public final C0729ab m1824a(String str) {
        int i = 0;
        while (i < this.f1780a.size()) {
            if (str.equalsIgnoreCase(this.f1780a.get(i))) {
                this.f1780a.remove(i);
                this.f1780a.remove(i);
                i -= 2;
            }
            i += 2;
        }
        return this;
    }

    /* renamed from: a */
    public final C0729ab m1825a(String str, String str2) {
        m1822d(str, str2);
        return m1826b(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C0729ab m1826b(String str, String str2) {
        this.f1780a.add(str);
        this.f1780a.add(str2.trim());
        return this;
    }

    /* renamed from: c */
    public final C0729ab m1827c(String str, String str2) {
        m1822d(str, str2);
        m1824a(str);
        m1826b(str, str2);
        return this;
    }
}
