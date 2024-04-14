package com.p021b.p022a;

import java.util.Arrays;
import java.util.Collections;

/* renamed from: com.b.a.aa */
/* loaded from: classes.dex */
public final class C0728aa {

    /* renamed from: a */
    private final String[] f1779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0728aa(C0729ab c0729ab) {
        this.f1779a = (String[]) c0729ab.f1780a.toArray(new String[c0729ab.f1780a.size()]);
    }

    /* renamed from: a */
    public final int m1817a() {
        return this.f1779a.length / 2;
    }

    /* renamed from: a */
    public final String m1818a(int i) {
        return this.f1779a[i * 2];
    }

    /* renamed from: a */
    public final String m1819a(String str) {
        String[] strArr = this.f1779a;
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: b */
    public final C0729ab m1820b() {
        C0729ab c0729ab = new C0729ab();
        Collections.addAll(c0729ab.f1780a, this.f1779a);
        return c0729ab;
    }

    /* renamed from: b */
    public final String m1821b(int i) {
        return this.f1779a[(i * 2) + 1];
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0728aa) && Arrays.equals(((C0728aa) obj).f1779a, this.f1779a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1779a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.f1779a.length / 2;
        for (int i = 0; i < length; i++) {
            sb.append(m1818a(i));
            sb.append(": ");
            sb.append(m1821b(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
