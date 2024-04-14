package mobi.oneway.export.p201g;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/* renamed from: mobi.oneway.export.g.n */
/* loaded from: classes2.dex */
public class C2702n {
    /* renamed from: a */
    public static String m12246a(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    /* renamed from: a */
    public static String m12247a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return null;
        }
        if (activeNetworkInfo.getType() != 0) {
            if (activeNetworkInfo.getType() == 1) {
                return m12246a(((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getIpAddress());
            }
            return null;
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }
}
