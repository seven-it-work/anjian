package com.iflytek.voiceads.request;

import android.content.Context;
import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2309c;
import com.iflytek.voiceads.utils.C2313g;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

/* renamed from: com.iflytek.voiceads.request.a */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2298a extends Thread {

    /* renamed from: a */
    private URL f8630a;

    /* renamed from: b */
    private Context f8631b;

    /* renamed from: d */
    private int f8633d;

    /* renamed from: e */
    private int f8634e;

    /* renamed from: f */
    private long f8635f;

    /* renamed from: c */
    private int f8632c = 0;

    /* renamed from: g */
    private boolean f8636g = true;

    /* renamed from: h */
    private ArrayList<byte[]> f8637h = new ArrayList<>();

    /* renamed from: i */
    private a f8638i = null;

    /* renamed from: com.iflytek.voiceads.request.a$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo9840a(Exception exc, int i);

        /* renamed from: a */
        void mo9841a(byte[] bArr);
    }

    /* renamed from: a */
    public static URL m10094a(String str, String str2) throws MalformedURLException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.endsWith("?")) {
                str = str + "?";
            }
            str = str + str2;
        }
        if (str.contains(C1176s.a.f4108a)) {
            str = str.replaceAll(C1176s.a.f4108a, "%20");
        }
        return new URL(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c5 A[Catch: Exception -> 0x00c9, TRY_LEAVE, TryCatch #3 {Exception -> 0x00c9, blocks: (B:49:0x00c0, B:43:0x00c5), top: B:48:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m10095a() {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.request.C2298a.m10095a():void");
    }

    /* renamed from: a */
    private void m10096a(Exception exc, int i) {
        if (this.f8638i != null) {
            this.f8638i.mo9840a(exc, i);
        }
        if (this.f8636g) {
            long currentTimeMillis = System.currentTimeMillis() - this.f8635f;
            switch (this.f8633d) {
                case 0:
                    C2309c.m10122a(this.f8631b, "reqDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "reqFailCnt", C2309c.m10120a(this.f8631b, "reqFailCnt") + 1);
                    return;
                case 1:
                    C2309c.m10122a(this.f8631b, "impDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "impFailCnt", C2309c.m10120a(this.f8631b, "impFailCnt") + 1);
                    return;
                case 2:
                    C2309c.m10122a(this.f8631b, "clkDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "clkFailCnt", C2309c.m10120a(this.f8631b, "clkFailCnt") + 1);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: a */
    private void m10097a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLContext m10111a = C2304g.m10111a();
            if (m10111a != null) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(m10111a.getSocketFactory());
            }
            if (C2304g.f8642a != null) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(C2304g.f8642a);
            }
        }
    }

    /* renamed from: a */
    private void m10098a(byte[] bArr) {
        if (bArr != null) {
            this.f8637h.add(bArr);
        }
    }

    /* renamed from: a */
    private byte[] m10099a(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = bufferedInputStream.read(bArr, 0, bArr.length);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x010a A[Catch: Exception -> 0x0132, TryCatch #11 {Exception -> 0x0132, blocks: (B:63:0x0105, B:55:0x010a, B:57:0x010f), top: B:62:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010f A[Catch: Exception -> 0x0132, TRY_LEAVE, TryCatch #11 {Exception -> 0x0132, blocks: (B:63:0x0105, B:55:0x010a, B:57:0x010f), top: B:62:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m10100b() {
        /*
            Method dump skipped, instructions count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.request.C2298a.m10100b():void");
    }

    /* renamed from: b */
    private void m10101b(byte[] bArr) {
        if (this.f8638i != null) {
            this.f8638i.mo9841a(bArr);
        }
        if (this.f8636g) {
            long currentTimeMillis = System.currentTimeMillis() - this.f8635f;
            switch (this.f8633d) {
                case 0:
                    C2309c.m10122a(this.f8631b, "reqDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "reqFailCnt", 0L);
                    return;
                case 1:
                    C2309c.m10122a(this.f8631b, "impDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "impFailCnt", 0L);
                    return;
                case 2:
                    C2309c.m10122a(this.f8631b, "clkDuration", currentTimeMillis);
                    C2309c.m10122a(this.f8631b, "clkFailCnt", 0L);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: a */
    public void m10102a(int i) {
        this.f8633d = i;
    }

    /* renamed from: a */
    public void m10103a(Context context) {
        this.f8631b = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m10104a(a aVar) {
        if (this.f8636g) {
            this.f8635f = System.currentTimeMillis();
        }
        this.f8638i = aVar;
        start();
    }

    /* renamed from: a */
    public void m10105a(String str, String str2, byte[] bArr) {
        this.f8637h.clear();
        m10098a(bArr);
        try {
            this.f8630a = m10094a(str, str2);
        } catch (MalformedURLException e) {
            C2313g.m10138b(SDKConstants.TAG, "url error:" + e);
        }
    }

    /* renamed from: a */
    public void m10106a(boolean z) {
        this.f8636g = z;
    }

    /* renamed from: b */
    public void m10107b(int i) {
        this.f8632c = i;
    }

    /* renamed from: c */
    public void m10108c(int i) {
        this.f8634e = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.f8632c == 1) {
            m10100b();
        } else {
            m10095a();
        }
    }
}
