package com.p058c.p060b;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.p058c.p062d.C1105a;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.c.b.f */
/* loaded from: classes.dex */
public final class C1100f extends AbstractRunnableC1095a<Location, C1100f> {

    /* renamed from: D */
    private a f3652D;

    /* renamed from: E */
    private a f3653E;

    /* renamed from: F */
    private long f3654F;

    /* renamed from: u */
    private LocationManager f3655u;

    /* renamed from: v */
    private long f3656v = 30000;

    /* renamed from: w */
    private long f3657w = 1000;

    /* renamed from: x */
    private float f3658x = 10.0f;

    /* renamed from: y */
    private float f3659y = 1000.0f;

    /* renamed from: z */
    private int f3660z = 3;

    /* renamed from: A */
    private int f3649A = 0;

    /* renamed from: B */
    private boolean f3650B = false;

    /* renamed from: C */
    private boolean f3651C = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.c.b.f$a */
    /* loaded from: classes.dex */
    public class a extends TimerTask implements LocationListener {
        private a() {
        }

        /* synthetic */ a(C1100f c1100f, byte b2) {
            this();
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            C1105a.m4061b("changed", location);
            C1100f.m3956a(C1100f.this, location);
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            C1105a.m4041a((Object) "onProviderDisabled");
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
            C1105a.m4041a((Object) "onProviderEnabled");
            C1100f.m3956a(C1100f.this, C1100f.this.m3967g());
            C1100f.this.f3655u.removeUpdates(this);
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
            C1105a.m4041a((Object) "onStatusChanged");
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C1100f.m3960c(C1100f.this);
        }
    }

    public C1100f() {
        this.f3565b = Location.class;
        this.f3566c = "device";
    }

    /* renamed from: a */
    private static float m3949a(double d, double d2, double d3, double d4) {
        double radians = Math.toRadians(d3 - d);
        double d5 = radians / 2.0d;
        double radians2 = Math.toRadians(d4 - d2) / 2.0d;
        double sin = (Math.sin(d5) * Math.sin(d5)) + (Math.cos(Math.toRadians(d)) * Math.cos(Math.toRadians(d3)) * Math.sin(radians2) * Math.sin(radians2));
        return ((float) (Math.atan2(Math.sqrt(sin), Math.sqrt(1.0d - sin)) * 2.0d * 3958.75d)) * 1609.0f;
    }

    /* renamed from: a */
    private C1100f m3951a(float f) {
        this.f3659y = f;
        return this;
    }

    /* renamed from: a */
    private C1100f m3952a(int i) {
        this.f3660z = i;
        return this;
    }

    /* renamed from: a */
    private C1100f m3953a(long j) {
        this.f3656v = j;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x011a, code lost:
    
        if (r2 != false) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m3954a(android.location.Location r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p060b.C1100f.m3954a(android.location.Location):void");
    }

    /* renamed from: a */
    private void m3955a(Location location, int i) {
        if (this.f3576m == null) {
            this.f3576m = new C1097c();
        }
        if (location != null) {
            this.f3576m.f3600n = new Date(location.getTime());
        }
        C1097c c1097c = this.f3576m;
        c1097c.f3595i = i;
        c1097c.m3892a().f3604r = 5;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x011a, code lost:
    
        if (r2 != false) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void m3956a(com.p058c.p060b.C1100f r17, android.location.Location r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p058c.p060b.C1100f.m3956a(com.c.b.f, android.location.Location):void");
    }

    /* renamed from: b */
    private C1100f m3958b(float f) {
        this.f3658x = f;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m3959b(Location location) {
        this.f3572i = location;
        m3955a(location, 200);
        m3846a();
    }

    /* renamed from: c */
    static /* synthetic */ void m3960c(C1100f c1100f) {
        if (c1100f.f3653E == null && c1100f.f3652D == null) {
            return;
        }
        C1105a.m4041a((Object) "fail");
        c1100f.f3572i = null;
        c1100f.m3955a((Location) null, C1097c.f3594h);
        c1100f.m3964e();
        c1100f.m3846a();
    }

    /* renamed from: c */
    private boolean m3961c(Location location) {
        return location.getAccuracy() < this.f3659y;
    }

    /* renamed from: d */
    private void m3962d() {
        if (this.f3653E == null && this.f3652D == null) {
            return;
        }
        C1105a.m4041a((Object) "fail");
        this.f3572i = null;
        m3955a((Location) null, C1097c.f3594h);
        m3964e();
        m3846a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    private boolean m3963d(Location location) {
        if (this.f3572i == 0) {
            return true;
        }
        double latitude = ((Location) this.f3572i).getLatitude();
        double longitude = ((Location) this.f3572i).getLongitude();
        double latitude2 = location.getLatitude();
        double longitude2 = location.getLongitude();
        double radians = Math.toRadians(latitude2 - latitude);
        double d = radians / 2.0d;
        double radians2 = Math.toRadians(longitude2 - longitude) / 2.0d;
        double sin = (Math.sin(d) * Math.sin(d)) + (Math.cos(Math.toRadians(latitude)) * Math.cos(Math.toRadians(latitude2)) * Math.sin(radians2) * Math.sin(radians2));
        if (((float) (Math.atan2(Math.sqrt(sin), Math.sqrt(1.0d - sin)) * 2.0d * 3958.75d)) * 1609.0f >= this.f3658x) {
            return true;
        }
        C1105a.m4041a((Object) "duplicate location");
        return false;
    }

    /* renamed from: e */
    private void m3964e() {
        C1105a.m4041a((Object) "stop");
        a aVar = this.f3653E;
        if (aVar != null) {
            this.f3655u.removeUpdates(aVar);
            aVar.cancel();
        }
        a aVar2 = this.f3652D;
        if (aVar2 != null) {
            this.f3655u.removeUpdates(aVar2);
            aVar2.cancel();
        }
        this.f3653E = null;
        this.f3652D = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private boolean m3965e(Location location) {
        if (this.f3572i == 0 || ((Location) this.f3572i).getTime() <= this.f3654F || !((Location) this.f3572i).getProvider().equals("gps") || !location.getProvider().equals("network")) {
            return true;
        }
        C1105a.m4041a((Object) "inferior location");
        return false;
    }

    /* renamed from: f */
    private void m3966f() {
        Location m3967g = m3967g();
        byte b2 = 0;
        Timer timer = new Timer(false);
        if (this.f3650B) {
            C1105a.m4041a((Object) "register net");
            this.f3652D = new a(this, b2);
            this.f3655u.requestLocationUpdates("network", this.f3657w, 0.0f, this.f3652D, Looper.getMainLooper());
            timer.schedule(this.f3652D, this.f3656v);
        }
        if (this.f3651C) {
            C1105a.m4041a((Object) "register gps");
            this.f3653E = new a(this, b2);
            this.f3655u.requestLocationUpdates("gps", this.f3657w, 0.0f, this.f3653E, Looper.getMainLooper());
            timer.schedule(this.f3653E, this.f3656v);
        }
        if (this.f3660z > 1 && m3967g != null) {
            this.f3649A++;
            m3959b(m3967g);
        }
        this.f3654F = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public Location m3967g() {
        Location lastKnownLocation = this.f3655u.getLastKnownLocation("gps");
        Location lastKnownLocation2 = this.f3655u.getLastKnownLocation("network");
        return lastKnownLocation2 == null ? lastKnownLocation : (lastKnownLocation != null && lastKnownLocation.getTime() > lastKnownLocation2.getTime()) ? lastKnownLocation : lastKnownLocation2;
    }

    @Override // com.p058c.p060b.AbstractRunnableC1095a
    /* renamed from: a */
    public final void mo3849a(Context context) {
        this.f3655u = (LocationManager) context.getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        this.f3651C = this.f3655u.isProviderEnabled("gps");
        this.f3650B = this.f3655u.isProviderEnabled("network");
        Location m3967g = m3967g();
        byte b2 = 0;
        Timer timer = new Timer(false);
        if (this.f3650B) {
            C1105a.m4041a((Object) "register net");
            this.f3652D = new a(this, b2);
            this.f3655u.requestLocationUpdates("network", this.f3657w, 0.0f, this.f3652D, Looper.getMainLooper());
            timer.schedule(this.f3652D, this.f3656v);
        }
        if (this.f3651C) {
            C1105a.m4041a((Object) "register gps");
            this.f3653E = new a(this, b2);
            this.f3655u.requestLocationUpdates("gps", this.f3657w, 0.0f, this.f3653E, Looper.getMainLooper());
            timer.schedule(this.f3653E, this.f3656v);
        }
        if (this.f3660z > 1 && m3967g != null) {
            this.f3649A++;
            m3959b(m3967g);
        }
        this.f3654F = System.currentTimeMillis();
    }
}
