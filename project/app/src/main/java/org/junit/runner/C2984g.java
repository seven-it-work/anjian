package org.junit.runner;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.p218b.C2877c;
import org.junit.p218b.p222d.C2886b;
import org.junit.p228e.p229a.C2936e;
import org.junit.runner.InterfaceC2982e;

/* renamed from: org.junit.runner.g */
/* loaded from: classes2.dex */
class C2984g {

    /* renamed from: c */
    private final List<String> f10929c = new ArrayList();

    /* renamed from: a */
    final List<Class<?>> f10927a = new ArrayList();

    /* renamed from: b */
    final List<Throwable> f10928b = new ArrayList();

    /* renamed from: org.junit.runner.g$a */
    /* loaded from: classes2.dex */
    public static class a extends Exception {
        private static final long serialVersionUID = 1;

        public a(String str) {
            super(str);
        }
    }

    C2984g() {
    }

    /* renamed from: a */
    private List<String> m13382a() {
        return Collections.unmodifiableList(this.f10929c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0016, code lost:
    
        r8 = m13386a(r8, r2, r8.length);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.junit.runner.C2984g m13383a(java.lang.String[] r8) {
        /*
            org.junit.runner.g r0 = new org.junit.runner.g
            r0.<init>()
            r1 = 0
            r2 = 0
        L7:
            int r3 = r8.length
            if (r2 == r3) goto L95
            r3 = r8[r2]
            java.lang.String r4 = "--"
            boolean r4 = r3.equals(r4)
            if (r4 == 0) goto L1d
            int r2 = r2 + 1
        L16:
            int r1 = r8.length
            java.lang.String[] r8 = m13386a(r8, r2, r1)
            goto L97
        L1d:
            java.lang.String r4 = "--"
            boolean r4 = r3.startsWith(r4)
            if (r4 == 0) goto L16
            java.lang.String r4 = "--filter="
            boolean r4 = r3.startsWith(r4)
            if (r4 != 0) goto L54
            java.lang.String r4 = "--filter"
            boolean r4 = r3.equals(r4)
            if (r4 == 0) goto L36
            goto L54
        L36:
            java.util.List<java.lang.Throwable> r4 = r0.f10928b
            org.junit.runner.g$a r5 = new org.junit.runner.g$a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "JUnit knows nothing about the "
            r6.<init>(r7)
            r6.append(r3)
            java.lang.String r3 = " option"
            r6.append(r3)
            java.lang.String r3 = r6.toString()
            r5.<init>(r3)
            r4.add(r5)
            goto L91
        L54:
            java.lang.String r4 = "--filter"
            boolean r4 = r3.equals(r4)
            if (r4 == 0) goto L80
            int r2 = r2 + 1
            int r4 = r8.length
            if (r2 >= r4) goto L64
            r3 = r8[r2]
            goto L8c
        L64:
            java.util.List<java.lang.Throwable> r8 = r0.f10928b
            org.junit.runner.g$a r2 = new org.junit.runner.g$a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r3)
            java.lang.String r3 = " value not specified"
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            r2.<init>(r3)
            r8.add(r2)
            goto L95
        L80:
            r4 = 61
            int r4 = r3.indexOf(r4)
            int r4 = r4 + 1
            java.lang.String r3 = r3.substring(r4)
        L8c:
            java.util.List<java.lang.String> r4 = r0.f10929c
            r4.add(r3)
        L91:
            int r2 = r2 + 1
            goto L7
        L95:
            java.lang.String[] r8 = new java.lang.String[r1]
        L97:
            r0.m13390d(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.runner.C2984g.m13383a(java.lang.String[]):org.junit.runner.g");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2985h m13384a(Throwable th) {
        return AbstractC2985h.m13398a(new C2886b(C2984g.class, th));
    }

    /* renamed from: a */
    private AbstractC2985h m13385a(C2968a c2968a) {
        return this.f10928b.isEmpty() ? m13391a(AbstractC2985h.m13396a(c2968a, (Class<?>[]) this.f10927a.toArray(new Class[this.f10927a.size()]))) : m13384a(new C2936e(this.f10928b));
    }

    /* renamed from: a */
    private static String[] m13386a(String[] strArr, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i != i2) {
            arrayList.add(strArr[i]);
            i++;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: b */
    private List<Class<?>> m13387b() {
        return Collections.unmodifiableList(this.f10927a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        r8 = new java.lang.String[0];
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m13388b(java.lang.String[] r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            int r2 = r8.length
            if (r1 == r2) goto L90
            r2 = r8[r1]
            java.lang.String r3 = "--"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L18
            int r1 = r1 + 1
        L11:
            int r0 = r8.length
            java.lang.String[] r8 = m13386a(r8, r1, r0)
            goto L92
        L18:
            java.lang.String r3 = "--"
            boolean r3 = r2.startsWith(r3)
            if (r3 == 0) goto L11
            java.lang.String r3 = "--filter="
            boolean r3 = r2.startsWith(r3)
            if (r3 != 0) goto L4f
            java.lang.String r3 = "--filter"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L31
            goto L4f
        L31:
            java.util.List<java.lang.Throwable> r3 = r7.f10928b
            org.junit.runner.g$a r4 = new org.junit.runner.g$a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "JUnit knows nothing about the "
            r5.<init>(r6)
            r5.append(r2)
            java.lang.String r2 = " option"
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            r4.<init>(r2)
            r3.add(r4)
            goto L8c
        L4f:
            java.lang.String r3 = "--filter"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L7b
            int r1 = r1 + 1
            int r3 = r8.length
            if (r1 >= r3) goto L5f
            r2 = r8[r1]
            goto L87
        L5f:
            java.util.List<java.lang.Throwable> r8 = r7.f10928b
            org.junit.runner.g$a r1 = new org.junit.runner.g$a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            java.lang.String r2 = " value not specified"
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            r8.add(r1)
            goto L90
        L7b:
            r3 = 61
            int r3 = r2.indexOf(r3)
            int r3 = r3 + 1
            java.lang.String r2 = r2.substring(r3)
        L87:
            java.util.List<java.lang.String> r3 = r7.f10929c
            r3.add(r2)
        L8c:
            int r1 = r1 + 1
            goto L2
        L90:
            java.lang.String[] r8 = new java.lang.String[r0]
        L92:
            r7.m13390d(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.runner.C2984g.m13388b(java.lang.String[]):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
    
        return new java.lang.String[0];
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String[] m13389c(java.lang.String... r8) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            int r2 = r8.length
            if (r1 == r2) goto L8f
            r2 = r8[r1]
            java.lang.String r3 = "--"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L17
            int r1 = r1 + 1
        L11:
            int r0 = r8.length
            java.lang.String[] r8 = m13386a(r8, r1, r0)
            return r8
        L17:
            java.lang.String r3 = "--"
            boolean r3 = r2.startsWith(r3)
            if (r3 == 0) goto L11
            java.lang.String r3 = "--filter="
            boolean r3 = r2.startsWith(r3)
            if (r3 != 0) goto L4e
            java.lang.String r3 = "--filter"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L30
            goto L4e
        L30:
            java.util.List<java.lang.Throwable> r3 = r7.f10928b
            org.junit.runner.g$a r4 = new org.junit.runner.g$a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "JUnit knows nothing about the "
            r5.<init>(r6)
            r5.append(r2)
            java.lang.String r2 = " option"
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            r4.<init>(r2)
            r3.add(r4)
            goto L8b
        L4e:
            java.lang.String r3 = "--filter"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L7a
            int r1 = r1 + 1
            int r3 = r8.length
            if (r1 >= r3) goto L5e
            r2 = r8[r1]
            goto L86
        L5e:
            java.util.List<java.lang.Throwable> r8 = r7.f10928b
            org.junit.runner.g$a r1 = new org.junit.runner.g$a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            java.lang.String r2 = " value not specified"
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            r8.add(r1)
            goto L8f
        L7a:
            r3 = 61
            int r3 = r2.indexOf(r3)
            int r3 = r3 + 1
            java.lang.String r2 = r2.substring(r3)
        L86:
            java.util.List<java.lang.String> r3 = r7.f10929c
            r3.add(r2)
        L8b:
            int r1 = r1 + 1
            goto L2
        L8f:
            java.lang.String[] r8 = new java.lang.String[r0]
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.runner.C2984g.m13389c(java.lang.String[]):java.lang.String[]");
    }

    /* renamed from: d */
    private void m13390d(String[] strArr) {
        for (String str : strArr) {
            try {
                this.f10927a.add(C2877c.m12875a(str));
            } catch (ClassNotFoundException e) {
                this.f10928b.add(new IllegalArgumentException("Could not find class [" + str + "]", e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final AbstractC2985h m13391a(AbstractC2985h abstractC2985h) {
        try {
            for (String str : this.f10929c) {
                C2980c mo11738b = abstractC2985h.mo12759a().mo11738b();
                String[] split = str.contains("=") ? str.split("=", 2) : new String[]{str, ""};
                abstractC2985h = abstractC2985h.m13401a(C2981d.m13379a(split[0]).mo12744a(new C2983f(mo11738b, split[1])));
            }
            return abstractC2985h;
        } catch (InterfaceC2982e.a e) {
            return m13384a(e);
        }
    }
}
