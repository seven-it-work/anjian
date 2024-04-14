package org.junit.p218b;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.junit.C2911c;

/* renamed from: org.junit.b.d */
/* loaded from: classes2.dex */
public abstract class AbstractC2881d {
    /* renamed from: a */
    private static int m12876a(Object obj, Object obj2, String str) {
        if (obj == null) {
            C2911c.m13010a(str + "expected array was null");
        }
        if (obj2 == null) {
            C2911c.m13010a(str + "actual array was null");
        }
        int length = Array.getLength(obj2);
        int length2 = Array.getLength(obj);
        if (length != length2) {
            C2911c.m13010a(str + "array lengths differed, expected.length=" + length2 + " actual.length=" + length);
        }
        return length2;
    }

    /* renamed from: a */
    private static boolean m12877a(Object obj) {
        return obj != null && obj.getClass().isArray();
    }

    /* renamed from: a */
    protected abstract void mo12878a(Object obj, Object obj2);

    /* renamed from: a */
    public final void m12879a(String str, Object obj, Object obj2) throws C2863a {
        if (obj != obj2) {
            if (Arrays.deepEquals(new Object[]{obj}, new Object[]{obj2})) {
                return;
            }
            String str2 = str == null ? "" : str + ": ";
            if (obj == null) {
                C2911c.m13010a(str2 + "expected array was null");
            }
            if (obj2 == null) {
                C2911c.m13010a(str2 + "actual array was null");
            }
            int length = Array.getLength(obj2);
            int length2 = Array.getLength(obj);
            if (length != length2) {
                C2911c.m13010a(str2 + "array lengths differed, expected.length=" + length2 + " actual.length=" + length);
            }
            for (int i = 0; i < length2; i++) {
                Object obj3 = Array.get(obj, i);
                Object obj4 = Array.get(obj2, i);
                if (m12877a(obj3) && m12877a(obj4)) {
                    try {
                        m12879a(str, obj3, obj4);
                    } catch (C2863a e) {
                        e.addDimension(i);
                        throw e;
                    }
                } else {
                    try {
                        mo12878a(obj3, obj4);
                    } catch (AssertionError e2) {
                        throw new C2863a(str2, e2, i);
                    }
                }
            }
        }
    }
}
