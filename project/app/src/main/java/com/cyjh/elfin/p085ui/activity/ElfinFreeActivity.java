package com.cyjh.elfin.p085ui.activity;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.arch.lifecycle.Observer;
import android.arch.lifecycle.ViewModelProviders;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.common.p072g.C1146a;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1150ac;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1153af;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1171n;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.GameSwitchInfo;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1288a;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.floatingwindowprocess.service.FloatingWindowService;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p074b.C1228b;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.p077e.p080c.C1263n;
import com.cyjh.elfin.p085ui.adpter.TabAdapter;
import com.cyjh.elfin.p085ui.fragment.DescriptionFragment;
import com.cyjh.elfin.p085ui.fragment.ScriptUipSetFragment;
import com.cyjh.elfin.p085ui.model.ElfinModel;
import com.cyjh.elfin.p085ui.model.RegCodeModel;
import com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1320h;
import com.cyjh.elfin.p085ui.view.customview.RTDViewPager;
import com.cyjh.elfin.p085ui.view.viewpagerindicator.TabPageIndicator;
import com.cyjh.elfin.services.C1308a;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.feedback.lib.p092d.C1463b;
import com.cyjh.http.bean.NotifyMsgBean;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1554k;
import com.elf.studio.C1711b;
import com.elfin.engin.C1752d;
import com.elfin.engin.p123a.C1743c;
import com.hjol.R;
import com.hlzn.socketclient.p167f.C2159d;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class ElfinFreeActivity extends BaseModelActivity<ElfinModel> implements View.OnClickListener {

    /* renamed from: c */
    public static final String f5122c = "ElfinFreeActivity";

    /* renamed from: d */
    public static final int f5123d = 2;

    /* renamed from: f */
    private static final int f5124f = 1001;

    /* renamed from: e */
    private ScriptUipSetFragment f5125e;

    /* renamed from: h */
    private NotificationCompat.Builder f5127h;

    /* renamed from: i */
    private NotificationManager f5128i;

    /* renamed from: j */
    private ImageView f5129j;

    /* renamed from: k */
    private TextView f5130k;

    /* renamed from: l */
    private GameSwitchInfo f5131l;

    /* renamed from: n */
    private TextView f5133n;

    /* renamed from: o */
    private ImageView f5134o;

    /* renamed from: p */
    private ImageView f5135p;

    /* renamed from: q */
    private boolean f5136q;

    /* renamed from: r */
    private RegCodeModel f5137r;

    /* renamed from: s */
    private C1554k f5138s;

    /* renamed from: g */
    private Handler f5126g = new Handler(Looper.myLooper()) { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (1009 == message.what) {
                ElfinFreeActivity.m6231a(ElfinFreeActivity.this);
            }
        }
    };

    /* renamed from: m */
    private boolean f5132m = false;

    /* renamed from: t */
    private boolean f5139t = false;

    /* renamed from: com.cyjh.elfin.ui.activity.ElfinFreeActivity$2 */
    /* loaded from: classes.dex */
    final class C13332 implements Observer<RegCodeInfoResponse> {
        C13332() {
        }

        /* renamed from: a */
        private static void m6260a() {
        }

        @Override // android.arch.lifecycle.Observer
        public final /* bridge */ /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.ElfinFreeActivity$a */
    /* loaded from: classes.dex */
    private class AsyncTaskC1339a extends AsyncTask<InputStream, Void, Boolean> {
        private AsyncTaskC1339a() {
        }

        /* synthetic */ AsyncTaskC1339a(ElfinFreeActivity elfinFreeActivity, byte b2) {
            this();
        }

        /* renamed from: a */
        private Boolean m6265a() {
            ElfinFreeActivity.m6251l(ElfinFreeActivity.this);
            return true;
        }

        /* renamed from: b */
        private static void m6266b() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(InputStream[] inputStreamArr) {
            ElfinFreeActivity.m6251l(ElfinFreeActivity.this);
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
        }
    }

    /* renamed from: a */
    private static void m6230a(Context context) {
        Intent intent = new Intent(context, (Class<?>) ElfinFreeActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    static /* synthetic */ void m6231a(ElfinFreeActivity elfinFreeActivity) {
        C1151ad.m4325c(f5122c, "cloudIMInitJudgeOperate --> ");
        if (!C1201x.m5233a(elfinFreeActivity)) {
            if (elfinFreeActivity.f5126g.hasMessages(1009)) {
                return;
            }
            elfinFreeActivity.f5126g.sendEmptyMessageDelayed(1009, 3000L);
            return;
        }
        Script script = C1285c.m5955f().f4851a;
        new C1711b();
        elfinFreeActivity.getString(R.string.elfin_appid);
        script.getId();
        String str = C1487a.m6886a().f5811c.DeviceId;
        C1752d.m8035a();
        C2159d.m9593b("ElfStudioUtil", "cloudIMInit --> ");
    }

    /* renamed from: a */
    static /* synthetic */ void m6232a(ElfinFreeActivity elfinFreeActivity, ArrayList arrayList) {
        elfinFreeActivity.f5127h = new NotificationCompat.Builder(elfinFreeActivity);
        elfinFreeActivity.f5128i = (NotificationManager) elfinFreeActivity.getSystemService("notification");
        Intent intent = new Intent(elfinFreeActivity, (Class<?>) MessagePushActivity.class);
        intent.putParcelableArrayListExtra(C1225b.f4511c, arrayList);
        elfinFreeActivity.f5127h.setSmallIcon(R.drawable.ic_launcher).setLargeIcon(BitmapFactory.decodeResource(elfinFreeActivity.getResources(), R.drawable.ic_launcher)).setOngoing(false).setAutoCancel(true).setPriority(0).setDefaults(2).setContentIntent(PendingIntent.getActivity(elfinFreeActivity, 0, intent, 134217728));
    }

    /* renamed from: a */
    private void m6233a(ArrayList<NotifyMsgBean> arrayList) {
        this.f5127h = new NotificationCompat.Builder(this);
        this.f5128i = (NotificationManager) getSystemService("notification");
        Intent intent = new Intent(this, (Class<?>) MessagePushActivity.class);
        intent.putParcelableArrayListExtra(C1225b.f4511c, arrayList);
        this.f5127h.setSmallIcon(R.drawable.ic_launcher).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher)).setOngoing(false).setAutoCancel(true).setPriority(0).setDefaults(2).setContentIntent(PendingIntent.getActivity(this, 0, intent, 134217728));
    }

    /* renamed from: b */
    static /* synthetic */ boolean m6234b(ElfinFreeActivity elfinFreeActivity) {
        elfinFreeActivity.f5139t = false;
        return false;
    }

    /* renamed from: g */
    private void m6240g() {
        AppContext.m5350a().f4567g = true;
        C1260k.m5735a(102);
        C1463b.m6773a().m6772a(new C1228b.AnonymousClass1(new ElfinModel.C14024()));
        C1463b.m6773a().m6772a(new ElfinModel.RunnableC14035());
        if (C1201x.m5233a(this)) {
            ((ElfinModel) this.f4009b).m6487b();
        }
        String str = C1147a.m4247a(this).x + Marker.ANY_MARKER + C1147a.m4247a(this).y;
        String str2 = C1147a.m4247a(this).y + Marker.ANY_MARKER + C1147a.m4247a(this).x;
        String string = getString(R.string.app_resolution);
        byte b2 = 0;
        if (string.contains(str) || string.contains(str2) || TextUtils.isEmpty(string)) {
            this.f5133n.setVisibility(8);
        } else {
            this.f5133n.setVisibility(0);
        }
        ArrayList arrayList = new ArrayList();
        this.f5125e = new ScriptUipSetFragment();
        DescriptionFragment descriptionFragment = new DescriptionFragment();
        arrayList.add(this.f5125e);
        arrayList.add(descriptionFragment);
        TabAdapter tabAdapter = new TabAdapter(this, getSupportFragmentManager(), arrayList);
        RTDViewPager rTDViewPager = (RTDViewPager) findViewById(R.id.viewpager);
        rTDViewPager.setAdapter(tabAdapter);
        ((TabPageIndicator) findViewById(R.id.indicator)).setViewPager(rTDViewPager);
        if (C1149ab.m4306a().m4314b(C1225b.f4513e, (Boolean) false)) {
            this.f5129j.setVisibility(0);
        }
        ((ElfinModel) this.f4009b).m6484a();
        C1463b.m6773a().m6772a(new ElfinModel.RunnableC13991());
        this.f5138s = new C1554k();
        this.f5138s.m6958a((Context) this);
        getApplicationContext();
        C1308a m6120a = C1308a.m6120a();
        Intent intent = new Intent(this, (Class<?>) FloatingWindowService.class);
        if (m6120a.f5008b != null) {
            bindService(intent, m6120a.f5008b, 1);
        }
        new AsyncTaskC1339a(this, b2).executeOnExecutor(Executors.newCachedThreadPool(), new InputStream[0]);
        boolean z = AppContext.m5350a().f4573m;
        boolean m4314b = C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false);
        C1162e.m4375a(this, m4314b);
        if (m4314b && z) {
            ElfinModel elfinModel = (ElfinModel) this.f4009b;
            elfinModel.f5397h.postValue(true);
            C1288a.m5970a(new ElfinModel.C14046());
        }
    }

    /* renamed from: h */
    private void m6242h() {
        boolean z = AppContext.m5350a().f4573m;
        boolean m4314b = C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false);
        C1162e.m4375a(this, m4314b);
        if (m4314b && z) {
            ElfinModel elfinModel = (ElfinModel) this.f4009b;
            elfinModel.f5397h.postValue(true);
            C1288a.m5970a(new ElfinModel.C14046());
        }
    }

    /* renamed from: h */
    static /* synthetic */ boolean m6243h(ElfinFreeActivity elfinFreeActivity) {
        elfinFreeActivity.f5136q = false;
        return false;
    }

    /* renamed from: i */
    private void m6245i() {
        moveTaskToBack(true);
        this.f5126g.postDelayed(RunnableC1376a.f5277a, 1000L);
    }

    /* renamed from: j */
    private void m6247j() {
        this.f5137r = (RegCodeModel) ViewModelProviders.m18of(this).get(RegCodeModel.class);
        this.f5137r.f5412b.observe(this, new C13332());
    }

    /* renamed from: k */
    private void m6248k() {
        ElfinModel elfinModel = (ElfinModel) this.f4009b;
        C1463b.m6773a().m6772a(new C1228b.AnonymousClass1(new ElfinModel.C14024()));
        C1463b.m6773a().m6772a(new ElfinModel.RunnableC14035());
    }

    /* renamed from: k */
    static /* synthetic */ void m6249k(ElfinFreeActivity elfinFreeActivity) {
        elfinFreeActivity.moveTaskToBack(true);
        elfinFreeActivity.f5126g.postDelayed(RunnableC1376a.f5277a, 1000L);
    }

    /* renamed from: l */
    private void m6250l() {
        C1151ad.m4325c(f5122c, "cloudIMInitJudgeOperate --> ");
        if (!C1201x.m5233a(this)) {
            if (this.f5126g.hasMessages(1009)) {
                return;
            }
            this.f5126g.sendEmptyMessageDelayed(1009, 3000L);
            return;
        }
        Script script = C1285c.m5955f().f4851a;
        new C1711b();
        getString(R.string.elfin_appid);
        script.getId();
        String str = C1487a.m6886a().f5811c.DeviceId;
        C1752d.m8035a();
        C2159d.m9593b("ElfStudioUtil", "cloudIMInit --> ");
    }

    /* renamed from: l */
    static /* synthetic */ void m6251l(ElfinFreeActivity elfinFreeActivity) {
        try {
            if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4445J, (Boolean) false)) {
                return;
            }
            C1150ac.m4316a("setenforce 0", true, 0);
            C1149ab.m4306a().m4312a(InterfaceC1224a.f4445J, (Boolean) true);
            String packageName = elfinFreeActivity.getPackageName();
            C1171n.m4463b(Environment.getExternalStorageDirectory().getAbsolutePath(), C1225b.f4529u);
            boolean m4379a = C1162e.m4379a(elfinFreeActivity.getApplicationContext(), C1225b.f4529u, "/sdcard/app-release.apk");
            String str = Build.VERSION.SDK_INT <= 19 ? "app" : "priv-app";
            C1151ad.m4325c(f5122c, "pushApkToSystemApp --> filePath=/sdcard/app-release.apk,copyAppResult=" + m4379a);
            C1150ac.a m4319a = C1150ac.m4319a(new String[]{"setenforce 0", "mount -o remount,rw /system", "chmod 777 /system", "chmod 777 /system/" + str, "cat /sdcard/app-release.apk > /system/" + str + File.separator + C1225b.f4529u, "chmod 777 /system/" + str + File.separator + C1225b.f4529u, "mount -o remount,ro /system"});
            boolean isEmpty = TextUtils.isEmpty(m4319a.f4054c);
            C1149ab.m4306a().m4312a(InterfaceC1224a.f4445J, Boolean.valueOf(isEmpty));
            String str2 = f5122c;
            StringBuilder sb = new StringBuilder("pushApkToSystemApp --> errorMsg=");
            sb.append(m4319a.f4054c);
            sb.append(",successMsg=");
            sb.append(m4319a.f4053b);
            sb.append(",cmdResult=");
            sb.append(isEmpty);
            C1151ad.m4325c(str2, sb.toString());
            String m4368a = C1162e.m4368a();
            if (TextUtils.isEmpty(m4368a)) {
                C1162e.m4377a(packageName, true);
            } else {
                if (m4368a.contains(packageName)) {
                    return;
                }
                C1162e.m4377a("," + packageName, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    private void m6252m() {
        C2772c.m12482a().m12503a(this);
        this.f5135p.setOnClickListener(this);
        this.f5134o.setOnClickListener(this);
        this.f5130k.setOnClickListener(this);
    }

    /* renamed from: n */
    private void m6253n() {
        TextView textView;
        int i;
        String str = C1147a.m4247a(this).x + Marker.ANY_MARKER + C1147a.m4247a(this).y;
        String str2 = C1147a.m4247a(this).y + Marker.ANY_MARKER + C1147a.m4247a(this).x;
        String string = getString(R.string.app_resolution);
        if (string.contains(str) || string.contains(str2) || TextUtils.isEmpty(string)) {
            textView = this.f5133n;
            i = 8;
        } else {
            textView = this.f5133n;
            i = 0;
        }
        textView.setVisibility(i);
    }

    /* renamed from: o */
    private void m6254o() {
        ArrayList arrayList = new ArrayList();
        this.f5125e = new ScriptUipSetFragment();
        DescriptionFragment descriptionFragment = new DescriptionFragment();
        arrayList.add(this.f5125e);
        arrayList.add(descriptionFragment);
        TabAdapter tabAdapter = new TabAdapter(this, getSupportFragmentManager(), arrayList);
        RTDViewPager rTDViewPager = (RTDViewPager) findViewById(R.id.viewpager);
        rTDViewPager.setAdapter(tabAdapter);
        ((TabPageIndicator) findViewById(R.id.indicator)).setViewPager(rTDViewPager);
    }

    /* renamed from: p */
    private void m6255p() {
        stopService(new Intent(this, (Class<?>) PhoneStateService.class));
        MobclickAgent.onKillProcess(AppContext.m5350a());
        C1752d.m8028a(this);
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager != null) {
            activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
        }
    }

    /* renamed from: q */
    private void m6256q() {
        try {
            ScriptUipSetFragment scriptUipSetFragment = this.f5125e;
            if (scriptUipSetFragment.f5368c != null) {
                scriptUipSetFragment.f5368c.m6507c();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        stopService(new Intent(this, (Class<?>) PhoneStateService.class));
        MobclickAgent.onKillProcess(AppContext.m5350a());
        C1752d.m8028a(this);
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager != null) {
            activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
        }
    }

    /* renamed from: r */
    private void m6257r() {
        if (C1149ab.m4306a().m4314b(C1225b.f4513e, (Boolean) false)) {
            this.f5129j.setVisibility(0);
        }
    }

    /* renamed from: s */
    private void m6258s() {
        new AsyncTaskC1339a(this, (byte) 0).executeOnExecutor(Executors.newCachedThreadPool(), new InputStream[0]);
    }

    /* renamed from: t */
    private void m6259t() {
        try {
            if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4445J, (Boolean) false)) {
                return;
            }
            C1150ac.m4316a("setenforce 0", true, 0);
            C1149ab.m4306a().m4312a(InterfaceC1224a.f4445J, (Boolean) true);
            String packageName = getPackageName();
            C1171n.m4463b(Environment.getExternalStorageDirectory().getAbsolutePath(), C1225b.f4529u);
            boolean m4379a = C1162e.m4379a(getApplicationContext(), C1225b.f4529u, "/sdcard/app-release.apk");
            String str = Build.VERSION.SDK_INT <= 19 ? "app" : "priv-app";
            C1151ad.m4325c(f5122c, "pushApkToSystemApp --> filePath=/sdcard/app-release.apk,copyAppResult=" + m4379a);
            C1150ac.a m4319a = C1150ac.m4319a(new String[]{"setenforce 0", "mount -o remount,rw /system", "chmod 777 /system", "chmod 777 /system/" + str, "cat /sdcard/app-release.apk > /system/" + str + File.separator + C1225b.f4529u, "chmod 777 /system/" + str + File.separator + C1225b.f4529u, "mount -o remount,ro /system"});
            boolean isEmpty = TextUtils.isEmpty(m4319a.f4054c);
            C1149ab.m4306a().m4312a(InterfaceC1224a.f4445J, Boolean.valueOf(isEmpty));
            String str2 = f5122c;
            StringBuilder sb = new StringBuilder("pushApkToSystemApp --> errorMsg=");
            sb.append(m4319a.f4054c);
            sb.append(",successMsg=");
            sb.append(m4319a.f4053b);
            sb.append(",cmdResult=");
            sb.append(isEmpty);
            C1151ad.m4325c(str2, sb.toString());
            String m4368a = C1162e.m4368a();
            if (TextUtils.isEmpty(m4368a)) {
                C1162e.m4377a(packageName, true);
            } else {
                if (m4368a.contains(packageName)) {
                    return;
                }
                C1162e.m4377a("," + packageName, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: b */
    public final Class<ElfinModel> mo4214b() {
        return ElfinModel.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: c */
    public final void mo4215c() {
        ((ElfinModel) this.f4009b).f5395f.observe(this, new Observer<NotifyMsgBean>() { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.4
            /* renamed from: a */
            private void m6261a(@Nullable NotifyMsgBean notifyMsgBean) {
                if (notifyMsgBean != null) {
                    ElfinFreeActivity.this.f5129j.setVisibility(0);
                    if (notifyMsgBean.IsSendMessage) {
                        ElfinFreeActivity.m6232a(ElfinFreeActivity.this, ((ElfinModel) ElfinFreeActivity.this.f4009b).f5393d);
                        ElfinFreeActivity.this.f5127h.setContentTitle(notifyMsgBean.NoticeTitle).setTicker(notifyMsgBean.NoticeTitle).setContentText(notifyMsgBean.NoticeTitle);
                        ElfinFreeActivity.this.f5128i.notify(1001, ElfinFreeActivity.this.f5127h.build());
                    }
                }
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable NotifyMsgBean notifyMsgBean) {
                NotifyMsgBean notifyMsgBean2 = notifyMsgBean;
                if (notifyMsgBean2 != null) {
                    ElfinFreeActivity.this.f5129j.setVisibility(0);
                    if (notifyMsgBean2.IsSendMessage) {
                        ElfinFreeActivity.m6232a(ElfinFreeActivity.this, ((ElfinModel) ElfinFreeActivity.this.f4009b).f5393d);
                        ElfinFreeActivity.this.f5127h.setContentTitle(notifyMsgBean2.NoticeTitle).setTicker(notifyMsgBean2.NoticeTitle).setContentText(notifyMsgBean2.NoticeTitle);
                        ElfinFreeActivity.this.f5128i.notify(1001, ElfinFreeActivity.this.f5127h.build());
                    }
                }
            }
        });
        ((ElfinModel) this.f4009b).f5394e.observe(this, new Observer<VersionUpdateInfo>() { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.5
            /* renamed from: a */
            private void m6262a(@Nullable VersionUpdateInfo versionUpdateInfo) {
                if (versionUpdateInfo == null) {
                    return;
                }
                if (versionUpdateInfo.UpgradeMode == 1) {
                    if (versionUpdateInfo.UpdateType == 1) {
                        AppContext.m5350a().f4566f = true;
                    }
                    new ViewOnClickListenerC1320h(ElfinFreeActivity.this, versionUpdateInfo, false).show();
                } else if (versionUpdateInfo.UpgradeMode == 2) {
                    C1153af.m4332a().m4336a(versionUpdateInfo.AppVersion);
                    int i = C1263n.f4711c;
                    if (3 == versionUpdateInfo.UpdateType) {
                        if (ElfinFreeActivity.this.f5136q) {
                            ElfinFreeActivity.m6243h(ElfinFreeActivity.this);
                            i = C1263n.f4712d;
                        } else {
                            i = C1263n.f4710b;
                        }
                    }
                    C1263n.m5764a().m5772a(ElfinFreeActivity.this.getApplicationContext(), C1285c.m5955f().f4851a.getId(), i).m5773a(versionUpdateInfo.UpdateUrl);
                }
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable VersionUpdateInfo versionUpdateInfo) {
                VersionUpdateInfo versionUpdateInfo2 = versionUpdateInfo;
                if (versionUpdateInfo2 != null) {
                    if (versionUpdateInfo2.UpgradeMode == 1) {
                        if (versionUpdateInfo2.UpdateType == 1) {
                            AppContext.m5350a().f4566f = true;
                        }
                        new ViewOnClickListenerC1320h(ElfinFreeActivity.this, versionUpdateInfo2, false).show();
                    } else if (versionUpdateInfo2.UpgradeMode == 2) {
                        C1153af.m4332a().m4336a(versionUpdateInfo2.AppVersion);
                        int i = C1263n.f4711c;
                        if (3 == versionUpdateInfo2.UpdateType) {
                            if (ElfinFreeActivity.this.f5136q) {
                                ElfinFreeActivity.m6243h(ElfinFreeActivity.this);
                                i = C1263n.f4712d;
                            } else {
                                i = C1263n.f4710b;
                            }
                        }
                        C1263n.m5764a().m5772a(ElfinFreeActivity.this.getApplicationContext(), C1285c.m5955f().f4851a.getId(), i).m5773a(versionUpdateInfo2.UpdateUrl);
                    }
                }
            }
        });
        ((ElfinModel) this.f4009b).f5396g.observe(this, new Observer<Integer>() { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.6
            /* renamed from: a */
            private void m6263a(@Nullable Integer num) {
                if (1006 == num.intValue()) {
                    ElfinFreeActivity.this.f5137r.m6498a(C1238c.m5531a().m5543b(), 0);
                } else if (1007 == num.intValue()) {
                    ElfinFreeActivity.m6231a(ElfinFreeActivity.this);
                } else if (1008 == num.intValue()) {
                    ElfinFreeActivity.this.f5138s.m6958a((Context) ElfinFreeActivity.this);
                }
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable Integer num) {
                Integer num2 = num;
                if (1006 == num2.intValue()) {
                    ElfinFreeActivity.this.f5137r.m6498a(C1238c.m5531a().m5543b(), 0);
                } else if (1007 == num2.intValue()) {
                    ElfinFreeActivity.m6231a(ElfinFreeActivity.this);
                } else if (1008 == num2.intValue()) {
                    ElfinFreeActivity.this.f5138s.m6958a((Context) ElfinFreeActivity.this);
                }
            }
        });
        ((ElfinModel) this.f4009b).f5397h.observe(this, new Observer<Boolean>() { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.7
            /* renamed from: a */
            private void m6264a(@Nullable Boolean bool) {
                if (bool.booleanValue()) {
                    ElfinFreeActivity.m6249k(ElfinFreeActivity.this);
                }
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable Boolean bool) {
                if (bool.booleanValue()) {
                    ElfinFreeActivity.m6249k(ElfinFreeActivity.this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: d */
    public final void mo4216d() {
        getWindow().setSoftInputMode(48);
        this.f5135p = (ImageView) findViewById(R.id.id_img_setting);
        this.f5129j = (ImageView) findViewById(R.id.id_img_dot);
        this.f5134o = (ImageView) findViewById(R.id.id_img_msg);
        this.f5133n = (TextView) findViewById(R.id.tv_resolution_unsupport);
        this.f5130k = (TextView) findViewById(R.id.tab_recommend_games);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: e */
    public final int mo4217e() {
        return R.layout.activity_main;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 2) {
            C1743c.a.f6878a.mo7759c().mo7751a((Context) this);
        }
        if (i != 10000) {
            return;
        }
        C1151ad.m4325c(f5122c, "onActivityResult --> ");
        String str = Environment.getExternalStorageDirectory() + File.separator + getPackageName() + ".apk";
        if (new File(str).exists()) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setFlags(1);
            intent2.setDataAndType(FileProvider.getUriForFile(this, getString(R.string.pay_appid), new File(str)), "application/vnd.android.package-archive");
            startActivity(intent2);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.f5139t) {
            this.f5139t = true;
            C1154ag.m4340a(getApplicationContext(), (int) R.string.main_toast_exit);
            this.f5126g.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.activity.ElfinFreeActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    ElfinFreeActivity.m6234b(ElfinFreeActivity.this);
                }
            }, 2000L);
            return;
        }
        C1289b.m6001j();
        if (C1289b.m5992b()) {
            C1289b.m6001j();
            C1289b.m5995d();
        }
        try {
            ScriptUipSetFragment scriptUipSetFragment = this.f5125e;
            if (scriptUipSetFragment.f5368c != null) {
                scriptUipSetFragment.f5368c.m6507c();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        stopService(new Intent(this, (Class<?>) PhoneStateService.class));
        MobclickAgent.onKillProcess(AppContext.m5350a());
        C1752d.m8028a(this);
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager != null) {
            activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
        }
        C1146a.m4237a();
        C1146a.m4239b();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.id_img_setting /* 2131755208 */:
                startActivity(new Intent(this, (Class<?>) SettingActivity.class));
                return;
            case R.id.id_img_msg /* 2131755209 */:
                this.f5129j.setVisibility(4);
                Intent intent = new Intent(this, (Class<?>) MessagePushActivity.class);
                ArrayList<NotifyMsgBean> arrayList = ((ElfinModel) this.f4009b).f5393d;
                if (arrayList != null && arrayList.size() > 0) {
                    intent.putParcelableArrayListExtra(C1225b.f4511c, arrayList);
                }
                startActivity(intent);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity, com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppContext.m5350a().f4567g = true;
        C1260k.m5735a(102);
        C1463b.m6773a().m6772a(new C1228b.AnonymousClass1(new ElfinModel.C14024()));
        C1463b.m6773a().m6772a(new ElfinModel.RunnableC14035());
        if (C1201x.m5233a(this)) {
            ((ElfinModel) this.f4009b).m6487b();
        }
        String str = C1147a.m4247a(this).x + Marker.ANY_MARKER + C1147a.m4247a(this).y;
        String str2 = C1147a.m4247a(this).y + Marker.ANY_MARKER + C1147a.m4247a(this).x;
        String string = getString(R.string.app_resolution);
        byte b2 = 0;
        if (string.contains(str) || string.contains(str2) || TextUtils.isEmpty(string)) {
            this.f5133n.setVisibility(8);
        } else {
            this.f5133n.setVisibility(0);
        }
        ArrayList arrayList = new ArrayList();
        this.f5125e = new ScriptUipSetFragment();
        DescriptionFragment descriptionFragment = new DescriptionFragment();
        arrayList.add(this.f5125e);
        arrayList.add(descriptionFragment);
        TabAdapter tabAdapter = new TabAdapter(this, getSupportFragmentManager(), arrayList);
        RTDViewPager rTDViewPager = (RTDViewPager) findViewById(R.id.viewpager);
        rTDViewPager.setAdapter(tabAdapter);
        ((TabPageIndicator) findViewById(R.id.indicator)).setViewPager(rTDViewPager);
        if (C1149ab.m4306a().m4314b(C1225b.f4513e, (Boolean) false)) {
            this.f5129j.setVisibility(0);
        }
        ((ElfinModel) this.f4009b).m6484a();
        C1463b.m6773a().m6772a(new ElfinModel.RunnableC13991());
        this.f5138s = new C1554k();
        this.f5138s.m6958a((Context) this);
        getApplicationContext();
        C1308a m6120a = C1308a.m6120a();
        Intent intent = new Intent(this, (Class<?>) FloatingWindowService.class);
        if (m6120a.f5008b != null) {
            bindService(intent, m6120a.f5008b, 1);
        }
        new AsyncTaskC1339a(this, b2).executeOnExecutor(Executors.newCachedThreadPool(), new InputStream[0]);
        boolean z = AppContext.m5350a().f4573m;
        boolean m4314b = C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false);
        C1162e.m4375a(this, m4314b);
        if (m4314b && z) {
            ElfinModel elfinModel = (ElfinModel) this.f4009b;
            elfinModel.f5397h.postValue(true);
            C1288a.m5970a(new ElfinModel.C14046());
        }
        C2772c.m12482a().m12503a(this);
        this.f5135p.setOnClickListener(this);
        this.f5134o.setOnClickListener(this);
        this.f5130k.setOnClickListener(this);
        this.f5137r = (RegCodeModel) ViewModelProviders.m18of(this).get(RegCodeModel.class);
        this.f5137r.f5412b.observe(this, new C13332());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f5126g.removeCallbacksAndMessages(null);
        this.f5132m = false;
        AppContext.m5350a().f4566f = false;
        AppContext.m5350a().f4567g = false;
        C1228b.m5345a().f4555a.close();
        C2772c.m12482a().m12505b(this);
        ParamsWrap.getParamsWrap().cleanData();
        C1554k.m6957a();
        AppContext.m5350a().f4568h = false;
        C1308a m6120a = C1308a.m6120a();
        unbindService(m6120a.f5008b);
        m6120a.f5009c = null;
        m6120a.f5010d = null;
        m6120a.f5007a = null;
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        int msgType = msgItem.getMsgType();
        if (msgType == 1001) {
            this.f5129j.setVisibility(4);
            return;
        }
        if (msgType == 1003) {
            ((ElfinModel) this.f4009b).f5393d.clear();
            C1228b.m5345a().f4555a.getWritableDatabase().delete(C1225b.f4512d, null, null);
        } else {
            if (msgType != 2000) {
                return;
            }
            C1151ad.m4325c(f5122c, "SCRIPT_NEED_UPGRADE");
            this.f5136q = true;
            ((ElfinModel) this.f4009b).m6484a();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
        if (this.f5132m) {
            ((ElfinModel) this.f4009b).m6487b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f5132m = true;
    }
}
