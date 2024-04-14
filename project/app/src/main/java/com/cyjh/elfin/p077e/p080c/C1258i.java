package com.cyjh.elfin.p077e.p080c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.List;

/* renamed from: com.cyjh.elfin.e.c.i */
/* loaded from: classes.dex */
public final class C1258i {

    /* renamed from: a */
    public static final String[] f4682a = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: c */
    private static C1258i f4683c;

    /* renamed from: b */
    public LocationListener f4684b = new LocationListener() { // from class: com.cyjh.elfin.e.c.i.1
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            if (C1258i.this.f4687f != null) {
                a unused = C1258i.this.f4687f;
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    /* renamed from: d */
    private Context f4685d;

    /* renamed from: e */
    private LocationManager f4686e;

    /* renamed from: f */
    private a f4687f;

    /* renamed from: com.cyjh.elfin.e.c.i$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m5718a();

        /* renamed from: b */
        void m5719b();
    }

    private C1258i(Context context) {
        this.f4685d = context;
    }

    /* renamed from: a */
    private static C1258i m5713a(Context context) {
        if (f4683c == null) {
            f4683c = new C1258i(context);
        }
        return f4683c;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: a */
    private String[] m5714a() {
        String str;
        String[] strArr = {"0.0", "0.0"};
        this.f4686e = (LocationManager) this.f4685d.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        List<String> providers = this.f4686e.getProviders(true);
        if (!providers.contains("gps")) {
            str = providers.contains("network") ? "network" : "gps";
            return strArr;
        }
        String str2 = str;
        Location lastKnownLocation = this.f4686e.getLastKnownLocation(str2);
        if (lastKnownLocation != null) {
            strArr[0] = String.valueOf(lastKnownLocation.getLongitude());
            strArr[1] = String.valueOf(lastKnownLocation.getLatitude());
        }
        this.f4686e.requestLocationUpdates(str2, 3000L, 1.0f, this.f4684b);
        return strArr;
    }

    /* renamed from: a */
    private String[] m5715a(a aVar) {
        this.f4687f = aVar;
        String[] strArr = {"0.0", "0.0"};
        if (Build.VERSION.SDK_INT < 23) {
            return m5714a();
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= f4682a.length) {
                break;
            }
            if (this.f4685d.checkCallingOrSelfPermission(f4682a[i]) == -1) {
                z = true;
                break;
            }
            i++;
        }
        return z ? strArr : m5714a();
    }

    /* renamed from: b */
    private boolean m5716b() {
        for (int i = 0; i < f4682a.length; i++) {
            if (this.f4685d.checkCallingOrSelfPermission(f4682a[i]) == -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private void m5717c() {
        this.f4686e.removeUpdates(this.f4684b);
    }
}
