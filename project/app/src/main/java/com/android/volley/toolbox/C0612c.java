package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0604q;
import com.android.volley.C0606s;
import com.android.volley.C0607t;
import com.android.volley.InterfaceC0589b;
import com.android.volley.InterfaceC0593f;
import com.android.volley.InterfaceC0603p;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

/* renamed from: com.android.volley.toolbox.c */
/* loaded from: classes.dex */
public final class C0612c implements InterfaceC0593f {

    /* renamed from: a */
    protected static final boolean f1319a = C0607t.f1296b;

    /* renamed from: d */
    private static int f1320d = 3000;

    /* renamed from: e */
    private static int f1321e = 4096;

    /* renamed from: b */
    protected final InterfaceC0618i f1322b;

    /* renamed from: c */
    protected final C0613d f1323c;

    public C0612c(InterfaceC0618i interfaceC0618i) {
        this(interfaceC0618i, new C0613d(f1321e));
    }

    private C0612c(InterfaceC0618i interfaceC0618i, C0613d c0613d) {
        this.f1322b = interfaceC0618i;
        this.f1323c = c0613d;
    }

    /* renamed from: a */
    private static Map<String, String> m1431a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    /* renamed from: a */
    private static void m1432a(long j, AbstractC0599l<?> abstractC0599l, byte[] bArr, StatusLine statusLine) {
        if (f1319a || j > f1320d) {
            Object[] objArr = new Object[5];
            objArr[0] = abstractC0599l;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(abstractC0599l.f1260j.mo1343b());
            C0607t.m1412b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    /* renamed from: a */
    private static void m1433a(String str, AbstractC0599l<?> abstractC0599l, C0606s c0606s) throws C0606s {
        InterfaceC0603p interfaceC0603p = abstractC0599l.f1260j;
        int m1391i = abstractC0599l.m1391i();
        try {
            interfaceC0603p.mo1342a(c0606s);
            abstractC0599l.m1381a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(m1391i)));
        } catch (C0606s e) {
            abstractC0599l.m1381a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(m1391i)));
            throw e;
        }
    }

    /* renamed from: a */
    private static void m1434a(String str, String str2, long j) {
        C0607t.m1410a("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j), str2);
    }

    /* renamed from: a */
    private static void m1435a(Map<String, String> map, InterfaceC0589b.a aVar) {
        if (aVar == null) {
            return;
        }
        if (aVar.f1211b != null) {
            map.put("If-None-Match", aVar.f1211b);
        }
        if (aVar.f1213d > 0) {
            map.put("If-Modified-Since", DateUtils.formatDate(new Date(aVar.f1213d)));
        }
    }

    /* renamed from: a */
    private byte[] m1436a(HttpEntity httpEntity) throws IOException, C0604q {
        C0626q c0626q = new C0626q(this.f1323c, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new C0604q();
            }
            byte[] m1439a = this.f1323c.m1439a(1024);
            while (true) {
                try {
                    int read = content.read(m1439a);
                    if (read == -1) {
                        break;
                    }
                    c0626q.write(m1439a, 0, read);
                } catch (Throwable th) {
                    th = th;
                    bArr = m1439a;
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException unused) {
                        C0607t.m1410a("Error occured when calling consumingContent", new Object[0]);
                    }
                    this.f1323c.m1438a(bArr);
                    c0626q.close();
                    throw th;
                }
            }
            byte[] byteArray = c0626q.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException unused2) {
                C0607t.m1410a("Error occured when calling consumingContent", new Object[0]);
            }
            this.f1323c.m1438a(m1439a);
            c0626q.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0116, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00b8, code lost:
    
        if (r9 > com.android.volley.toolbox.C0612c.f1320d) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0185 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v21, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r10v6, types: [org.apache.http.HttpResponse] */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.lang.Object[]] */
    @Override // com.android.volley.InterfaceC0593f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.volley.C0596i mo1347a(com.android.volley.AbstractC0599l<?> r24) throws com.android.volley.C0606s {
        /*
            Method dump skipped, instructions count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.C0612c.mo1347a(com.android.volley.l):com.android.volley.i");
    }
}
