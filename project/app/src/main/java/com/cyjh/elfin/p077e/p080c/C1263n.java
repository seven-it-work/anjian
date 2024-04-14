package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import com.cyjh.common.p070e.C1140a;
import com.cyjh.common.p070e.C1141b;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1153af;
import com.cyjh.common.util.C1158ak;
import com.cyjh.common.util.C1171n;
import com.cyjh.common.util.C1198u;
import com.cyjh.common.util.toast.C1193p;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.http.p096c.p099c.C1551h;
import com.cyjh.http.p104e.C1580b;
import com.cyjh.mq.sdk.MqRunner;
import com.elf.studio.p114a.C1710b;
import java.io.File;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.C2772c;

/* renamed from: com.cyjh.elfin.e.c.n */
/* loaded from: classes.dex */
public class C1263n {

    /* renamed from: a */
    public static int f4709a = 1000;

    /* renamed from: b */
    public static int f4710b = 1001;

    /* renamed from: c */
    public static int f4711c = 1002;

    /* renamed from: d */
    public static int f4712d = 1003;

    /* renamed from: e */
    public static int f4713e = 1004;

    /* renamed from: f */
    private static String f4714f = "n";

    /* renamed from: k */
    private static C1263n f4715k;

    /* renamed from: g */
    private Context f4716g;

    /* renamed from: h */
    private String f4717h;

    /* renamed from: i */
    private int f4718i = f4711c;

    /* renamed from: j */
    private Handler f4719j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.n$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1193p.m5082a((CharSequence) "脚本更新完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.n$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1193p.m5082a((CharSequence) "脚本更新失败，请重启小精灵进行更新");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.n$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1193p.m5082a((CharSequence) "脚本更新失败，请重启小精灵进行更新");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.e.c.n$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements C1551h.a {

        /* renamed from: a */
        final /* synthetic */ String f4723a;

        AnonymousClass4(String str) {
            this.f4723a = str;
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5774a(ProjectNumberInfo projectNumberInfo) {
            C1151ad.m4325c(C1263n.f4714f, "afterDownloadSuccess --> 3 unbindStudioProject onSuccess");
            String str = this.f4723a;
            final String str2 = AppContext.m5350a().f4565e;
            String m5787b = C1264o.m5787b(AppContext.m5350a(), C1285c.m5955f().f4852c);
            String m5784a = C1264o.m5784a(AppContext.m5350a(), C1285c.m5955f().f4852c);
            final String m5786b = C1264o.m5786b(AppContext.m5350a());
            C1551h.m6946a().m6952a(AppContext.m5350a(), str2, str, m5787b, m5784a, m5786b, new C1551h.a() { // from class: com.cyjh.elfin.e.c.n.4.1
                @Override // com.cyjh.http.p096c.p099c.C1551h.a
                /* renamed from: a */
                public final void mo5774a(ProjectNumberInfo projectNumberInfo2) {
                    C1151ad.m4325c(C1263n.f4714f, "afterDownloadSuccess --> 3 bindStudioProject onSuccess");
                    AppContext.m5350a().f4565e = str2;
                    C1551h.m6946a().f5852b = null;
                    C1149ab.m4306a().m4313a(InterfaceC1224a.f4443H, C1198u.m5223a(m5786b));
                    C2772c.m12482a().m12506c(new C1710b(10001, projectNumberInfo2.IMToken));
                }

                @Override // com.cyjh.http.p096c.p099c.C1551h.a
                /* renamed from: a */
                public final void mo5775a(String str3) {
                    C1551h.m6946a().f5852b = null;
                }
            });
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5775a(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.e.c.n$a */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<String, Integer, Void> {
        private a() {
        }

        /* synthetic */ a(C1263n c1263n, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                String str = strArr[0];
                File m4454a = C1171n.m4454a(strArr[1], str.substring(str.lastIndexOf("/")));
                C1580b.m7055a().m7059a(str, m4454a.getParentFile().getAbsolutePath(), m4454a.getName(), -1, new C1580b.a() { // from class: com.cyjh.elfin.e.c.n.a.1

                    /* renamed from: b */
                    private long f4730b = 0;

                    @Override // com.cyjh.http.p104e.C1580b.a
                    /* renamed from: a */
                    public final void mo5779a(int i) {
                        C1151ad.m4325c(C1263n.f4714f, "onDownloading --> progress=" + i);
                        long j = (long) i;
                        if (this.f4730b != j) {
                            this.f4730b = j;
                            a.this.publishProgress(Integer.valueOf(i));
                        }
                    }

                    @Override // com.cyjh.http.p104e.C1580b.a
                    /* renamed from: a */
                    public final void mo5780a(File file) {
                        C1151ad.m4325c(C1263n.f4714f, "onDownloadSuccess --> file=" + file.getName());
                        this.f4730b = 0L;
                        C1263n.m5766a(C1263n.this, file);
                    }

                    @Override // com.cyjh.http.p104e.C1580b.a
                    /* renamed from: a */
                    public final void mo5781a(Exception exc) {
                        C1151ad.m4325c(C1263n.f4714f, "onDownloadFailed --> exception=" + exc.getMessage());
                        C1263n.m5765a(C1263n.this);
                    }
                });
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        private void m5778a(Integer... numArr) {
            super.onProgressUpdate(numArr);
            C1151ad.m4325c(C1263n.f4714f, "onProgressUpdate --> progress=" + numArr[0]);
            C1193p.m5090b("正在更新脚本(" + numArr[0] + "%)");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            super.onProgressUpdate(numArr2);
            C1151ad.m4325c(C1263n.f4714f, "onProgressUpdate --> progress=" + numArr2[0]);
            C1193p.m5090b("正在更新脚本(" + numArr2[0] + "%)");
        }
    }

    private C1263n() {
    }

    /* renamed from: a */
    public static C1263n m5764a() {
        if (f4715k == null) {
            synchronized (C1263n.class) {
                if (f4715k == null) {
                    f4715k = new C1263n();
                }
            }
        }
        return f4715k;
    }

    /* renamed from: a */
    static /* synthetic */ void m5765a(C1263n c1263n) {
        c1263n.f4719j.post(new AnonymousClass3());
        if (c1263n.f4718i != f4709a) {
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ScriptDownloadHelper  afterDownloadFailure -->");
            C1153af.m4332a().m4336a(C1153af.m4332a().m4339c());
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5766a(C1263n c1263n, File file) {
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 1 开始解压……");
        boolean m4347a = C1158ak.m4347a(file, C1171n.m4452a(c1263n.f4716g, C1225b.f4506au));
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 2 解压是否成功：" + m4347a);
        if (!m4347a) {
            c1263n.f4719j.post(new AnonymousClass2());
            if (c1263n.f4718i != f4709a) {
                C1153af.m4332a().m4336a(C1153af.m4332a().m4339c());
                return;
            }
            return;
        }
        c1263n.f4719j.post(new AnonymousClass1());
        C1171n.m4470c(file);
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript");
        String id = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script beforeUpdateScriptId :" + id);
        C1285c.m5955f().m5963b();
        C1260k.m5735a(1);
        C1153af.m4332a().m4338b(C1153af.m4332a().m4337b());
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript mCurrentType:" + c1263n.f4718i);
        String id2 = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script afterUpdateScriptId :" + id2);
        if (!id.equals(id2) && !TextUtils.isEmpty(AppContext.m5350a().f4565e)) {
            C1551h.m6946a().m6951a(AppContext.m5350a(), id, new AnonymousClass4(id2));
        }
        if (c1263n.f4718i != f4709a && c1263n.f4718i == f4712d) {
            if (MqRunner.getInstance().isScriptStarted()) {
                MqRunner.getInstance().stop();
                C1151ad.m4325c(f4714f, "stop --> 3 initScript mCurrentType:" + c1263n.f4718i);
            }
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        if (f4713e == c1263n.f4718i) {
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        C2772c.m12482a().m12506c(new C1141b(c1263n.f4718i));
        C2772c.m12482a().m12506c(new C1140a());
        C2772c.m12482a().m12506c(new MsgItem(1008));
    }

    /* renamed from: a */
    private void m5767a(File file) {
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 1 开始解压……");
        boolean m4347a = C1158ak.m4347a(file, C1171n.m4452a(this.f4716g, C1225b.f4506au));
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 2 解压是否成功：" + m4347a);
        if (!m4347a) {
            this.f4719j.post(new AnonymousClass2());
            if (this.f4718i != f4709a) {
                C1153af.m4332a().m4336a(C1153af.m4332a().m4339c());
                return;
            }
            return;
        }
        this.f4719j.post(new AnonymousClass1());
        C1171n.m4470c(file);
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript");
        String id = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script beforeUpdateScriptId :" + id);
        C1285c.m5955f().m5963b();
        C1260k.m5735a(1);
        C1153af.m4332a().m4338b(C1153af.m4332a().m4337b());
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript mCurrentType:" + this.f4718i);
        String id2 = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script afterUpdateScriptId :" + id2);
        if (!id.equals(id2) && !TextUtils.isEmpty(AppContext.m5350a().f4565e)) {
            C1551h.m6946a().m6951a(AppContext.m5350a(), id, new AnonymousClass4(id2));
        }
        if (this.f4718i != f4709a && this.f4718i == f4712d) {
            if (MqRunner.getInstance().isScriptStarted()) {
                MqRunner.getInstance().stop();
                C1151ad.m4325c(f4714f, "stop --> 3 initScript mCurrentType:" + this.f4718i);
            }
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        if (f4713e == this.f4718i) {
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        C2772c.m12482a().m12506c(new C1141b(this.f4718i));
        C2772c.m12482a().m12506c(new C1140a());
        C2772c.m12482a().m12506c(new MsgItem(1008));
    }

    /* renamed from: b */
    private void m5769b(String str) {
        String str2 = this.f4716g.getPackageName() + File.separator + C1225b.f4504as;
        C1151ad.m4325c(f4714f, "scriptDownloadTask --> path=" + str2 + ",scriptDownloadUrl = " + str);
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "ScriptDownloadHelper  scriptDownloadTask --> path=" + str2 + ",scriptDownloadUrl=" + str);
        C1193p.m5082a((CharSequence) "脚本开始热更新");
        new a(this, (byte) 0).executeOnExecutor(Executors.newCachedThreadPool(), str, str2);
    }

    /* renamed from: c */
    private void m5770c() {
        this.f4719j.post(new AnonymousClass3());
        if (this.f4718i != f4709a) {
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "ScriptDownloadHelper  afterDownloadFailure -->");
            C1153af.m4332a().m4336a(C1153af.m4332a().m4339c());
        }
    }

    /* renamed from: d */
    private void m5771d() {
        String id = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script beforeUpdateScriptId :" + id);
        C1285c.m5955f().m5963b();
        C1260k.m5735a(1);
        C1153af m4332a = C1153af.m4332a();
        String m4337b = C1153af.m4332a().m4337b();
        C1151ad.m4324b("setLastAppVersion", "appVersion:" + m4337b);
        if (m4332a.f4063a != null) {
            try {
                m4332a.f4063a.edit().putString(C1153af.f4060c, m4337b).apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript mCurrentType:" + this.f4718i);
        String id2 = C1285c.m5955f().f4851a.getId();
        C1151ad.m4325c(f4714f, "afterDownloadSuccess --> 3 initScript script afterUpdateScriptId :" + id2);
        if (!id.equals(id2) && !TextUtils.isEmpty(AppContext.m5350a().f4565e)) {
            C1551h.m6946a().m6951a(AppContext.m5350a(), id, new AnonymousClass4(id2));
        }
        if (this.f4718i != f4709a && this.f4718i == f4712d) {
            if (MqRunner.getInstance().isScriptStarted()) {
                MqRunner.getInstance().stop();
                C1151ad.m4325c(f4714f, "stop --> 3 initScript mCurrentType:" + this.f4718i);
            }
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        if (f4713e == this.f4718i) {
            C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_NEED_START));
        }
        C2772c.m12482a().m12506c(new C1141b(this.f4718i));
        C2772c.m12482a().m12506c(new C1140a());
    }

    /* renamed from: a */
    public final C1263n m5772a(Context context, String str, int i) {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "ScriptDownloadHelper  init --> type=" + i);
        this.f4716g = context;
        if (this.f4719j == null) {
            this.f4719j = new Handler(this.f4716g.getMainLooper());
        }
        this.f4717h = str;
        this.f4718i = i;
        return this;
    }

    /* renamed from: a */
    public final void m5773a(String str) {
        if (this.f4718i != f4709a) {
            m5769b(str);
        } else {
            if (MqRunner.getInstance().isScriptStarted()) {
                return;
            }
            m5769b(str);
        }
    }
}
