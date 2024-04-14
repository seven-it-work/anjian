package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.umeng.commonsdk.proguard.g */
/* loaded from: classes.dex */
public class C2503g {

    /* renamed from: a */
    private static final String f9389a = "UMSysLocation";

    /* renamed from: c */
    private static final int f9390c = 10000;

    /* renamed from: b */
    private LocationManager f9391b;

    /* renamed from: e */
    private Context f9393e;

    /* renamed from: g */
    private AbstractC2505i f9395g;

    /* renamed from: d */
    private boolean f9392d = false;

    /* renamed from: f */
    private LocationListener f9394f = new LocationListener() { // from class: com.umeng.commonsdk.proguard.g.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            C2536e.m11329a(C2503g.f9389a, "onLocationChanged");
            try {
                C2503g.this.f9392d = false;
                if (C2503g.this.f9395g != null) {
                    C2503g.this.f9395g.mo10916a(location);
                }
            } catch (Throwable th) {
                C2501e.m10904a(C2503g.this.f9393e, th);
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    private C2503g() {
    }

    public C2503g(Context context) {
        if (context == null) {
            MLog.m11269e("Context参数不能为null");
        } else {
            this.f9393e = context.getApplicationContext();
            this.f9391b = (LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        }
    }

    /* renamed from: a */
    public synchronized void m10912a() {
        C2536e.m11329a(f9389a, "destroy");
        try {
            if (UMUtils.checkPermission(this.f9393e, "android.permission.ACCESS_COARSE_LOCATION") && UMUtils.checkPermission(this.f9393e, "android.permission.ACCESS_FINE_LOCATION")) {
                if (this.f9391b != null) {
                    if (this.f9394f != null) {
                        try {
                            this.f9391b.removeUpdates(this.f9394f);
                        } catch (Throwable unused) {
                        }
                    }
                    this.f9391b = null;
                }
            }
        } catch (Throwable th) {
            C2501e.m10904a(this.f9393e, th);
        }
    }

    /* renamed from: a */
    public synchronized void m10913a(AbstractC2505i abstractC2505i) {
        C2536e.m11329a(f9389a, "getSystemLocation");
        if (abstractC2505i != null && this.f9393e != null) {
            this.f9395g = abstractC2505i;
            if (!UMUtils.checkPermission(this.f9393e, "android.permission.ACCESS_COARSE_LOCATION") || !UMUtils.checkPermission(this.f9393e, "android.permission.ACCESS_FINE_LOCATION")) {
                if (this.f9395g != null) {
                    this.f9395g.mo10916a(null);
                }
                return;
            }
            try {
                this.f9392d = true;
                if (this.f9391b != null && this.f9391b.isProviderEnabled("network")) {
                    C2536e.m11329a(f9389a, "NETWORK_PROVIDER");
                    this.f9391b.requestLocationUpdates("network", 1000L, 0.0f, this.f9394f);
                    final Timer timer = new Timer();
                    timer.schedule(new TimerTask() { // from class: com.umeng.commonsdk.proguard.g.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                C2536e.m11329a(C2503g.f9389a, "NETWORK_PROVIDER runing");
                                if (timer != null) {
                                    timer.cancel();
                                }
                                if (C2503g.this.f9392d) {
                                    if (C2503g.this.f9391b != null && C2503g.this.f9394f != null) {
                                        try {
                                            C2503g.this.f9391b.removeUpdates(C2503g.this.f9394f);
                                        } catch (Throwable unused) {
                                        }
                                    }
                                    if (C2503g.this.f9395g != null) {
                                        C2503g.this.f9395g.mo10916a(null);
                                    }
                                }
                            } catch (Throwable th) {
                                C2501e.m10904a(C2503g.this.f9393e, th);
                            }
                        }
                    }, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                    return;
                }
                if (this.f9391b.isProviderEnabled("gps")) {
                    C2536e.m11329a(f9389a, "GPS_PROVIDER");
                    this.f9391b.requestLocationUpdates("gps", 1000L, 0.0f, this.f9394f);
                    final Timer timer2 = new Timer();
                    timer2.schedule(new TimerTask() { // from class: com.umeng.commonsdk.proguard.g.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            try {
                                C2536e.m11329a(C2503g.f9389a, "GPS_PROVIDER runing");
                                if (timer2 != null) {
                                    timer2.cancel();
                                }
                                if (C2503g.this.f9392d) {
                                    if (C2503g.this.f9391b != null && C2503g.this.f9394f != null) {
                                        try {
                                            C2503g.this.f9391b.removeUpdates(C2503g.this.f9394f);
                                        } catch (Throwable unused) {
                                        }
                                    }
                                    if (C2503g.this.f9395g != null) {
                                        C2503g.this.f9395g.mo10916a(null);
                                    }
                                }
                            } catch (Throwable th) {
                                C2501e.m10904a(C2503g.this.f9393e, th);
                            }
                        }
                    }, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                }
            } catch (Throwable th) {
                C2536e.m11329a(f9389a, "e is " + th);
                if (abstractC2505i != null) {
                    try {
                        abstractC2505i.mo10916a(null);
                    } catch (Throwable th2) {
                        C2501e.m10904a(this.f9393e, th2);
                    }
                }
                C2501e.m10904a(this.f9393e, th);
            }
        }
    }
}
