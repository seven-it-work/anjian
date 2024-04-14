package org.p202a.p203a;

import java.lang.reflect.Array;
import org.p202a.AbstractC2735b;
import org.p202a.InterfaceC2744g;
import org.p202a.InterfaceC2746i;
import org.p202a.InterfaceC2748k;

/* renamed from: org.a.a.i */
/* loaded from: classes2.dex */
public final class C2725i<T> extends AbstractC2735b<T> {

    /* renamed from: a */
    private final Object f10406a;

    private C2725i(T t) {
        this.f10406a = t;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004f A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m12344a(java.lang.Object r5, java.lang.Object r6) {
        /*
            r0 = 0
            r1 = 1
            if (r5 != 0) goto L8
            if (r6 != 0) goto L7
            return r1
        L7:
            return r0
        L8:
            if (r6 == 0) goto L51
            java.lang.Class r2 = r5.getClass()
            boolean r2 = r2.isArray()
            if (r2 == 0) goto L51
            java.lang.Class r2 = r6.getClass()
            boolean r2 = r2.isArray()
            if (r2 == 0) goto L50
            int r2 = java.lang.reflect.Array.getLength(r5)
            int r3 = java.lang.reflect.Array.getLength(r6)
            if (r2 != r3) goto L2a
            r2 = 1
            goto L2b
        L2a:
            r2 = 0
        L2b:
            if (r2 == 0) goto L4c
            r2 = 0
        L2e:
            int r3 = java.lang.reflect.Array.getLength(r5)
            if (r2 >= r3) goto L47
            java.lang.Object r3 = java.lang.reflect.Array.get(r5, r2)
            java.lang.Object r4 = java.lang.reflect.Array.get(r6, r2)
            boolean r3 = m12344a(r3, r4)
            if (r3 != 0) goto L44
            r5 = 0
            goto L48
        L44:
            int r2 = r2 + 1
            goto L2e
        L47:
            r5 = 1
        L48:
            if (r5 == 0) goto L4c
            r5 = 1
            goto L4d
        L4c:
            r5 = 0
        L4d:
            if (r5 == 0) goto L50
            return r1
        L50:
            return r0
        L51:
            boolean r5 = r5.equals(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.p202a.p203a.C2725i.m12344a(java.lang.Object, java.lang.Object):boolean");
    }

    @InterfaceC2746i
    /* renamed from: b */
    public static <T> InterfaceC2748k<T> m12345b(T t) {
        return new C2725i(t);
    }

    /* renamed from: b */
    private static boolean m12346b(Object obj, Object obj2) {
        boolean z;
        if (Array.getLength(obj) == Array.getLength(obj2)) {
            int i = 0;
            while (true) {
                if (i >= Array.getLength(obj)) {
                    z = true;
                    break;
                }
                if (!m12344a(Array.get(obj, i), Array.get(obj2, i))) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private static boolean m12347c(Object obj) {
        return obj.getClass().isArray();
    }

    /* renamed from: c */
    private static boolean m12348c(Object obj, Object obj2) {
        return Array.getLength(obj) == Array.getLength(obj2);
    }

    /* renamed from: d */
    private static boolean m12349d(Object obj, Object obj2) {
        for (int i = 0; i < Array.getLength(obj); i++) {
            if (!m12344a(Array.get(obj, i), Array.get(obj2, i))) {
                return false;
            }
        }
        return true;
    }

    @Override // org.p202a.InterfaceC2748k
    /* renamed from: a */
    public final boolean mo12320a(Object obj) {
        return m12344a(obj, this.f10406a);
    }

    @Override // org.p202a.InterfaceC2750m
    public final void describeTo(InterfaceC2744g interfaceC2744g) {
        interfaceC2744g.mo12296a(this.f10406a);
    }
}
