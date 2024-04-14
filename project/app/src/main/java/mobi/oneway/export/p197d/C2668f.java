package mobi.oneway.export.p197d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import mobi.oneway.export.p201g.C2696h;
import mobi.oneway.export.p201g.C2698j;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: mobi.oneway.export.d.f */
/* loaded from: classes2.dex */
public class C2668f {

    /* renamed from: a */
    public static final String f10238a = "POST";

    /* renamed from: b */
    public static final String f10239b = "HEAD";

    /* renamed from: c */
    public static final String f10240c = "Content-Type";

    /* renamed from: d */
    public static final String f10241d = "application/json";

    /* renamed from: e */
    private static final int f10242e = 15000;

    /* renamed from: f */
    private String f10243f;

    /* renamed from: g */
    private String f10244g;

    /* renamed from: h */
    private String f10245h;

    /* renamed from: i */
    private final Map<String, String> f10246i;

    /* renamed from: j */
    private final Map<String, String> f10247j;

    /* renamed from: k */
    private int f10248k;

    /* renamed from: l */
    private int f10249l;

    /* renamed from: m */
    private boolean f10250m;

    /* renamed from: n */
    private File f10251n;

    /* renamed from: o */
    private boolean f10252o;

    /* renamed from: p */
    private volatile boolean f10253p;

    /* renamed from: q */
    private boolean f10254q;

    /* renamed from: r */
    private long f10255r;

    /* renamed from: s */
    private long f10256s;

    /* renamed from: t */
    private boolean f10257t;

    /* renamed from: u */
    private String[] f10258u;

    /* renamed from: v */
    private String f10259v;

    /* renamed from: w */
    private int f10260w;

    /* renamed from: mobi.oneway.export.d.f$a */
    /* loaded from: classes2.dex */
    public interface a {
        /* renamed from: a */
        void m12041a(int i, int i2, C2664b c2664b);

        /* renamed from: b */
        void m12042b(int i, int i2, C2664b c2664b);
    }

    /* renamed from: mobi.oneway.export.d.f$b */
    /* loaded from: classes2.dex */
    public interface b {
        /* renamed from: a */
        void mo11975a(Throwable th, C2664b c2664b);

        /* renamed from: a */
        void mo11976a(C2664b c2664b);
    }

    /* renamed from: mobi.oneway.export.d.f$c */
    /* loaded from: classes2.dex */
    private static class c extends Handler {

        /* renamed from: a */
        public static final int f10261a = 0;

        /* renamed from: b */
        public static final int f10262b = 1;

        /* renamed from: c */
        private b f10263c;

        public c(b bVar) {
            super(Looper.getMainLooper());
            this.f10263c = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                this.f10263c.mo11976a((C2664b) message.obj);
            } else {
                C2664b c2664b = (C2664b) message.obj;
                this.f10263c.mo11975a(c2664b.m11997m(), c2664b);
            }
        }
    }

    public C2668f(String str) {
        this.f10246i = new HashMap();
        this.f10247j = new HashMap();
        this.f10248k = f10242e;
        this.f10249l = f10242e;
        this.f10250m = false;
        this.f10252o = false;
        this.f10253p = false;
        this.f10254q = false;
        this.f10257t = false;
        m12025b(str);
        this.f10255r = System.currentTimeMillis();
    }

    public C2668f(String[] strArr, String str) {
        this.f10246i = new HashMap();
        this.f10247j = new HashMap();
        this.f10248k = f10242e;
        this.f10249l = f10242e;
        this.f10250m = false;
        this.f10252o = false;
        this.f10253p = false;
        this.f10254q = false;
        this.f10257t = false;
        this.f10258u = strArr;
        this.f10259v = str;
        this.f10260w = 0;
        this.f10255r = System.currentTimeMillis();
    }

    /* renamed from: a */
    private int m12001a(HttpURLConnection httpURLConnection, OutputStream outputStream, C2664b c2664b) {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        int read;
        Thread currentThread = Thread.currentThread();
        try {
            httpURLConnection.getContentLength();
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getResponseCode() == 200 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream());
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[1024];
            int i = 0;
            while (!m12031e() && !currentThread.isInterrupted() && (read = bufferedInputStream.read(bArr)) != -1) {
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                bufferedOutputStream.flush();
            }
            bufferedOutputStream.flush();
            if (!m12031e() && currentThread.isInterrupted()) {
                m12030d();
            }
            C2698j.m12229a(outputStream, bufferedInputStream, bufferedOutputStream);
            return i;
        } catch (Throwable th3) {
            th = th3;
            C2698j.m12229a(outputStream, bufferedInputStream, bufferedOutputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static String m12002a(Map<String, String> map, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (str2 != null) {
                if (z) {
                    str = m12005d(str);
                    str2 = m12005d(str2);
                }
                sb.append(str);
                sb.append('=');
                sb.append(str2);
                sb.append('&');
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    /* renamed from: a */
    private void m12003a(HttpURLConnection httpURLConnection) {
        PrintWriter printWriter;
        String m12034h;
        if ("POST".equals(m12033g())) {
            try {
                httpURLConnection.setDoOutput(true);
                printWriter = new PrintWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8"));
            } catch (Throwable th) {
                th = th;
                printWriter = null;
            }
            try {
                if (TextUtils.isEmpty(this.f10245h)) {
                    if (!TextUtils.isEmpty(m12034h())) {
                        m12034h = m12034h();
                    }
                    printWriter.flush();
                    C2698j.m12229a(printWriter);
                }
                m12034h = this.f10245h;
                printWriter.write(m12034h);
                printWriter.flush();
                C2698j.m12229a(printWriter);
            } catch (Throwable th2) {
                th = th2;
                C2698j.m12229a(printWriter);
                throw th;
            }
        }
    }

    /* renamed from: c */
    private boolean m12004c(int i) {
        return i >= 200 && i < 300;
    }

    /* renamed from: d */
    private static String m12005d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: o */
    private boolean m12006o() {
        return this.f10251n != null;
    }

    /* renamed from: p */
    private boolean m12007p() {
        return this.f10258u != null && this.f10258u.length > 0 && this.f10260w < this.f10258u.length - 1;
    }

    /* renamed from: q */
    private HttpURLConnection m12008q() {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(m12032f()).openConnection();
        httpURLConnection.setInstanceFollowRedirects(this.f10250m);
        httpURLConnection.setConnectTimeout(m12035i());
        httpURLConnection.setReadTimeout(m12036j());
        httpURLConnection.setRequestMethod(m12033g());
        httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT_ENCODING, "");
        if (!this.f10247j.isEmpty()) {
            for (String str : this.f10247j.keySet()) {
                httpURLConnection.setRequestProperty(str, this.f10247j.get(str));
            }
        }
        if (URLUtil.isHttpsUrl(this.f10243f)) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            httpsURLConnection.setHostnameVerifier(C2666d.m12000b());
            httpsURLConnection.setSSLSocketFactory(C2666d.m11999a());
        }
        return httpURLConnection;
    }

    /* renamed from: r */
    private void m12009r() {
        if (this.f10244g == null) {
            this.f10244g = HttpRequest.METHOD_GET;
        }
        this.f10244g = this.f10244g.toUpperCase();
        if (m12036j() <= 0) {
            throw new IllegalArgumentException("read timeout=" + m12036j() + " is <= 0.");
        }
        if (this.f10248k <= 0) {
            throw new IllegalArgumentException("connect timeout=" + m12035i() + " is <= 0.");
        }
        if (this.f10258u != null && this.f10258u.length > 0 && !TextUtils.isEmpty(this.f10259v)) {
            this.f10243f = this.f10258u[this.f10260w] + this.f10259v;
        }
        if (this.f10246i.isEmpty()) {
            return;
        }
        String m12002a = m12002a(this.f10246i, true);
        if ("POST".equals(this.f10244g) && TextUtils.isEmpty(this.f10245h)) {
            this.f10245h = m12002a;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10243f);
        sb.append(this.f10243f.indexOf("?") > 0 ? "&" : "?");
        this.f10243f = sb.toString();
        this.f10243f += m12002a;
    }

    /* renamed from: a */
    public C2668f m12010a(int i) {
        this.f10248k = i;
        return this;
    }

    /* renamed from: a */
    public C2668f m12011a(int i, int i2) {
        m12010a(i);
        m12022b(i2);
        return this;
    }

    /* renamed from: a */
    public C2668f m12012a(File file) {
        return m12013a(file, false);
    }

    /* renamed from: a */
    public C2668f m12013a(File file, boolean z) {
        this.f10251n = file;
        this.f10252o = z;
        if (z) {
            m12016a(HttpHeaders.RANGE, "bytes=" + file.length() + "-");
        }
        return this;
    }

    /* renamed from: a */
    public C2668f m12014a(String str) {
        this.f10245h = str;
        m12016a("Content-Type", "application/json");
        return this;
    }

    /* renamed from: a */
    public C2668f m12015a(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        this.f10246i.put(str, String.valueOf(obj));
        return this;
    }

    /* renamed from: a */
    public C2668f m12016a(String str, String str2) {
        this.f10247j.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public C2668f m12017a(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            this.f10247j.putAll(map);
        }
        return this;
    }

    /* renamed from: a */
    public C2668f m12018a(JSONArray jSONArray) {
        this.f10245h = jSONArray.toString();
        m12016a("Content-Type", "application/json");
        return this;
    }

    /* renamed from: a */
    public C2668f m12019a(JSONObject jSONObject) {
        this.f10245h = jSONObject.toString();
        m12016a("Content-Type", "application/json");
        return this;
    }

    /* renamed from: a */
    public C2668f m12020a(boolean z) {
        this.f10254q = z;
        return this;
    }

    /* renamed from: a */
    public boolean m12021a() {
        return this.f10254q;
    }

    /* renamed from: b */
    public C2668f m12022b(int i) {
        this.f10249l = i;
        return this;
    }

    /* renamed from: b */
    public C2668f m12023b(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            this.f10246i.putAll(map);
        }
        return this;
    }

    /* renamed from: b */
    public C2668f m12024b(boolean z) {
        this.f10257t = z;
        return this;
    }

    /* renamed from: b */
    public void m12025b(String str) {
        this.f10243f = str;
    }

    /* renamed from: b */
    public boolean m12026b() {
        return this.f10257t;
    }

    /* renamed from: c */
    public Map<String, String> m12027c() {
        return this.f10246i;
    }

    /* renamed from: c */
    public C2668f m12028c(String str) {
        this.f10244g = str;
        return this;
    }

    /* renamed from: c */
    public C2668f m12029c(boolean z) {
        this.f10250m = z;
        return this;
    }

    /* renamed from: d */
    public void m12030d() {
        this.f10253p = true;
    }

    /* renamed from: e */
    public boolean m12031e() {
        return this.f10253p;
    }

    /* renamed from: f */
    public String m12032f() {
        return this.f10243f;
    }

    /* renamed from: g */
    public String m12033g() {
        return this.f10244g;
    }

    /* renamed from: h */
    public String m12034h() {
        return new URL(this.f10243f).getQuery();
    }

    /* renamed from: i */
    public int m12035i() {
        return this.f10248k;
    }

    /* renamed from: j */
    public int m12036j() {
        return this.f10249l;
    }

    /* renamed from: k */
    public String m12037k() {
        return m12040n().m11988d();
    }

    /* renamed from: l */
    public byte[] m12038l() {
        return m12040n().m11987c();
    }

    /* renamed from: m */
    public JSONObject m12039m() {
        return new JSONObject(m12037k());
    }

    /* renamed from: n */
    public C2664b m12040n() {
        HttpURLConnection httpURLConnection;
        this.f10256s = System.currentTimeMillis();
        C2664b c2664b = new C2664b(this);
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                m12009r();
                httpURLConnection = m12008q();
                try {
                    m12003a(httpURLConnection);
                    int responseCode = httpURLConnection.getResponseCode();
                    c2664b.m11980a(responseCode);
                    c2664b.m11983a(httpURLConnection.getHeaderFields());
                    int contentLength = httpURLConnection.getContentLength();
                    c2664b.m11981a(contentLength);
                    if (!this.f10254q) {
                        if (m12006o()) {
                            c2664b.m11982a(this.f10251n);
                            C2696h.m12207c(this.f10251n.getParent(), (String) null);
                            m12001a(httpURLConnection, new FileOutputStream(this.f10251n, this.f10252o), c2664b);
                        } else {
                            if (contentLength > 2097152) {
                                throw new IOException("Body is too large to load in memory: contentLength = " + contentLength + " B");
                            }
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            m12001a(httpURLConnection, byteArrayOutputStream, c2664b);
                            c2664b.m11985a(byteArrayOutputStream.toByteArray());
                        }
                    }
                    if (!m12007p() || m12004c(responseCode)) {
                        C2698j.m12228a(httpURLConnection);
                        return c2664b;
                    }
                    this.f10260w++;
                    C2664b m12040n = m12040n();
                    C2698j.m12228a(httpURLConnection);
                    return m12040n;
                } catch (IOException e) {
                    e = e;
                    httpURLConnection2 = httpURLConnection;
                    if (!m12007p()) {
                        throw e;
                    }
                    this.f10260w++;
                    C2664b m12040n2 = m12040n();
                    C2698j.m12228a(httpURLConnection2);
                    return m12040n2;
                } catch (Throwable th) {
                    th = th;
                    C2698j.m12228a(httpURLConnection);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }
}
