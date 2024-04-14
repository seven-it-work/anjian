package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.C0600m;
import com.android.volley.C0601n;
import com.android.volley.C0607t;
import com.android.volley.InterfaceC0589b;
import com.cyjh.common.util.C1176s;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;

/* renamed from: com.android.volley.l */
/* loaded from: classes.dex */
public abstract class AbstractC0599l<T> implements Comparable<AbstractC0599l<T>> {

    /* renamed from: m */
    private static final String f1249m = "UTF-8";

    /* renamed from: p */
    private static final long f1250p = 3000;

    /* renamed from: a */
    public final int f1251a;

    /* renamed from: b */
    public final String f1252b;

    /* renamed from: c */
    final int f1253c;

    /* renamed from: d */
    final C0601n.a f1254d;

    /* renamed from: e */
    Integer f1255e;

    /* renamed from: f */
    C0600m f1256f;

    /* renamed from: g */
    protected boolean f1257g;

    /* renamed from: h */
    public boolean f1258h;

    /* renamed from: i */
    boolean f1259i;

    /* renamed from: j */
    public InterfaceC0603p f1260j;

    /* renamed from: k */
    public InterfaceC0589b.a f1261k;

    /* renamed from: l */
    public Object f1262l;

    /* renamed from: n */
    private final C0607t.a f1263n;

    /* renamed from: o */
    private long f1264o;

    /* renamed from: com.android.volley.l$a */
    /* loaded from: classes.dex */
    public interface a {

        /* renamed from: a */
        public static final int f1268a = -1;

        /* renamed from: b */
        public static final int f1269b = 0;

        /* renamed from: c */
        public static final int f1270c = 1;

        /* renamed from: d */
        public static final int f1271d = 2;

        /* renamed from: e */
        public static final int f1272e = 3;

        /* renamed from: f */
        public static final int f1273f = 4;

        /* renamed from: g */
        public static final int f1274g = 5;

        /* renamed from: h */
        public static final int f1275h = 6;

        /* renamed from: i */
        public static final int f1276i = 7;
    }

    /* renamed from: com.android.volley.l$b */
    /* loaded from: classes.dex */
    public enum b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public AbstractC0599l(int i, String str, C0601n.a aVar) {
        Uri parse;
        String host;
        this.f1263n = C0607t.a.f1297a ? new C0607t.a() : null;
        this.f1257g = true;
        int i2 = 0;
        this.f1258h = false;
        this.f1259i = false;
        this.f1264o = 0L;
        this.f1261k = null;
        this.f1251a = i;
        this.f1252b = str;
        this.f1254d = aVar;
        this.f1260j = new C0591d();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.f1253c = i2;
    }

    @Deprecated
    private AbstractC0599l(String str, C0601n.a aVar) {
        this(-1, str, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private AbstractC0599l<?> m1351a(int i) {
        this.f1255e = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private AbstractC0599l<?> m1352a(InterfaceC0589b.a aVar) {
        this.f1261k = aVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private AbstractC0599l<?> m1353a(C0600m c0600m) {
        this.f1256f = c0600m;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private AbstractC0599l<?> m1354a(InterfaceC0603p interfaceC0603p) {
        this.f1260j = interfaceC0603p;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static C0606s m1355a(C0606s c0606s) {
        return c0606s;
    }

    /* renamed from: a */
    private static byte[] m1357a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    /* renamed from: b */
    private int m1358b(AbstractC0599l<T> abstractC0599l) {
        b mo1390h = mo1390h();
        b mo1390h2 = abstractC0599l.mo1390h();
        return mo1390h == mo1390h2 ? this.f1255e.intValue() - abstractC0599l.f1255e.intValue() : mo1390h2.ordinal() - mo1390h.ordinal();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private AbstractC0599l<?> m1359b(Object obj) {
        this.f1262l = obj;
        return this;
    }

    /* renamed from: b */
    private void m1360b(C0606s c0606s) {
        if (this.f1254d != null) {
            this.f1254d.mo1407a(c0606s);
        }
    }

    /* renamed from: c */
    private static int m1361c(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* renamed from: j */
    private int m1362j() {
        return this.f1251a;
    }

    /* renamed from: k */
    private Object m1363k() {
        return this.f1262l;
    }

    /* renamed from: l */
    private C0601n.a m1364l() {
        return this.f1254d;
    }

    /* renamed from: m */
    private int m1365m() {
        return this.f1253c;
    }

    /* renamed from: n */
    private int m1366n() {
        if (this.f1255e == null) {
            throw new IllegalStateException("getSequence called before setSequence");
        }
        return this.f1255e.intValue();
    }

    /* renamed from: o */
    private String m1367o() {
        return this.f1252b;
    }

    /* renamed from: p */
    private String m1368p() {
        return this.f1252b;
    }

    /* renamed from: q */
    private InterfaceC0589b.a m1369q() {
        return this.f1261k;
    }

    /* renamed from: r */
    private void m1370r() {
        this.f1258h = true;
    }

    @Deprecated
    /* renamed from: s */
    private Map<String, String> m1371s() throws C0588a {
        return mo1387e();
    }

    @Deprecated
    /* renamed from: t */
    private static String m1372t() {
        return "UTF-8";
    }

    /* renamed from: u */
    private static String m1373u() {
        return "UTF-8";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v */
    private AbstractC0599l<?> m1374v() {
        this.f1257g = false;
        return this;
    }

    /* renamed from: w */
    private boolean m1375w() {
        return this.f1257g;
    }

    /* renamed from: x */
    private InterfaceC0603p m1376x() {
        return this.f1260j;
    }

    /* renamed from: y */
    private void m1377y() {
        this.f1259i = true;
    }

    /* renamed from: z */
    private boolean m1378z() {
        return this.f1259i;
    }

    /* renamed from: a */
    public abstract C0601n<T> mo1379a(C0596i c0596i);

    /* renamed from: a */
    public abstract void mo1380a(T t);

    /* renamed from: a */
    public final void m1381a(String str) {
        if (C0607t.a.f1297a) {
            this.f1263n.m1419a(str, Thread.currentThread().getId());
        } else if (this.f1264o == 0) {
            this.f1264o = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: a */
    public boolean mo1382a() {
        return this.f1258h;
    }

    /* renamed from: b */
    public Map<String, String> mo1383b() throws C0588a {
        return Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1384b(final String str) {
        if (this.f1256f != null) {
            C0600m c0600m = this.f1256f;
            synchronized (c0600m.f1279b) {
                c0600m.f1279b.remove(this);
            }
            synchronized (c0600m.f1281d) {
                Iterator<C0600m.b> it = c0600m.f1281d.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
            if (this.f1257g) {
                synchronized (c0600m.f1278a) {
                    String str2 = this.f1252b;
                    Queue<AbstractC0599l<?>> remove = c0600m.f1278a.remove(str2);
                    if (remove != null) {
                        if (C0607t.f1296b) {
                            C0607t.m1410a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), str2);
                        }
                        c0600m.f1280c.addAll(remove);
                    }
                }
            }
        }
        if (!C0607t.a.f1297a) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f1264o;
            if (elapsedRealtime >= f1250p) {
                C0607t.m1412b("%d ms: %s", Long.valueOf(elapsedRealtime), toString());
                return;
            }
            return;
        }
        final long id = Thread.currentThread().getId();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.volley.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0599l.this.f1263n.m1419a(str, id);
                    AbstractC0599l.this.f1263n.m1418a(toString());
                }
            });
        } else {
            this.f1263n.m1419a(str, id);
            this.f1263n.m1418a(toString());
        }
    }

    @Deprecated
    /* renamed from: c */
    public String mo1385c() {
        return mo1388f();
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        AbstractC0599l abstractC0599l = (AbstractC0599l) obj;
        b mo1390h = mo1390h();
        b mo1390h2 = abstractC0599l.mo1390h();
        return mo1390h == mo1390h2 ? this.f1255e.intValue() - abstractC0599l.f1255e.intValue() : mo1390h2.ordinal() - mo1390h.ordinal();
    }

    @Deprecated
    /* renamed from: d */
    public byte[] mo1386d() throws C0588a {
        Map<String, String> mo1387e = mo1387e();
        if (mo1387e == null || mo1387e.size() <= 0) {
            return null;
        }
        return m1357a(mo1387e, "UTF-8");
    }

    /* renamed from: e */
    protected Map<String, String> mo1387e() throws C0588a {
        return null;
    }

    /* renamed from: f */
    public String mo1388f() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    /* renamed from: g */
    public byte[] mo1389g() throws C0588a {
        Map<String, String> mo1387e = mo1387e();
        if (mo1387e == null || mo1387e.size() <= 0) {
            return null;
        }
        return m1357a(mo1387e, "UTF-8");
    }

    /* renamed from: h */
    public b mo1390h() {
        return b.NORMAL;
    }

    /* renamed from: i */
    public final int m1391i() {
        return this.f1260j.mo1341a();
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(this.f1253c);
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1258h ? "[X] " : "[ ] ");
        sb.append(this.f1252b);
        sb.append(C1176s.a.f4108a);
        sb.append(str);
        sb.append(C1176s.a.f4108a);
        sb.append(mo1390h());
        sb.append(C1176s.a.f4108a);
        sb.append(this.f1255e);
        return sb.toString();
    }
}
