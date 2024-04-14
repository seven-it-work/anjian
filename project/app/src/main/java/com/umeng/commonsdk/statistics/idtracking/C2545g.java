package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.commonsdk.proguard.C2465aj;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.InterfaceC2564d;
import com.umeng.commonsdk.statistics.proto.C2574d;
import com.umeng.commonsdk.statistics.proto.C2575e;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.g */
/* loaded from: classes.dex */
public class C2545g {

    /* renamed from: a */
    private static final String f9815a = "ImprintHandler";

    /* renamed from: c */
    private static final String f9817c = ".imprint";

    /* renamed from: h */
    private static C2545g f9819h;

    /* renamed from: i */
    private static Context f9820i;

    /* renamed from: e */
    private InterfaceC2564d f9821e;

    /* renamed from: f */
    private a f9822f = new a();

    /* renamed from: g */
    private C2574d f9823g = null;

    /* renamed from: b */
    private static Object f9816b = new Object();

    /* renamed from: d */
    private static final byte[] f9818d = "pbl0".getBytes();

    /* renamed from: com.umeng.commonsdk.statistics.idtracking.g$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private Map<String, String> f9824a = new HashMap();

        a() {
        }

        a(C2574d c2574d) {
            m11409a(c2574d);
        }

        /* renamed from: b */
        private synchronized void m11407b(C2574d c2574d) {
            C2575e c2575e;
            if (c2574d != null) {
                try {
                    if (c2574d.m11573e()) {
                        Map<String, C2575e> m11570c = c2574d.m11570c();
                        for (String str : m11570c.keySet()) {
                            if (!TextUtils.isEmpty(str) && (c2575e = m11570c.get(str)) != null) {
                                String m11602b = c2575e.m11602b();
                                if (!TextUtils.isEmpty(m11602b)) {
                                    this.f9824a.put(str, m11602b);
                                    if (C2530b.f9733f) {
                                        Log.i(C2545g.f9815a, "imKey is " + str + ", imValue is " + m11602b);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* renamed from: a */
        public synchronized String m11408a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.f9824a.size() > 0) {
                String str3 = this.f9824a.get(str);
                return !TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }

        /* renamed from: a */
        public void m11409a(C2574d c2574d) {
            if (c2574d == null) {
                return;
            }
            m11407b(c2574d);
        }

        /* renamed from: a */
        public synchronized void m11410a(String str) {
            if (this.f9824a != null && this.f9824a.size() > 0 && !TextUtils.isEmpty(str) && this.f9824a.containsKey(str)) {
                this.f9824a.remove(str);
            }
        }
    }

    private C2545g(Context context) {
        f9820i = context.getApplicationContext();
    }

    /* renamed from: a */
    public static synchronized C2545g m11393a(Context context) {
        C2545g c2545g;
        synchronized (C2545g.class) {
            if (f9819h == null) {
                C2545g c2545g2 = new C2545g(context);
                f9819h = c2545g2;
                c2545g2.m11398e();
            }
            c2545g = f9819h;
        }
        return c2545g;
    }

    /* renamed from: a */
    private C2574d m11394a(C2574d c2574d, C2574d c2574d2) {
        if (c2574d2 == null) {
            return c2574d;
        }
        Map<String, C2575e> m11570c = c2574d.m11570c();
        for (Map.Entry<String, C2575e> entry : c2574d2.m11570c().entrySet()) {
            if (entry.getValue().m11606d()) {
                m11570c.put(entry.getKey(), entry.getValue());
            } else {
                String key = entry.getKey();
                m11570c.remove(key);
                this.f9822f.m11410a(key);
            }
        }
        c2574d.m11562a(c2574d2.m11574f());
        c2574d.m11563a(m11400a(c2574d));
        return c2574d;
    }

    /* renamed from: a */
    private boolean m11395a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    /* renamed from: c */
    private boolean m11396c(C2574d c2574d) {
        if (!c2574d.m11577i().equals(m11400a(c2574d))) {
            return false;
        }
        for (C2575e c2575e : c2574d.m11570c().values()) {
            byte[] reverseHexString = DataHelper.reverseHexString(c2575e.m11610h());
            byte[] m11402a = m11402a(c2575e);
            for (int i = 0; i < 4; i++) {
                if (reverseHexString[i] != m11402a[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: d */
    private C2574d m11397d(C2574d c2574d) {
        Map<String, C2575e> m11570c = c2574d.m11570c();
        ArrayList arrayList = new ArrayList(m11570c.size() / 2);
        for (Map.Entry<String, C2575e> entry : m11570c.entrySet()) {
            if (!entry.getValue().m11606d()) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m11570c.remove((String) it.next());
        }
        return c2574d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.InputStream] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m11398e() {
        /*
            r5 = this;
            java.io.File r0 = new java.io.File
            android.content.Context r1 = com.umeng.commonsdk.statistics.idtracking.C2545g.f9820i
            java.io.File r1 = r1.getFilesDir()
            java.lang.String r2 = ".imprint"
            r0.<init>(r1, r2)
            java.lang.Object r1 = com.umeng.commonsdk.statistics.idtracking.C2545g.f9816b
            monitor-enter(r1)
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L5b
            if (r0 != 0) goto L18
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5b
            return
        L18:
            r0 = 0
            android.content.Context r2 = com.umeng.commonsdk.statistics.idtracking.C2545g.f9820i     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.String r3 = ".imprint"
            java.io.FileInputStream r2 = r2.openFileInput(r3)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            byte[] r3 = com.umeng.commonsdk.statistics.common.HelperUtils.readStreamToByteArray(r2)     // Catch: java.lang.Exception -> L2a java.lang.Throwable -> L53
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L5b
            r0 = r3
            goto L36
        L2a:
            r3 = move-exception
            goto L30
        L2c:
            r2 = move-exception
            goto L57
        L2e:
            r3 = move-exception
            r2 = r0
        L30:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L53
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r2)     // Catch: java.lang.Throwable -> L5b
        L36:
            if (r0 == 0) goto L51
            com.umeng.commonsdk.statistics.proto.d r2 = new com.umeng.commonsdk.statistics.proto.d     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r2.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            com.umeng.commonsdk.proguard.ad r3 = new com.umeng.commonsdk.proguard.ad     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r3.<init>()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r3.m10727a(r2, r0)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r5.f9823g = r2     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            com.umeng.commonsdk.statistics.idtracking.g$a r0 = r5.f9822f     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            r0.m11409a(r2)     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L5b
            goto L51
        L4d:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5b
        L51:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5b
            return
        L53:
            r0 = move-exception
            r4 = r2
            r2 = r0
            r0 = r4
        L57:
            com.umeng.commonsdk.statistics.common.HelperUtils.safeClose(r0)     // Catch: java.lang.Throwable -> L5b
            throw r2     // Catch: java.lang.Throwable -> L5b
        L5b:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.C2545g.m11398e():void");
    }

    /* renamed from: a */
    public synchronized C2574d m11399a() {
        return this.f9823g;
    }

    /* renamed from: a */
    public String m11400a(C2574d c2574d) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(c2574d.m11570c()).entrySet()) {
            sb.append((String) entry.getKey());
            if (((C2575e) entry.getValue()).m11606d()) {
                sb.append(((C2575e) entry.getValue()).m11602b());
            }
            sb.append(((C2575e) entry.getValue()).m11607e());
            sb.append(((C2575e) entry.getValue()).m11610h());
        }
        sb.append(c2574d.f9948b);
        return HelperUtils.MD5(sb.toString()).toLowerCase(Locale.US);
    }

    /* renamed from: a */
    public void m11401a(InterfaceC2564d interfaceC2564d) {
        this.f9821e = interfaceC2564d;
    }

    /* renamed from: a */
    public byte[] m11402a(C2575e c2575e) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(c2575e.m11607e());
        byte[] array = allocate.array();
        byte[] bArr = f9818d;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (array[i] ^ bArr[i]);
        }
        return bArr2;
    }

    /* renamed from: b */
    public a m11403b() {
        return this.f9822f;
    }

    /* renamed from: b */
    public void m11404b(C2574d c2574d) {
        boolean z;
        if (c2574d == null) {
            if (C2530b.f9733f) {
                MLog.m11263d("Imprint is null");
                return;
            }
            return;
        }
        if (!m11396c(c2574d)) {
            if (C2530b.f9733f) {
                MLog.m11269e("Imprint is not valid");
                return;
            }
            return;
        }
        if (C2530b.f9733f) {
            MLog.m11263d("Imprint is ok");
        }
        synchronized (this) {
            C2574d c2574d2 = this.f9823g;
            String str = null;
            String m11577i = c2574d2 == null ? null : c2574d2.m11577i();
            C2574d m11397d = c2574d2 == null ? m11397d(c2574d) : m11394a(c2574d2, c2574d);
            this.f9823g = m11397d;
            if (m11397d != null) {
                str = m11397d.m11577i();
            }
            z = !m11395a(m11577i, str);
        }
        if (this.f9823g != null) {
            boolean z2 = C2530b.f9733f;
            if (z) {
                this.f9822f.m11409a(this.f9823g);
                if (this.f9821e != null) {
                    this.f9821e.onImprintChanged(this.f9822f);
                }
            }
        }
    }

    /* renamed from: c */
    public void m11405c() {
        if (this.f9823g == null) {
            return;
        }
        try {
            synchronized (f9816b) {
                byte[] m10741a = new C2465aj().m10741a(this.f9823g);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(f9820i.getFilesDir(), f9817c));
                try {
                    fileOutputStream.write(m10741a);
                    fileOutputStream.flush();
                } finally {
                    HelperUtils.safeClose(fileOutputStream);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public boolean m11406d() {
        return new File(f9820i.getFilesDir(), f9817c).delete();
    }
}
