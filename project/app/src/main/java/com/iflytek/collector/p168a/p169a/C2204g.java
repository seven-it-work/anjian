package com.iflytek.collector.p168a.p169a;

import android.text.TextUtils;
import com.github.kevinsawicki.http.HttpRequest;
import com.hlzn.socketclient.p163b.C2146a;
import com.iflytek.voiceads.config.SDKLogger;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* renamed from: com.iflytek.collector.a.a.g */
/* loaded from: classes.dex */
public class C2204g extends Thread {

    /* renamed from: a */
    private int f8283a = C2146a.f8099r;

    /* renamed from: b */
    private a f8284b = null;

    /* renamed from: c */
    private volatile boolean f8285c = false;

    /* renamed from: d */
    private URL f8286d = null;

    /* renamed from: e */
    private ArrayList<byte[]> f8287e = new ArrayList<>();

    /* renamed from: f */
    private Object f8288f = null;

    /* renamed from: g */
    private int f8289g = 0;

    /* renamed from: com.iflytek.collector.a.a.g$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo9756a(C2204g c2204g, byte[] bArr);

        /* renamed from: a */
        void mo9757a(Exception exc);
    }

    /* renamed from: a */
    public static URL m9761a(String str, String str2) throws MalformedURLException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.endsWith("?")) {
                str = str + "?";
            }
            str = str + str2;
        }
        SDKLogger.m9848d("Collector", "url:" + str);
        return new URL(str);
    }

    /* renamed from: a */
    private void m9762a(Exception exc) {
        if (this.f8284b == null || this.f8285c) {
            return;
        }
        this.f8284b.mo9757a(exc);
    }

    /* renamed from: a */
    public static boolean m9763a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("rsp")) {
                return jSONObject.getJSONObject("rsp").getInt("code") != 0;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: a */
    private byte[] m9764a(InputStream inputStream) throws IOException {
        int read;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        byte[] bArr = new byte[1024];
        while (!this.f8285c && (read = bufferedInputStream.read(bArr, 0, 1024)) != -1) {
            byteArrayOutputStream.write(bArr, 0, read);
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    private void m9765b() {
        Throwable th;
        HttpURLConnection httpURLConnection;
        Exception e;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) this.f8286d.openConnection();
                try {
                    httpURLConnection.setConnectTimeout(this.f8283a);
                    httpURLConnection.setReadTimeout(this.f8283a);
                    httpURLConnection.setRequestMethod(HttpRequest.METHOD_GET);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (200 == responseCode) {
                        InputStream inputStream2 = httpURLConnection.getInputStream();
                        try {
                            m9766b(m9764a(inputStream2));
                            inputStream = inputStream2;
                        } catch (Exception e2) {
                            e = e2;
                            inputStream = inputStream2;
                            e.printStackTrace();
                            m9762a(e);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = inputStream2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    } else {
                        m9762a(new Exception("HttpRequest Failed: " + responseCode));
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused3) {
                            return;
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Exception e4) {
                e = e4;
                httpURLConnection = null;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: b */
    private void m9766b(byte[] bArr) {
        if (this.f8284b == null || this.f8285c) {
            return;
        }
        this.f8284b.mo9756a(this, bArr);
    }

    /* renamed from: c */
    private int m9767c() {
        int i = 0;
        for (int i2 = 0; i2 < this.f8287e.size(); i2++) {
            i += this.f8287e.get(i2).length;
        }
        return i;
    }

    /* renamed from: a */
    public void m9768a() {
        HttpURLConnection httpURLConnection;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) this.f8286d.openConnection();
                try {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setConnectTimeout(this.f8283a);
                    httpURLConnection.setReadTimeout(this.f8283a);
                    StringBuilder sb = new StringBuilder();
                    sb.append(m9767c());
                    httpURLConnection.setRequestProperty("Content-length", sb.toString());
                    httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                    httpURLConnection.setRequestProperty("Charset", "utf-8");
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-gzip");
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    Iterator<byte[]> it = this.f8287e.iterator();
                    while (it.hasNext()) {
                        outputStream.write(it.next());
                    }
                    outputStream.flush();
                    outputStream.close();
                    int responseCode = httpURLConnection.getResponseCode();
                    if (200 == responseCode) {
                        InputStream inputStream2 = httpURLConnection.getInputStream();
                        try {
                            m9766b(m9764a(inputStream2));
                            inputStream = inputStream2;
                        } catch (Exception e) {
                            e = e;
                            inputStream = inputStream2;
                            m9762a(e);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStream2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    } else {
                        m9762a(new Exception("Http Request Failed: " + responseCode));
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused3) {
                            return;
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public void m9769a(int i) {
        this.f8289g = i;
    }

    /* renamed from: a */
    public void m9770a(a aVar) {
        this.f8284b = aVar;
    }

    /* renamed from: a */
    public void m9771a(String str, String str2, byte[] bArr) {
        this.f8287e.clear();
        m9772a(bArr);
        try {
            this.f8286d = m9761a(str, str2);
        } catch (MalformedURLException e) {
            SDKLogger.m9850e("Collector", "url error:" + e);
        }
    }

    /* renamed from: a */
    public void m9772a(byte[] bArr) {
        if (bArr != null) {
            this.f8287e.add(bArr);
        }
    }

    /* renamed from: b */
    public void m9773b(int i) {
        this.f8283a = i;
    }

    /* renamed from: b */
    public void m9774b(a aVar) {
        this.f8284b = aVar;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.f8289g == 1) {
            m9768a();
        } else {
            m9765b();
        }
    }
}
