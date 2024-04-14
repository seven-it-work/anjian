package com.hlzn.socketclient;

import com.hlzn.socketclient.p167f.C2159d;
import com.hlzn.socketclient.service.SocketService;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.hlzn.socketclient.d */
/* loaded from: classes.dex */
public class C2150d extends Timer {

    /* renamed from: a */
    public static final String f8134a = "d";

    /* renamed from: b */
    private String f8135b;

    /* renamed from: c */
    private int f8136c;

    /* renamed from: d */
    private a f8137d = new a(this, 0);

    /* renamed from: e */
    private SocketService f8138e;

    /* renamed from: com.hlzn.socketclient.d$a */
    /* loaded from: classes.dex */
    private class a extends TimerTask {
        private a() {
        }

        /* synthetic */ a(C2150d c2150d, byte b2) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            SocketService socketService = C2150d.this.f8138e;
            if (socketService.f8219b == null || !socketService.f8219b.isConnected()) {
                if (C2150d.this.f8138e.f8228k != null) {
                    C2150d.this.f8138e.f8228k.m9540a(C2150d.this.f8135b);
                    return;
                }
                return;
            }
            C2150d.m9534c(C2150d.this);
            C2159d.m9593b(C2150d.f8134a, "MsgTimeoutTask run --> currentResendCount =" + C2150d.this.f8136c);
            int i = C2150d.this.f8136c;
            SocketService unused = C2150d.this.f8138e;
            if (i > SocketService.m9699b()) {
                try {
                    C2150d.this.f8138e.f8228k.m9540a(String.valueOf(C2150d.this.f8135b));
                } finally {
                    C2150d.this.f8138e.m9733c();
                    C2150d.m9536e(C2150d.this);
                }
            }
        }
    }

    public C2150d(SocketService socketService, String str) {
        this.f8138e = socketService;
        this.f8135b = str;
        schedule(this.f8137d, 1000L, 5000L);
    }

    /* renamed from: c */
    static /* synthetic */ int m9534c(C2150d c2150d) {
        int i = c2150d.f8136c;
        c2150d.f8136c = i + 1;
        return i;
    }

    /* renamed from: e */
    static /* synthetic */ int m9536e(C2150d c2150d) {
        c2150d.f8136c = 0;
        return 0;
    }
}
