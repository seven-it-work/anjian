package com.cyjh.elfin.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1201x;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NetStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f4979a = "android.net.conn.CONNECTIVITY_CHANGE";

    /* renamed from: b */
    private static final String f4980b = "NetStateReceiver";

    /* renamed from: c */
    private static boolean f4981c;

    /* renamed from: d */
    private static int f4982d;

    /* renamed from: e */
    private static ArrayList<InterfaceC1303a> f4983e = new ArrayList<>();

    /* renamed from: f */
    private static BroadcastReceiver f4984f;

    /* renamed from: com.cyjh.elfin.receiver.NetStateReceiver$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1303a {
        /* renamed from: a */
        void mo6109a();

        /* renamed from: b */
        void mo6110b();
    }

    /* renamed from: a */
    private static BroadcastReceiver m6100a() {
        if (f4984f == null) {
            synchronized (NetStateReceiver.class) {
                if (f4984f == null) {
                    f4984f = new NetStateReceiver();
                }
            }
        }
        return f4984f;
    }

    /* renamed from: a */
    public static void m6101a(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f4979a);
        context.getApplicationContext().registerReceiver(m6100a(), intentFilter);
    }

    /* renamed from: a */
    public static void m6102a(InterfaceC1303a interfaceC1303a) {
        if (f4983e == null) {
            f4983e = new ArrayList<>();
        }
        f4983e.add(interfaceC1303a);
    }

    /* renamed from: b */
    public static void m6103b(Context context) {
        if (f4984f != null) {
            try {
                context.getApplicationContext().unregisterReceiver(f4984f);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: b */
    private static void m6104b(InterfaceC1303a interfaceC1303a) {
        if (f4983e == null || !f4983e.contains(interfaceC1303a)) {
            return;
        }
        f4983e.remove(interfaceC1303a);
    }

    /* renamed from: b */
    private static boolean m6105b() {
        return f4981c;
    }

    /* renamed from: c */
    private static int m6106c() {
        return f4982d;
    }

    /* renamed from: c */
    private static void m6107c(Context context) {
        Intent intent = new Intent();
        intent.setAction(f4979a);
        context.sendBroadcast(intent);
    }

    /* renamed from: d */
    private static void m6108d() {
        if (f4983e.isEmpty()) {
            return;
        }
        int size = f4983e.size();
        for (int i = 0; i < size; i++) {
            InterfaceC1303a interfaceC1303a = f4983e.get(i);
            if (interfaceC1303a != null) {
                if (f4981c) {
                    interfaceC1303a.mo6109a();
                } else {
                    interfaceC1303a.mo6110b();
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        f4984f = this;
        if (intent.getAction().equalsIgnoreCase(f4979a)) {
            if (C1201x.m5233a(context)) {
                C1151ad.m4324b(getClass().getName(), "<--- network connected --->");
                f4981c = true;
                f4982d = C1201x.m5234b(context);
            } else {
                C1151ad.m4324b(getClass().getName(), "<--- network disconnected --->");
                f4981c = false;
            }
            if (f4983e.isEmpty()) {
                return;
            }
            int size = f4983e.size();
            for (int i = 0; i < size; i++) {
                InterfaceC1303a interfaceC1303a = f4983e.get(i);
                if (interfaceC1303a != null) {
                    if (f4981c) {
                        interfaceC1303a.mo6109a();
                    } else {
                        interfaceC1303a.mo6110b();
                    }
                }
            }
        }
    }
}
