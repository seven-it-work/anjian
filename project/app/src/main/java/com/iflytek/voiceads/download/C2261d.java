package com.iflytek.voiceads.download;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import com.cyjh.elfin.p073a.C1225b;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.download.p174a.InterfaceC2249b;
import com.iflytek.voiceads.download.p179d.C2262a;
import com.iflytek.voiceads.listener.DialogListener;
import com.iflytek.voiceads.utils.C2308b;
import com.iflytek.voiceads.utils.C2310d;
import com.iflytek.voiceads.utils.C2313g;
import com.iflytek.voiceads.utils.C2316j;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.iflytek.voiceads.download.d */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2261d {

    /* renamed from: j */
    private static C2261d f8479j;

    /* renamed from: a */
    private Context f8480a;

    /* renamed from: b */
    private Handler f8481b;

    /* renamed from: e */
    private HandlerThread f8484e;

    /* renamed from: f */
    private DialogListener f8485f;

    /* renamed from: g */
    private boolean f8486g;

    /* renamed from: k */
    private InterfaceC2249b f8489k;

    /* renamed from: l */
    private NotificationManager f8490l;

    /* renamed from: h */
    private final int f8487h = 0;

    /* renamed from: i */
    private final int f8488i = 50000;

    /* renamed from: n */
    private final String f8492n = ".apk";

    /* renamed from: o */
    private final BroadcastReceiver f8493o = new C2275o(this);

    /* renamed from: p */
    private final int f8494p = 24;

    /* renamed from: q */
    private final int f8495q = 26;

    /* renamed from: m */
    private HashMap<Integer, Object> f8491m = new HashMap<>();

    /* renamed from: c */
    private HashMap<String, b> f8482c = new HashMap<>();

    /* renamed from: d */
    private HashMap<String, b> f8483d = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.iflytek.voiceads.download.d$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo9971a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.iflytek.voiceads.download.d$b */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public class b {

        /* renamed from: a */
        public String f8512a;

        /* renamed from: b */
        public String f8513b;

        /* renamed from: c */
        public String f8514c;

        /* renamed from: d */
        public JSONArray f8515d;

        /* renamed from: e */
        public JSONArray f8516e;

        /* renamed from: f */
        public JSONArray f8517f;

        /* renamed from: g */
        public JSONArray f8518g;

        /* renamed from: h */
        public int f8519h;

        private b() {
        }

        /* synthetic */ b(C2261d c2261d, HandlerC2264e handlerC2264e) {
            this();
        }
    }

    private C2261d(Context context) {
        this.f8480a = context;
        this.f8490l = (NotificationManager) context.getSystemService("notification");
        m9916a();
    }

    /* renamed from: a */
    public static synchronized C2261d m9914a(Context context) {
        C2261d c2261d;
        synchronized (C2261d.class) {
            if (f8479j == null) {
                f8479j = new C2261d(context);
            }
            c2261d = f8479j;
        }
        return c2261d;
    }

    /* renamed from: a */
    private void m9916a() {
        this.f8484e = new HandlerThread(C1225b.f4478T);
        this.f8484e.start();
        this.f8481b = new HandlerC2264e(this, this.f8484e.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9917a(int i) {
        try {
            if (!this.f8491m.containsKey(Integer.valueOf(i))) {
                int i2 = Build.VERSION.SDK_INT;
                int i3 = this.f8480a.getApplicationInfo().targetSdkVersion;
                if (i2 < 26 || i3 < 26) {
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(this.f8480a);
                    builder.setContentTitle("准备下载").setWhen(System.currentTimeMillis()).setProgress(100, 0, false).setSmallIcon(R.drawable.stat_sys_download).setDefaults(16);
                    this.f8490l.notify(i, builder.build());
                    this.f8491m.put(Integer.valueOf(i), builder);
                } else {
                    Notification.Builder builder2 = new Notification.Builder(this.f8480a);
                    this.f8490l.createNotificationChannel(new NotificationChannel("iflyad", "iflyad", 2));
                    builder2.setContentTitle("准备下载").setChannelId("iflyad").setWhen(System.currentTimeMillis()).setProgress(100, 0, false).setSmallIcon(R.drawable.stat_sys_download).setDefaults(16);
                    this.f8490l.notify(i, builder2.build());
                    this.f8491m.put(Integer.valueOf(i), builder2);
                }
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "showNotification error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9918a(int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        int i4 = this.f8480a.getApplicationInfo().targetSdkVersion;
        if (i3 < 26 || i4 < 26) {
            NotificationCompat.Builder builder = (NotificationCompat.Builder) this.f8491m.get(Integer.valueOf(i));
            if (builder != null) {
                builder.setContentTitle("正在下载").setContentText(i2 + "%").setProgress(100, i2, false);
                this.f8490l.notify(i, builder.build());
                return;
            }
            return;
        }
        Notification.Builder builder2 = (Notification.Builder) this.f8491m.get(Integer.valueOf(i));
        if (builder2 != null) {
            builder2.setContentTitle("正在下载").setContentText(i2 + "%").setProgress(100, i2, false);
            this.f8490l.notify(i, builder2.build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9919a(Activity activity, a aVar) {
        if (activity == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage("确认下载？");
        builder.setPositiveButton("下载", new DialogInterfaceOnClickListenerC2270j(this, aVar));
        builder.setNegativeButton("取消", new DialogInterfaceOnClickListenerC2271k(this));
        builder.setOnCancelListener(new DialogInterfaceOnCancelListenerC2272l(this));
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9920a(Context context, File file) {
        if (context == null || file == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            int i = Build.VERSION.SDK_INT;
            int i2 = context.getApplicationInfo().targetSdkVersion;
            if (i < 24 || i2 < 24) {
                intent.setFlags(268435456);
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            } else {
                if (i >= 26 && i2 >= 26 && !m9938b(context)) {
                    Intent intent2 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                    if (context instanceof Activity) {
                        ((Activity) context).startActivityForResult(intent2, 0);
                    }
                }
                intent.addFlags(1);
                intent.setDataAndType(FileProvider.getUriForFile(context, this.f8480a.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
            }
            context.startActivity(intent);
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "installApp error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m9921a(b bVar) {
        C2313g.m10136a(SDKConstants.TAG, "start download ad");
        try {
            String str = C2257c.m9908a(this.f8480a) + File.separator + bVar.f8513b + ".apk";
            File file = new File(str);
            if (file.exists() && C2308b.m10116a(this.f8480a, str)) {
                m9931a(bVar.f8515d);
                m9931a(bVar.f8516e);
                this.f8483d.put(bVar.f8513b, bVar);
                m9933b();
                m9942c(bVar.f8513b);
                m9920a(this.f8480a, file);
            } else {
                C2262a m9973a = new C2262a.a().m9972a(bVar.f8512a).m9974b(str).m9973a();
                this.f8489k = C2247a.m9880a(this.f8480a);
                m9973a.m9953a(new C2273m(this, bVar, str));
                this.f8482c.put(bVar.f8513b, bVar);
                this.f8489k.mo9887a(m9973a);
                m9931a(bVar.f8515d);
                C2313g.m10136a(SDKConstants.TAG, "开始下载监控 下载地址：" + bVar.f8512a);
            }
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "startDownloadAd error " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m9930a(String str) {
        C2313g.m10136a(SDKConstants.TAG, "start download ad no trace");
        if (!TextUtils.isEmpty(str)) {
            try {
                String str2 = C2257c.m9908a(this.f8480a) + File.separator + C2310d.m10127a(str) + ".apk";
                File file = new File(str2);
                if (file.exists() && C2308b.m10116a(this.f8480a, str2)) {
                    m9920a(this.f8480a, file);
                } else {
                    this.f8489k = C2247a.m9880a(this.f8480a);
                    C2262a m9973a = new C2262a.a().m9972a(str).m9974b(str2).m9973a();
                    m9973a.m9953a(new C2274n(this, str2));
                    this.f8489k.mo9887a(m9973a);
                    C2313g.m10136a(SDKConstants.TAG, "下载地址：" + str);
                }
            } catch (Exception e) {
                C2313g.m10138b(SDKConstants.TAG, "startDownloadAdNoTrace error " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public synchronized void m9931a(JSONArray jSONArray) {
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    String string = jSONArray.getString(i);
                    C2316j.m10152b(string);
                    C2313g.m10136a(SDKConstants.TAG, "report url: " + string);
                } catch (JSONException e) {
                    C2313g.m10138b(SDKConstants.TAG, "report url: " + e.getMessage());
                }
            }
        } else {
            C2313g.m10136a(SDKConstants.TAG, "monitor: no valid url");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m9933b() {
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            this.f8480a.registerReceiver(this.f8493o, intentFilter);
            C2313g.m10136a(SDKConstants.TAG, "注册广播");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "注册广播");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m9934b(int i) {
        if (this.f8491m.containsKey(Integer.valueOf(i))) {
            this.f8490l.cancel(i);
            this.f8491m.remove(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m9937b(String str) {
        C2313g.m10136a(SDKConstants.TAG, "download finished");
        for (Map.Entry<String, b> entry : this.f8483d.entrySet()) {
            if (str.equals(entry.getValue().f8513b)) {
                entry.getValue().f8519h = 1;
                m9931a(entry.getValue().f8516e);
                C2313g.m10136a(SDKConstants.TAG, "下载完成监控");
            }
        }
        C2313g.m10136a(SDKConstants.TAG, "移除广播 start");
        this.f8481b.removeMessages(0);
        this.f8481b.sendEmptyMessageDelayed(0, 50000L);
    }

    /* renamed from: b */
    private boolean m9938b(Context context) {
        if (context == null) {
            return false;
        }
        return context.getPackageManager().canRequestPackageInstalls();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9939c() {
        try {
            this.f8480a.unregisterReceiver(this.f8493o);
            if (this.f8483d != null) {
                this.f8483d.clear();
            }
            C2313g.m10136a(SDKConstants.TAG, "注销安装广播");
        } catch (Exception e) {
            C2313g.m10138b(SDKConstants.TAG, "注销安装广播 error");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9942c(String str) {
        C2313g.m10136a(SDKConstants.TAG, "start installation");
        for (Map.Entry<String, b> entry : this.f8483d.entrySet()) {
            if (str.equals(entry.getValue().f8513b)) {
                entry.getValue().f8519h = 1;
                m9931a(entry.getValue().f8517f);
                C2313g.m10136a(SDKConstants.TAG, "开始安装监控");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f A[Catch: all -> 0x0072, TryCatch #0 {, blocks: (B:9:0x0007, B:10:0x000c, B:28:0x0014, B:30:0x0017, B:13:0x001e, B:14:0x0055, B:16:0x005f, B:18:0x0063, B:20:0x0067, B:21:0x00a2, B:23:0x00a9, B:12:0x007e, B:26:0x0084, B:33:0x0076), top: B:6:0x0003, inners: #1, #2 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void m9946a(android.content.Context r5, com.iflytek.voiceads.p173d.C2239a r6, java.lang.Object... r7) {
        /*
            r4 = this;
            monitor-enter(r4)
            if (r6 == 0) goto L5
            if (r5 != 0) goto L7
        L5:
            monitor-exit(r4)
            return
        L7:
            java.lang.String r0 = "com.iflytek.voiceads.download.DownloadService"
            java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L72 java.lang.ClassNotFoundException -> L75
            com.iflytek.voiceads.download.d$b r1 = new com.iflytek.voiceads.download.d$b     // Catch: java.lang.Throwable -> L72
            r0 = 0
            r1.<init>(r4, r0)     // Catch: java.lang.Throwable -> L72
            if (r7 == 0) goto L7e
            int r0 = r7.length     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            if (r0 <= 0) goto L7e
            r0 = 0
            r0 = r7[r0]     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8512a = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
        L1e:
            java.lang.String r0 = r1.f8512a     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r0 = com.iflytek.voiceads.utils.C2310d.m10127a(r0)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8513b = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r0 = r6.f8380E     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8514c = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            org.json.JSONObject r0 = r6.f8385J     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r2 = "download_start_urls"
            org.json.JSONArray r0 = r0.optJSONArray(r2)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8515d = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            org.json.JSONObject r0 = r6.f8385J     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r2 = "download_complete_urls"
            org.json.JSONArray r0 = r0.optJSONArray(r2)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8516e = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            org.json.JSONObject r0 = r6.f8385J     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r2 = "install_start_urls"
            org.json.JSONArray r0 = r0.optJSONArray(r2)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8517f = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            org.json.JSONObject r0 = r6.f8385J     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.lang.String r2 = "install_complete_urls"
            org.json.JSONArray r0 = r0.optJSONArray(r2)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8518g = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r0 = 0
            r1.f8519h = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            java.util.HashMap<java.lang.String, com.iflytek.voiceads.download.d$b> r0 = r4.f8482c     // Catch: java.lang.Throwable -> L72
            java.lang.String r2 = r1.f8513b     // Catch: java.lang.Throwable -> L72
            boolean r0 = r0.containsKey(r2)     // Catch: java.lang.Throwable -> L72
            if (r0 != 0) goto L5
            boolean r0 = r4.f8486g     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto La2
            boolean r0 = r5 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto La2
            android.app.Activity r5 = (android.app.Activity) r5     // Catch: java.lang.Throwable -> L72
            com.iflytek.voiceads.download.f r0 = new com.iflytek.voiceads.download.f     // Catch: java.lang.Throwable -> L72
            r0.<init>(r4, r5, r1)     // Catch: java.lang.Throwable -> L72
            r5.runOnUiThread(r0)     // Catch: java.lang.Throwable -> L72
            goto L5
        L72:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        L75:
            r0 = move-exception
            java.lang.String r0 = "IFLY_AD_SDK"
            java.lang.String r1 = "service not found"
            com.iflytek.voiceads.utils.C2313g.m10138b(r0, r1)     // Catch: java.lang.Throwable -> L72
            goto L5
        L7e:
            java.lang.String r0 = r6.f8387L     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            r1.f8512a = r0     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L83
            goto L1e
        L83:
            r0 = move-exception
            java.lang.String r1 = "IFLY_AD_SDK"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72
            r2.<init>()     // Catch: java.lang.Throwable -> L72
            java.lang.String r3 = "parse downExpInfo"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L72
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L72
            com.iflytek.voiceads.utils.C2313g.m10138b(r1, r0)     // Catch: java.lang.Throwable -> L72
            goto L5
        La2:
            r4.m9921a(r1)     // Catch: java.lang.Throwable -> L72
            com.iflytek.voiceads.listener.DialogListener r0 = r4.f8485f     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L5
            com.iflytek.voiceads.listener.DialogListener r0 = r4.f8485f     // Catch: java.lang.Throwable -> L72
            r0.onConfirm()     // Catch: java.lang.Throwable -> L72
            r0 = 0
            r4.f8485f = r0     // Catch: java.lang.Throwable -> L72
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.voiceads.download.C2261d.m9946a(android.content.Context, com.iflytek.voiceads.d.a, java.lang.Object[]):void");
    }

    /* renamed from: a */
    public synchronized void m9947a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                Class.forName("com.iflytek.voiceads.download.DownloadService");
                if (this.f8486g && (context instanceof Activity)) {
                    Activity activity = (Activity) context;
                    activity.runOnUiThread(new RunnableC2268h(this, activity, str));
                } else {
                    m9930a(str);
                    if (this.f8485f != null) {
                        this.f8485f.onConfirm();
                        this.f8485f = null;
                    }
                }
            } catch (ClassNotFoundException e) {
                C2313g.m10138b(SDKConstants.TAG, "service not found");
            }
        }
    }

    /* renamed from: a */
    public void m9948a(DialogListener dialogListener) {
        this.f8485f = dialogListener;
    }

    /* renamed from: a */
    public void m9949a(boolean z) {
        this.f8486g = z;
    }
}
