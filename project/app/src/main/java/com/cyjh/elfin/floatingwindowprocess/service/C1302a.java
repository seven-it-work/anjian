package com.cyjh.elfin.floatingwindowprocess.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.cyjh.elfin.entity.ElfinFloatViewEvent;
import com.cyjh.elfin.p077e.p079b.AsyncTaskC1248c;
import com.cyjh.elfin.p077e.p079b.C1246a;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.C2772c;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.service.a */
/* loaded from: classes.dex */
public final class C1302a {

    /* renamed from: c */
    private static final String f4974c = "ServerAppService";

    /* renamed from: e */
    private static final C1302a f4975e = new C1302a();

    /* renamed from: b */
    public Messenger f4977b;

    /* renamed from: d */
    private a f4978d = new a(0);

    /* renamed from: a */
    Messenger f4976a = new Messenger(this.f4978d);

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.service.a$a */
    /* loaded from: classes.dex */
    private static class a extends Handler {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.getData().getInt(C1246a.f4638a);
            Log.i(C1302a.f4974c, "收到来自客户端的消息:" + i);
            C1302a.m6090a().f4977b = message.replyTo;
            if (i == 2) {
                C2772c.m12482a().m12506c(new ElfinFloatViewEvent(10101));
                return;
            }
            if (i == 3) {
                C2772c.m12482a().m12506c(new ElfinFloatViewEvent(10103));
            } else if (i == 4) {
                C2772c.m12482a().m12506c(new ElfinFloatViewEvent(4));
            } else if (i == 7) {
                new AsyncTaskC1248c().executeOnExecutor(Executors.newCachedThreadPool(), new Void[0]);
            }
        }
    }

    /* renamed from: a */
    public static C1302a m6090a() {
        return f4975e;
    }

    /* renamed from: a */
    private void m6091a(Messenger messenger) {
        this.f4976a = messenger;
    }

    /* renamed from: a */
    private void m6092a(a aVar) {
        this.f4978d = aVar;
    }

    /* renamed from: b */
    private a m6093b() {
        return this.f4978d;
    }

    /* renamed from: b */
    private void m6094b(Messenger messenger) {
        this.f4977b = messenger;
    }

    /* renamed from: c */
    private Messenger m6095c() {
        return this.f4976a;
    }

    /* renamed from: d */
    private Messenger m6096d() {
        return this.f4977b;
    }

    /* renamed from: e */
    private void m6097e() {
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(C1246a.f4640c, C1246a.f4651n);
        obtain.setData(bundle);
        try {
            this.f4977b.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m6098a(int i) {
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(C1246a.f4638a, i);
        obtain.setData(bundle);
        try {
            this.f4977b.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m6099a(int i, int i2, String str) {
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(C1246a.f4638a, i);
        bundle.putString(C1246a.f4639b, str);
        bundle.putInt(C1246a.f4640c, i2);
        obtain.setData(bundle);
        try {
            this.f4977b.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
