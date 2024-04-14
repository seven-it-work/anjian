package com.elfin.ad.p121e;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0600m;
import com.android.volley.toolbox.C0629t;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1163f;
import com.cyjh.common.util.C1173p;
import com.cyjh.common.util.C1201x;
import com.cyjh.http.p096c.p099c.C1546c;
import com.elfin.ad.C1717a;
import com.elfin.ad.activity.FullScreenTwoAdActivity;
import com.elfin.ad.bean.response.FengLingAdInfo;
import com.elfin.ad.p118b.C1726a;
import com.elfin.ad.p118b.C1727b;
import com.elfin.ad.p119c.InterfaceC1731a;
import com.elfin.ad.p120d.AbstractC1732a;
import com.elfin.ad.p121e.C1737e;
import com.iflytek.voiceads.IFLYNativeAd;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.config.AdKeys;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.umeng.commonsdk.proguard.C2518v;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* renamed from: com.elfin.ad.e.b */
/* loaded from: classes.dex */
public final class C1734b {

    /* renamed from: b */
    public static final int f6812b = 4;

    /* renamed from: e */
    public static final String f6813e = "http://api-cn.felink.com/v1/rta";

    /* renamed from: l */
    private static final int f6814l = 100;

    /* renamed from: m */
    private static final int f6815m = 101;

    /* renamed from: n */
    private static final int f6816n = 102;

    /* renamed from: o */
    private static final int f6817o = 103;

    /* renamed from: q */
    private static final String f6818q = "AdManager";

    /* renamed from: a */
    public boolean f6819a;

    /* renamed from: c */
    public int f6820c;

    /* renamed from: g */
    FengLingAdInfo f6823g;

    /* renamed from: h */
    NativeDataRef f6824h;

    /* renamed from: i */
    InterfaceC1731a f6825i;

    /* renamed from: j */
    public Activity f6826j;

    /* renamed from: r */
    private int f6829r;

    /* renamed from: s */
    private int f6830s;

    /* renamed from: t */
    private int f6831t;

    /* renamed from: u */
    private int f6832u;

    /* renamed from: w */
    private View f6834w;

    /* renamed from: p */
    private int f6828p = 0;

    /* renamed from: d */
    public int f6821d = 0;

    /* renamed from: f */
    C1737e f6822f = new C1737e();

    /* renamed from: k */
    int f6827k = 100;

    /* renamed from: v */
    private Handler f6833v = new Handler();

    /* renamed from: x */
    private AbstractC1732a f6835x = new AbstractC1732a() { // from class: com.elfin.ad.e.b.2
        @Override // com.iflytek.voiceads.listener.IFLYNativeListener
        public final void onAdFailed(AdError adError) {
            C1151ad.m4325c(C1734b.f6818q, "IFLYADListener --> onAdFailed message=" + adError.getMessage());
            C1734b.this.f6827k = 101;
            C1734b.this.m7941a();
        }

        @Override // com.iflytek.voiceads.listener.IFLYNativeListener
        public final void onAdLoaded(NativeDataRef nativeDataRef) {
            C1151ad.m4325c(C1734b.f6818q, "IFLYADListener --> onAdLoaded");
            C1734b.this.f6824h = nativeDataRef;
            if (C1734b.this.f6825i != null) {
                C1734b.this.f6825i.mo6337a((InterfaceC1731a) C1734b.this.f6824h.getImgUrl());
            }
        }
    };

    /* renamed from: com.elfin.ad.e.b$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 implements InterfaceC1731a<FengLingAdInfo> {
        AnonymousClass3() {
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(FengLingAdInfo fengLingAdInfo) {
            C1734b.this.f6823g = fengLingAdInfo;
            String str = fengLingAdInfo.f6782h.f6790c;
            if (C1734b.this.f6825i != null) {
                C1734b.this.f6825i.mo6337a((InterfaceC1731a) str);
            }
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final void mo6336a() {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo6337a(FengLingAdInfo fengLingAdInfo) {
            FengLingAdInfo fengLingAdInfo2 = fengLingAdInfo;
            C1734b.this.f6823g = fengLingAdInfo2;
            String str = fengLingAdInfo2.f6782h.f6790c;
            if (C1734b.this.f6825i != null) {
                C1734b.this.f6825i.mo6337a((InterfaceC1731a) str);
            }
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final void mo7907a(String str) {
            C1151ad.m4325c(C1734b.f6818q, "getFeLingAdInfoOperate --> error=" + str);
            C1734b.this.f6827k = 102;
            C1734b c1734b = C1734b.this;
            int i = C1734b.this.f6820c;
            Log.d(C1734b.f6818q, "loadBackgroundAd index：" + i);
            boolean m7911a = C1733a.m7908a().m7911a(i);
            C1151ad.m4325c(C1734b.f6818q, "加载后台广告 handleMessage --> isDisplay=" + m7911a);
            if (!m7911a) {
                if (c1734b.f6825i != null) {
                    c1734b.f6825i.mo6337a((InterfaceC1731a) "");
                    return;
                }
                return;
            }
            String str2 = C1733a.m7908a().f6808b != null ? C1733a.m7908a().f6808b.ImageUrl : "";
            C1151ad.m4325c(C1734b.f6818q, "加载后台广告 handleMessage --> imageUrl=" + str2);
            if (c1734b.f6825i != null) {
                c1734b.f6825i.mo6337a((InterfaceC1731a) str2);
            }
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6338b() {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6339b(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.elfin.ad.e.b$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 implements Runnable {
        AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1734b.m7918a(C1734b.this.f6826j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.elfin.ad.e.b$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements C1546c.a {

        /* renamed from: a */
        final /* synthetic */ Context f6841a;

        AnonymousClass6(Context context) {
            this.f6841a = context;
        }

        @Override // com.cyjh.http.p096c.p099c.C1546c.a
        /* renamed from: a */
        public final void mo6086a() {
            C1546c.m6918a().m6927d();
            C1733a.m7908a().m7910a(this.f6841a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.elfin.ad.e.b$a */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<Void, Void, String> {
        private a() {
        }

        /* synthetic */ a(C1734b c1734b, byte b2) {
            this();
        }

        /* renamed from: a */
        private static String m7948a() {
            try {
                return C1163f.m4410b();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        private void m7949a(String str) {
            String str2;
            int i;
            int i2;
            C1734b c1734b = C1734b.this;
            Log.d(C1734b.f6818q, "getFeLingAdInfoOperate");
            C1737e.f6856n = str;
            C1737e c1737e = c1734b.f6822f;
            AnonymousClass3 anonymousClass3 = new AnonymousClass3();
            Context context = C1717a.m7823a().f6726a;
            int i3 = 2;
            c1737e.f6857i = 2;
            c1737e.f6858j = anonymousClass3;
            c1737e.f6859k = context;
            c1737e.f6860l = "http://api-cn.felink.com/v1/rta";
            c1737e.f6861m = C1163f.m4411b(context);
            String str3 = C1737e.f6856n;
            C0600m m1518a = C0629t.m1518a(c1737e.f6859k);
            Context context2 = c1737e.f6859k;
            if (c1737e.f6857i == 2) {
                str2 = "101478";
                i = 640;
                i2 = 960;
            } else {
                str2 = "101477";
                i = 600;
                i2 = 300;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("id", "5e1f6df6cc024c80b7e8b86dc670c100");
            HashMap hashMap3 = new HashMap();
            hashMap3.put("adPid", str2);
            HashMap hashMap4 = new HashMap();
            hashMap4.put("width", Integer.valueOf(i));
            hashMap4.put("height", Integer.valueOf(i2));
            hashMap3.put("banner", hashMap4);
            hashMap3.put("usingHttps", C1737e.m7953a());
            hashMap3.put("isSupportDeeplink", C1737e.m7961b());
            HashMap hashMap5 = new HashMap();
            hashMap5.put("imei", C1147a.m4258b(context2));
            hashMap5.put("androidId", C1147a.m4273g(context2));
            hashMap5.put("ip", str3);
            int m5234b = C1201x.m5234b(context2);
            if (m5234b != -1) {
                switch (m5234b) {
                    case 1:
                        i3 = 1;
                        break;
                    case 2:
                        break;
                    case 3:
                        i3 = 3;
                        break;
                    case 4:
                        i3 = 4;
                        break;
                    default:
                        i3 = 0;
                        break;
                }
            } else {
                i3 = 5;
            }
            hashMap5.put("nt", String.valueOf(i3));
            hashMap5.put("platform", "4");
            hashMap5.put("lan", "zh_CN");
            hashMap5.put("rslt", C1737e.m7954a(context2));
            hashMap5.put("osv", C1147a.m4248a());
            hashMap5.put(C2518v.f9517K, C1147a.m4275h(context2));
            hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
            hashMap5.put(C2518v.f9514H, "480");
            hashMap5.put("mac", C1147a.m4276i(context2));
            hashMap5.put("appVer", C1147a.m4270f(context2));
            hashMap5.put("cc", "CN");
            hashMap5.put("orientation", C1737e.m7963c());
            hashMap5.put("imsi", C1737e.m7962b(context2));
            hashMap5.put("brand", C1737e.m7965d());
            hashMap5.put("dm", C1737e.m7966e());
            hashMap5.put("ua", c1737e.f6861m);
            HashMap hashMap6 = new HashMap();
            String[] m4502a = C1173p.m4498a(context2).m4502a();
            hashMap6.put("lon", m4502a[0]);
            hashMap6.put("lat", m4502a[1]);
            hashMap5.put("geo", hashMap6);
            hashMap.put("site", hashMap2);
            hashMap.put("imp", hashMap3);
            hashMap.put("device", hashMap5);
            JSONObject jSONObject = new JSONObject(hashMap);
            Log.d(C1737e.f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
            m1518a.m1399a((AbstractC0599l) new C1737e.AnonymousClass6(c1737e.f6860l, jSONObject, new C1737e.AnonymousClass4(), new C1737e.AnonymousClass5()));
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(Void[] voidArr) {
            return m7948a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2;
            int i;
            int i2;
            C1734b c1734b = C1734b.this;
            Log.d(C1734b.f6818q, "getFeLingAdInfoOperate");
            C1737e.f6856n = str;
            C1737e c1737e = c1734b.f6822f;
            AnonymousClass3 anonymousClass3 = new AnonymousClass3();
            Context context = C1717a.m7823a().f6726a;
            int i3 = 2;
            c1737e.f6857i = 2;
            c1737e.f6858j = anonymousClass3;
            c1737e.f6859k = context;
            c1737e.f6860l = "http://api-cn.felink.com/v1/rta";
            c1737e.f6861m = C1163f.m4411b(context);
            String str3 = C1737e.f6856n;
            C0600m m1518a = C0629t.m1518a(c1737e.f6859k);
            Context context2 = c1737e.f6859k;
            if (c1737e.f6857i == 2) {
                str2 = "101478";
                i = 640;
                i2 = 960;
            } else {
                str2 = "101477";
                i = 600;
                i2 = 300;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("id", "5e1f6df6cc024c80b7e8b86dc670c100");
            HashMap hashMap3 = new HashMap();
            hashMap3.put("adPid", str2);
            HashMap hashMap4 = new HashMap();
            hashMap4.put("width", Integer.valueOf(i));
            hashMap4.put("height", Integer.valueOf(i2));
            hashMap3.put("banner", hashMap4);
            hashMap3.put("usingHttps", C1737e.m7953a());
            hashMap3.put("isSupportDeeplink", C1737e.m7961b());
            HashMap hashMap5 = new HashMap();
            hashMap5.put("imei", C1147a.m4258b(context2));
            hashMap5.put("androidId", C1147a.m4273g(context2));
            hashMap5.put("ip", str3);
            int m5234b = C1201x.m5234b(context2);
            if (m5234b != -1) {
                switch (m5234b) {
                    case 1:
                        i3 = 1;
                        break;
                    case 2:
                        break;
                    case 3:
                        i3 = 3;
                        break;
                    case 4:
                        i3 = 4;
                        break;
                    default:
                        i3 = 0;
                        break;
                }
            } else {
                i3 = 5;
            }
            hashMap5.put("nt", String.valueOf(i3));
            hashMap5.put("platform", "4");
            hashMap5.put("lan", "zh_CN");
            hashMap5.put("rslt", C1737e.m7954a(context2));
            hashMap5.put("osv", C1147a.m4248a());
            hashMap5.put(C2518v.f9517K, C1147a.m4275h(context2));
            hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
            hashMap5.put(C2518v.f9514H, "480");
            hashMap5.put("mac", C1147a.m4276i(context2));
            hashMap5.put("appVer", C1147a.m4270f(context2));
            hashMap5.put("cc", "CN");
            hashMap5.put("orientation", C1737e.m7963c());
            hashMap5.put("imsi", C1737e.m7962b(context2));
            hashMap5.put("brand", C1737e.m7965d());
            hashMap5.put("dm", C1737e.m7966e());
            hashMap5.put("ua", c1737e.f6861m);
            HashMap hashMap6 = new HashMap();
            String[] m4502a = C1173p.m4498a(context2).m4502a();
            hashMap6.put("lon", m4502a[0]);
            hashMap6.put("lat", m4502a[1]);
            hashMap5.put("geo", hashMap6);
            hashMap.put("site", hashMap2);
            hashMap.put("imp", hashMap3);
            hashMap.put("device", hashMap5);
            JSONObject jSONObject = new JSONObject(hashMap);
            Log.d(C1737e.f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
            m1518a.m1399a((AbstractC0599l) new C1737e.AnonymousClass6(c1737e.f6860l, jSONObject, new C1737e.AnonymousClass4(), new C1737e.AnonymousClass5()));
        }
    }

    public C1734b(Activity activity, View view) {
        this.f6826j = activity;
        this.f6834w = view;
    }

    /* renamed from: a */
    private void m7916a(int i) {
        this.f6827k = i;
    }

    /* renamed from: a */
    private void m7917a(int i, int i2) {
        this.f6829r = i;
        this.f6830s = i2;
    }

    /* renamed from: a */
    public static void m7918a(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        activity.startActivity(intent);
        if (activity.isFinishing()) {
            return;
        }
        activity.finish();
    }

    /* renamed from: a */
    private void m7919a(Context context) {
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5832b = new AnonymousClass6(context);
        m6918a.m6922a(context, 1, 3, C1733a.m7908a().f6808b.f5816Id);
    }

    /* renamed from: a */
    private static /* synthetic */ void m7921a(C1734b c1734b, String str) {
        String str2;
        int i;
        int i2;
        Log.d(f6818q, "getFeLingAdInfoOperate");
        C1737e.f6856n = str;
        C1737e c1737e = c1734b.f6822f;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        Context context = C1717a.m7823a().f6726a;
        int i3 = 2;
        c1737e.f6857i = 2;
        c1737e.f6858j = anonymousClass3;
        c1737e.f6859k = context;
        c1737e.f6860l = "http://api-cn.felink.com/v1/rta";
        c1737e.f6861m = C1163f.m4411b(context);
        String str3 = C1737e.f6856n;
        C0600m m1518a = C0629t.m1518a(c1737e.f6859k);
        Context context2 = c1737e.f6859k;
        if (c1737e.f6857i == 2) {
            str2 = "101478";
            i = 640;
            i2 = 960;
        } else {
            str2 = "101477";
            i = 600;
            i2 = 300;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("id", "5e1f6df6cc024c80b7e8b86dc670c100");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("adPid", str2);
        HashMap hashMap4 = new HashMap();
        hashMap4.put("width", Integer.valueOf(i));
        hashMap4.put("height", Integer.valueOf(i2));
        hashMap3.put("banner", hashMap4);
        hashMap3.put("usingHttps", C1737e.m7953a());
        hashMap3.put("isSupportDeeplink", C1737e.m7961b());
        HashMap hashMap5 = new HashMap();
        hashMap5.put("imei", C1147a.m4258b(context2));
        hashMap5.put("androidId", C1147a.m4273g(context2));
        hashMap5.put("ip", str3);
        int m5234b = C1201x.m5234b(context2);
        if (m5234b != -1) {
            switch (m5234b) {
                case 1:
                    i3 = 1;
                    break;
                case 2:
                    break;
                case 3:
                    i3 = 3;
                    break;
                case 4:
                    i3 = 4;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 5;
        }
        hashMap5.put("nt", String.valueOf(i3));
        hashMap5.put("platform", "4");
        hashMap5.put("lan", "zh_CN");
        hashMap5.put("rslt", C1737e.m7954a(context2));
        hashMap5.put("osv", C1147a.m4248a());
        hashMap5.put(C2518v.f9517K, C1147a.m4275h(context2));
        hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
        hashMap5.put(C2518v.f9514H, "480");
        hashMap5.put("mac", C1147a.m4276i(context2));
        hashMap5.put("appVer", C1147a.m4270f(context2));
        hashMap5.put("cc", "CN");
        hashMap5.put("orientation", C1737e.m7963c());
        hashMap5.put("imsi", C1737e.m7962b(context2));
        hashMap5.put("brand", C1737e.m7965d());
        hashMap5.put("dm", C1737e.m7966e());
        hashMap5.put("ua", c1737e.f6861m);
        HashMap hashMap6 = new HashMap();
        String[] m4502a = C1173p.m4498a(context2).m4502a();
        hashMap6.put("lon", m4502a[0]);
        hashMap6.put("lat", m4502a[1]);
        hashMap5.put("geo", hashMap6);
        hashMap.put("site", hashMap2);
        hashMap.put("imp", hashMap3);
        hashMap.put("device", hashMap5);
        JSONObject jSONObject = new JSONObject(hashMap);
        Log.d(C1737e.f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
        m1518a.m1399a((AbstractC0599l) new C1737e.AnonymousClass6(c1737e.f6860l, jSONObject, new C1737e.AnonymousClass4(), new C1737e.AnonymousClass5()));
    }

    /* renamed from: a */
    private void m7922a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String replace = str.contains(C1737e.f6851d) ? str.replace(C1737e.f6851d, String.valueOf(System.currentTimeMillis())) : str;
        if (str.contains(C1737e.f6852e)) {
            replace = replace.replace(C1737e.f6852e, String.valueOf(this.f6829r));
        }
        if (str.contains(C1737e.f6853f)) {
            replace = replace.replace(C1737e.f6853f, String.valueOf(this.f6830s));
        }
        if (str.contains(C1737e.f6854g)) {
            replace = replace.replace(C1737e.f6854g, String.valueOf(this.f6831t));
        }
        if (str.contains(C1737e.f6855h)) {
            replace = replace.replace(C1737e.f6855h, String.valueOf(this.f6832u));
        }
        C1151ad.m4325c(f6818q, "reportLogInfo --> srcUrl=" + replace);
        C1737e c1737e = this.f6822f;
        Context context = C1717a.m7823a().f6726a;
        InterfaceC1731a<FengLingAdInfo> interfaceC1731a = new InterfaceC1731a<FengLingAdInfo>() { // from class: com.elfin.ad.e.b.1
            /* renamed from: c */
            private static void m7947c() {
                C1151ad.m4325c(C1734b.f6818q, "reportLogInfo --> finish ");
            }

            @Override // com.elfin.ad.p119c.InterfaceC1731a
            /* renamed from: a */
            public final void mo6336a() {
            }

            @Override // com.elfin.ad.p119c.InterfaceC1731a
            /* renamed from: a */
            public final /* synthetic */ void mo6337a(FengLingAdInfo fengLingAdInfo) {
                C1151ad.m4325c(C1734b.f6818q, "reportLogInfo --> finish ");
            }

            @Override // com.elfin.ad.p119c.InterfaceC1731a
            /* renamed from: a */
            public final void mo7907a(String str2) {
                C1151ad.m4325c(C1734b.f6818q, "reportLogInfo --> error=" + str2);
            }

            @Override // com.elfin.ad.p119c.InterfaceC1731a
            /* renamed from: b */
            public final void mo6338b() {
            }

            @Override // com.elfin.ad.p119c.InterfaceC1731a
            /* renamed from: b */
            public final void mo6339b(String str2) {
            }
        };
        c1737e.f6858j = interfaceC1731a;
        Log.d(C1737e.f6848a, "reportLogInfo params -> " + replace);
        C0629t.m1518a(context).m1399a((AbstractC0599l) new C1737e.AnonymousClass3(replace, new C1737e.AnonymousClass1(interfaceC1731a), new C1737e.AnonymousClass2(interfaceC1731a)));
    }

    /* renamed from: a */
    private void m7923a(List<String> list) {
        C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 1");
        if (list == null || list.size() <= 0) {
            return;
        }
        for (String str : list) {
            C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 2 url=" + str);
            m7922a(str);
        }
    }

    /* renamed from: b */
    private String m7925b(String str) {
        String replace = str.contains(C1737e.f6851d) ? str.replace(C1737e.f6851d, String.valueOf(System.currentTimeMillis())) : str;
        if (str.contains(C1737e.f6852e)) {
            replace = replace.replace(C1737e.f6852e, String.valueOf(this.f6829r));
        }
        if (str.contains(C1737e.f6853f)) {
            replace = replace.replace(C1737e.f6853f, String.valueOf(this.f6830s));
        }
        if (str.contains(C1737e.f6854g)) {
            replace = replace.replace(C1737e.f6854g, String.valueOf(this.f6831t));
        }
        return str.contains(C1737e.f6855h) ? replace.replace(C1737e.f6855h, String.valueOf(this.f6832u)) : replace;
    }

    /* renamed from: b */
    private void m7926b(int i) {
        Log.d(f6818q, "loadBackgroundAd index：" + i);
        boolean m7911a = C1733a.m7908a().m7911a(i);
        C1151ad.m4325c(f6818q, "加载后台广告 handleMessage --> isDisplay=" + m7911a);
        if (!m7911a) {
            if (this.f6825i != null) {
                this.f6825i.mo6337a((InterfaceC1731a) "");
                return;
            }
            return;
        }
        String str = C1733a.m7908a().f6808b != null ? C1733a.m7908a().f6808b.ImageUrl : "";
        C1151ad.m4325c(f6818q, "加载后台广告 handleMessage --> imageUrl=" + str);
        if (this.f6825i != null) {
            this.f6825i.mo6337a((InterfaceC1731a) str);
        }
    }

    /* renamed from: b */
    private void m7927b(int i, int i2) {
        this.f6831t = i;
        this.f6832u = i2;
    }

    /* renamed from: b */
    private static /* synthetic */ void m7929b(C1734b c1734b, int i) {
        Log.d(f6818q, "loadBackgroundAd index：" + i);
        boolean m7911a = C1733a.m7908a().m7911a(i);
        C1151ad.m4325c(f6818q, "加载后台广告 handleMessage --> isDisplay=" + m7911a);
        if (!m7911a) {
            if (c1734b.f6825i != null) {
                c1734b.f6825i.mo6337a((InterfaceC1731a) "");
                return;
            }
            return;
        }
        String str = C1733a.m7908a().f6808b != null ? C1733a.m7908a().f6808b.ImageUrl : "";
        C1151ad.m4325c(f6818q, "加载后台广告 handleMessage --> imageUrl=" + str);
        if (c1734b.f6825i != null) {
            c1734b.f6825i.mo6337a((InterfaceC1731a) str);
        }
    }

    /* renamed from: c */
    private void m7931c(String str) {
        String str2;
        int i;
        int i2;
        Log.d(f6818q, "getFeLingAdInfoOperate");
        C1737e.f6856n = str;
        C1737e c1737e = this.f6822f;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        Context context = C1717a.m7823a().f6726a;
        int i3 = 2;
        c1737e.f6857i = 2;
        c1737e.f6858j = anonymousClass3;
        c1737e.f6859k = context;
        c1737e.f6860l = "http://api-cn.felink.com/v1/rta";
        c1737e.f6861m = C1163f.m4411b(context);
        String str3 = C1737e.f6856n;
        C0600m m1518a = C0629t.m1518a(c1737e.f6859k);
        Context context2 = c1737e.f6859k;
        if (c1737e.f6857i == 2) {
            str2 = "101478";
            i = 640;
            i2 = 960;
        } else {
            str2 = "101477";
            i = 600;
            i2 = 300;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("id", "5e1f6df6cc024c80b7e8b86dc670c100");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("adPid", str2);
        HashMap hashMap4 = new HashMap();
        hashMap4.put("width", Integer.valueOf(i));
        hashMap4.put("height", Integer.valueOf(i2));
        hashMap3.put("banner", hashMap4);
        hashMap3.put("usingHttps", C1737e.m7953a());
        hashMap3.put("isSupportDeeplink", C1737e.m7961b());
        HashMap hashMap5 = new HashMap();
        hashMap5.put("imei", C1147a.m4258b(context2));
        hashMap5.put("androidId", C1147a.m4273g(context2));
        hashMap5.put("ip", str3);
        int m5234b = C1201x.m5234b(context2);
        if (m5234b != -1) {
            switch (m5234b) {
                case 1:
                    i3 = 1;
                    break;
                case 2:
                    break;
                case 3:
                    i3 = 3;
                    break;
                case 4:
                    i3 = 4;
                    break;
                default:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 5;
        }
        hashMap5.put("nt", String.valueOf(i3));
        hashMap5.put("platform", "4");
        hashMap5.put("lan", "zh_CN");
        hashMap5.put("rslt", C1737e.m7954a(context2));
        hashMap5.put("osv", C1147a.m4248a());
        hashMap5.put(C2518v.f9517K, C1147a.m4275h(context2));
        hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
        hashMap5.put(C2518v.f9514H, "480");
        hashMap5.put("mac", C1147a.m4276i(context2));
        hashMap5.put("appVer", C1147a.m4270f(context2));
        hashMap5.put("cc", "CN");
        hashMap5.put("orientation", C1737e.m7963c());
        hashMap5.put("imsi", C1737e.m7962b(context2));
        hashMap5.put("brand", C1737e.m7965d());
        hashMap5.put("dm", C1737e.m7966e());
        hashMap5.put("ua", c1737e.f6861m);
        HashMap hashMap6 = new HashMap();
        String[] m4502a = C1173p.m4498a(context2).m4502a();
        hashMap6.put("lon", m4502a[0]);
        hashMap6.put("lat", m4502a[1]);
        hashMap5.put("geo", hashMap6);
        hashMap.put("site", hashMap2);
        hashMap.put("imp", hashMap3);
        hashMap.put("device", hashMap5);
        JSONObject jSONObject = new JSONObject(hashMap);
        Log.d(C1737e.f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
        m1518a.m1399a((AbstractC0599l) new C1737e.AnonymousClass6(c1737e.f6860l, jSONObject, new C1737e.AnonymousClass4(), new C1737e.AnonymousClass5()));
    }

    /* renamed from: f */
    private void m7933f() {
        C1151ad.m4323a(f6818q, "checkReportInfoStatus --> 1");
        C1736d.m7950a();
        List<C1726a> m7951a = C1736d.m7951a("101478");
        if (m7951a != null && m7951a.size() > 0) {
            for (C1726a c1726a : m7951a) {
                if (c1726a != null && c1726a.f6770d > 0) {
                    String str = c1726a.f6768b;
                    if (c1726a.f6771e == 0) {
                        m7922a(str);
                        c1726a.f6771e = 1;
                        c1726a.save();
                        C1151ad.m4323a(f6818q, "checkReportInfoStatus --> 2 url=" + str);
                    }
                }
            }
            C1736d.m7950a();
            C1736d.m7952b("101478");
        }
    }

    /* renamed from: g */
    private void m7934g() {
        this.f6825i = null;
    }

    /* renamed from: h */
    private void m7935h() {
        if (this.f6821d < 4) {
            m7944c();
        } else {
            m7918a(this.f6826j);
        }
    }

    /* renamed from: i */
    private void m7936i() {
        if (this.f6819a) {
            m7918a(this.f6826j);
        }
    }

    /* renamed from: j */
    private boolean m7937j() {
        return this.f6819a;
    }

    /* renamed from: k */
    private void m7938k() {
        int i = this.f6823g.f6777c;
        List<String> list = this.f6823g.f6786l.f6794c;
        C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 1");
        if (list != null && list.size() > 0) {
            for (String str : list) {
                C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 2 url=" + str);
                m7922a(str);
            }
        }
        C1151ad.m4325c(f6818q, "onClickImgFeLingAd -->  actionName=" + i + ",clickUrl=" + this.f6823g.f6785k);
    }

    /* renamed from: l */
    private void m7939l() {
        this.f6824h.onClick(this.f6834w);
        if (this.f6828p == 3) {
            this.f6833v.postDelayed(new AnonymousClass5(), 300L);
        }
    }

    /* renamed from: m */
    private /* synthetic */ void m7940m() {
        this.f6825i.mo6336a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7941a() {
        Log.d(f6818q, "loadFeLingAd");
        new a(this, (byte) 0).executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
    }

    /* renamed from: a */
    public final void m7942a(int i, InterfaceC1731a interfaceC1731a) {
        this.f6820c = i;
        Log.d(f6818q, "loadILFYAd:" + i);
        this.f6827k = 100;
        C1727b m7909a = C1733a.m7908a().m7909a(this.f6820c, AbstractC1732a.f6802f);
        C1151ad.m4325c(f6818q, "loadILFYAd --> ilfyAd.isDisplay =" + m7909a.f6773a);
        this.f6825i = interfaceC1731a;
        if (!m7909a.f6773a) {
            this.f6827k = 101;
            m7941a();
            return;
        }
        try {
            IFLYNativeAd iFLYNativeAd = new IFLYNativeAd(this.f6826j, m7909a.f6774b, this.f6835x);
            iFLYNativeAd.setParameter(AdKeys.APP_VER, C1147a.m4262c(this.f6826j.getApplicationContext()));
            iFLYNativeAd.loadAd();
        } catch (Exception e) {
            e.printStackTrace();
            interfaceC1731a.mo6337a((InterfaceC1731a) null);
        }
    }

    /* renamed from: b */
    public final void m7943b() {
        Log.d(f6818q, "displayAd");
        if (this.f6824h != null) {
            this.f6824h.onExposure(this.f6834w);
            this.f6828p = this.f6824h.getActionType();
        }
        if (this.f6825i != null) {
            this.f6825i.mo6338b();
        }
        this.f6833v.postDelayed(new Runnable(this) { // from class: com.elfin.ad.e.c

            /* renamed from: a */
            private final C1734b f6844a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6844a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6844a.f6825i.mo6336a();
            }
        }, 300L);
    }

    /* renamed from: c */
    public final void m7944c() {
        if (this.f6819a) {
            return;
        }
        this.f6819a = true;
        if (this.f6824h != null) {
            this.f6824h.onClick(this.f6834w);
            if (this.f6828p == 3) {
                this.f6833v.postDelayed(new AnonymousClass5(), 300L);
                return;
            }
            return;
        }
        Activity activity = this.f6826j;
        C1546c m6918a = C1546c.m6918a();
        m6918a.f5832b = new AnonymousClass6(activity);
        m6918a.m6922a(activity, 1, 3, C1733a.m7908a().f6808b.f5816Id);
    }

    /* renamed from: d */
    public final void m7945d() {
        this.f6834w.setVisibility(8);
        if (this.f6827k == 100 && this.f6824h != null) {
            this.f6824h.onClick(this.f6834w);
            return;
        }
        if (this.f6827k != 101) {
            if (this.f6827k == 102) {
                C1546c m6918a = C1546c.m6918a();
                m6918a.f5832b = new C1546c.a() { // from class: com.elfin.ad.e.b.4
                    @Override // com.cyjh.http.p096c.p099c.C1546c.a
                    /* renamed from: a */
                    public final void mo6086a() {
                        C1546c.m6918a().m6927d();
                        C1733a.m7908a().m7910a(C1734b.this.f6826j);
                    }
                };
                m6918a.m6922a(this.f6826j, 1, 3, C1733a.m7908a().f6808b.f5816Id);
                return;
            }
            return;
        }
        int i = this.f6823g.f6777c;
        List<String> list = this.f6823g.f6786l.f6794c;
        C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 1");
        if (list != null && list.size() > 0) {
            for (String str : list) {
                C1151ad.m4325c(f6818q, "reportLogInfo --> targetUrlList 2 url=" + str);
                m7922a(str);
            }
        }
        C1151ad.m4325c(f6818q, "onClickImgFeLingAd -->  actionName=" + i + ",clickUrl=" + this.f6823g.f6785k);
    }

    /* renamed from: e */
    public final void m7946e() {
        this.f6834w = null;
        this.f6826j = null;
        this.f6833v.removeCallbacksAndMessages(null);
        this.f6819a = false;
    }
}
