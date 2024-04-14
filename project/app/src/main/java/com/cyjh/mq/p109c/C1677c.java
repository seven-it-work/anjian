package com.cyjh.mq.p109c;

import android.content.Context;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.HandlerThread;
import com.cyjh.mobileanjian.ipc.interfaces.AppQuitListener;
import com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver;
import com.cyjh.mobileanjian.ipc.share.proto.C1613b;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.cyjh.mq.c.c */
/* loaded from: classes.dex */
public final class C1677c implements AppQuitListener {

    /* renamed from: b */
    private static final int f6544b = 10092;

    /* renamed from: f */
    private Context f6549f;

    /* renamed from: c */
    private ServerSocket f6546c = null;

    /* renamed from: d */
    private LocalServerSocket f6547d = null;

    /* renamed from: e */
    private C1676b f6548e = null;

    /* renamed from: g */
    private boolean f6550g = false;

    /* renamed from: a */
    public List<EngineStateObserver> f6545a = new ArrayList();

    public C1677c(Context context) {
        this.f6549f = null;
        this.f6549f = context;
    }

    /* renamed from: a */
    private void m7641a(EngineStateObserver engineStateObserver) {
        this.f6545a.add(engineStateObserver);
    }

    /* renamed from: b */
    private void m7644b(EngineStateObserver engineStateObserver) {
        this.f6545a.remove(engineStateObserver);
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.cyjh.mq.c.c$1] */
    /* renamed from: a */
    public final void m7648a(String str, int i) {
        while (this.f6546c == null) {
            try {
                this.f6546c = new ServerSocket(i);
            } catch (IOException e) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                e.printStackTrace();
            }
        }
        try {
            new HandlerThread("server socket thread") { // from class: com.cyjh.mq.c.c.1
                @Override // android.os.HandlerThread
                protected final void onLooperPrepared() {
                    super.onLooperPrepared();
                    while (!C1677c.this.f6550g) {
                        try {
                            Socket accept = C1677c.this.f6546c.accept();
                            if (C1677c.this.f6548e == null || !C1677c.this.f6548e.f6520b) {
                                C1677c.this.f6548e = new C1676b(C1677c.this.f6549f, accept);
                                C1677c.this.f6548e.f6525g = C1677c.this.f6545a;
                                C1677c.this.f6548e.m7638b();
                            } else {
                                accept.close();
                            }
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    C1677c.this.f6546c.close();
                }
            }.start();
            this.f6547d = new LocalServerSocket(str);
            while (!this.f6550g) {
                LocalSocket accept = this.f6547d.accept();
                if (this.f6548e == null || !this.f6548e.f6520b) {
                    this.f6548e = new C1676b(this.f6549f, accept);
                    this.f6548e.f6525g = this.f6545a;
                    this.f6548e.m7638b();
                } else {
                    this.f6548e.mo7593a();
                }
            }
            this.f6547d.close();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.AppQuitListener
    public final void onAppQuit() {
        if (this.f6550g) {
            return;
        }
        this.f6550g = true;
        try {
            if (this.f6548e != null) {
                this.f6548e.m7637a(C1613b.m7204a(65535));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
