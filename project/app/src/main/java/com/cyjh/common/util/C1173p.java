package com.cyjh.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.List;

/* renamed from: com.cyjh.common.util.p */
/* loaded from: classes.dex */
public final class C1173p {

    /* renamed from: a */
    public static final String[] f4089a = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};

    /* renamed from: c */
    private static C1173p f4090c;

    /* renamed from: b */
    public LocationListener f4091b = new LocationListener() { // from class: com.cyjh.common.util.p.1
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            if (C1173p.this.f4094f != null) {
                a unused = C1173p.this.f4094f;
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
    private Context f4092d;

    /* renamed from: e */
    private LocationManager f4093e;

    /* renamed from: f */
    private a f4094f;

    /* renamed from: com.cyjh.common.util.p$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m4503a();

        /* renamed from: b */
        void m4504b();
    }

    private C1173p(Context context) {
        this.f4092d = context;
    }

    /* renamed from: a */
    public static C1173p m4498a(Context context) {
        if (f4090c == null) {
            f4090c = new C1173p(context);
        }
        return f4090c;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    private String[] m4499b() {
        String str;
        String[] strArr = {"0.0", "0.0"};
        this.f4093e = (LocationManager) this.f4092d.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        List<String> providers = this.f4093e.getProviders(true);
        if (!providers.contains("gps")) {
            str = providers.contains("network") ? "network" : "gps";
            return strArr;
        }
        String str2 = str;
        Location lastKnownLocation = this.f4093e.getLastKnownLocation(str2);
        if (lastKnownLocation != null) {
            strArr[0] = String.valueOf(lastKnownLocation.getLongitude());
            strArr[1] = String.valueOf(lastKnownLocation.getLatitude());
        }
        this.f4093e.requestLocationUpdates(str2, 3000L, 1.0f, this.f4091b);
        return strArr;
    }

    /* renamed from: c */
    private boolean m4500c() {
        for (int i = 0; i < f4089a.length; i++) {
            if (this.f4092d.checkCallingOrSelfPermission(f4089a[i]) == -1) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    private void m4501d() {
        this.f4093e.removeUpdates(this.f4091b);
    }

    /* renamed from: a */
    public final String[] m4502a() {
        this.f4094f = null;
        String[] strArr = {"0.0", "0.0"};
        if (Build.VERSION.SDK_INT < 23) {
            return m4499b();
        }
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= f4089a.length) {
                break;
            }
            if (this.f4092d.checkCallingOrSelfPermission(f4089a[i]) == -1) {
                z = true;
                break;
            }
            i++;
        }
        return z ? strArr : m4499b();
    }
}
