package com.p058c.p060b;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Xml;
import android.view.View;
import com.cyjh.common.util.C1176s;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.github.kevinsawicki.http.HttpRequest;
import com.hlzn.socketclient.p163b.C2146a;
import com.p058c.p059a.AbstractC1089a;
import com.p058c.p059a.DialogInterfaceOnCancelListenerC1092d;
import com.p058c.p062d.C1105a;
import com.p058c.p062d.C1113i;
import com.p058c.p062d.InterfaceC1108d;
import com.p058c.p062d.RunnableC1110f;
import com.p058c.p062d.ViewOnClickListenerC1107c;
import com.umeng.analytics.pro.C2427b;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: com.c.b.a */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC1095a<T, K> implements Runnable {

    /* renamed from: M */
    private static InterfaceC1102h f3534M = null;

    /* renamed from: O */
    private static final Class<?>[] f3535O = {String.class, Object.class, C1097c.class};

    /* renamed from: Q */
    private static ExecutorService f3536Q = null;

    /* renamed from: R */
    private static SocketFactory f3537R = null;

    /* renamed from: S */
    private static DefaultHttpClient f3538S = null;

    /* renamed from: T */
    private static AbstractC1101g f3539T = null;

    /* renamed from: V */
    private static final String f3540V = "\r\n";

    /* renamed from: W */
    private static final String f3541W = "--";

    /* renamed from: X */
    private static final String f3542X = "*****";

    /* renamed from: a */
    public static int f3543a = 30000;

    /* renamed from: t */
    static int f3544t = 200;

    /* renamed from: u */
    private static String f3545u = null;

    /* renamed from: v */
    private static int f3546v = 4;

    /* renamed from: w */
    private static boolean f3547w = true;

    /* renamed from: x */
    private static boolean f3548x = true;

    /* renamed from: y */
    private static boolean f3549y;

    /* renamed from: A */
    private Object f3550A;

    /* renamed from: B */
    private String f3551B;

    /* renamed from: C */
    private WeakReference<Object> f3552C;

    /* renamed from: D */
    private File f3553D;

    /* renamed from: E */
    private boolean f3554E;

    /* renamed from: I */
    private WeakReference<Activity> f3558I;

    /* renamed from: J */
    private HttpUriRequest f3559J;

    /* renamed from: N */
    private HttpHost f3562N;

    /* renamed from: P */
    private boolean f3563P;

    /* renamed from: U */
    private boolean f3564U;

    /* renamed from: b */
    public Class<T> f3565b;

    /* renamed from: c */
    public String f3566c;

    /* renamed from: d */
    String f3567d;

    /* renamed from: e */
    protected Map<String, Object> f3568e;

    /* renamed from: f */
    protected Map<String, String> f3569f;

    /* renamed from: g */
    protected Map<String, String> f3570g;

    /* renamed from: h */
    public InterfaceC1102h f3571h;

    /* renamed from: i */
    protected T f3572i;

    /* renamed from: k */
    public File f3574k;

    /* renamed from: l */
    protected AbstractC1089a f3575l;

    /* renamed from: m */
    protected C1097c f3576m;

    /* renamed from: n */
    protected boolean f3577n;

    /* renamed from: o */
    protected boolean f3578o;

    /* renamed from: p */
    public long f3579p;

    /* renamed from: r */
    public boolean f3581r;

    /* renamed from: s */
    public boolean f3582s;

    /* renamed from: z */
    private Reference<Object> f3583z;

    /* renamed from: j */
    public int f3573j = 0;

    /* renamed from: F */
    private int f3555F = 0;

    /* renamed from: G */
    private boolean f3556G = true;

    /* renamed from: H */
    private String f3557H = "UTF-8";

    /* renamed from: q */
    public int f3580q = 4;

    /* renamed from: K */
    private boolean f3560K = true;

    /* renamed from: L */
    private int f3561L = 0;

    /* renamed from: A */
    private T m3746A() {
        return this.f3572i;
    }

    /* renamed from: B */
    private C1097c m3747B() {
        return this.f3576m;
    }

    /* renamed from: C */
    private String m3748C() {
        return this.f3557H;
    }

    /* renamed from: D */
    private void m3749D() {
        this.f3564U = true;
        if (this.f3559J == null || this.f3559J.isAborted()) {
            return;
        }
        this.f3559J.abort();
    }

    /* renamed from: E */
    private String m3750E() {
        if (this.f3570g == null || this.f3570g.size() == 0) {
            return null;
        }
        Iterator<String> it = this.f3570g.keySet().iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            String next = it.next();
            String str = this.f3570g.get(next);
            sb.append(next);
            sb.append("=");
            sb.append(str);
            if (it.hasNext()) {
                sb.append("; ");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private K m3751a(long j) {
        this.f3579p = j;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private K m3752a(Activity activity, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 5 && str.startsWith("g.")) {
            this.f3575l = new DialogInterfaceOnCancelListenerC1092d(activity, str, str2);
        }
        return this;
    }

    /* renamed from: a */
    private K m3753a(Dialog dialog) {
        return m3838a((Object) dialog);
    }

    /* renamed from: a */
    private K m3754a(View view) {
        return m3838a((Object) view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private K m3755a(File file) {
        this.f3574k = file;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private K m3756a(Class<T> cls) {
        this.f3565b = cls;
        return this;
    }

    /* renamed from: a */
    private K m3757a(String str, int i, String str2, String str3) {
        m3840a(str, i);
        byte[] bytes = (String.valueOf(str2) + ":" + str3).getBytes();
        StringBuilder sb = new StringBuilder("Basic ");
        sb.append(new String(C1105a.m4054a(bytes, bytes.length)));
        String sb2 = sb.toString();
        C1105a.m4061b((Object) "proxy auth", (Object) sb2);
        return m3842a(HttpRequest.HEADER_PROXY_AUTHORIZATION, sb2);
    }

    /* renamed from: a */
    private static String m3758a(Uri uri) {
        String str = String.valueOf(uri.getScheme()) + "://" + uri.getAuthority() + uri.getPath();
        String fragment = uri.getFragment();
        if (fragment == null) {
            return str;
        }
        return String.valueOf(str) + "#" + fragment;
    }

    /* renamed from: a */
    private static String m3760a(HttpEntity httpEntity) {
        Header contentEncoding;
        if (httpEntity == null || (contentEncoding = httpEntity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    /* renamed from: a */
    private static String m3761a(byte[] bArr, String str, C1097c c1097c) {
        String str2;
        String str3 = null;
        try {
        } catch (Exception e) {
            e = e;
            str2 = null;
        }
        if (!"utf-8".equalsIgnoreCase(str)) {
            return new String(bArr, str);
        }
        String m3812h = m3812h(c1097c.m3893a("Content-Type"));
        C1105a.m4061b((Object) "parsing header", (Object) m3812h);
        if (m3812h != null) {
            return new String(bArr, m3812h);
        }
        str2 = new String(bArr, "utf-8");
        try {
            Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str2);
            if (matcher.find()) {
                str3 = m3812h(matcher.group());
            }
            C1105a.m4061b((Object) "parsing needed", (Object) str3);
            if (str3 != null && !"utf-8".equalsIgnoreCase(str3)) {
                C1105a.m4061b((Object) "correction needed", (Object) str3);
                String str4 = new String(bArr, str3);
                try {
                    c1097c.f3598l = str4.getBytes("utf-8");
                    return str4;
                } catch (Exception e2) {
                    e = e2;
                    str2 = str4;
                    C1105a.m4065b(e);
                    return str2;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return str2;
    }

    /* renamed from: a */
    private static HttpResponse m3762a(HttpUriRequest httpUriRequest, DefaultHttpClient defaultHttpClient, HttpContext httpContext) throws ClientProtocolException, IOException {
        if (!httpUriRequest.getURI().getAuthority().contains("_")) {
            return defaultHttpClient.execute(httpUriRequest, httpContext);
        }
        URL url = httpUriRequest.getURI().toURL();
        return defaultHttpClient.execute(url.getPort() == -1 ? new HttpHost(url.getHost(), 80, url.getProtocol()) : new HttpHost(url.getHost(), url.getPort(), url.getProtocol()), httpUriRequest, httpContext);
    }

    /* renamed from: a */
    private static void m3763a(int i) {
        f3543a = i;
    }

    /* renamed from: a */
    private static void m3764a(AbstractC1101g abstractC1101g) {
        f3539T = abstractC1101g;
    }

    /* renamed from: a */
    private static void m3765a(InterfaceC1102h interfaceC1102h) {
        f3534M = interfaceC1102h;
    }

    /* renamed from: a */
    private static void m3766a(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof File) {
            File file = (File) obj;
            m3768a(dataOutputStream, str, file.getName(), new FileInputStream(file));
            return;
        }
        if (obj instanceof byte[]) {
            m3768a(dataOutputStream, str, str, new ByteArrayInputStream((byte[]) obj));
            return;
        }
        if (obj instanceof InputStream) {
            m3768a(dataOutputStream, str, str, (InputStream) obj);
            return;
        }
        String obj2 = obj.toString();
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.write(obj2.getBytes("UTF-8"));
        dataOutputStream.writeBytes("\r\n");
    }

    /* renamed from: a */
    private static void m3767a(DataOutputStream dataOutputStream, String str, String str2) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.write(str2.getBytes("UTF-8"));
        dataOutputStream.writeBytes("\r\n");
    }

    /* renamed from: a */
    private static void m3768a(DataOutputStream dataOutputStream, String str, String str2, InputStream inputStream) throws IOException {
        dataOutputStream.writeBytes("--*****\r\n");
        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n");
        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
        dataOutputStream.writeBytes("\r\n");
        dataOutputStream.writeBytes("\r\n");
        C1105a.m4039a(inputStream, (OutputStream) dataOutputStream);
        dataOutputStream.writeBytes("\r\n");
    }

    /* renamed from: a */
    private static void m3769a(File file, byte[] bArr) {
        if (file == null || bArr == null) {
            return;
        }
        C1105a.m4038a(file, bArr);
    }

    /* renamed from: a */
    private void m3770a(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        Object obj = this.f3552C != null ? this.f3552C.get() : null;
        C1105a.m4040a(inputStream, outputStream, i, obj != null ? new RunnableC1110f(obj) : null);
    }

    /* renamed from: a */
    private void m3771a(InputStream inputStream, OutputStream outputStream, int i, File file, File file2) throws IOException {
        if (file2 == null) {
            m3770a(inputStream, outputStream, i);
            return;
        }
        try {
            m3770a(inputStream, outputStream, i);
            inputStream.close();
            outputStream.close();
            file.renameTo(file2);
        } catch (IOException e) {
            C1105a.m4041a((Object) "copy failed, deleting files");
            file.delete();
            file2.delete();
            C1105a.m4035a((Closeable) inputStream);
            C1105a.m4035a((Closeable) outputStream);
            throw e;
        }
    }

    /* renamed from: a */
    private static void m3772a(Runnable runnable) {
        if (f3536Q == null) {
            f3536Q = Executors.newFixedThreadPool(f3546v);
        }
        f3536Q.execute(runnable);
    }

    /* renamed from: a */
    private void m3773a(String str, C1097c c1097c) throws IOException {
        C1105a.m4061b((Object) "get", (Object) str);
        String m3817j = m3817j(str);
        m3776a(new HttpGet(m3817j), m3817j, c1097c);
    }

    /* renamed from: a */
    private void m3774a(String str, Map<String, Object> map, C1097c c1097c) throws ClientProtocolException, IOException {
        C1105a.m4061b((Object) "post", (Object) str);
        m3775a(str, new HttpPost(str), map, c1097c);
    }

    /* renamed from: a */
    private void m3775a(String str, HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Map<String, Object> map, C1097c c1097c) throws ClientProtocolException, IOException {
        HttpEntity urlEncodedFormEntity;
        httpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        Object obj = map.get(InterfaceC1108d.f3739P);
        if (obj instanceof HttpEntity) {
            urlEncodedFormEntity = (HttpEntity) obj;
        } else {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    arrayList.add(new BasicNameValuePair(entry.getKey(), value.toString()));
                }
            }
            urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        }
        if (this.f3569f != null && !this.f3569f.containsKey("Content-Type")) {
            this.f3569f.put("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
        }
        httpEntityEnclosingRequestBase.setEntity(urlEncodedFormEntity);
        m3776a(httpEntityEnclosingRequestBase, str, c1097c);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02af  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m3776a(org.apache.http.client.methods.HttpUriRequest r19, java.lang.String r20, com.p058c.p060b.C1097c r21) throws org.apache.http.client.ClientProtocolException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 728
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p060b.AbstractRunnableC1095a.m3776a(org.apache.http.client.methods.HttpUriRequest, java.lang.String, com.c.b.c):void");
    }

    /* renamed from: a */
    private static void m3777a(SocketFactory socketFactory) {
        f3537R = socketFactory;
        f3538S = null;
    }

    /* renamed from: a */
    private static byte[] m3778a(String str, InputStream inputStream) throws IOException {
        return C1105a.m4052a(HttpRequest.ENCODING_GZIP.equalsIgnoreCase(str) ? new GZIPInputStream(inputStream) : inputStream);
    }

    /* renamed from: b */
    private static File m3779b(File file) throws IOException {
        File file2 = new File(String.valueOf(file.getAbsolutePath()) + ".tmp");
        file2.createNewFile();
        return file2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private K m3780b(int i) {
        this.f3580q = i;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private K m3781b(InterfaceC1102h interfaceC1102h) {
        this.f3571h = interfaceC1102h;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private K m3782b(String str, String str2) {
        if (this.f3570g == null) {
            this.f3570g = new HashMap();
        }
        this.f3570g.put(str, str2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private K m3783b(Map<String, String> map) {
        this.f3569f = map;
        return this;
    }

    /* renamed from: b */
    private static Map<String, Object> m3784b(Uri uri) {
        HashMap hashMap = new HashMap();
        for (String str : uri.getQuery().split("&")) {
            String[] split = str.split("=");
            if (split.length >= 2) {
                hashMap.put(split[0], split[1]);
            } else if (split.length == 1) {
                hashMap.put(split[0], "");
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    private void m3785b(String str, C1097c c1097c) throws IOException {
        C1105a.m4061b((Object) "get", (Object) str);
        String m3817j = m3817j(str);
        m3776a(new HttpDelete(m3817j), m3817j, c1097c);
    }

    /* renamed from: b */
    private void m3786b(String str, Map<String, Object> map, C1097c c1097c) throws ClientProtocolException, IOException {
        C1105a.m4061b((Object) "put", (Object) str);
        m3775a(str, new HttpPut(str), map, c1097c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private K m3787c(int i) {
        this.f3555F = i;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private K m3788c(Map<String, String> map) {
        this.f3570g = map;
        return this;
    }

    /* renamed from: c */
    private static String m3789c(String str, String str2) {
        byte[] bytes = (String.valueOf(str) + ":" + str2).getBytes();
        return "Basic " + new String(C1105a.m4054a(bytes, bytes.length));
    }

    /* renamed from: c */
    public static void m3790c() {
        if (f3536Q != null) {
            f3536Q.shutdownNow();
            f3536Q = null;
        }
        C1098d.m3930d();
    }

    /* renamed from: c */
    private void m3791c(Context context) {
        T mo3853b = mo3853b(this.f3566c);
        if (mo3853b == null) {
            this.f3553D = C1105a.m4024a(context, this.f3573j);
            if (f3536Q == null) {
                f3536Q = Executors.newFixedThreadPool(f3546v);
            }
            f3536Q.execute(this);
            return;
        }
        this.f3572i = mo3853b;
        C1097c c1097c = this.f3576m;
        c1097c.f3604r = 4;
        c1097c.m3892a();
        m3846a();
    }

    /* renamed from: c */
    private static void m3792c(String str) {
        f3545u = str;
    }

    /* renamed from: c */
    private void m3793c(String str, Map<String, Object> map, C1097c c1097c) throws IOException {
        Proxy m3969b;
        String str2;
        byte[] bArr;
        C1105a.m4061b((Object) "multipart", (Object) str);
        URL url = new URL(str);
        if (this.f3562N != null) {
            C1105a.m4061b("proxy", this.f3562N);
            m3969b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f3562N.getHostName(), this.f3562N.getPort()));
        } else {
            m3969b = f3539T != null ? f3539T.m3969b() : null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) (m3969b == null ? url.openConnection() : url.openConnection(m3969b));
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(f3543a * 4);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
        if (this.f3569f != null) {
            for (String str3 : this.f3569f.keySet()) {
                httpURLConnection.setRequestProperty(str3, this.f3569f.get(str3));
            }
        }
        String m3750E = m3750E();
        if (m3750E != null) {
            httpURLConnection.setRequestProperty("Cookie", m3750E);
        }
        if (this.f3575l != null) {
            this.f3575l.mo3502a((AbstractRunnableC1095a<?, ?>) this, httpURLConnection);
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                if (value instanceof File) {
                    File file = (File) value;
                    m3768a(dataOutputStream, key, file.getName(), new FileInputStream(file));
                } else if (value instanceof byte[]) {
                    m3768a(dataOutputStream, key, key, new ByteArrayInputStream((byte[]) value));
                } else if (value instanceof InputStream) {
                    m3768a(dataOutputStream, key, key, (InputStream) value);
                } else {
                    String obj = value.toString();
                    dataOutputStream.writeBytes("--*****\r\n");
                    dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + key + "\"");
                    dataOutputStream.writeBytes("\r\n");
                    dataOutputStream.writeBytes("\r\n");
                    dataOutputStream.write(obj.getBytes("UTF-8"));
                    dataOutputStream.writeBytes("\r\n");
                }
            }
        }
        dataOutputStream.writeBytes("--*****--\r\n");
        dataOutputStream.flush();
        dataOutputStream.close();
        httpURLConnection.connect();
        int responseCode = httpURLConnection.getResponseCode();
        String responseMessage = httpURLConnection.getResponseMessage();
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (responseCode < 200 || responseCode >= 300) {
            str2 = new String(m3778a(contentEncoding, httpURLConnection.getErrorStream()), "UTF-8");
            C1105a.m4061b((Object) C2427b.f8943J, (Object) str2);
            bArr = null;
        } else {
            bArr = m3778a(contentEncoding, httpURLConnection.getInputStream());
            str2 = null;
        }
        C1105a.m4061b("response", Integer.valueOf(responseCode));
        if (bArr != null) {
            C1105a.m4061b((Object) Integer.valueOf(bArr.length), (Object) str);
        }
        c1097c.f3595i = responseCode;
        c1097c.f3596j = responseMessage;
        c1097c.f3597k = str;
        c1097c.f3600n = new Date();
        c1097c.f3598l = bArr;
        c1097c.f3609w = str2;
        c1097c.f3602p = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private K m3794d() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private K m3795d(int i) {
        this.f3561L = i;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private K m3796d(String str) {
        this.f3566c = str;
        return this;
    }

    /* renamed from: d */
    private static void m3797d(boolean z) {
        f3547w = z;
    }

    /* renamed from: d */
    private static boolean m3798d(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            C1105a.m4061b(entry.getKey(), value);
            if ((value instanceof File) || (value instanceof byte[]) || (value instanceof InputStream)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private K m3799e(int i) {
        this.f3573j = i;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private K m3800e(String str) {
        this.f3567d = str;
        return this;
    }

    /* renamed from: e */
    private void m3801e() {
        this.f3583z = null;
        this.f3550A = null;
        this.f3552C = null;
        this.f3559J = null;
        this.f3571h = null;
        this.f3575l = null;
        this.f3558I = null;
    }

    /* renamed from: e */
    private static void m3802e(boolean z) {
        f3549y = z;
    }

    /* renamed from: f */
    private Class<T> m3803f() {
        return this.f3565b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    private K m3804f(String str) {
        this.f3557H = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    private K m3805f(boolean z) {
        this.f3556G = z;
        return this;
    }

    /* renamed from: f */
    private void m3806f(int i) throws IOException {
        if (i <= 1) {
            m3827s();
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            try {
                m3827s();
                return;
            } catch (IOException e) {
                if (i2 == i - 1) {
                    throw e;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    private K m3807g(boolean z) {
        this.f3554E = z;
        return this;
    }

    /* renamed from: g */
    private static String m3808g(String str) {
        Matcher matcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(str);
        if (matcher.find()) {
            return m3812h(matcher.group());
        }
        return null;
    }

    /* renamed from: g */
    private void m3809g() {
        if (this.f3582s) {
            synchronized (this) {
                try {
                    notifyAll();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: g */
    private static void m3810g(int i) {
        f3546v = Math.max(1, Math.min(25, i));
        f3536Q = null;
        C1105a.m4061b("setting network limit", Integer.valueOf(f3546v));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    private K m3811h(boolean z) {
        this.f3560K = z;
        return this;
    }

    /* renamed from: h */
    private static String m3812h(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(HttpRequest.PARAM_CHARSET)) == -1) {
            return null;
        }
        int indexOf2 = str.indexOf(";", indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return str.substring(indexOf + 7, indexOf2).replaceAll("[^\\w-]", "");
    }

    /* renamed from: h */
    private void m3813h() {
        if (C1105a.m4067b()) {
            throw new IllegalStateException("Cannot block UI thread.");
        }
        if (this.f3581r) {
            return;
        }
        try {
            synchronized (this) {
                this.f3582s = true;
                wait(f3543a + C2146a.f8101t);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: i */
    private static T m3814i() {
        return null;
    }

    /* renamed from: i */
    private String m3815i(String str) {
        if (this.f3567d != null) {
            str = this.f3567d;
        }
        return this.f3575l != null ? this.f3575l.mo3498a(str) : str;
    }

    /* renamed from: i */
    private static void m3816i(boolean z) {
        f3548x = z;
        f3538S = null;
    }

    /* renamed from: j */
    private static String m3817j(String str) {
        return str.replaceAll(C1176s.a.f4108a, "%20").replaceAll("\\|", "%7C");
    }

    /* renamed from: j */
    private boolean m3818j() {
        if (this.f3558I == null) {
            return true;
        }
        Activity activity = this.f3558I.get();
        return (activity == null || activity.isFinishing()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00cf A[ADDED_TO_REGION] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m3819k() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p060b.AbstractRunnableC1095a.m3819k():void");
    }

    /* renamed from: l */
    private String m3820l() {
        return this.f3575l != null ? this.f3575l.mo3506b(this.f3566c) : this.f3566c;
    }

    /* renamed from: m */
    private void m3821m() {
        File mo3835a = mo3835a(this.f3553D, m3820l());
        if (mo3835a != null) {
            this.f3576m.f3604r = 3;
            this.f3572i = mo3837a(mo3835a, this.f3576m);
            if (this.f3572i != null) {
                C1097c c1097c = this.f3576m;
                c1097c.f3600n = new Date(mo3835a.lastModified());
                c1097c.m3892a();
            }
        }
    }

    /* renamed from: n */
    private void m3822n() {
        this.f3572i = null;
        if (this.f3572i != null) {
            C1097c c1097c = this.f3576m;
            c1097c.f3604r = 2;
            c1097c.m3892a();
        }
    }

    /* renamed from: o */
    private void m3823o() {
        C1097c c1097c;
        if (this.f3566c == null) {
            c1097c = this.f3576m;
            c1097c.f3595i = C1097c.f3592f;
        } else {
            byte[] bArr = null;
            try {
                try {
                    int i = this.f3561L + 1;
                    if (i <= 1) {
                        m3827s();
                    } else {
                        for (int i2 = 0; i2 < i; i2++) {
                            try {
                                m3827s();
                                break;
                            } catch (IOException e) {
                                if (i2 == i - 1) {
                                    throw e;
                                }
                            }
                        }
                    }
                    if (this.f3575l != null && this.f3575l.mo3505a((AbstractRunnableC1095a<?, ?>) this, this.f3576m) && !this.f3563P) {
                        C1105a.m4061b((Object) "reauth needed", (Object) this.f3576m.f3596j);
                        this.f3563P = true;
                        if (!this.f3575l.mo3508b((AbstractRunnableC1095a<?, ?>) this)) {
                            this.f3576m.f3608v = true;
                            return;
                        }
                        m3827s();
                    }
                    bArr = this.f3576m.f3598l;
                } catch (Exception e2) {
                    C1105a.m4049a((Throwable) e2);
                    C1097c c1097c2 = this.f3576m;
                    c1097c2.f3595i = C1097c.f3592f;
                    c1097c2.f3596j = "network error";
                    this.f3572i = mo3845a(bArr, this.f3576m);
                    if (this.f3572i == null) {
                        C1097c c1097c3 = this.f3576m;
                        c1097c3.f3595i = C1097c.f3594h;
                        c1097c3.f3596j = "transform error";
                    }
                    f3544t = this.f3576m.f3595i;
                    c1097c = this.f3576m;
                    c1097c.m3892a();
                }
            } catch (IOException e3) {
                C1105a.m4041a((Object) "IOException");
                String message = e3.getMessage();
                if (message != null && message.contains("No authentication challenges found")) {
                    C1097c c1097c4 = this.f3576m;
                    c1097c4.f3595i = UiMessage.CommandToUi.Command_Type.GET_ENABLED_VALUE;
                    c1097c4.f3596j = message;
                }
                C1097c c1097c22 = this.f3576m;
                c1097c22.f3595i = C1097c.f3592f;
                c1097c22.f3596j = "network error";
            }
            try {
                this.f3572i = mo3845a(bArr, this.f3576m);
            } catch (Exception e4) {
                C1105a.m4049a((Throwable) e4);
            }
            if (this.f3572i == null && bArr != null) {
                C1097c c1097c32 = this.f3576m;
                c1097c32.f3595i = C1097c.f3594h;
                c1097c32.f3596j = "transform error";
            }
            f3544t = this.f3576m.f3595i;
            c1097c = this.f3576m;
        }
        c1097c.m3892a();
    }

    /* renamed from: p */
    private File m3824p() {
        return C1105a.m4025a(this.f3553D, m3820l());
    }

    /* renamed from: q */
    private File m3825q() {
        File file;
        if (!mo3856b()) {
            file = null;
        } else if (this.f3574k != null) {
            file = this.f3574k;
        } else if (this.f3577n) {
            file = m3824p();
        } else {
            File m4068c = C1105a.m4068c();
            if (m4068c == null) {
                m4068c = this.f3553D;
            }
            file = C1105a.m4025a(m4068c, this.f3566c);
        }
        if (file == null || file.exists()) {
            return file;
        }
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            return file;
        } catch (Exception e) {
            C1105a.m4065b(e);
            return null;
        }
    }

    /* renamed from: r */
    private void m3826r() {
        if (this.f3572i == null || !this.f3577n) {
            if (this.f3576m.f3595i == -103) {
                File m3824p = m3824p();
                if (m3824p.exists()) {
                    m3824p.delete();
                    C1105a.m4041a((Object) "invalidated cache due to transform error");
                    return;
                }
                return;
            }
            return;
        }
        byte[] bArr = this.f3576m.f3598l;
        if (bArr != null) {
            try {
                if (this.f3576m.f3604r == 1) {
                    File m3824p2 = m3824p();
                    if (this.f3576m.f3607u) {
                        if (m3824p2.exists()) {
                            m3824p2.delete();
                        }
                    } else if (m3824p2 != null && bArr != null) {
                        C1105a.m4038a(m3824p2, bArr);
                    }
                }
            } catch (Exception e) {
                C1105a.m4049a((Throwable) e);
            }
        }
        this.f3576m.f3598l = null;
    }

    /* renamed from: s */
    private void m3827s() throws IOException {
        String str = this.f3566c;
        Map<String, Object> map = this.f3568e;
        if (map == null && str.length() > 2000) {
            Uri parse = Uri.parse(str);
            String str2 = String.valueOf(parse.getScheme()) + "://" + parse.getAuthority() + parse.getPath();
            String fragment = parse.getFragment();
            if (fragment != null) {
                str2 = String.valueOf(str2) + "#" + fragment;
            }
            String str3 = str2;
            map = m3784b(parse);
            str = str3;
        }
        if (this.f3567d != null) {
            str = this.f3567d;
        }
        if (this.f3575l != null) {
            str = this.f3575l.mo3498a(str);
        }
        if (2 == this.f3580q) {
            C1097c c1097c = this.f3576m;
            C1105a.m4061b((Object) "get", (Object) str);
            String m3817j = m3817j(str);
            m3776a(new HttpDelete(m3817j), m3817j, c1097c);
            return;
        }
        if (3 == this.f3580q) {
            C1097c c1097c2 = this.f3576m;
            C1105a.m4061b((Object) "put", (Object) str);
            m3775a(str, new HttpPut(str), map, c1097c2);
            return;
        }
        if (1 == this.f3580q && map == null) {
            map = new HashMap<>();
        }
        if (map == null) {
            C1097c c1097c3 = this.f3576m;
            C1105a.m4061b((Object) "get", (Object) str);
            String m3817j2 = m3817j(str);
            m3776a(new HttpGet(m3817j2), m3817j2, c1097c3);
            return;
        }
        if (m3798d(map)) {
            m3793c(str, map, this.f3576m);
            return;
        }
        C1097c c1097c4 = this.f3576m;
        C1105a.m4061b((Object) "post", (Object) str);
        m3775a(str, new HttpPost(str), map, c1097c4);
    }

    /* renamed from: t */
    private void m3828t() {
        if (this.f3566c != null && this.f3578o) {
            mo3855b(this.f3566c, (String) this.f3572i);
        }
        m3846a();
        this.f3583z = null;
        this.f3550A = null;
        this.f3552C = null;
        this.f3559J = null;
        this.f3571h = null;
        this.f3575l = null;
        this.f3558I = null;
    }

    /* renamed from: u */
    private static int m3829u() {
        if (f3536Q instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) f3536Q).getActiveCount();
        }
        return 0;
    }

    /* renamed from: v */
    private static DefaultHttpClient m3830v() {
        if (f3538S == null || !f3548x) {
            C1105a.m4041a((Object) "creating http client");
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, f3543a);
            HttpConnectionParams.setSoTimeout(basicHttpParams, f3543a);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(25));
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", f3537R == null ? SSLSocketFactory.getSocketFactory() : f3537R, 443));
            f3538S = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
        return f3538S;
    }

    /* renamed from: w */
    private String m3831w() {
        return this.f3566c;
    }

    /* renamed from: x */
    private Object m3832x() {
        if (this.f3550A != null) {
            return this.f3550A;
        }
        if (this.f3583z == null) {
            return null;
        }
        return this.f3583z.get();
    }

    /* renamed from: y */
    private String m3833y() {
        return this.f3551B;
    }

    /* renamed from: z */
    private static int m3834z() {
        return f3544t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public File mo3835a(File file, String str) {
        if (this.f3579p < 0) {
            return null;
        }
        File m4056b = C1105a.m4056b(file, str);
        if (m4056b == null || this.f3579p == 0 || System.currentTimeMillis() - m4056b.lastModified() <= this.f3579p) {
            return m4056b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3836a(AbstractC1089a abstractC1089a) {
        this.f3575l = abstractC1089a;
        return this;
    }

    /* renamed from: a */
    protected T mo3837a(File file, C1097c c1097c) {
        byte[] m4052a;
        try {
            if (mo3856b()) {
                c1097c.f3599m = file;
                m4052a = null;
            } else {
                m4052a = C1105a.m4052a((InputStream) new FileInputStream(file));
            }
            return mo3845a(m4052a, c1097c);
        } catch (Exception e) {
            C1105a.m4049a((Throwable) e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3838a(Object obj) {
        if (obj != null) {
            this.f3552C = new WeakReference<>(obj);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3839a(Object obj, String str) {
        this.f3583z = new WeakReference(obj);
        this.f3551B = str;
        this.f3550A = null;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3840a(String str, int i) {
        this.f3562N = new HttpHost(str, i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3841a(String str, Object obj) {
        if (this.f3568e == null) {
            this.f3568e = new HashMap();
        }
        this.f3568e.put(str, obj);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3842a(String str, String str2) {
        if (this.f3569f == null) {
            this.f3569f = new HashMap();
        }
        this.f3569f.put(str, str2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3843a(Map<String, ?> map) {
        this.f3568e = map;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final K m3844a(boolean z) {
        this.f3577n = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r4v12, types: [T, java.io.Closeable, java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v13, types: [T, org.xmlpull.v1.XmlPullParser] */
    /* renamed from: a */
    protected T mo3845a(byte[] bArr, C1097c c1097c) {
        String str;
        if (this.f3565b == null) {
            return null;
        }
        ?? r0 = (T) c1097c.f3599m;
        if (bArr != 0) {
            if (this.f3565b.equals(Bitmap.class)) {
                return (T) BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            }
            if (this.f3565b.equals(JSONObject.class)) {
                try {
                    str = new String(bArr, this.f3557H);
                    try {
                        return (T) ((JSONObject) new JSONTokener(str).nextValue());
                    } catch (Exception e) {
                        e = e;
                        C1105a.m4049a((Throwable) e);
                        C1105a.m4041a((Object) str);
                        return null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str = null;
                }
            } else {
                if (this.f3565b.equals(JSONArray.class)) {
                    try {
                        return (T) ((JSONArray) new JSONTokener(new String(bArr, this.f3557H)).nextValue());
                    } catch (Exception e3) {
                        C1105a.m4049a((Throwable) e3);
                        return null;
                    }
                }
                if (this.f3565b.equals(String.class)) {
                    if (c1097c.f3604r == 1) {
                        C1105a.m4041a((Object) "network");
                        return (T) m3761a(bArr, this.f3557H, c1097c);
                    }
                    C1105a.m4041a((Object) "file");
                    try {
                        return (T) new String(bArr, this.f3557H);
                    } catch (Exception e4) {
                        C1105a.m4049a((Throwable) e4);
                        return null;
                    }
                }
                if (this.f3565b.equals(byte[].class)) {
                    return bArr;
                }
                if (this.f3571h != null) {
                    return (T) this.f3571h.m3970a();
                }
                if (f3534M != null) {
                    return (T) f3534M.m3970a();
                }
            }
        } else if (r0 != 0) {
            if (this.f3565b.equals(File.class)) {
                return r0;
            }
            if (this.f3565b.equals(C1113i.class)) {
                try {
                    FileInputStream fileInputStream = new FileInputStream((File) r0);
                    T t = (T) new C1113i(fileInputStream);
                    c1097c.f3612z = fileInputStream;
                    return t;
                } catch (Exception e5) {
                    C1105a.m4065b(e5);
                    return null;
                }
            }
            if (this.f3565b.equals(XmlPullParser.class)) {
                ?? r4 = (T) Xml.newPullParser();
                try {
                    FileInputStream fileInputStream2 = new FileInputStream((File) r0);
                    r4.setInput(fileInputStream2, this.f3557H);
                    c1097c.f3612z = fileInputStream2;
                    return r4;
                } catch (Exception e6) {
                    C1105a.m4065b(e6);
                    return null;
                }
            }
            if (this.f3565b.equals(InputStream.class)) {
                try {
                    ?? r42 = (T) new FileInputStream((File) r0);
                    c1097c.f3612z = r42;
                    return r42;
                } catch (Exception e7) {
                    C1105a.m4065b(e7);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3846a() {
        Object obj;
        Object obj2;
        Activity activity;
        m3858c(false);
        this.f3581r = true;
        if (!(this.f3558I == null || !((activity = this.f3558I.get()) == null || activity.isFinishing()))) {
            mo3850a(this.f3566c);
        } else if (this.f3551B != null) {
            if (this.f3550A != null) {
                obj = this.f3550A;
            } else if (this.f3583z == null) {
                obj2 = null;
                C1105a.m4026a(obj2, this.f3551B, true, true, new Class[]{String.class, this.f3565b, C1097c.class}, f3535O, this.f3566c, this.f3572i, this.f3576m);
            } else {
                obj = this.f3583z.get();
            }
            obj2 = obj;
            C1105a.m4026a(obj2, this.f3551B, true, true, new Class[]{String.class, this.f3565b, C1097c.class}, f3535O, this.f3566c, this.f3572i, this.f3576m);
        } else {
            try {
                mo3851a(this.f3566c, (String) this.f3572i, this.f3576m);
            } catch (Exception e) {
                C1105a.m4065b(e);
            }
        }
        if (this.f3572i != null && this.f3577n) {
            byte[] bArr = this.f3576m.f3598l;
            if (bArr != null) {
                try {
                    if (this.f3576m.f3604r == 1) {
                        File m3824p = m3824p();
                        if (this.f3576m.f3607u) {
                            if (m3824p.exists()) {
                                m3824p.delete();
                            }
                        } else if (m3824p != null && bArr != null) {
                            C1105a.m4038a(m3824p, bArr);
                        }
                    }
                } catch (Exception e2) {
                    C1105a.m4049a((Throwable) e2);
                }
            }
            this.f3576m.f3598l = null;
        } else if (this.f3576m.f3595i == -103) {
            File m3824p2 = m3824p();
            if (m3824p2.exists()) {
                m3824p2.delete();
                C1105a.m4041a((Object) "invalidated cache due to transform error");
            }
        }
        if (!this.f3582s) {
            this.f3576m.m3894b();
        }
        if (this.f3582s) {
            synchronized (this) {
                try {
                    notifyAll();
                } catch (Exception unused) {
                }
            }
        }
        C1105a.m4029a();
    }

    /* renamed from: a */
    public final void m3847a(int i, String str) {
        if (this.f3576m != null) {
            C1097c c1097c = this.f3576m;
            c1097c.f3595i = i;
            c1097c.f3596j = str;
            c1097c.m3892a();
            if (this.f3560K) {
                C1105a.m4045a((Runnable) this);
            } else {
                m3828t();
            }
        }
    }

    /* renamed from: a */
    public final void m3848a(Activity activity) {
        if (activity.isFinishing()) {
            C1105a.m4042a((Object) "Warning", (Object) "Possible memory leak. Calling ajax with a terminated activity.");
        }
        if (this.f3565b == null) {
            C1105a.m4042a((Object) "Warning", (Object) "type() is not called with response type.");
        } else {
            this.f3558I = new WeakReference<>(activity);
            mo3849a((Context) activity);
        }
    }

    /* renamed from: a */
    public void mo3849a(Context context) {
        if (this.f3576m == null) {
            this.f3576m = new C1097c();
            C1097c c1097c = this.f3576m;
            c1097c.f3597k = this.f3566c;
            c1097c.f3601o = this.f3554E;
        } else if (this.f3576m.f3606t) {
            C1097c c1097c2 = this.f3576m;
            c1097c2.f3603q = System.currentTimeMillis() - c1097c2.f3605s;
            c1097c2.f3606t = false;
            c1097c2.m3894b();
            this.f3572i = null;
        }
        m3858c(true);
        if (this.f3575l != null && !this.f3575l.mo3504a()) {
            C1105a.m4061b((Object) "auth needed", (Object) this.f3566c);
            this.f3575l.m3501a((AbstractRunnableC1095a<?, ?>) this);
            return;
        }
        T mo3853b = mo3853b(this.f3566c);
        if (mo3853b == null) {
            this.f3553D = C1105a.m4024a(context, this.f3573j);
            if (f3536Q == null) {
                f3536Q = Executors.newFixedThreadPool(f3546v);
            }
            f3536Q.execute(this);
            return;
        }
        this.f3572i = mo3853b;
        C1097c c1097c3 = this.f3576m;
        c1097c3.f3604r = 4;
        c1097c3.m3892a();
        m3846a();
    }

    /* renamed from: a */
    protected void mo3850a(String str) {
    }

    /* renamed from: a */
    public void mo3851a(String str, T t, C1097c c1097c) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final K m3852b(Object obj, String str) {
        this.f3550A = obj;
        this.f3551B = str;
        this.f3583z = null;
        return this;
    }

    /* renamed from: b */
    protected T mo3853b(String str) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final K m3854b(boolean z) {
        this.f3578o = z;
        return this;
    }

    /* renamed from: b */
    protected void mo3855b(String str, T t) {
    }

    /* renamed from: b */
    protected boolean mo3856b() {
        return File.class.equals(this.f3565b) || XmlPullParser.class.equals(this.f3565b) || InputStream.class.equals(this.f3565b) || C1113i.class.equals(this.f3565b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m3857b(Context context) {
        return this.f3577n && C1105a.m4056b(C1105a.m4024a(context, this.f3573j), this.f3566c) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m3858c(final boolean z) {
        final Object obj = this.f3552C == null ? null : this.f3552C.get();
        if (obj != null) {
            if (C1105a.m4067b()) {
                ViewOnClickListenerC1107c.m4088a(obj, this.f3566c, z);
            } else {
                C1105a.m4045a(new Runnable() { // from class: com.c.b.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewOnClickListenerC1107c.m4088a(obj, AbstractRunnableC1095a.this.f3566c, z);
                    }
                });
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        File mo3835a;
        if (this.f3576m.f3606t) {
            m3828t();
            return;
        }
        try {
            if (!this.f3554E && this.f3577n && (mo3835a = mo3835a(this.f3553D, m3820l())) != null) {
                this.f3576m.f3604r = 3;
                this.f3572i = mo3837a(mo3835a, this.f3576m);
                if (this.f3572i != null) {
                    C1097c c1097c = this.f3576m;
                    c1097c.f3600n = new Date(mo3835a.lastModified());
                    c1097c.m3892a();
                }
            }
            if (this.f3572i == null) {
                this.f3572i = null;
                if (this.f3572i != null) {
                    C1097c c1097c2 = this.f3576m;
                    c1097c2.f3604r = 2;
                    c1097c2.m3892a();
                }
            }
            if (this.f3572i == null) {
                m3823o();
            }
        } catch (Throwable th) {
            C1105a.m4049a(th);
            C1097c c1097c3 = this.f3576m;
            c1097c3.f3595i = C1097c.f3592f;
            c1097c3.m3892a();
        }
        if (this.f3576m.f3608v) {
            return;
        }
        if (this.f3560K) {
            C1105a.m4045a((Runnable) this);
        } else {
            m3828t();
        }
    }
}
