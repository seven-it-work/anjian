package com.google.p130a.p135b.p136a;

/* renamed from: com.google.a.b.a.q */
/* loaded from: classes.dex */
public abstract class AbstractC1837q {

    /* renamed from: a */
    private final int f7225a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1837q(int i) {
        this.f7225a = i;
    }

    /* renamed from: a */
    public static void m8390a(String str, StringBuilder sb) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    /* renamed from: a */
    public static void m8391a(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                m8390a(str, sb);
            }
        }
    }

    /* renamed from: b */
    private int m8392b() {
        return this.f7225a;
    }

    /* renamed from: a */
    public abstract String mo8262a();

    public final String toString() {
        return mo8262a();
    }
}
