package com.cyjh.elfin.p085ui.model;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.MutableLiveData;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1175r;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1288a;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p074b.C1228b;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p080c.C1255f;
import com.cyjh.elfin.p077e.p080c.C1261l;
import com.cyjh.elfin.p077e.p080c.C1263n;
import com.cyjh.elfin.services.C1308a;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.RegCodeStatusInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p096c.p098b.C1543a;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p096c.p099c.C1556m;
import com.cyjh.http.p096c.p100d.InterfaceC1568f;
import com.cyjh.http.p104e.C1579a;
import com.elf.studio.p114a.C1709a;
import com.elf.studio.p114a.C1710b;
import com.elf.studio.p115b.InterfaceC1712a;
import com.hlzn.socketclient.p163b.C2146a;
import com.umeng.analytics.pro.C2427b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.C2772c;
import org.litepal.p246g.InterfaceC3057b;

/* loaded from: classes.dex */
public class ElfinModel extends AndroidViewModel implements InterfaceC1568f {

    /* renamed from: a */
    public static final int f5389a = 1006;

    /* renamed from: b */
    public static final int f5390b = 1007;

    /* renamed from: c */
    public static final int f5391c = 1008;

    /* renamed from: i */
    private static final String f5392i = "ElfinModel";

    /* renamed from: d */
    public ArrayList<NotifyMsgBean> f5393d;

    /* renamed from: e */
    public MutableLiveData<VersionUpdateInfo> f5394e;

    /* renamed from: f */
    public MutableLiveData<NotifyMsgBean> f5395f;

    /* renamed from: g */
    public MutableLiveData<Integer> f5396g;

    /* renamed from: h */
    public MutableLiveData<Boolean> f5397h;

    /* renamed from: j */
    private ArrayList<NotifyMsgBean> f5398j;

    /* renamed from: k */
    private List<String> f5399k;

    /* renamed from: l */
    private ScheduledExecutorService f5400l;

    /* renamed from: m */
    private ScheduledFuture<?> f5401m;

    /* renamed from: n */
    private C1556m f5402n;

    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$1 */
    /* loaded from: classes.dex */
    public final class RunnableC13991 implements Runnable {
        public RunnableC13991() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String m7016a = C1579a.m7016a(InterfaceC1133a.f3913O, ElfinModel.this.getApplication());
            boolean z = !TextUtils.isEmpty(m7016a) && m7016a.compareTo(C1579a.m7015a(System.currentTimeMillis() / 1000, C1579a.f5889b)) >= 0;
            String m7015a = C1579a.m7015a(System.currentTimeMillis() / 1000, C1579a.f5889b);
            if (!z) {
                C1546c.m6918a().m6922a(ElfinModel.this.getApplication(), 5, 0, 0L);
                C1579a.m7021a(InterfaceC1133a.f3913O, ElfinModel.this.getApplication(), m7015a);
            }
            ElfinModel.this.m6485a((C1579a.m7013a(m7015a) - System.currentTimeMillis()) / 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$3 */
    /* loaded from: classes.dex */
    public final class C14013 implements C1543a.a {
        C14013() {
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: a */
        public final void mo5930a(VersionUpdateInfo versionUpdateInfo) {
            if (versionUpdateInfo == null) {
                ElfinModel.this.f5394e.postValue(null);
                return;
            }
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest onUpdateHas --> versionUpdateInfo.UpgradeMode=" + versionUpdateInfo.UpgradeMode);
            ElfinModel.this.f5394e.postValue(versionUpdateInfo);
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: b */
        public final void mo5931b(VersionUpdateInfo versionUpdateInfo) {
            C1151ad.m4325c(ElfinModel.f5392i, "onConnectStudioSocket IS_SERVICE_START:" + C2146a.f8103v);
            if (C2146a.f8103v) {
                return;
            }
            AppContext.m5350a().f4565e = versionUpdateInfo.StudioProjectKey;
            C1162e.m4378a(AppContext.m5350a(), versionUpdateInfo.DeviceName);
            ElfinModel.this.f5396g.postValue(1007);
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: c */
        public final void mo5932c(VersionUpdateInfo versionUpdateInfo) {
            if (versionUpdateInfo.InstanceDataUploadInterval != 0) {
                C1225b.f4507av = versionUpdateInfo.InstanceDataUploadInterval;
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$4 */
    /* loaded from: classes.dex */
    public final class C14024 implements InterfaceC1142a {
        public C14024() {
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final void mo4230a() {
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final void mo4231a(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (arrayList != null) {
                ElfinModel.m6466a(ElfinModel.this, arrayList);
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$5 */
    /* loaded from: classes.dex */
    public final class RunnableC14035 implements Runnable {
        public RunnableC14035() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String m7016a = C1579a.m7016a(InterfaceC1133a.f3975ax + C1132a.m4196c(), AppContext.m5350a());
            String m7016a2 = C1579a.m7016a(InterfaceC1133a.f3976ay + C1132a.m4196c(), AppContext.m5350a());
            C1151ad.m4323a("qureyRegCode", "oldFileRegCode:" + m7016a);
            C1151ad.m4323a("qureyRegCode", "json:" + m7016a2);
            if (TextUtils.isEmpty(m7016a2)) {
                Log.e("zzz", "ElfinPayActivity:statusInfo旧的--");
                C1238c.m5531a().f4607a = m7016a;
                if (TextUtils.isEmpty(m7016a)) {
                    return;
                }
            } else {
                Log.e("zzz", "ElfinPayActivity:statusInfo新的--");
                RegCodeStatusInfo regCodeStatusInfo = (RegCodeStatusInfo) C1175r.m4522a(m7016a2, RegCodeStatusInfo.class);
                Log.e("qureyRegCode", "ElfinPayActivity:statusInfo新的--");
                if (regCodeStatusInfo != null) {
                    C1238c.m5531a().f4607a = regCodeStatusInfo.regCode;
                    if (TextUtils.isEmpty(regCodeStatusInfo.regCode) || regCodeStatusInfo.status != 1) {
                        return;
                    }
                    ElfinModel.this.f5396g.postValue(1006);
                    return;
                }
                if (TextUtils.isEmpty(C1238c.m5531a().m5543b())) {
                    return;
                }
            }
            ElfinModel.this.f5396g.postValue(1006);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$6 */
    /* loaded from: classes.dex */
    public final class C14046 implements InterfaceC1142a<Boolean> {
        public C14046() {
        }

        /* renamed from: b */
        private void m6488b() {
            ElfinModel.this.f5397h.postValue(true);
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final void mo4230a() {
            ElfinModel.this.f5397h.postValue(false);
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final /* synthetic */ void mo4231a(Boolean bool) {
            ElfinModel.this.f5397h.postValue(true);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.model.ElfinModel$7 */
    /* loaded from: classes.dex */
    final class C14057 implements InterfaceC1712a {
        private C14057() {
        }

        @Override // com.elf.studio.p115b.InterfaceC1712a
        /* renamed from: a */
        public final void mo6490a(C1709a c1709a) {
            C1151ad.m4325c(ElfinModel.f5392i, "setElfStudioCallback --> messageEvent" + c1709a.f6679a);
            int i = c1709a.f6679a;
            if (i == -1) {
                C1151ad.m4325c(ElfinModel.f5392i, "SocketStatus.CONNECT_ERROR --> ");
                ElfinModel.this.f5396g.postValue(1007);
                return;
            }
            if (i == 10002) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> LOGIN_SUCCESS");
                if (c1709a.f6680b == 0) {
                }
                return;
            }
            if (i == 10004) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> HEART_SUCCESS");
                if (c1709a.f6684f) {
                    return;
                } else {
                    return;
                }
            }
            if (i == 10101) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> 服务端命令:脚本启动");
                C2772c.m12482a().m12506c(new C1709a(10101));
                return;
            }
            if (i == 10103) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> 服务端命令:脚本停止");
                C2772c.m12482a().m12506c(new C1709a(10103));
                return;
            }
            if (i == 10105) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> 服务端命令:脚本更新");
                C1263n.m5764a().m5772a(AppContext.m5350a(), C1285c.m5955f().f4851a.getId(), C1263n.f4709a).m5773a(c1709a.f6681c);
                return;
            }
            if (i == 10107) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> 服务端命令:脚本设置更新");
                C2772c.m12482a().m12506c(new C1709a(c1709a.f6682d));
                return;
            }
            if (i == 10109) {
                C1308a.m6120a().m6124a(7);
                return;
            }
            if (i == 10111) {
                C1151ad.m4325c(ElfinModel.f5392i, "onReceiveSocketMessage --> 服务端命令:解绑工作室项目成功");
                AppContext.m5350a().f4565e = null;
                new Handler().postDelayed(RunnableC1417a.f5454a, 3000L);
            } else {
                if (i != 10113) {
                    return;
                }
                String str = c1709a.f6683e;
                C1162e.m4378a(AppContext.m5350a(), str);
                C2772c.m12482a().m12506c(new C1710b(10004, str));
            }
        }
    }

    public ElfinModel(@NonNull Application application) {
        super(application);
        this.f5393d = new ArrayList<>();
        this.f5398j = new ArrayList<>();
        this.f5399k = new ArrayList();
        this.f5400l = new ScheduledThreadPoolExecutor(1);
        this.f5394e = new MutableLiveData<>();
        this.f5395f = new MutableLiveData<>();
        this.f5396g = new MutableLiveData<>();
        this.f5397h = new MutableLiveData<>();
        this.f5402n = new C1556m(this);
    }

    /* renamed from: a */
    static /* synthetic */ void m6466a(ElfinModel elfinModel, ArrayList arrayList) {
        elfinModel.f5393d.clear();
        elfinModel.f5399k.clear();
        elfinModel.f5393d.addAll(arrayList);
        Iterator<NotifyMsgBean> it = elfinModel.f5393d.iterator();
        while (it.hasNext()) {
            elfinModel.f5399k.add(it.next().f5814ID);
        }
    }

    /* renamed from: a */
    private void m6467a(ArrayList<NotifyMsgBean> arrayList) {
        this.f5393d.clear();
        this.f5399k.clear();
        this.f5393d.addAll(arrayList);
        Iterator<NotifyMsgBean> it = this.f5393d.iterator();
        while (it.hasNext()) {
            this.f5399k.add(it.next().f5814ID);
        }
    }

    /* renamed from: c */
    private MutableLiveData<NotifyMsgBean> m6469c() {
        return this.f5395f;
    }

    /* renamed from: d */
    private ArrayList<NotifyMsgBean> m6471d() {
        return this.f5393d;
    }

    /* renamed from: e */
    private MutableLiveData<Boolean> m6472e() {
        return this.f5397h;
    }

    /* renamed from: f */
    private MutableLiveData<VersionUpdateInfo> m6473f() {
        return this.f5394e;
    }

    /* renamed from: g */
    private MutableLiveData<Integer> m6474g() {
        return this.f5396g;
    }

    /* renamed from: h */
    private void m6475h() {
        C1463b.m6773a().m6772a(new RunnableC13991());
    }

    /* renamed from: i */
    private void m6476i() {
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest --> ");
        String m5750a = C1261l.m5750a(getApplication(), InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(getApplication());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = C1162e.m4382b();
        C1151ad.m4325c("TAG", "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new C14013();
        m6898a.m6902a(false, getApplication(), updateRequestInfo);
    }

    /* renamed from: j */
    private void m6477j() {
        C1546c.m6918a().m6922a(getApplication(), 5, 0, 0L);
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        m6485a((C1579a.m7013a(C1579a.m7015a(currentTimeMillis, C1579a.f5889b)) / 1000) - currentTimeMillis);
    }

    /* renamed from: k */
    private void m6478k() {
        C1463b.m6773a().m6772a(new C1228b.AnonymousClass1(new C14024()));
    }

    /* renamed from: l */
    private void m6479l() {
        this.f5395f.postValue(this.f5398j.get(0));
        C1149ab.m4306a().m4312a(C1225b.f4513e, (Boolean) true);
        C1228b m5345a = C1228b.m5345a();
        ArrayList<NotifyMsgBean> arrayList = this.f5398j;
        SQLiteDatabase writableDatabase = m5345a.f4555a.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            NotifyMsgBean notifyMsgBean = arrayList.get(size);
            contentValues.clear();
            contentValues.put("number", notifyMsgBean.f5814ID);
            contentValues.put("title", notifyMsgBean.NoticeTitle);
            contentValues.put("time", notifyMsgBean.NoticeTime);
            contentValues.put(C2427b.f8956W, notifyMsgBean.NoticeContent);
            contentValues.put("description", notifyMsgBean.NoticeDescription);
            contentValues.put(InterfaceC3057b.c.f11209c, notifyMsgBean.DescriptionType);
            writableDatabase.insert(C1225b.f4512d, null, contentValues);
        }
        writableDatabase.close();
    }

    /* renamed from: m */
    private void m6480m() {
        this.f5393d.clear();
        C1228b.m5345a().f4555a.getWritableDatabase().delete(C1225b.f4512d, null, null);
    }

    /* renamed from: n */
    private void m6481n() {
        C1463b.m6773a().m6772a(new RunnableC14035());
    }

    /* renamed from: o */
    private void m6482o() {
        this.f5397h.postValue(true);
        C1288a.m5970a(new C14046());
    }

    /* renamed from: p */
    private static void m6483p() {
    }

    /* renamed from: a */
    public final void m6484a() {
        C1151ad.m4325c("TAG", "updateVersionRequestJudgeOperate --> ");
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "updateVersionRequestJudgeOperate --> ");
        if (!C1201x.m5233a(getApplication())) {
            C1154ag.m4342a(getApplication(), "当前网络无法访问，请检查网络设置……");
            return;
        }
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "updateVersionRequest --> ");
        String m5750a = C1261l.m5750a(getApplication(), InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(getApplication());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        updateRequestInfo.IsScriptHotUpgrade = 1;
        updateRequestInfo.AppVersion = C1162e.m4382b();
        C1151ad.m4325c("TAG", "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new C14013();
        m6898a.m6902a(false, getApplication(), updateRequestInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6485a(long j) {
        if (j <= 0) {
            return;
        }
        if (this.f5401m != null) {
            this.f5401m.cancel(false);
            this.f5401m = null;
        }
        this.f5401m = this.f5400l.schedule(new Runnable() { // from class: com.cyjh.elfin.ui.model.ElfinModel.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C1579a.m7021a(InterfaceC1133a.f3913O, ElfinModel.this.getApplication(), C1579a.m7015a(System.currentTimeMillis() / 1000, C1579a.f5889b));
                    ElfinModel elfinModel = ElfinModel.this;
                    C1546c.m6918a().m6922a(elfinModel.getApplication(), 5, 0, 0L);
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    elfinModel.m6485a((C1579a.m7013a(C1579a.m7015a(currentTimeMillis, C1579a.f5889b)) / 1000) - currentTimeMillis);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    Log.e("zzz", "ElfinFreeActivity--" + e.getMessage());
                }
            }
        }, j + new Random().nextInt(18600) + 600, TimeUnit.SECONDS);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1568f
    /* renamed from: a */
    public final void mo6486a(List<NotifyMsgBean> list) {
        this.f5398j.clear();
        this.f5398j.addAll(list);
        if (this.f5399k.contains(this.f5398j.get(0).f5814ID)) {
            return;
        }
        this.f5393d.addAll(0, this.f5398j);
        this.f5395f.postValue(this.f5398j.get(0));
        C1149ab.m4306a().m4312a(C1225b.f4513e, (Boolean) true);
        C1228b m5345a = C1228b.m5345a();
        ArrayList<NotifyMsgBean> arrayList = this.f5398j;
        SQLiteDatabase writableDatabase = m5345a.f4555a.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            NotifyMsgBean notifyMsgBean = arrayList.get(size);
            contentValues.clear();
            contentValues.put("number", notifyMsgBean.f5814ID);
            contentValues.put("title", notifyMsgBean.NoticeTitle);
            contentValues.put("time", notifyMsgBean.NoticeTime);
            contentValues.put(C2427b.f8956W, notifyMsgBean.NoticeContent);
            contentValues.put("description", notifyMsgBean.NoticeDescription);
            contentValues.put(InterfaceC3057b.c.f11209c, notifyMsgBean.DescriptionType);
            writableDatabase.insert(C1225b.f4512d, null, contentValues);
        }
        writableDatabase.close();
    }

    /* renamed from: b */
    public final void m6487b() {
        this.f5402n.m6962a((Context) getApplication());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.arch.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.f5402n.m6961a();
        C1543a.m6898a().m6907d();
        C1546c.m6918a().m6926c();
        if (this.f5401m != null) {
            this.f5401m.cancel(false);
        }
    }
}
