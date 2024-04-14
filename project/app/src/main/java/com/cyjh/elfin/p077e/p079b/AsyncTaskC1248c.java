package com.cyjh.elfin.p077e.p079b;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1171n;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.service.C1302a;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.google.protobuf.ByteString;

/* renamed from: com.cyjh.elfin.e.b.c */
/* loaded from: classes.dex */
public final class AsyncTaskC1248c extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private static final String f4663a = "MyAsyncTask";

    /* renamed from: com.cyjh.elfin.e.b.c$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements OnScreenShotCallback {

        /* renamed from: a */
        final /* synthetic */ String f4664a;

        AnonymousClass1(String str) {
            this.f4664a = str;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback
        public final void onScreenShotDone(String str, ByteString byteString) {
            C1302a m6090a;
            String str2;
            int intValue = Integer.valueOf(str).intValue();
            int i = 65535 & intValue;
            int i2 = intValue >> 16;
            C1151ad.m4325c(AsyncTaskC1248c.f4663a, "onScreenShotDone -->\u3000width=" + i2 + ",height = " + i);
            Bitmap m5782a = C1264o.m5782a(i2, i, byteString);
            if (m5782a != null) {
                C1171n.m4455a(m5782a, this.f4664a);
                m6090a = C1302a.m6090a();
                str2 = this.f4664a;
            } else {
                m6090a = C1302a.m6090a();
                str2 = "";
            }
            m6090a.m6099a(6, 1003, str2);
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback
        public final void onScreenShotFailed(int i) {
            C1302a.m6090a().m6099a(6, 1003, "");
        }
    }

    /* renamed from: a */
    private String m5606a() {
        String absolutePath = C1171n.m4454a(AppContext.m5350a().getPackageName(), "screen_capture.png").getAbsolutePath();
        MqRunner.getInstance().mo7715a(new AnonymousClass1(absolutePath));
        return absolutePath;
    }

    /* renamed from: b */
    private static void m5607b() {
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Void[] voidArr) {
        String absolutePath = C1171n.m4454a(AppContext.m5350a().getPackageName(), "screen_capture.png").getAbsolutePath();
        MqRunner.getInstance().mo7715a(new AnonymousClass1(absolutePath));
        return absolutePath;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
    }
}
