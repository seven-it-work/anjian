package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.os.Build;
import com.umeng.analytics.pro.C2427b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2506j;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.umeng.commonsdk.proguard.c */
/* loaded from: classes.dex */
public class C2499c implements UMLogDataProtocol {

    /* renamed from: b */
    private static final String f9384b = "info";

    /* renamed from: c */
    private static final String f9385c = "stat";

    /* renamed from: a */
    private Context f9386a;

    public C2499c(Context context) {
        if (context != null) {
            this.f9386a = context.getApplicationContext();
        }
    }

    /* renamed from: a */
    private static void m10880a(Context context) {
        WifiInfo m10925c;
        if (context == null || (m10925c = C2506j.m10925c(context)) == null) {
            return;
        }
        C2506j.c cVar = new C2506j.c();
        cVar.f9415a = m10925c.describeContents();
        cVar.f9416b = m10925c.getBSSID();
        cVar.f9417c = m10925c.getSSID();
        cVar.f9418d = Build.VERSION.SDK_INT >= 21 ? m10925c.getFrequency() : -1;
        boolean z = false;
        if (m10925c.getHiddenSSID()) {
            cVar.f9419e = 1;
        } else {
            cVar.f9419e = 0;
        }
        cVar.f9420f = m10925c.getIpAddress();
        cVar.f9421g = m10925c.getLinkSpeed();
        cVar.f9422h = DeviceConfig.getMac(context);
        cVar.f9423i = m10925c.getNetworkId();
        cVar.f9424j = m10925c.getRssi();
        cVar.f9425k = C2506j.m10935g(context);
        cVar.f9426l = System.currentTimeMillis();
        if (m10925c != null) {
            try {
                JSONArray m10972b = C2510n.m10972b(context);
                if (m10972b != null && m10972b.length() > 0) {
                    int i = 0;
                    while (true) {
                        if (i < m10972b.length()) {
                            String optString = m10972b.optJSONObject(i).optString("ssid", null);
                            if (optString != null && optString.equals(cVar.f9417c)) {
                                z = true;
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                }
                if (z) {
                    return;
                }
                C2510n.m10970a(context, cVar);
            } catch (Exception e) {
                C2536e.m11350e("wifiChange:" + e.getMessage());
            }
        }
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void removeCacheData(Object obj) {
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public JSONObject setupReportData(long j) {
        return null;
    }

    @Override // com.umeng.commonsdk.framework.UMLogDataProtocol
    public void workEvent(Object obj, int i) {
        C2536e.m11329a("walle", "[internal] workEvent");
        switch (i) {
            case C2455a.f9244e /* 32769 */:
                try {
                    C2536e.m11329a("walle", "[internal] workEvent send envelope");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(C2518v.f9550aq, C2455a.f9243d);
                    JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(this.f9386a, jSONObject, C2500d.m10889d(this.f9386a));
                    if (buildEnvelopeWithExtHeader == null || buildEnvelopeWithExtHeader.has(C2427b.f8975ao)) {
                        return;
                    }
                    C2536e.m11329a("walle", "[internal] workEvent send envelope back, result is ok");
                    C2506j.m10934f(this.f9386a);
                    C2514r.m11008d(this.f9386a);
                    return;
                } catch (Exception e) {
                    C2501e.m10904a(this.f9386a, e);
                    return;
                }
            case C2455a.f9245f /* 32770 */:
                try {
                    C2536e.m11329a("walle", "[internal] workEvent cache location, event is " + obj.toString());
                    SharedPreferences sharedPreferences = this.f9386a.getSharedPreferences(C2504h.f9401a, 0);
                    if (sharedPreferences == null) {
                        return;
                    }
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(C2504h.f9402b, obj.toString());
                    edit.commit();
                    return;
                } catch (Exception e2) {
                    C2501e.m10904a(this.f9386a, e2);
                    return;
                }
            case C2455a.f9246g /* 32771 */:
                try {
                    C2536e.m11329a("walle", "[internal] workEvent cache battery, event is " + obj.toString());
                    C2515s.m11022b(this.f9386a, obj.toString());
                    return;
                } catch (Exception e3) {
                    C2501e.m10904a(this.f9386a, e3);
                    return;
                }
            case C2455a.f9247h /* 32772 */:
                try {
                    C2536e.m11329a("walle", "[internal] workEvent cache station, event is " + obj.toString());
                    C2515s.m11020a(this.f9386a, obj.toString());
                    return;
                } catch (Exception e4) {
                    C2501e.m10904a(this.f9386a, e4);
                    return;
                }
            case C2455a.f9248i /* 32773 */:
                C2510n.m10969a(this.f9386a, (C2506j.b) obj);
                return;
            case C2455a.f9249j /* 32774 */:
                try {
                    m10880a(this.f9386a);
                    return;
                } catch (Exception e5) {
                    C2536e.m11350e("UM_INTERNAL_CACHE_WIFICHANGE_KEY:" + e5.getMessage());
                    C2501e.m10904a(this.f9386a, e5);
                    return;
                }
            case C2455a.f9250k /* 32775 */:
                C2510n.m10971a(this.f9386a, (String) obj);
                return;
            case C2455a.f9251l /* 32776 */:
                SharedPreferences sharedPreferences2 = this.f9386a.getApplicationContext().getSharedPreferences(f9384b, 0);
                if (sharedPreferences2 != null) {
                    sharedPreferences2.edit().putString(f9385c, (String) obj).commit();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
