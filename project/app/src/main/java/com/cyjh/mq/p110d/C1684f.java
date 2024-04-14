package com.cyjh.mq.p110d;

import java.util.List;

/* renamed from: com.cyjh.mq.d.f */
/* loaded from: classes.dex */
public final class C1684f {

    /* renamed from: a */
    public static final String f6586a = "su";

    /* renamed from: b */
    public static final String f6587b = "sh";

    /* renamed from: c */
    public static final String f6588c = "exit\n";

    /* renamed from: d */
    public static final String f6589d = "\n";

    /* renamed from: e */
    private static boolean f6590e;

    /* renamed from: com.cyjh.mq.d.f$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public int f6591a;

        /* renamed from: b */
        public String f6592b;

        /* renamed from: c */
        public String f6593c;

        private a(int i) {
            this.f6591a = i;
        }

        public a(int i, String str, String str2) {
            this.f6591a = i;
            this.f6592b = str;
            this.f6593c = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mq.d.f$b */
    /* loaded from: classes.dex */
    public static class b extends Thread {

        /* renamed from: a */
        private Process f6594a;

        /* renamed from: b */
        private int f6595b;

        public b(Process process, int i) {
            this.f6594a = process;
            this.f6595b = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                sleep(this.f6595b * 1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (C1684f.f6590e) {
                return;
            }
            this.f6594a.destroy();
        }
    }

    private C1684f() {
        throw new AssertionError();
    }

    /* renamed from: a */
    public static a m7702a(String str) {
        return m7706a(new String[]{str}, false, true, 100);
    }

    /* renamed from: a */
    public static a m7703a(List<String> list) {
        return m7706a((String[]) list.toArray(new String[0]), true, true, 0);
    }

    /* renamed from: a */
    private static a m7704a(List<String> list, boolean z, boolean z2, int i) {
        return m7706a(list == null ? null : (String[]) list.toArray(new String[0]), z, z2, i);
    }

    /* renamed from: a */
    private static a m7705a(String[] strArr, boolean z, int i) {
        return m7706a(strArr, z, true, i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:14|15|(3:17|(2:19|20)(1:22)|21)|23|24|(1:26)|27|28|29|(19:31|33|34|36|37|39|40|(3:41|42|(1:44)(1:45))|(2:46|(1:48)(0))|50|(1:52)|(1:54)|(1:57)|58|59|(1:61)(1:67)|(1:63)|64|65)(1:157)|49|50|(0)|(0)|(0)|58|59|(0)(0)|(0)|64|65) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01b4, code lost:
    
        if (r8 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x018d, code lost:
    
        if (r8 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0115, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0116, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01d8, code lost:
    
        if (r8 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x018f, code lost:
    
        r8.destroy();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0181 A[Catch: IOException -> 0x017d, TryCatch #17 {IOException -> 0x017d, blocks: (B:119:0x0179, B:110:0x0181, B:112:0x0186), top: B:118:0x0179 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0186 A[Catch: IOException -> 0x017d, TRY_LEAVE, TryCatch #17 {IOException -> 0x017d, blocks: (B:119:0x0179, B:110:0x0181, B:112:0x0186), top: B:118:0x0179 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01fc A[Catch: IOException -> 0x01f8, TryCatch #4 {IOException -> 0x01f8, blocks: (B:144:0x01f4, B:132:0x01fc, B:134:0x0201), top: B:143:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0201 A[Catch: IOException -> 0x01f8, TRY_LEAVE, TryCatch #4 {IOException -> 0x01f8, blocks: (B:144:0x01f4, B:132:0x01fc, B:134:0x0201), top: B:143:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:142:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010c A[Catch: IOException -> 0x0115, TryCatch #20 {IOException -> 0x0115, blocks: (B:50:0x0107, B:52:0x010c, B:54:0x0111), top: B:49:0x0107 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0111 A[Catch: IOException -> 0x0115, TRY_LEAVE, TryCatch #20 {IOException -> 0x0115, blocks: (B:50:0x0107, B:52:0x010c, B:54:0x0111), top: B:49:0x0107 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cc A[Catch: IOException -> 0x01c8, TryCatch #15 {IOException -> 0x01c8, blocks: (B:87:0x01c4, B:77:0x01cc, B:79:0x01d1), top: B:86:0x01c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d1 A[Catch: IOException -> 0x01c8, TRY_LEAVE, TryCatch #15 {IOException -> 0x01c8, blocks: (B:87:0x01c4, B:77:0x01cc, B:79:0x01d1), top: B:86:0x01c4 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a8 A[Catch: IOException -> 0x01a4, TryCatch #29 {IOException -> 0x01a4, blocks: (B:103:0x01a0, B:94:0x01a8, B:96:0x01ad), top: B:102:0x01a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ad A[Catch: IOException -> 0x01a4, TRY_LEAVE, TryCatch #29 {IOException -> 0x01a4, blocks: (B:103:0x01a0, B:94:0x01a8, B:96:0x01ad), top: B:102:0x01a0 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v42 */
    /* JADX WARN: Type inference failed for: r4v43 */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v45 */
    /* JADX WARN: Type inference failed for: r4v46 */
    /* JADX WARN: Type inference failed for: r4v47 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r8v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v23, types: [java.lang.Process] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.cyjh.mq.p110d.C1684f.a m7706a(java.lang.String[] r7, boolean r8, boolean r9, int r10) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mq.p110d.C1684f.m7706a(java.lang.String[], boolean, boolean, int):com.cyjh.mq.d.f$a");
    }

    /* renamed from: b */
    private static a m7708b(String str) {
        return m7706a(new String[]{str}, true, false, 0);
    }

    /* renamed from: b */
    private static boolean m7709b() {
        return m7706a(new String[]{"echo root"}, true, false, 0).f6591a == 0;
    }
}
