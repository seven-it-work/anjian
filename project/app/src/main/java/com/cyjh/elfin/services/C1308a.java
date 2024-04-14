package com.cyjh.elfin.services;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import com.cyjh.elfin.p077e.p079b.AsyncTaskC1249d;
import com.cyjh.elfin.p077e.p079b.C1246a;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.http.p096c.p099c.C1561r;
import com.elf.studio.p114a.C1709a;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.C2772c;

/* renamed from: com.cyjh.elfin.services.a */
/* loaded from: classes.dex */
public final class C1308a {

    /* renamed from: e */
    private static final String f5005e = "ClientAppService";

    /* renamed from: f */
    private static final C1308a f5006f = new C1308a();

    /* renamed from: a */
    public Messenger f5007a;

    /* renamed from: c */
    public a f5009c = new a();

    /* renamed from: d */
    public Messenger f5010d = new Messenger(this.f5009c);

    /* renamed from: b */
    public ServiceConnection f5008b = new ServiceConnection() { // from class: com.cyjh.elfin.services.a.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(C1308a.f5005e, "与服务端连接成功");
            C1308a.this.f5007a = new Messenger(iBinder);
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putInt(C1246a.f4638a, 30000);
            obtain.setData(bundle);
            obtain.replyTo = C1308a.this.f5010d;
            try {
                C1308a.this.f5007a.send(obtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    /* renamed from: com.cyjh.elfin.services.a$a */
    /* loaded from: classes.dex */
    public static class a extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Script script;
            super.handleMessage(message);
            Bundle data = message.getData();
            int i = data.getInt(C1246a.f4638a);
            int i2 = data.getInt(C1246a.f4640c);
            Log.i(C1308a.f5005e, "收到来自服务端的消息：" + i);
            String string = data.getString(C1246a.f4639b);
            if (i2 == 1002 || i2 == 1001) {
                return;
            }
            if (i2 == 1003) {
                new AsyncTaskC1249d().executeOnExecutor(Executors.newCachedThreadPool(), string);
                return;
            }
            if (i2 == 1101) {
                C1151ad.m4325c(C1308a.f5005e, "CMD_ACTION_VOLUME_SCRIPT_START");
                C2772c.m12482a().m12506c(new C1709a(10101));
            } else if (i2 == 1004 && C1264o.m5785a() && (script = C1285c.m5955f().f4851a) != null) {
                C1561r.m6975a().m6980a(AppContext.m5350a(), script.getId(), string, new C1561r.a() { // from class: com.cyjh.elfin.services.a.a.1
                    @Override // com.cyjh.http.p096c.p099c.C1561r.a
                    /* renamed from: a */
                    public final void mo6030a() {
                        C1151ad.m4325c(C1308a.f5005e, "doSpecialFuction --> uploadInstanceData onSuccess");
                    }

                    @Override // com.cyjh.http.p096c.p099c.C1561r.a
                    /* renamed from: a */
                    public final void mo6031a(String str) {
                        C1151ad.m4325c(C1308a.f5005e, "doSpecialFuction --> uploadInstanceData onFailure message=" + str);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static C1308a m6120a() {
        return f5006f;
    }

    /* renamed from: a */
    private void m6121a(Context context) {
        Intent intent = new Intent(context, (Class<?>) FloatingWindowService.class);
        if (this.f5008b != null) {
            context.bindService(intent, this.f5008b, 1);
        }
    }

    /* renamed from: b */
    private void m6123b(Context context) {
        context.unbindService(this.f5008b);
        this.f5009c = null;
        this.f5010d = null;
        this.f5007a = null;
    }

    /* renamed from: a */
    public final void m6124a(int i) {
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(C1246a.f4638a, i);
        obtain.setData(bundle);
        obtain.replyTo = this.f5010d;
        try {
            this.f5007a.send(obtain);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
