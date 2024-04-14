package com.cyjh.elfin.p077e.p079b;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.cyjh.common.util.C1151ad;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.http.oss.MyOSSUtils;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1554k;
import com.cyjh.http.p096c.p099c.C1560q;
import com.cyjh.http.p104e.C1579a;
import com.hjol.R;
import java.io.File;

/* renamed from: com.cyjh.elfin.e.b.d */
/* loaded from: classes.dex */
public final class AsyncTaskC1249d extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    private static final String f4666a = "MyAsyncTask";

    /* renamed from: com.cyjh.elfin.e.b.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements MyOSSUtils.UploadFileCallBack {

        /* renamed from: a */
        final /* synthetic */ String f4667a;

        AnonymousClass1(String str) {
            this.f4667a = str;
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public final void uploadFail(String str) {
            C1151ad.m4325c(AsyncTaskC1249d.f4666a, "uploadFail -- > 上传图片失败 fileName=" + str);
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public final void uploadProgress(long j, long j2) {
        }

        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
        public final void uploadSuc(String str, String str2) {
            C1151ad.m4325c(AsyncTaskC1249d.f4666a, "uploadSuc -- > 上传图片成功 serverUrl=" + str);
            AsyncTaskC1249d.m5610a(AsyncTaskC1249d.this, C1285c.m5955f().f4851a.getId(), this.f4667a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.b.d$2, reason: invalid class name */
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

    /* renamed from: com.cyjh.elfin.e.b.d$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m5612a();
    }

    /* renamed from: a */
    private String m5608a(String... strArr) {
        C1554k c1554k;
        String str = strArr[0];
        TextUtils.isEmpty(str);
        File file = new File(strArr[0]);
        if (file.exists() && file.length() > 0) {
            if (C1487a.m6886a().f5812d == null) {
                c1554k = new C1554k();
            } else if (!TextUtils.isEmpty(C1487a.m6886a().f5812d.OssStudioScreenshotPathF)) {
                String str2 = C1487a.m6886a().f5812d.OssStudioScreenshotPathF.replace("{AppId}", AppContext.m5350a().getString(R.string.elfin_appid)).replace("{ScriptId}", C1285c.m5955f().f4851a.getId()).replace("{DeviceId}", C1579a.m7032c(AppContext.m5350a()).DeviceId) + File.separator + System.currentTimeMillis() + ".png";
                C1151ad.m4325c(f4666a, "objectKey=" + str2);
                MyOSSUtils build = new MyOSSUtils.Builder(AppContext.m5350a(), C1487a.m6886a().f5812d).build();
                if (!build.isTokenExpireTime()) {
                    build.uploadFile(str, str2, new AnonymousClass1(str2));
                    return str;
                }
                c1554k = new C1554k();
            }
            c1554k.m6958a((Context) AppContext.m5350a());
        }
        return str;
    }

    /* renamed from: a */
    private static void m5609a() {
    }

    /* renamed from: a */
    static /* synthetic */ void m5610a(AsyncTaskC1249d asyncTaskC1249d, String str, String str2) {
        C1560q.m6969a().m6974a(AppContext.m5350a(), str, str2, new AnonymousClass2());
    }

    /* renamed from: a */
    private void m5611a(String str, String str2) {
        C1560q.m6969a().m6974a(AppContext.m5350a(), str, str2, new AnonymousClass2());
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(String[] strArr) {
        C1554k c1554k;
        String[] strArr2 = strArr;
        String str = strArr2[0];
        TextUtils.isEmpty(str);
        File file = new File(strArr2[0]);
        if (file.exists() && file.length() > 0) {
            if (C1487a.m6886a().f5812d == null) {
                c1554k = new C1554k();
            } else if (!TextUtils.isEmpty(C1487a.m6886a().f5812d.OssStudioScreenshotPathF)) {
                String str2 = C1487a.m6886a().f5812d.OssStudioScreenshotPathF.replace("{AppId}", AppContext.m5350a().getString(R.string.elfin_appid)).replace("{ScriptId}", C1285c.m5955f().f4851a.getId()).replace("{DeviceId}", C1579a.m7032c(AppContext.m5350a()).DeviceId) + File.separator + System.currentTimeMillis() + ".png";
                C1151ad.m4325c(f4666a, "objectKey=" + str2);
                MyOSSUtils build = new MyOSSUtils.Builder(AppContext.m5350a(), C1487a.m6886a().f5812d).build();
                if (!build.isTokenExpireTime()) {
                    build.uploadFile(str, str2, new AnonymousClass1(str2));
                    return str;
                }
                c1554k = new C1554k();
            }
            c1554k.m6958a((Context) AppContext.m5350a());
        }
        return str;
    }

    @Override // android.os.AsyncTask
    protected final /* bridge */ /* synthetic */ void onPostExecute(String str) {
    }
}
