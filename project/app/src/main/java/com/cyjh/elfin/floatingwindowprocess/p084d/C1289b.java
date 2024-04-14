package com.cyjh.elfin.floatingwindowprocess.p084d;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import com.core.p063a.C1114a;
import com.core.p063a.C1116c;
import com.core.util.C1117a;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1169l;
import com.cyjh.common.util.C1200w;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.floatview.ElfinFloatView;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1283a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1286d;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1288a;
import com.cyjh.elfin.floatingwindowprocess.service.C1302a;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p077e.p079b.C1246a;
import com.cyjh.elfin.p077e.p080c.C1255f;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.elfin.p085ui.p086a.DialogC1319g;
import com.cyjh.http.bean.request.DeviceInfo;
import com.cyjh.http.p094a.C1482a;
import com.cyjh.http.p094a.C1483b;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1546c;
import com.cyjh.http.p096c.p099c.C1549f;
import com.cyjh.http.p096c.p099c.C1561r;
import com.cyjh.http.p104e.C1579a;
import com.cyjh.mobileanjian.ipc.rpc.RestartScriptHelper;
import com.cyjh.mq.sdk.MqBridge;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.elfin.engin.AbstractC1745b;
import com.elfin.engin.C1750c;
import com.elfin.engin.C1752d;
import com.elfin.engin.C1754f;
import com.elfin.engin.C1755g;
import com.elfin.engin.InterfaceC1753e;
import com.elfin.engin.p123a.C1743c;
import com.goldcoast.sdk.domain.EntryPoint;
import com.hjol.R;
import com.rck.yt.ten.cn.Orcck;
import java.io.File;
import java.util.Timer;
import org.greenrobot.eventbus.C2772c;
import org.json.JSONObject;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.d.b */
/* loaded from: classes.dex */
public final class C1289b {

    /* renamed from: i */
    private static final int f4869i = 3000;

    /* renamed from: j */
    private static final String f4870j = "ScriptRunnerManager";

    /* renamed from: l */
    private static final C1289b f4871l = new C1289b();

    /* renamed from: a */
    public String f4872a;

    /* renamed from: b */
    public int f4873b;

    /* renamed from: g */
    private boolean f4878g;

    /* renamed from: k */
    private int f4880k;

    /* renamed from: c */
    final Handler f4874c = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.elfin.floatingwindowprocess.d.b.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1 || i == 2) {
                return;
            }
            if (i == 3) {
                Object obj = message.obj;
                C1743c unused = C1743c.a.f6878a;
                int i2 = C1289b.this.f4873b;
            } else if (message.what == 1000) {
                C1549f.m6932a().m6937a((Context) AppContext.m5350a());
            }
        }
    };

    /* renamed from: h */
    private final InterfaceC1753e f4879h = new InterfaceC1753e() { // from class: com.cyjh.elfin.floatingwindowprocess.d.b.2
        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: a */
        public final void mo6013a() {
            C1289b.m6000i();
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: a */
        public final void mo6014a(float f, int i, int i2) {
            ImageView imageView;
            int i3;
            C1289b.m5999h();
            ElfinFloatView elfinFloatView = C1283a.m5940a().f4842a;
            C1151ad.m4325c(ElfinFloatView.f4903a, "posControlBar --> position=" + f + ",lockState=" + i + ",isRight=" + i2);
            elfinFloatView.f4929n = i;
            if (elfinFloatView.f4929n != 0) {
                elfinFloatView.f4918c.setOnTouchListener(null);
            }
            if (elfinFloatView.f4926k.getVisibility() == 0) {
                elfinFloatView.f4926k.setVisibility(8);
                elfinFloatView.f4926k.m6038a();
            }
            elfinFloatView.m6080a(i2 == 0 ? 0 : C1147a.m4247a(elfinFloatView.getContext()).x, (int) ((C1147a.m4247a(elfinFloatView.getContext()).y * f) - elfinFloatView.getHeight()));
            elfinFloatView.f4919d.removeView(elfinFloatView.f4920e);
            elfinFloatView.f4919d.addView(elfinFloatView.f4920e, 0);
            if (C1285c.m5955f().f4853d == 2) {
                imageView = elfinFloatView.f4918c;
                i3 = R.drawable.elfin_run1;
            } else if (C1285c.m5955f().f4853d == 3) {
                imageView = elfinFloatView.f4918c;
                i3 = R.drawable.elfin_pause1;
            } else {
                imageView = elfinFloatView.f4918c;
                i3 = R.drawable.elfin_normal1;
            }
            imageView.setImageResource(i3);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: a */
        public final void mo6015a(int i) {
            System.out.println("onSetControlBarVisiable:" + i);
            C1289b.m5982a(i);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: a */
        public final void mo6016a(int i, String str) {
            C1289b c1289b = C1289b.this;
            try {
                if (i == 31) {
                    c1289b.m6012a(AppContext.m5350a().getString(R.string.check_heartbeat_failed));
                    return;
                }
                if (i == 32) {
                    c1289b.m6012a(new JSONObject(str).getString(C1225b.f4512d));
                    return;
                }
                if (i == 33) {
                    c1289b.m6012a(AppContext.m5350a().getString(R.string.no_get_heartbeat_time));
                    return;
                }
                if (i == 36) {
                    C1151ad.m4325c(C1289b.f4870j, "initElf --> ENUM_SCRIPT_NEED_UPGRADE");
                    C1255f.m5689a();
                    C1255f.m5690a(AppContext.m5350a(), "initElf --> ENUM_SCRIPT_NEED_UPGRADE");
                    C2772c.m12482a().m12506c(new MsgItem(2000));
                    return;
                }
                if (i == 34) {
                    c1289b.m6012a(new JSONObject(str).getString(C1225b.f4512d));
                } else if (i == 37) {
                    C1285c.m5955f().f4853d = 4;
                }
            } catch (Exception e) {
                Log.e("zzz", "ElfinFreeActivity--initListener e:" + e.getMessage());
                e.printStackTrace();
                C1154ag.m4344b(AppContext.m5350a(), e.getMessage());
            }
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: a */
        public final void mo6017a(String str) {
            C1151ad.m4325c(C1289b.f4870j, "launchApp --> packageName=" + str);
            Message obtainMessage = C1289b.this.f4874c.obtainMessage();
            obtainMessage.what = 3;
            obtainMessage.obj = str;
            C1289b.this.f4874c.sendMessage(obtainMessage);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: b */
        public final void mo6018b() {
            C1289b c1289b = C1289b.this;
            C1151ad.m4325c(C1289b.f4870j, "onStartScript");
            C1302a.m6090a().m6098a(4);
            C1238c m5531a = C1238c.m5531a();
            if (C1238c.f4604d) {
                long currentTimeMillis = (m5531a.f4608b - (System.currentTimeMillis() / 1000)) / 60;
                if (currentTimeMillis > 0) {
                    C1154ag.m4344b(AppContext.m5350a(), "注册码" + C1169l.m4449a(AppContext.m5350a(), currentTimeMillis));
                }
            }
            C1285c.m5955f().f4853d = 2;
            c1289b.f4876e = false;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "AppContext  onStartScript --> ");
            C1288a.m5970a(new AnonymousClass3());
            C1286d.m5965a();
            C1286d.m5968b();
            C1289b.m5999h();
            C1151ad.m4325c(C1289b.f4870j, "ddyStaticsJudgeOperate --> 1");
            C1482a.m6860a();
            boolean m6861b = C1482a.m6861b();
            C1152ae.m4329a(AppContext.m5350a(), "是否是多多云环境：" + m6861b);
            C1151ad.m4325c(C1289b.f4870j, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment=" + m6861b);
            if (m6861b) {
                C1483b.m6863a().f5784b = new AnonymousClass4();
                C1483b m6863a = C1483b.m6863a();
                C1151ad.m4323a(C1483b.f5779a, "startTimer --> ");
                if (m6863a.f5785c == null) {
                    m6863a.f5785c = new Timer();
                    m6863a.f5786d = new C1483b.b(m6863a, (byte) 0);
                }
                m6863a.f5785c.schedule(m6863a.f5786d, 180000L, 7200000L);
            }
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: b */
        public final void mo6019b(int i) {
            AppContext m5350a;
            int i2;
            C1289b c1289b = C1289b.this;
            if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true) && i == 114) {
                if (!C1201x.m5233a(AppContext.m5350a())) {
                    m5350a = AppContext.m5350a();
                    i2 = R.string.network_off;
                } else if (AppContext.m5350a().f4566f) {
                    m5350a = AppContext.m5350a();
                    i2 = R.string.version_too_low;
                } else if (!AppContext.m5350a().f4567g) {
                    m5350a = AppContext.m5350a();
                    i2 = R.string.volume_run_script_tips;
                } else {
                    if (!C1285c.f4848b) {
                        C1285c.f4848b = true;
                        C1289b.m6001j();
                        if (C1289b.m5992b()) {
                            C1289b.m5995d();
                            C1285c.f4848b = false;
                        } else {
                            C1302a m6090a = C1302a.m6090a();
                            Message obtain = Message.obtain();
                            Bundle bundle = new Bundle();
                            bundle.putInt(C1246a.f4640c, C1246a.f4651n);
                            obtain.setData(bundle);
                            try {
                                m6090a.f4977b.send(obtain);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        c1289b.f4874c.removeCallbacksAndMessages(null);
                        c1289b.f4874c.postDelayed(new AnonymousClass5(), 3000L);
                        return;
                    }
                    m5350a = AppContext.m5350a();
                    i2 = R.string.volume_click_hips;
                }
                C1154ag.m4340a(m5350a, i2);
            }
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: b */
        public final void mo6020b(int i, String str) {
            C1289b c1289b = C1289b.this;
            C1151ad.m4325c(C1289b.f4870j, "onStopScript");
            C1302a.m6090a().m6098a(1);
            C1285c.m5955f().f4853d = 1;
            C1483b.m6863a().m6866b();
            c1289b.f4876e = true;
            C1255f.m5689a();
            C1255f.m5690a(AppContext.m5350a(), "AppContext  onStopScript --> returnCode=" + i + ",msg=" + str);
            AppContext m5350a = AppContext.m5350a();
            StringBuilder sb = new StringBuilder("callback code:");
            sb.append(i);
            String sb2 = sb.toString();
            try {
                File file = new File(C1579a.m7014a(m5350a), "heartbeatCheckFree.txt");
                if (!file.exists()) {
                    file.createNewFile();
                }
                C1579a.m7020a(file, sb2);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(C1487a.m6886a().f5811c.DeviceId) || TextUtils.isEmpty(C1487a.m6886a().f5811c.DeviceCode)) {
                DeviceInfo m7032c = C1579a.m7032c(AppContext.m5350a());
                C1487a.m6886a().f5811c.DeviceId = m7032c.DeviceId;
                C1487a.m6886a().f5811c.DeviceCode = m7032c.DeviceCode;
            }
            if (!c1289b.f4875d && ParamsWrap.getParamsWrap().mStartRunResponseInfo != null) {
                C1288a.m5972a((C1546c.a) null);
            }
            C1286d.m5965a();
            C1286d.m5968b();
            C1289b.m5999h();
            if (i == 1003) {
                Toast.makeText(AppContext.m5350a(), (int) R.string.toast_run_no_permission, 0).show();
            } else if (i == 1002) {
                Log.d("zzz", "AppContext--onStopScript--MqmCode.MQM_RUNNER_EXCEPTION");
            }
            if (RestartScriptHelper.isNeedRestart().booleanValue()) {
                C1288a.m5971a((C1288a.a) null);
            }
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: b */
        public final void mo6021b(String str) {
            C1151ad.m4325c(C1289b.f4870j, "killApp --> packageName=" + str);
            C1743c.a.f6878a.mo7759c().mo7752a(str, C1289b.this.f4873b);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: c */
        public final void mo6022c() {
            C1289b c1289b = C1289b.this;
            Log.i("IPC_ANDROID", "onPause:" + C1285c.m5955f().f4853d + ",flag:" + c1289b.f4877f);
            if (4 == C1285c.m5955f().f4853d) {
                C1200w.m5232a(AppContext.m5350a(), AppContext.m5350a().getString(R.string.script_run_pausing));
                return;
            }
            C1285c.m5955f().f4853d = 3;
            if (c1289b.f4877f) {
                C1289b.m5999h();
                c1289b.f4877f = false;
            }
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: c */
        public final void mo6023c(int i) {
            C1151ad.m4325c(C1289b.f4870j, "keyPress --> i=" + i);
            Intent intent = new Intent("_VA_" + C1289b.this.f4872a);
            intent.putExtra(C1114a.f3789a, 2);
            intent.putExtra(C1114a.f3792d, i);
            AppContext.m5350a().sendBroadcast(intent);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: c */
        public final void mo6024c(String str) {
            C1151ad.m4325c(C1289b.f4870j, "inputText --> s=" + str);
            Intent intent = new Intent("_VA_" + C1289b.this.f4872a);
            intent.putExtra(C1114a.f3789a, 1);
            intent.putExtra(C1114a.f3793e, str);
            AppContext.m5350a().sendBroadcast(intent);
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: d */
        public final void mo6025d() {
            C1289b c1289b = C1289b.this;
            C1285c.m5955f().f4853d = 2;
            C1289b.m5999h();
            c1289b.f4877f = true;
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: d */
        public final void mo6026d(String str) {
            Script script;
            if (!C1264o.m5785a() || (script = C1285c.m5955f().f4851a) == null) {
                return;
            }
            C1561r.m6975a().m6980a(AppContext.m5350a(), script.getId(), str, new C1561r.a() { // from class: com.cyjh.elfin.floatingwindowprocess.d.b.2.1
                @Override // com.cyjh.http.p096c.p099c.C1561r.a
                /* renamed from: a */
                public final void mo6030a() {
                    C1151ad.m4325c(C1289b.f4870j, "doSpecialFuction --> uploadInstanceData onSuccess");
                }

                @Override // com.cyjh.http.p096c.p099c.C1561r.a
                /* renamed from: a */
                public final void mo6031a(String str2) {
                    C1151ad.m4325c(C1289b.f4870j, "doSpecialFuction --> uploadInstanceData onFailure message=" + str2);
                }
            });
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: e */
        public final void mo6027e() {
            C1289b.m5998g();
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: f */
        public final String mo6028f() {
            return C1289b.this.f4872a;
        }

        @Override // com.elfin.engin.InterfaceC1753e
        /* renamed from: g */
        public final String mo6029g() {
            return C1743c.a.f6878a.mo7759c().mo7754b();
        }
    };

    /* renamed from: d */
    boolean f4875d = true;

    /* renamed from: e */
    public boolean f4876e = true;

    /* renamed from: f */
    boolean f4877f = true;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.b$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 implements InterfaceC1142a<Boolean> {
        AnonymousClass3() {
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        private void a2(Boolean bool) {
            C1289b.this.f4875d = false;
            C1289b.this.f4876e = bool.booleanValue();
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final void mo4230a() {
            C1289b.this.f4875d = true;
        }

        @Override // com.cyjh.common.p071f.InterfaceC1142a
        /* renamed from: a */
        public final /* synthetic */ void mo4231a(Boolean bool) {
            C1289b.this.f4875d = false;
            C1289b.this.f4876e = bool.booleanValue();
        }
    }

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.b$4, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass4 implements C1483b.a {
        AnonymousClass4() {
        }

        @Override // com.cyjh.http.p094a.C1483b.a
        /* renamed from: a */
        public final void mo6032a(Message message) {
            C1151ad.m4325c(C1289b.f4870j, "ddyStaticsJudgeOperate --> 3");
            C1289b.this.f4874c.sendMessage(message);
        }
    }

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.d.b$5, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass5 implements Runnable {
        AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1285c.f4848b = false;
        }
    }

    /* renamed from: a */
    private static void m5981a(float f, int i, int i2) {
        ImageView imageView;
        int i3;
        m5999h();
        ElfinFloatView elfinFloatView = C1283a.m5940a().f4842a;
        C1151ad.m4325c(ElfinFloatView.f4903a, "posControlBar --> position=" + f + ",lockState=" + i + ",isRight=" + i2);
        elfinFloatView.f4929n = i;
        if (elfinFloatView.f4929n != 0) {
            elfinFloatView.f4918c.setOnTouchListener(null);
        }
        if (elfinFloatView.f4926k.getVisibility() == 0) {
            elfinFloatView.f4926k.setVisibility(8);
            elfinFloatView.f4926k.m6038a();
        }
        elfinFloatView.m6080a(i2 == 0 ? 0 : C1147a.m4247a(elfinFloatView.getContext()).x, (int) ((C1147a.m4247a(elfinFloatView.getContext()).y * f) - elfinFloatView.getHeight()));
        elfinFloatView.f4919d.removeView(elfinFloatView.f4920e);
        elfinFloatView.f4919d.addView(elfinFloatView.f4920e, 0);
        if (C1285c.m5955f().f4853d == 2) {
            imageView = elfinFloatView.f4918c;
            i3 = R.drawable.elfin_run1;
        } else if (C1285c.m5955f().f4853d == 3) {
            imageView = elfinFloatView.f4918c;
            i3 = R.drawable.elfin_pause1;
        } else {
            imageView = elfinFloatView.f4918c;
            i3 = R.drawable.elfin_normal1;
        }
        imageView.setImageResource(i3);
    }

    /* renamed from: a */
    public static void m5982a(int i) {
        C1283a.m5940a().f4842a.setControlbarVisiable(i);
    }

    /* renamed from: a */
    private void m5983a(int i, String str) {
        C1151ad.m4325c(f4870j, "onStopScript");
        C1302a.m6090a().m6098a(1);
        C1285c.m5955f().f4853d = 1;
        C1483b.m6863a().m6866b();
        this.f4876e = true;
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "AppContext  onStopScript --> returnCode=" + i + ",msg=" + str);
        AppContext m5350a = AppContext.m5350a();
        StringBuilder sb = new StringBuilder("callback code:");
        sb.append(i);
        String sb2 = sb.toString();
        try {
            File file = new File(C1579a.m7014a(m5350a), "heartbeatCheckFree.txt");
            if (!file.exists()) {
                file.createNewFile();
            }
            C1579a.m7020a(file, sb2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(C1487a.m6886a().f5811c.DeviceId) || TextUtils.isEmpty(C1487a.m6886a().f5811c.DeviceCode)) {
            DeviceInfo m7032c = C1579a.m7032c(AppContext.m5350a());
            C1487a.m6886a().f5811c.DeviceId = m7032c.DeviceId;
            C1487a.m6886a().f5811c.DeviceCode = m7032c.DeviceCode;
        }
        if (!this.f4875d && ParamsWrap.getParamsWrap().mStartRunResponseInfo != null) {
            C1288a.m5972a((C1546c.a) null);
        }
        C1286d.m5965a();
        C1286d.m5968b();
        m5999h();
        if (i == 1003) {
            Toast.makeText(AppContext.m5350a(), (int) R.string.toast_run_no_permission, 0).show();
        } else if (i == 1002) {
            Log.d("zzz", "AppContext--onStopScript--MqmCode.MQM_RUNNER_EXCEPTION");
        }
        if (RestartScriptHelper.isNeedRestart().booleanValue()) {
            C1288a.m5971a((C1288a.a) null);
        }
    }

    /* renamed from: a */
    public static void m5984a(Application application) {
        C1750c m8005a = C1750c.m8005a();
        EntryPoint.init(application, "", null, 10, (byte) 0);
        m8005a.f6896d = new C1754f();
        m8005a.f6894b = m8005a.f6896d;
    }

    /* renamed from: a */
    public static void m5985a(String str, String str2, String str3) {
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6894b.mo7984a(str, str2, str3, m8005a.f6902j);
    }

    /* renamed from: a */
    public static void m5986a(String str, String str2, String str3, long j, String str4, String str5, String str6) {
        C1750c m8005a = C1750c.m8005a();
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        script4Run.trialTime = 0;
        script4Run.encryptKey = j;
        Log.e("zzz", "runScript--script4Run.scripyEncryptKey:" + script4Run.getScriptEncryptKey());
        script4Run.appId = str5;
        script4Run.username = str6;
        script4Run.encrypt = true;
        if (m8005a.f6894b != null) {
            m8005a.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: a */
    private static void m5987a(String str, String str2, String str3, String str4) {
        C1750c m8005a = C1750c.m8005a();
        Script4Run script4Run = new Script4Run();
        script4Run.setLcPath(str);
        script4Run.setAtcPath(str2);
        script4Run.setConfigPath(str3);
        script4Run.setScriptEncryptKey(str4);
        if (m8005a.f6894b != null) {
            m8005a.f6894b.m7982a(script4Run);
        }
    }

    /* renamed from: b */
    private void m5989b(int i) {
        AppContext m5350a;
        int i2;
        if (C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true) && i == 114) {
            if (!C1201x.m5233a(AppContext.m5350a())) {
                m5350a = AppContext.m5350a();
                i2 = R.string.network_off;
            } else if (AppContext.m5350a().f4566f) {
                m5350a = AppContext.m5350a();
                i2 = R.string.version_too_low;
            } else if (!AppContext.m5350a().f4567g) {
                m5350a = AppContext.m5350a();
                i2 = R.string.volume_run_script_tips;
            } else {
                if (!C1285c.f4848b) {
                    C1285c.f4848b = true;
                    if (C1752d.m8035a()) {
                        m5995d();
                        C1285c.f4848b = false;
                    } else {
                        C1302a m6090a = C1302a.m6090a();
                        Message obtain = Message.obtain();
                        Bundle bundle = new Bundle();
                        bundle.putInt(C1246a.f4640c, C1246a.f4651n);
                        obtain.setData(bundle);
                        try {
                            m6090a.f4977b.send(obtain);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.f4874c.removeCallbacksAndMessages(null);
                    this.f4874c.postDelayed(new AnonymousClass5(), 3000L);
                    return;
                }
                m5350a = AppContext.m5350a();
                i2 = R.string.volume_click_hips;
            }
            C1154ag.m4340a(m5350a, i2);
        }
    }

    /* renamed from: b */
    private void m5990b(int i, String str) {
        try {
            if (i == 31) {
                m6012a(AppContext.m5350a().getString(R.string.check_heartbeat_failed));
                return;
            }
            if (i == 32) {
                m6012a(new JSONObject(str).getString(C1225b.f4512d));
                return;
            }
            if (i == 33) {
                m6012a(AppContext.m5350a().getString(R.string.no_get_heartbeat_time));
                return;
            }
            if (i == 36) {
                C1151ad.m4325c(f4870j, "initElf --> ENUM_SCRIPT_NEED_UPGRADE");
                C1255f.m5689a();
                C1255f.m5690a(AppContext.m5350a(), "initElf --> ENUM_SCRIPT_NEED_UPGRADE");
                C2772c.m12482a().m12506c(new MsgItem(2000));
                return;
            }
            if (i == 34) {
                m6012a(new JSONObject(str).getString(C1225b.f4512d));
            } else if (i == 37) {
                C1285c.m5955f().f4853d = 4;
            }
        } catch (Exception e) {
            Log.e("zzz", "ElfinFreeActivity--initListener e:" + e.getMessage());
            e.printStackTrace();
            C1154ag.m4344b(AppContext.m5350a(), e.getMessage());
        }
    }

    /* renamed from: b */
    private void m5991b(String str) {
        this.f4872a = str;
    }

    /* renamed from: b */
    public static boolean m5992b() {
        return C1752d.m8035a();
    }

    /* renamed from: c */
    public static void m5993c() {
        C1752d.m8029a(C1238c.m5531a().m5543b());
        C1285c.m5955f().m5962a();
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7981a(m8005a.f6903k);
            m8005a.f6894b.mo7980a().start();
        }
    }

    /* renamed from: c */
    private void m5994c(int i) {
        this.f4873b = i;
    }

    /* renamed from: d */
    public static void m5995d() {
        RestartScriptHelper.setNeedRestartValue(false);
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().stop();
        }
    }

    /* renamed from: e */
    public static void m5996e() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().pause();
        }
    }

    /* renamed from: f */
    public static void m5997f() {
        C1750c m8005a = C1750c.m8005a();
        if (m8005a.f6894b != null) {
            m8005a.f6894b.mo7980a().resume();
        }
    }

    /* renamed from: g */
    public static void m5998g() {
        C1285c.m5955f().f4853d = 2;
    }

    /* renamed from: h */
    static void m5999h() {
        ImageView imageView;
        int i;
        if (C1283a.m5940a().f4842a != null) {
            C1283a.m5940a().f4842a.m6079a();
            ElfinFloatView elfinFloatView = C1283a.m5940a().f4842a;
            if (C1285c.m5955f().f4853d == 2) {
                imageView = elfinFloatView.f4918c;
                i = R.drawable.elfin_run1;
            } else if (C1285c.m5955f().f4853d == 3) {
                imageView = elfinFloatView.f4918c;
                i = R.drawable.elfin_pause1;
            } else {
                imageView = elfinFloatView.f4918c;
                i = R.drawable.elfin_normal1;
            }
            imageView.setImageResource(i);
            elfinFloatView.m6082b();
            elfinFloatView.f4928m.start();
        }
    }

    /* renamed from: i */
    public static void m6000i() {
    }

    /* renamed from: j */
    public static C1289b m6001j() {
        return f4871l;
    }

    /* renamed from: k */
    private void m6002k() {
        AppContext m5350a = AppContext.m5350a();
        String string = AppContext.m5350a().getString(R.string.pay_appid);
        String string2 = AppContext.m5350a().getString(R.string.pay_vsersion);
        InterfaceC1753e interfaceC1753e = this.f4879h;
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6898f = interfaceC1753e;
        MqBridge.init(m5350a, string, string2, m8005a.f6899g, new C1750c.AnonymousClass7(m5350a), m8005a.f6900h);
        m8005a.f6894b.mo7981a(m8005a.f6903k);
        AbstractC1745b abstractC1745b = m8005a.f6894b;
        abstractC1745b.mo7980a().setOnScriptListener(m8005a.f6901i);
        Orcck.init();
    }

    /* renamed from: l */
    private static void m6003l() {
        if (C1752d.m8035a()) {
            m5995d();
            C1285c.f4848b = false;
            return;
        }
        C1302a m6090a = C1302a.m6090a();
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putInt(C1246a.f4640c, C1246a.f4651n);
        obtain.setData(bundle);
        try {
            m6090a.f4977b.send(obtain);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    private void m6004m() {
        C1151ad.m4325c(f4870j, "onStartScript");
        C1302a.m6090a().m6098a(4);
        C1238c m5531a = C1238c.m5531a();
        if (C1238c.f4604d) {
            long currentTimeMillis = (m5531a.f4608b - (System.currentTimeMillis() / 1000)) / 60;
            if (currentTimeMillis > 0) {
                C1154ag.m4344b(AppContext.m5350a(), "注册码" + C1169l.m4449a(AppContext.m5350a(), currentTimeMillis));
            }
        }
        C1285c.m5955f().f4853d = 2;
        this.f4876e = false;
        C1255f.m5689a();
        C1255f.m5690a(AppContext.m5350a(), "AppContext  onStartScript --> ");
        C1288a.m5970a(new AnonymousClass3());
        C1286d.m5965a();
        C1286d.m5968b();
        m5999h();
        C1151ad.m4325c(f4870j, "ddyStaticsJudgeOperate --> 1");
        C1482a.m6860a();
        boolean m6861b = C1482a.m6861b();
        C1152ae.m4329a(AppContext.m5350a(), "是否是多多云环境：" + m6861b);
        C1151ad.m4325c(f4870j, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment=" + m6861b);
        if (m6861b) {
            C1483b.m6863a().f5784b = new AnonymousClass4();
            C1483b m6863a = C1483b.m6863a();
            C1151ad.m4323a(C1483b.f5779a, "startTimer --> ");
            if (m6863a.f5785c == null) {
                m6863a.f5785c = new Timer();
                m6863a.f5786d = new C1483b.b(m6863a, (byte) 0);
            }
            m6863a.f5785c.schedule(m6863a.f5786d, 180000L, 7200000L);
        }
    }

    /* renamed from: n */
    private void m6005n() {
        C1151ad.m4325c(f4870j, "ddyStaticsJudgeOperate --> 1");
        C1482a.m6860a();
        boolean m6861b = C1482a.m6861b();
        C1152ae.m4329a(AppContext.m5350a(), "是否是多多云环境：" + m6861b);
        C1151ad.m4325c(f4870j, "ddyStaticsJudgeOperate --> 2 isDdyEnvironment=" + m6861b);
        if (m6861b) {
            C1483b.m6863a().f5784b = new AnonymousClass4();
            C1483b m6863a = C1483b.m6863a();
            C1151ad.m4323a(C1483b.f5779a, "startTimer --> ");
            if (m6863a.f5785c == null) {
                m6863a.f5785c = new Timer();
                m6863a.f5786d = new C1483b.b(m6863a, (byte) 0);
            }
            m6863a.f5785c.schedule(m6863a.f5786d, 180000L, 7200000L);
        }
    }

    /* renamed from: o */
    private void m6006o() {
        Log.i("IPC_ANDROID", "onPause:" + C1285c.m5955f().f4853d + ",flag:" + this.f4877f);
        if (4 == C1285c.m5955f().f4853d) {
            C1200w.m5232a(AppContext.m5350a(), AppContext.m5350a().getString(R.string.script_run_pausing));
            return;
        }
        C1285c.m5955f().f4853d = 3;
        if (this.f4877f) {
            m5999h();
            this.f4877f = false;
        }
    }

    /* renamed from: p */
    private void m6007p() {
        C1285c.m5955f().f4853d = 2;
        m5999h();
        this.f4877f = true;
    }

    /* renamed from: q */
    private String m6008q() {
        return this.f4872a;
    }

    /* renamed from: r */
    private int m6009r() {
        return this.f4873b;
    }

    /* renamed from: s */
    private static void m6010s() {
        if (C1752d.m8035a()) {
            return;
        }
        if (C1117a.m4138a(AppContext.m5350a(), "common_shared_file", C1116c.f3808f) != 0) {
            C1752d.m8034a(false, 0, 0, 0, 0);
            return;
        }
        int m4138a = C1117a.m4138a(AppContext.m5350a(), C1116c.f3810h, C1116c.f3812j);
        int m4138a2 = C1117a.m4138a(AppContext.m5350a(), C1116c.f3810h, C1116c.f3811i);
        C1752d.m8034a(true, C1117a.m4138a(AppContext.m5350a(), C1116c.f3810h, C1116c.f3814l), C1117a.m4138a(AppContext.m5350a(), C1116c.f3810h, C1116c.f3813k), m4138a, m4138a2);
    }

    /* renamed from: a */
    public final void m6011a() {
        AbstractC1745b abstractC1745b;
        this.f4880k = 0;
        C1750c m8005a = C1750c.m8005a();
        m8005a.f6895c = 0;
        if (m8005a.f6895c == 0) {
            if (m8005a.f6896d == null) {
                m8005a.f6896d = new C1754f();
            }
            abstractC1745b = m8005a.f6896d;
        } else {
            if (m8005a.f6897e == null) {
                m8005a.f6897e = new C1755g();
            }
            abstractC1745b = m8005a.f6897e;
        }
        m8005a.f6894b = abstractC1745b;
        AppContext m5350a = AppContext.m5350a();
        String string = AppContext.m5350a().getString(R.string.pay_appid);
        String string2 = AppContext.m5350a().getString(R.string.pay_vsersion);
        InterfaceC1753e interfaceC1753e = this.f4879h;
        C1750c m8005a2 = C1750c.m8005a();
        m8005a2.f6898f = interfaceC1753e;
        MqBridge.init(m5350a, string, string2, m8005a2.f6899g, new C1750c.AnonymousClass7(m5350a), m8005a2.f6900h);
        m8005a2.f6894b.mo7981a(m8005a2.f6903k);
        AbstractC1745b abstractC1745b2 = m8005a2.f6894b;
        abstractC1745b2.mo7980a().setOnScriptListener(m8005a2.f6901i);
        Orcck.init();
    }

    /* renamed from: a */
    final void m6012a(String str) {
        if (DialogC1319g.f5054a && !DialogC1319g.f5055c) {
            C2772c.m12482a().m12506c(new MsgItem(1005));
        }
        if (DialogC1319g.f5054a) {
            C2772c.m12482a().m12506c(new MsgItem.UpdateMessageToDialog(str));
            return;
        }
        final DialogC1319g dialogC1319g = new DialogC1319g(AppContext.m5350a(), true, str);
        dialogC1319g.f5056b = new View.OnClickListener() { // from class: com.cyjh.elfin.floatingwindowprocess.d.b.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                dialogC1319g.dismiss();
            }
        };
        dialogC1319g.show();
    }
}
