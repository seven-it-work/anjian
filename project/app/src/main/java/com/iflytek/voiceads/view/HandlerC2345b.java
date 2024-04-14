package com.iflytek.voiceads.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.SDKConstants;
import com.iflytek.voiceads.utils.C2307a;
import com.iflytek.voiceads.utils.C2313g;

/* renamed from: com.iflytek.voiceads.view.b */
/* loaded from: assets/AdDex.4.0.1.dex */
public class HandlerC2345b extends Handler {

    /* renamed from: a */
    private C2307a.c f8808a;

    /* renamed from: b */
    private a f8809b;

    /* renamed from: com.iflytek.voiceads.view.b$a */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public interface a {
        /* renamed from: a */
        void mo10281a();

        /* renamed from: a */
        void mo10284a(Message message);

        /* renamed from: b */
        void mo10289b();

        /* renamed from: b */
        void mo10290b(Message message);

        /* renamed from: c */
        void mo10291c();

        /* renamed from: c */
        void mo10292c(Message message);
    }

    /* renamed from: com.iflytek.voiceads.view.b$b */
    /* loaded from: assets/AdDex.4.0.1.dex */
    public enum b {
        max,
        normal,
        min
    }

    public HandlerC2345b(Looper looper, a aVar) {
        super(looper);
        this.f8808a = C2307a.c.init;
        this.f8809b = aVar;
    }

    /* renamed from: a */
    public synchronized C2307a.c m10309a() {
        return this.f8808a;
    }

    /* renamed from: a */
    public void m10310a(int i) {
        m10313a(obtainMessage(i), b.normal, 0);
    }

    /* renamed from: a */
    public void m10311a(int i, int i2) {
        m10313a(obtainMessage(i, Integer.valueOf(i2)), b.normal, 0);
    }

    /* renamed from: a */
    public void m10312a(Message message, int i) {
        m10313a(message, b.normal, i);
    }

    /* renamed from: a */
    protected void m10313a(Message message, b bVar, int i) {
        if (m10309a() == C2307a.c.exit) {
            C2313g.m10136a(SDKConstants.TAG, "Ad status is exit, invalid request!");
            return;
        }
        switch (message.what) {
            case 0:
                m10314a(C2307a.c.init);
                break;
            case 1:
                m10314a(C2307a.c.request);
                break;
            case 2:
                m10314a(C2307a.c.response);
                break;
            case 3:
                m10314a(C2307a.c.show);
                break;
            case 5:
                m10314a(C2307a.c.end);
                break;
            case 7:
                m10314a(C2307a.c.exit);
                break;
        }
        if (b.max == bVar) {
            sendMessageAtFrontOfQueue(message);
        } else {
            sendMessageDelayed(message, i);
        }
    }

    /* renamed from: a */
    public synchronized void m10314a(C2307a.c cVar) {
        C2313g.m10136a(SDKConstants.TAG, "setStatus: pre=" + this.f8808a + ", cur=" + cVar);
        if (this.f8808a == C2307a.c.exit) {
            C2313g.m10136a(SDKConstants.TAG, "Invalid setting of ad status, current status is already exit!");
        } else {
            this.f8808a = cVar;
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1:
                    this.f8809b.mo10284a(message);
                    break;
                case 2:
                    this.f8809b.mo10281a();
                    break;
                case 3:
                    this.f8809b.mo10289b();
                    break;
                case 4:
                    this.f8809b.mo10290b(message);
                    break;
                case 5:
                    this.f8809b.mo10292c(message);
                    break;
                case 7:
                    this.f8809b.mo10291c();
                    break;
            }
        } catch (Exception e) {
            m10314a(C2307a.c.end);
            C2313g.m10138b(SDKConstants.TAG, "process handle:" + e.getMessage());
        }
    }
}
