package com.cyjh.elfin.p077e.p079b;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1171n;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.http.oss.MyOSSUtils;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1554k;
import com.cyjh.http.p096c.p099c.C1560q;
import com.cyjh.http.p104e.C1579a;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mq.sdk.MqRunner;
import com.google.protobuf.ByteString;
import com.hjol.R;
import java.io.File;

/* renamed from: com.cyjh.elfin.e.b.b */
/* loaded from: classes.dex */
public final class AsyncTaskC1247b extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private static final String f4656a = "MyAsyncTask";

    /* renamed from: b */
    private a f4657b;

    /* renamed from: com.cyjh.elfin.e.b.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements OnScreenShotCallback {

        /* renamed from: a */
        final /* synthetic */ String f4658a;

        AnonymousClass1(String str) {
            this.f4658a = str;
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback
        public final void onScreenShotDone(String str, ByteString byteString) {
            int intValue = Integer.valueOf(str).intValue();
            int i = 65535 & intValue;
            int i2 = intValue >> 16;
            C1151ad.m4325c(AsyncTaskC1247b.f4656a, "onScreenShotDone -->\u3000width=" + i2 + ",height = " + i);
            Bitmap m5782a = C1264o.m5782a(i2, i, byteString);
            if (m5782a != null) {
                C1171n.m4455a(m5782a, this.f4658a);
                File file = new File(this.f4658a);
                if (!file.exists() || file.length() <= 0) {
                    return;
                }
                if (C1487a.m6886a().f5812d == null) {
                    if (AsyncTaskC1247b.this.f4657b != null) {
                        a unused = AsyncTaskC1247b.this.f4657b;
                    }
                    new C1554k().m6958a((Context) AppContext.m5350a());
                    return;
                }
                if (TextUtils.isEmpty(C1487a.m6886a().f5812d.OssStudioScreenshotPathF)) {
                    return;
                }
                final String str2 = C1487a.m6886a().f5812d.OssStudioScreenshotPathF.replace("{AppId}", AppContext.m5350a().getString(R.string.elfin_appid)).replace("{ScriptId}", C1285c.m5955f().f4851a.getId()).replace("{DeviceId}", C1579a.m7032c(AppContext.m5350a()).DeviceId) + File.separator + System.currentTimeMillis() + ".png";
                C1151ad.m4325c(AsyncTaskC1247b.f4656a, "objectKey=" + str2);
                MyOSSUtils build = new MyOSSUtils.Builder(AppContext.m5350a(), C1487a.m6886a().f5812d).build();
                if (!build.isTokenExpireTime()) {
                    build.uploadFile(this.f4658a, str2, new MyOSSUtils.UploadFileCallBack() { // from class: com.cyjh.elfin.e.b.b.1.1
                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadFail(String str3) {
                            C1151ad.m4325c(AsyncTaskC1247b.f4656a, "uploadFail -- > 上传图片失败 fileName=" + str3);
                        }

                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadProgress(long j, long j2) {
                        }

                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadSuc(String str3, String str4) {
                            C1151ad.m4325c(AsyncTaskC1247b.f4656a, "uploadSuc -- > 上传图片成功 serverUrl=" + str3);
                            AsyncTaskC1247b.m5600a(AsyncTaskC1247b.this, C1285c.m5955f().f4851a.getId(), str2);
                        }
                    });
                    return;
                }
                if (AsyncTaskC1247b.this.f4657b != null) {
                    a unused2 = AsyncTaskC1247b.this.f4657b;
                }
                new C1554k().m6958a((Context) AppContext.m5350a());
            }
        }

        @Override // com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback
        public final void onScreenShotFailed(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.b.b$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements C1560q.a {
        AnonymousClass2() {
        }

        @Override // com.cyjh.http.p096c.p099c.C1560q.a
        /* renamed from: a */
        public final void mo5603a() {
        }

        @Override // com.cyjh.http.p096c.p099c.C1560q.a
        /* renamed from: b */
        public final void mo5604b() {
        }
    }

    /* renamed from: com.cyjh.elfin.e.b.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m5605a();
    }

    private AsyncTaskC1247b(a aVar) {
        this.f4657b = aVar;
    }

    /* renamed from: a */
    private String m5599a() {
        String absolutePath = C1171n.m4454a(AppContext.m5350a().getPackageName(), "screen_capture.png").getAbsolutePath();
        MqRunner.getInstance().mo7715a(new AnonymousClass1(absolutePath));
        return absolutePath;
    }

    /* renamed from: a */
    static /* synthetic */ void m5600a(AsyncTaskC1247b asyncTaskC1247b, String str, String str2) {
        C1560q.m6969a().m6974a(AppContext.m5350a(), str, str2, new AnonymousClass2());
    }

    /* renamed from: a */
    private void m5601a(String str, String str2) {
        C1560q.m6969a().m6974a(AppContext.m5350a(), str, str2, new AnonymousClass2());
    }

    /* renamed from: b */
    private static void m5602b() {
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
