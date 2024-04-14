package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.noise.ABTest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* renamed from: com.umeng.commonsdk.statistics.internal.c */
/* loaded from: classes.dex */
public class C2563c {

    /* renamed from: e */
    private static boolean f9865e;

    /* renamed from: a */
    private String f9866a = "10.0.0.172";

    /* renamed from: b */
    private int f9867b = 80;

    /* renamed from: c */
    private Context f9868c;

    /* renamed from: d */
    private InterfaceC2562b f9869d;

    public C2563c(Context context) {
        this.f9868c = context;
    }

    /* renamed from: a */
    private void m11431a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f9868c, "domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f9868c, "domain_s", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(imprintProperty2);
        }
        C2530b.f9732e = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        int testPolicy = ABTest.getService(this.f9868c).getTestPolicy();
        if (testPolicy != -1) {
            if (testPolicy == 0) {
                C2530b.f9732e = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
            } else if (testPolicy == 1) {
                C2530b.f9732e = new String[]{UMServerURL.SECONDARY_URL, UMServerURL.DEFAULT_URL};
            }
        }
    }

    /* renamed from: b */
    private boolean m11432b() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (this.f9868c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f9868c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f9868c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.f9868c, "android.permission.ACCESS_NETWORK_STATE") && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            C2501e.m10904a(this.f9868c, th);
        }
        return false;
    }

    /* renamed from: a */
    public void m11433a(InterfaceC2562b interfaceC2562b) {
        this.f9869d = interfaceC2562b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 3, insn: 0x014f: MOVE (r0 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:81:0x014f */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v7, types: [javax.net.ssl.HttpsURLConnection] */
    /* renamed from: a */
    public byte[] m11434a(byte[] bArr, String str) {
        OutputStream outputStream;
        OutputStream outputStream2;
        URLConnection openConnection;
        boolean z;
        OutputStream outputStream3 = null;
        try {
            try {
                if (this.f9869d != null) {
                    this.f9869d.onRequestStart();
                }
                if (m11432b()) {
                    openConnection = new URL(str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f9866a, this.f9867b)));
                } else {
                    openConnection = new URL(str).openConnection();
                }
                str = (HttpsURLConnection) openConnection;
                try {
                    if (!f9865e) {
                        HttpsURLConnection.setDefaultHostnameVerifier(new X509HostnameVerifier() { // from class: com.umeng.commonsdk.statistics.internal.c.1
                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, X509Certificate x509Certificate) throws SSLException {
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, SSLSocket sSLSocket) throws IOException {
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                            public void verify(String str2, String[] strArr, String[] strArr2) throws SSLException {
                            }

                            @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
                            public boolean verify(String str2, SSLSession sSLSession) {
                                return true;
                            }
                        });
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new SecureRandom());
                        HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
                        f9865e = true;
                    }
                    str.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                    str.setRequestProperty("X-Umeng-Sdk", C2561a.m11423a(this.f9868c).m11428b());
                    str.setRequestProperty("Content-Type", C2561a.m11423a(this.f9868c).m11426a());
                    str.setRequestProperty("Msg-Type", "envelope/json");
                    str.setConnectTimeout(30000);
                    str.setReadTimeout(30000);
                    str.setRequestMethod("POST");
                    str.setDoOutput(true);
                    str.setDoInput(true);
                    z = false;
                    str.setUseCaches(false);
                    outputStream = str.getOutputStream();
                } catch (Throwable th) {
                    th = th;
                    outputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                str = 0;
            }
            try {
                outputStream.write(bArr);
                outputStream.flush();
                str.connect();
                if (this.f9869d != null) {
                    this.f9869d.onRequestEnd();
                }
                int responseCode = str.getResponseCode();
                String headerField = str.getHeaderField("Content-Type");
                if (!TextUtils.isEmpty(headerField) && headerField.equalsIgnoreCase("application/thrift")) {
                    z = true;
                }
                if (C2530b.f9733f) {
                    MLog.m11263d("status code : " + responseCode + "; isThrifit:" + z);
                }
                if (responseCode != 200 || !z) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    if (str != 0) {
                        str.disconnect();
                    }
                    return null;
                }
                MLog.m11275i("Send message to server. status code is: " + responseCode);
                InputStream inputStream = str.getInputStream();
                try {
                    byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (str != 0) {
                        str.disconnect();
                    }
                    return readStreamToByteArray;
                } finally {
                    HelperUtils.safeClose(inputStream);
                }
            } catch (Throwable th3) {
                th = th3;
                MLog.m11271e("IOException,Failed to send message.", th);
                C2501e.m10904a(this.f9868c, th);
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                if (str != 0) {
                    str.disconnect();
                }
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream3 = outputStream2;
        }
    }

    /* renamed from: a */
    public byte[] m11435a(byte[] bArr, boolean z) {
        m11431a();
        byte[] bArr2 = null;
        int i = 0;
        while (true) {
            if (i >= C2530b.f9732e.length) {
                break;
            }
            bArr2 = m11434a(bArr, C2530b.f9732e[i]);
            if (bArr2 == null) {
                if (this.f9869d != null) {
                    this.f9869d.onRequestFailed();
                }
                i++;
            } else if (this.f9869d != null) {
                this.f9869d.onRequestSucceed(z);
                return bArr2;
            }
        }
        return bArr2;
    }
}
