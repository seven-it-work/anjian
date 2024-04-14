package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.stateless.e */
/* loaded from: classes.dex */
public class C2527e {

    /* renamed from: a */
    private String f9719a = "10.0.0.172";

    /* renamed from: b */
    private int f9720b = 80;

    /* renamed from: c */
    private Context f9721c;

    public C2527e(Context context) {
        this.f9721c = context;
    }

    /* renamed from: a */
    private boolean m11238a() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (this.f9721c == null || this.f9721c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f9721c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f9721c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.f9721c, "android.permission.ACCESS_NETWORK_STATE") && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            C2501e.m10904a(this.f9721c, th);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b3, code lost:
    
        if (r10 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b5, code lost:
    
        r10.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b8, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00d3, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
    
        if (r10 == 0) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m11239a(byte[] r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.C2527e.m11239a(byte[], java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0095, code lost:
    
        if (r9 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0097, code lost:
    
        r9.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b2, code lost:
    
        if (r9 == 0) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.net.HttpURLConnection] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m11240b(byte[] r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto Lc2
            if (r9 != 0) goto L6
            return r0
        L6:
            r1 = 0
            boolean r2 = r7.m11238a()     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            if (r2 == 0) goto L37
            java.net.Proxy r2 = new java.net.Proxy     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.net.Proxy$Type r3 = java.net.Proxy.Type.HTTP     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.net.InetSocketAddress r4 = new java.net.InetSocketAddress     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.String r5 = r7.f9719a     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            int r6 = r7.f9720b     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r4.<init>(r5, r6)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.String r5 = "https://plbslog.umeng.com/"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r4.append(r9)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.String r9 = r4.toString()     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r3.<init>(r9)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.net.URLConnection r9 = r3.openConnection(r2)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
        L34:
            java.net.HttpURLConnection r9 = (java.net.HttpURLConnection) r9     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            goto L4f
        L37:
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.String r4 = "https://plbslog.umeng.com/"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r3.append(r9)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.lang.String r9 = r3.toString()     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            r2.<init>(r9)     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            java.net.URLConnection r9 = r2.openConnection()     // Catch: java.lang.Throwable -> La3 java.lang.Throwable -> La6
            goto L34
        L4f:
            java.lang.String r2 = "X-Umeng-UTC"
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r9.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            java.lang.String r2 = "Msg-Type"
            java.lang.String r3 = "envelope/json"
            r9.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r2 = 30000(0x7530, float:4.2039E-41)
            r9.setConnectTimeout(r2)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r9.setReadTimeout(r2)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            java.lang.String r2 = "POST"
            r9.setRequestMethod(r2)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r2 = 1
            r9.setDoOutput(r2)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r9.setDoInput(r2)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r9.setUseCaches(r0)     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            java.io.OutputStream r3 = r9.getOutputStream()     // Catch: java.lang.Throwable -> La1 java.lang.Throwable -> Lb6
            r3.write(r8)     // Catch: java.lang.Throwable -> L9b java.lang.Throwable -> L9e
            r3.flush()     // Catch: java.lang.Throwable -> L9b java.lang.Throwable -> L9e
            r9.connect()     // Catch: java.lang.Throwable -> L9b java.lang.Throwable -> L9e
            int r8 = r9.getResponseCode()     // Catch: java.lang.Throwable -> L9b java.lang.Throwable -> L9e
            r1 = 200(0xc8, float:2.8E-43)
            if (r8 != r1) goto L90
            r0 = 1
        L90:
            if (r3 == 0) goto L95
            r3.close()     // Catch: java.lang.Exception -> L95
        L95:
            if (r9 == 0) goto Lb5
        L97:
            r9.disconnect()
            return r0
        L9b:
            r8 = move-exception
            r1 = r3
            goto Lb7
        L9e:
            r8 = move-exception
            r1 = r3
            goto La8
        La1:
            r8 = move-exception
            goto La8
        La3:
            r8 = move-exception
            r9 = r1
            goto Lb7
        La6:
            r8 = move-exception
            r9 = r1
        La8:
            android.content.Context r2 = r7.f9721c     // Catch: java.lang.Throwable -> Lb6
            com.umeng.commonsdk.proguard.C2501e.m10904a(r2, r8)     // Catch: java.lang.Throwable -> Lb6
            if (r1 == 0) goto Lb2
            r1.close()     // Catch: java.lang.Exception -> Lb2
        Lb2:
            if (r9 == 0) goto Lb5
            goto L97
        Lb5:
            return r0
        Lb6:
            r8 = move-exception
        Lb7:
            if (r1 == 0) goto Lbc
            r1.close()     // Catch: java.lang.Exception -> Lbc
        Lbc:
            if (r9 == 0) goto Lc1
            r9.disconnect()
        Lc1:
            throw r8
        Lc2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.C2527e.m11240b(byte[], java.lang.String):boolean");
    }
}
