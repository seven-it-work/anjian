package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.umeng.commonsdk.UMConfigure;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;

/* renamed from: com.umeng.commonsdk.proguard.u */
/* loaded from: classes.dex */
public class C2517u {

    /* renamed from: a */
    private static String f9502a = "239.192.152.163";

    /* renamed from: b */
    private static int f9503b = 48809;

    /* renamed from: c */
    private WifiManager.MulticastLock f9504c;

    /* renamed from: d */
    private WifiManager f9505d;

    /* renamed from: e */
    private Context f9506e;

    public C2517u(Context context) {
        if (context != null) {
            this.f9506e = context;
            this.f9505d = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        }
    }

    /* renamed from: a */
    private void m11037a() {
        try {
            if (this.f9505d != null) {
                this.f9504c = this.f9505d.createMulticastLock("multicast.test");
                if (this.f9504c != null) {
                    this.f9504c.acquire();
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public static void m11038a(Context context) {
        String uMIDString = UMConfigure.getUMIDString(context);
        if (TextUtils.isEmpty(uMIDString)) {
            return;
        }
        m11039a(context, uMIDString);
    }

    /* renamed from: a */
    private static void m11039a(Context context, String str) {
        m11040a(context, f9502a, f9503b, str);
    }

    /* renamed from: a */
    private static void m11040a(Context context, String str, int i, String str2) {
        new C2517u(context).m11041a(str, i, str2);
    }

    /* renamed from: a */
    public void m11041a(String str, int i, String str2) {
        MulticastSocket multicastSocket;
        m11037a();
        MulticastSocket multicastSocket2 = null;
        try {
            try {
                multicastSocket = new MulticastSocket(i);
                try {
                    multicastSocket.joinGroup(InetAddress.getByName(str));
                    multicastSocket.setLoopbackMode(true);
                    multicastSocket.send(new DatagramPacket(str2.getBytes(), str2.getBytes().length, InetAddress.getByName(str), i));
                    try {
                        multicastSocket.close();
                    } catch (Exception e) {
                        C2501e.m10904a(this.f9506e, e);
                    }
                    try {
                        if (this.f9504c != null) {
                            this.f9504c.release();
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception e2) {
                    e = e2;
                    multicastSocket2 = multicastSocket;
                    C2501e.m10904a(this.f9506e, e);
                    if (multicastSocket2 != null) {
                        try {
                            multicastSocket2.close();
                        } catch (Exception e3) {
                            C2501e.m10904a(this.f9506e, e3);
                        }
                    }
                    try {
                        if (this.f9504c != null) {
                            this.f9504c.release();
                        }
                    } catch (Exception unused2) {
                    }
                } catch (Throwable th) {
                    th = th;
                    if (multicastSocket != null) {
                        try {
                            multicastSocket.close();
                        } catch (Exception e4) {
                            C2501e.m10904a(this.f9506e, e4);
                        }
                    }
                    try {
                        if (this.f9504c == null) {
                            throw th;
                        }
                        this.f9504c.release();
                        throw th;
                    } catch (Exception unused3) {
                        throw th;
                    }
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
            multicastSocket = null;
        }
    }
}
