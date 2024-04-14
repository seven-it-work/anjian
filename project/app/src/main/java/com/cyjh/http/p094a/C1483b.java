package com.cyjh.http.p094a;

import android.os.Message;
import com.cyjh.common.util.C1151ad;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.cyjh.http.a.b */
/* loaded from: classes.dex */
public class C1483b {

    /* renamed from: a */
    public static String f5779a = "b";

    /* renamed from: e */
    public static final int f5780e = 1000;

    /* renamed from: f */
    public static final int f5781f = 180000;

    /* renamed from: g */
    public static final int f5782g = 7200000;

    /* renamed from: h */
    private static C1483b f5783h;

    /* renamed from: b */
    public a f5784b;

    /* renamed from: c */
    public Timer f5785c;

    /* renamed from: d */
    public b f5786d;

    /* renamed from: com.cyjh.http.a.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6032a(Message message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.http.a.b$b */
    /* loaded from: classes.dex */
    public class b extends TimerTask {
        private b() {
        }

        public /* synthetic */ b(C1483b c1483b, byte b2) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            Message message = new Message();
            message.what = 1000;
            if (C1483b.this.f5784b != null) {
                C1483b.this.f5784b.mo6032a(message);
            }
        }
    }

    private C1483b() {
    }

    /* renamed from: a */
    public static C1483b m6863a() {
        if (f5783h == null) {
            synchronized (C1483b.class) {
                if (f5783h == null) {
                    f5783h = new C1483b();
                }
            }
        }
        return f5783h;
    }

    /* renamed from: a */
    private C1483b m6864a(a aVar) {
        this.f5784b = aVar;
        return this;
    }

    /* renamed from: c */
    private void m6865c() {
        C1151ad.m4323a(f5779a, "startTimer --> ");
        if (this.f5785c == null) {
            this.f5785c = new Timer();
            this.f5786d = new b(this, (byte) 0);
        }
        this.f5785c.schedule(this.f5786d, 180000L, 7200000L);
    }

    /* renamed from: b */
    public final void m6866b() {
        C1151ad.m4323a(f5779a, "stopTimer --> ");
        if (this.f5785c != null) {
            this.f5785c.cancel();
            this.f5785c = null;
        }
    }
}
