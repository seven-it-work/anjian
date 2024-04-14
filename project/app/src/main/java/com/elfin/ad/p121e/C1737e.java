package com.elfin.ad.p121e;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.webkit.WebView;
import com.android.volley.AbstractC0599l;
import com.android.volley.C0600m;
import com.android.volley.C0601n;
import com.android.volley.C0606s;
import com.android.volley.toolbox.C0623n;
import com.android.volley.toolbox.C0628s;
import com.android.volley.toolbox.C0629t;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1163f;
import com.cyjh.common.util.C1173p;
import com.cyjh.common.util.C1201x;
import com.elfin.ad.bean.response.FengLingAdInfo;
import com.elfin.ad.p119c.InterfaceC1731a;
import com.github.kevinsawicki.http.HttpRequest;
import com.umeng.commonsdk.proguard.C2518v;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.p246g.InterfaceC3057b;
import org.slf4j.Marker;

/* renamed from: com.elfin.ad.e.e */
/* loaded from: classes.dex */
public class C1737e {

    /* renamed from: a */
    static final String f6848a = "e";

    /* renamed from: b */
    public static final int f6849b = 1;

    /* renamed from: c */
    public static final int f6850c = 2;

    /* renamed from: d */
    public static final String f6851d = "__EVENT_TIME__";

    /* renamed from: e */
    public static final String f6852e = "__CLICK_DOWN_X__";

    /* renamed from: f */
    public static final String f6853f = "_CLICK_DOWN_Y__";

    /* renamed from: g */
    public static final String f6854g = "__CLICK_UP_X__";

    /* renamed from: h */
    public static final String f6855h = "__CLICK_UP_Y__";

    /* renamed from: n */
    public static String f6856n = "0.0.0.0";

    /* renamed from: i */
    int f6857i;

    /* renamed from: j */
    InterfaceC1731a<FengLingAdInfo> f6858j;

    /* renamed from: k */
    Context f6859k;

    /* renamed from: l */
    String f6860l;

    /* renamed from: m */
    String f6861m;

    /* renamed from: com.elfin.ad.e.e$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements C0601n.b<String> {

        /* renamed from: a */
        final /* synthetic */ InterfaceC1731a f6862a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass1(InterfaceC1731a interfaceC1731a) {
            this.f6862a = interfaceC1731a;
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(String str) {
            Log.d(C1737e.f6848a, "onResponse -> " + str.toString());
            try {
                if (!"OK".equals(str)) {
                    this.f6862a.mo7907a("请求数据失败！");
                } else {
                    this.f6862a.mo6337a((InterfaceC1731a) new FengLingAdInfo());
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f6862a.mo7907a("解析数据失败！");
            }
        }

        @Override // com.android.volley.C0601n.b
        /* renamed from: a */
        public final /* synthetic */ void mo1408a(String str) {
            String str2 = str;
            Log.d(C1737e.f6848a, "onResponse -> " + str2.toString());
            try {
                if (!"OK".equals(str2)) {
                    this.f6862a.mo7907a("请求数据失败！");
                } else {
                    this.f6862a.mo6337a((InterfaceC1731a) new FengLingAdInfo());
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f6862a.mo7907a("解析数据失败！");
            }
        }
    }

    /* renamed from: com.elfin.ad.e.e$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements C0601n.a {

        /* renamed from: a */
        final /* synthetic */ InterfaceC1731a f6864a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2(InterfaceC1731a interfaceC1731a) {
            this.f6864a = interfaceC1731a;
        }

        @Override // com.android.volley.C0601n.a
        /* renamed from: a */
        public final void mo1407a(C0606s c0606s) {
            Log.e(C1737e.f6848a, c0606s.getMessage(), c0606s);
            this.f6864a.mo7907a(c0606s.getMessage());
        }
    }

    /* renamed from: com.elfin.ad.e.e$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 extends C0628s {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass3(String str, C0601n.b bVar, C0601n.a aVar) {
            super(str, bVar, aVar);
        }

        @Override // com.android.volley.AbstractC0599l
        /* renamed from: b */
        public final Map<String, String> mo1383b() {
            HashMap hashMap = new HashMap();
            hashMap.put("Charset", "UTF-8");
            hashMap.put("Content-Type", "application/x-javascript");
            hashMap.put(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip,deflate");
            hashMap.put("User-Agent", C1737e.this.f6861m);
            return hashMap;
        }
    }

    /* renamed from: com.elfin.ad.e.e$4, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass4 implements C0601n.b<JSONObject> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass4() {
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(JSONObject jSONObject) {
            Log.d(C1737e.f6848a, "onResponse -> " + jSONObject.toString());
            try {
                if (jSONObject.getInt("code") != 0) {
                    C1737e.this.f6858j.mo7907a("请求数据失败！");
                    return;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("ads");
                FengLingAdInfo fengLingAdInfo = new FengLingAdInfo();
                if (jSONArray.length() <= 0) {
                    C1737e.this.f6858j.mo7907a("无有效广告数据！");
                    return;
                }
                JSONObject jSONObject2 = (JSONObject) jSONArray.get(0);
                fengLingAdInfo.f6775a = jSONObject2.getInt("creativeType");
                fengLingAdInfo.f6776b = jSONObject2.getInt("drawType");
                fengLingAdInfo.f6777c = jSONObject2.getInt("actionName");
                fengLingAdInfo.f6778d = jSONObject2.getInt("width");
                fengLingAdInfo.f6779e = jSONObject2.getInt("height");
                fengLingAdInfo.f6780f = jSONObject2.getString("title");
                fengLingAdInfo.f6781g = jSONObject2.getInt("rating");
                JSONObject jSONObject3 = (JSONObject) jSONObject2.getJSONArray("imgs").get(0);
                fengLingAdInfo.getClass();
                FengLingAdInfo.C1729a c1729a = new FengLingAdInfo.C1729a();
                c1729a.f6788a = jSONObject3.getInt("height");
                c1729a.f6789b = jSONObject3.getInt("width");
                c1729a.f6790c = jSONObject3.getString("src");
                fengLingAdInfo.f6782h = c1729a;
                fengLingAdInfo.f6783i = jSONObject2.getString("adPlatformIcon");
                fengLingAdInfo.f6784j = jSONObject2.getInt("adId");
                fengLingAdInfo.f6785k = jSONObject2.getString("clickUrl");
                JSONObject jSONObject4 = jSONObject2.getJSONObject("webTracks");
                fengLingAdInfo.getClass();
                FengLingAdInfo.C1730b c1730b = new FengLingAdInfo.C1730b();
                c1730b.f6792a = jSONObject4.getInt(InterfaceC3057b.c.f11209c);
                JSONArray jSONArray2 = jSONObject4.getJSONArray("imptrackUrls");
                if (jSONArray2.length() > 0) {
                    c1730b.f6793b = C1162e.m4373a(jSONArray2);
                }
                JSONArray jSONArray3 = jSONObject4.getJSONArray("ctrackUrls");
                if (jSONArray3.length() > 0) {
                    c1730b.f6794c = C1162e.m4373a(jSONArray3);
                }
                JSONArray jSONArray4 = jSONObject4.getJSONArray("dstrackUrls");
                if (jSONArray4.length() > 0) {
                    c1730b.f6795d = C1162e.m4373a(jSONArray4);
                }
                JSONArray jSONArray5 = jSONObject4.getJSONArray("istrackUrls");
                if (jSONArray5.length() > 0) {
                    c1730b.f6796e = C1162e.m4373a(jSONArray5);
                }
                fengLingAdInfo.f6786l = c1730b;
                fengLingAdInfo.f6787m = jSONObject2.getInt("adPlatformId");
                C1737e.this.f6858j.mo6337a((InterfaceC1731a) fengLingAdInfo);
            } catch (Exception e) {
                e.printStackTrace();
                C1737e.this.f6858j.mo7907a("解析数据失败！");
            }
        }

        @Override // com.android.volley.C0601n.b
        /* renamed from: a */
        public final /* synthetic */ void mo1408a(JSONObject jSONObject) {
            JSONObject jSONObject2 = jSONObject;
            Log.d(C1737e.f6848a, "onResponse -> " + jSONObject2.toString());
            try {
                if (jSONObject2.getInt("code") != 0) {
                    C1737e.this.f6858j.mo7907a("请求数据失败！");
                    return;
                }
                JSONArray jSONArray = jSONObject2.getJSONArray("ads");
                FengLingAdInfo fengLingAdInfo = new FengLingAdInfo();
                if (jSONArray.length() <= 0) {
                    C1737e.this.f6858j.mo7907a("无有效广告数据！");
                    return;
                }
                JSONObject jSONObject3 = (JSONObject) jSONArray.get(0);
                fengLingAdInfo.f6775a = jSONObject3.getInt("creativeType");
                fengLingAdInfo.f6776b = jSONObject3.getInt("drawType");
                fengLingAdInfo.f6777c = jSONObject3.getInt("actionName");
                fengLingAdInfo.f6778d = jSONObject3.getInt("width");
                fengLingAdInfo.f6779e = jSONObject3.getInt("height");
                fengLingAdInfo.f6780f = jSONObject3.getString("title");
                fengLingAdInfo.f6781g = jSONObject3.getInt("rating");
                JSONObject jSONObject4 = (JSONObject) jSONObject3.getJSONArray("imgs").get(0);
                fengLingAdInfo.getClass();
                FengLingAdInfo.C1729a c1729a = new FengLingAdInfo.C1729a();
                c1729a.f6788a = jSONObject4.getInt("height");
                c1729a.f6789b = jSONObject4.getInt("width");
                c1729a.f6790c = jSONObject4.getString("src");
                fengLingAdInfo.f6782h = c1729a;
                fengLingAdInfo.f6783i = jSONObject3.getString("adPlatformIcon");
                fengLingAdInfo.f6784j = jSONObject3.getInt("adId");
                fengLingAdInfo.f6785k = jSONObject3.getString("clickUrl");
                JSONObject jSONObject5 = jSONObject3.getJSONObject("webTracks");
                fengLingAdInfo.getClass();
                FengLingAdInfo.C1730b c1730b = new FengLingAdInfo.C1730b();
                c1730b.f6792a = jSONObject5.getInt(InterfaceC3057b.c.f11209c);
                JSONArray jSONArray2 = jSONObject5.getJSONArray("imptrackUrls");
                if (jSONArray2.length() > 0) {
                    c1730b.f6793b = C1162e.m4373a(jSONArray2);
                }
                JSONArray jSONArray3 = jSONObject5.getJSONArray("ctrackUrls");
                if (jSONArray3.length() > 0) {
                    c1730b.f6794c = C1162e.m4373a(jSONArray3);
                }
                JSONArray jSONArray4 = jSONObject5.getJSONArray("dstrackUrls");
                if (jSONArray4.length() > 0) {
                    c1730b.f6795d = C1162e.m4373a(jSONArray4);
                }
                JSONArray jSONArray5 = jSONObject5.getJSONArray("istrackUrls");
                if (jSONArray5.length() > 0) {
                    c1730b.f6796e = C1162e.m4373a(jSONArray5);
                }
                fengLingAdInfo.f6786l = c1730b;
                fengLingAdInfo.f6787m = jSONObject3.getInt("adPlatformId");
                C1737e.this.f6858j.mo6337a((InterfaceC1731a) fengLingAdInfo);
            } catch (Exception e) {
                e.printStackTrace();
                C1737e.this.f6858j.mo7907a("解析数据失败！");
            }
        }
    }

    /* renamed from: com.elfin.ad.e.e$5, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass5 implements C0601n.a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass5() {
        }

        @Override // com.android.volley.C0601n.a
        /* renamed from: a */
        public final void mo1407a(C0606s c0606s) {
            Log.e(C1737e.f6848a, c0606s.getMessage(), c0606s);
            C1737e.this.f6858j.mo7907a(c0606s.getMessage());
        }
    }

    /* renamed from: com.elfin.ad.e.e$6, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass6 extends C0623n {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass6(String str, JSONObject jSONObject, C0601n.b bVar, C0601n.a aVar) {
            super(1, str, jSONObject, bVar, aVar);
        }

        @Override // com.android.volley.AbstractC0599l
        /* renamed from: b */
        public final Map<String, String> mo1383b() {
            HashMap hashMap = new HashMap();
            hashMap.put(HttpRequest.HEADER_ACCEPT, "application/json");
            hashMap.put("Content-Type", "application/json; charset=UTF-8");
            hashMap.put("User-Agent", C1737e.this.f6861m);
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m7953a() {
        return "true";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m7954a(Context context) {
        return C1147a.m4247a(context).x + Marker.ANY_MARKER + C1147a.m4247a(context).y;
    }

    /* renamed from: a */
    private Map<String, Object> m7956a(Context context, int i, String str) {
        String str2;
        int i2;
        int i3;
        int i4 = 2;
        if (i == 2) {
            str2 = "101478";
            i2 = 640;
            i3 = 960;
        } else {
            str2 = "101477";
            i2 = 600;
            i3 = 300;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("id", "5e1f6df6cc024c80b7e8b86dc670c100");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("adPid", str2);
        HashMap hashMap4 = new HashMap();
        hashMap4.put("width", Integer.valueOf(i2));
        hashMap4.put("height", Integer.valueOf(i3));
        hashMap3.put("banner", hashMap4);
        hashMap3.put("usingHttps", "true");
        hashMap3.put("isSupportDeeplink", "false");
        HashMap hashMap5 = new HashMap();
        hashMap5.put("imei", C1147a.m4258b(context));
        hashMap5.put("androidId", C1147a.m4273g(context));
        hashMap5.put("ip", str);
        int m5234b = C1201x.m5234b(context);
        if (m5234b != -1) {
            switch (m5234b) {
                case 1:
                    i4 = 1;
                    break;
                case 2:
                    break;
                case 3:
                    i4 = 3;
                    break;
                case 4:
                    i4 = 4;
                    break;
                default:
                    i4 = 0;
                    break;
            }
        } else {
            i4 = 5;
        }
        hashMap5.put("nt", String.valueOf(i4));
        hashMap5.put("platform", "4");
        hashMap5.put("lan", "zh_CN");
        hashMap5.put("rslt", C1147a.m4247a(context).x + Marker.ANY_MARKER + C1147a.m4247a(context).y);
        hashMap5.put("osv", C1147a.m4248a());
        hashMap5.put(C2518v.f9517K, C1147a.m4275h(context));
        hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
        hashMap5.put(C2518v.f9514H, "480");
        hashMap5.put("mac", C1147a.m4276i(context));
        hashMap5.put("appVer", C1147a.m4270f(context));
        hashMap5.put("cc", "CN");
        hashMap5.put("orientation", "1");
        hashMap5.put("imsi", ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0 ? ((TelephonyManager) context.getSystemService("phone")).getSubscriberId() : "");
        hashMap5.put("brand", m7965d());
        hashMap5.put("dm", m7966e());
        hashMap5.put("ua", this.f6861m);
        HashMap hashMap6 = new HashMap();
        String[] m4502a = C1173p.m4498a(context).m4502a();
        hashMap6.put("lon", m4502a[0]);
        hashMap6.put("lat", m4502a[1]);
        hashMap5.put("geo", hashMap6);
        hashMap.put("site", hashMap2);
        hashMap.put("imp", hashMap3);
        hashMap.put("device", hashMap5);
        return hashMap;
    }

    /* renamed from: a */
    private void m7957a(Context context, String str, InterfaceC1731a<FengLingAdInfo> interfaceC1731a) {
        this.f6858j = interfaceC1731a;
        Log.d(f6848a, "reportLogInfo params -> " + str);
        C0629t.m1518a(context).m1399a((AbstractC0599l) new AnonymousClass3(str, new AnonymousClass1(interfaceC1731a), new AnonymousClass2(interfaceC1731a)));
    }

    /* renamed from: a */
    private void m7958a(InterfaceC1731a<FengLingAdInfo> interfaceC1731a, Context context, String str) {
        String str2;
        int i;
        int i2;
        int i3 = 2;
        this.f6857i = 2;
        this.f6858j = interfaceC1731a;
        this.f6859k = context;
        this.f6860l = str;
        this.f6861m = C1163f.m4411b(context);
        String str3 = f6856n;
        C0600m m1518a = C0629t.m1518a(this.f6859k);
        Context context2 = this.f6859k;
        if (this.f6857i == 2) {
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
        hashMap3.put("usingHttps", "true");
        hashMap3.put("isSupportDeeplink", "false");
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
        hashMap5.put("rslt", C1147a.m4247a(context2).x + Marker.ANY_MARKER + C1147a.m4247a(context2).y);
        hashMap5.put("osv", C1147a.m4248a());
        hashMap5.put(C2518v.f9517K, C1147a.m4275h(context2));
        hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
        hashMap5.put(C2518v.f9514H, "480");
        hashMap5.put("mac", C1147a.m4276i(context2));
        hashMap5.put("appVer", C1147a.m4270f(context2));
        hashMap5.put("cc", "CN");
        hashMap5.put("orientation", "1");
        hashMap5.put("imsi", ActivityCompat.checkSelfPermission(context2, "android.permission.READ_PHONE_STATE") == 0 ? ((TelephonyManager) context2.getSystemService("phone")).getSubscriberId() : "");
        hashMap5.put("brand", m7965d());
        hashMap5.put("dm", m7966e());
        hashMap5.put("ua", this.f6861m);
        HashMap hashMap6 = new HashMap();
        String[] m4502a = C1173p.m4498a(context2).m4502a();
        hashMap6.put("lon", m4502a[0]);
        hashMap6.put("lat", m4502a[1]);
        hashMap5.put("geo", hashMap6);
        hashMap.put("site", hashMap2);
        hashMap.put("imp", hashMap3);
        hashMap.put("device", hashMap5);
        JSONObject jSONObject = new JSONObject(hashMap);
        Log.d(f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
        m1518a.m1399a((AbstractC0599l) new AnonymousClass6(this.f6860l, jSONObject, new AnonymousClass4(), new AnonymousClass5()));
    }

    /* renamed from: a */
    private void m7959a(String str) {
        String str2;
        int i;
        int i2;
        C0600m m1518a = C0629t.m1518a(this.f6859k);
        Context context = this.f6859k;
        int i3 = 2;
        if (this.f6857i == 2) {
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
        hashMap3.put("usingHttps", "true");
        hashMap3.put("isSupportDeeplink", "false");
        HashMap hashMap5 = new HashMap();
        hashMap5.put("imei", C1147a.m4258b(context));
        hashMap5.put("androidId", C1147a.m4273g(context));
        hashMap5.put("ip", str);
        int m5234b = C1201x.m5234b(context);
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
        hashMap5.put("rslt", C1147a.m4247a(context).x + Marker.ANY_MARKER + C1147a.m4247a(context).y);
        hashMap5.put("osv", C1147a.m4248a());
        hashMap5.put(C2518v.f9517K, C1147a.m4275h(context));
        hashMap5.put("sendtime", String.valueOf(System.currentTimeMillis()));
        hashMap5.put(C2518v.f9514H, "480");
        hashMap5.put("mac", C1147a.m4276i(context));
        hashMap5.put("appVer", C1147a.m4270f(context));
        hashMap5.put("cc", "CN");
        hashMap5.put("orientation", "1");
        hashMap5.put("imsi", ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0 ? ((TelephonyManager) context.getSystemService("phone")).getSubscriberId() : "");
        hashMap5.put("brand", m7965d());
        hashMap5.put("dm", m7966e());
        hashMap5.put("ua", this.f6861m);
        HashMap hashMap6 = new HashMap();
        String[] m4502a = C1173p.m4498a(context).m4502a();
        hashMap6.put("lon", m4502a[0]);
        hashMap6.put("lat", m4502a[1]);
        hashMap5.put("geo", hashMap6);
        hashMap.put("site", hashMap2);
        hashMap.put("imp", hashMap3);
        hashMap.put("device", hashMap5);
        JSONObject jSONObject = new JSONObject(hashMap);
        Log.d(f6848a, "getFengLingAdInfo params -> " + jSONObject.toString());
        m1518a.m1399a((AbstractC0599l) new AnonymousClass6(this.f6860l, jSONObject, new AnonymousClass4(), new AnonymousClass5()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m7961b() {
        return "false";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static String m7962b(Context context) {
        return ActivityCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0 ? "" : ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static String m7963c() {
        return "1";
    }

    /* renamed from: c */
    private static String m7964c(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static String m7965d() {
        try {
            return Build.BRAND;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static String m7966e() {
        try {
            return Build.MODEL;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: g */
    private static String m7968g() {
        return Locale.getDefault().getLanguage();
    }
}
