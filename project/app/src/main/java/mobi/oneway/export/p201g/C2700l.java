package mobi.oneway.export.p201g;

import android.location.Location;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import mobi.oneway.export.p192a.C2642b;

/* renamed from: mobi.oneway.export.g.l */
/* loaded from: classes2.dex */
public class C2700l {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mobi.oneway.export.g.l$a */
    /* loaded from: classes2.dex */
    public enum a {
        lat,
        lon
    }

    /* renamed from: a */
    public static String m12231a() {
        return m12232a(a.lat);
    }

    /* renamed from: a */
    private static String m12232a(a aVar) {
        Location lastKnownLocation;
        try {
            LocationManager locationManager = (LocationManager) C2642b.m11898a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
            if (locationManager.isProviderEnabled("gps") && (lastKnownLocation = locationManager.getLastKnownLocation("gps")) != null) {
                switch (aVar) {
                    case lat:
                        return String.valueOf(lastKnownLocation.getLatitude());
                    case lon:
                        return String.valueOf(lastKnownLocation.getLongitude());
                    default:
                        return "";
                }
            }
            return m12234b(aVar);
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: b */
    public static String m12233b() {
        return m12232a(a.lon);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    /* renamed from: b */
    private static String m12234b(a aVar) {
        double latitude;
        Location lastKnownLocation = ((LocationManager) C2642b.m11898a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).getLastKnownLocation("network");
        if (lastKnownLocation == null) {
            return "";
        }
        switch (aVar) {
            case lat:
                latitude = lastKnownLocation.getLatitude();
                return String.valueOf(latitude);
            case lon:
                latitude = lastKnownLocation.getLongitude();
                return String.valueOf(latitude);
            default:
                return "";
        }
    }
}
