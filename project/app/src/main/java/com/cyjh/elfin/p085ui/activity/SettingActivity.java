package com.cyjh.elfin.p085ui.activity;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.common.p069d.ViewOnClickListenerC1139b;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1162e;
import com.cyjh.common.util.C1170m;
import com.cyjh.common.util.C1172o;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1256g;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.p077e.p080c.C1261l;
import com.cyjh.elfin.p085ui.activity.SettingActivity;
import com.cyjh.elfin.p085ui.activity.studio.EditDeviceNameActivity;
import com.cyjh.elfin.p085ui.activity.studio.StudioBindActivity;
import com.cyjh.elfin.p085ui.activity.studio.StudioBindClearActivity;
import com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1320h;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.feedback.lib.p090b.DialogC1454a;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p094a.C1485d;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p098b.C1543a;
import com.elf.studio.enity.IMResultInfo;
import com.elf.studio.p114a.C1710b;
import com.elfin.engin.C1752d;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.Arrays;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class SettingActivity extends BaseActivity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    public static final String f5175b = "SettingActivity";

    /* renamed from: c */
    public static final int f5176c = 3000;

    /* renamed from: d */
    public static final int f5177d = 1000;

    /* renamed from: p */
    private static final int f5178p = 1;

    /* renamed from: e */
    private Switch f5179e;

    /* renamed from: f */
    private Switch f5180f;

    /* renamed from: g */
    private Switch f5181g;

    /* renamed from: h */
    private Switch f5182h;

    /* renamed from: i */
    private Switch f5183i;

    /* renamed from: j */
    private Switch f5184j;

    /* renamed from: k */
    private Switch f5185k;

    /* renamed from: l */
    private Switch f5186l;

    /* renamed from: m */
    private LinearLayout f5187m;

    /* renamed from: n */
    private CountDownTimerC1358b f5188n;

    /* renamed from: o */
    private DialogC1454a f5189o;

    /* renamed from: q */
    private Button f5190q;

    /* renamed from: r */
    private Button f5191r;

    /* renamed from: s */
    private Button f5192s;

    /* renamed from: t */
    private Button f5193t;

    /* renamed from: u */
    private TextView f5194u;

    /* renamed from: v */
    private TextView f5195v;

    /* renamed from: w */
    private LinearLayout f5196w;

    /* renamed from: x */
    private LinearLayout f5197x;

    /* renamed from: com.cyjh.elfin.ui.activity.SettingActivity$1 */
    /* loaded from: classes.dex */
    final class C13541 implements C1485d.c {

        /* renamed from: a */
        final /* synthetic */ ViewOnClickListenerC1139b f5198a;

        C13541(ViewOnClickListenerC1139b viewOnClickListenerC1139b) {
            this.f5198a = viewOnClickListenerC1139b;
        }

        /* renamed from: a */
        private /* synthetic */ void m6308a(ViewOnClickListenerC1139b viewOnClickListenerC1139b) {
            viewOnClickListenerC1139b.dismiss();
            C1154ag.m4342a(SettingActivity.this.getApplicationContext(), "文字识别库下载失败！");
            SettingActivity.this.f5185k.setClickable(true);
            SettingActivity.this.f5185k.setChecked(false);
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: a */
        public final void mo5933a() {
            this.f5198a.dismiss();
            C1154ag.m4342a(SettingActivity.this.getApplicationContext(), "文字识别库已下载！");
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: b */
        public final void mo5934b() {
            this.f5198a.dismiss();
            C1154ag.m4342a(SettingActivity.this.getApplicationContext(), "文字识别库下载成功！");
            SettingActivity.this.f5185k.setClickable(false);
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: c */
        public final void mo5935c() {
            SettingActivity settingActivity = SettingActivity.this;
            final ViewOnClickListenerC1139b viewOnClickListenerC1139b = this.f5198a;
            settingActivity.runOnUiThread(new Runnable(this, viewOnClickListenerC1139b) { // from class: com.cyjh.elfin.ui.activity.b

                /* renamed from: a */
                private final SettingActivity.C13541 f5278a;

                /* renamed from: b */
                private final ViewOnClickListenerC1139b f5279b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5278a = this;
                    this.f5279b = viewOnClickListenerC1139b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    SettingActivity.C13541 c13541 = this.f5278a;
                    this.f5279b.dismiss();
                    C1154ag.m4342a(SettingActivity.this.getApplicationContext(), "文字识别库下载失败！");
                    SettingActivity.this.f5185k.setClickable(true);
                    SettingActivity.this.f5185k.setChecked(false);
                }
            });
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SettingActivity$2 */
    /* loaded from: classes.dex */
    final class C13552 implements C1543a.a {
        C13552() {
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: a */
        public final void mo5930a(VersionUpdateInfo versionUpdateInfo) {
            if (versionUpdateInfo == null) {
                return;
            }
            new ViewOnClickListenerC1320h(SettingActivity.this, versionUpdateInfo, false).show();
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: b */
        public final void mo5931b(VersionUpdateInfo versionUpdateInfo) {
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: c */
        public final void mo5932c(VersionUpdateInfo versionUpdateInfo) {
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SettingActivity$a */
    /* loaded from: classes.dex */
    private class C1357a implements TitleView.InterfaceC1421a {
        private C1357a() {
        }

        /* synthetic */ C1357a(SettingActivity settingActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            SettingActivity.this.finish();
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SettingActivity$b */
    /* loaded from: classes.dex */
    class CountDownTimerC1358b extends CountDownTimer {
        private CountDownTimerC1358b() {
            super(3000L, 1000L);
        }

        /* synthetic */ CountDownTimerC1358b(SettingActivity settingActivity, byte b2) {
            this();
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            if (SettingActivity.this.f5189o.isShowing()) {
                SettingActivity.this.f5189o.dismiss();
            }
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
        }
    }

    /* renamed from: a */
    private void m6298a(String str) {
        Script script = C1285c.m5955f().f4851a;
        new IMResultInfo().IMToken = str;
        getString(R.string.elfin_appid);
        script.getId();
        String str2 = C1487a.m6886a().f5811c.DeviceId;
        C1752d.m8035a();
    }

    /* renamed from: b */
    private void m6300b() {
        TitleView titleView = (TitleView) findViewById(R.id.titleview_setting);
        titleView.setTitleText(R.string.setting);
        titleView.setVisibilityLeftImage(0);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1357a(this, (byte) 0));
        titleView.setVisibilityRightImage(4);
        this.f5179e = (Switch) findViewById(R.id.swtich_setting_call_stop);
        this.f5180f = (Switch) findViewById(R.id.swtich_setting_volume_key_ctrl);
        this.f5181g = (Switch) findViewById(R.id.swtich_setting_script_pause_and_resume);
        this.f5182h = (Switch) findViewById(R.id.swtich_setting_waggle_stop);
        this.f5183i = (Switch) findViewById(R.id.swtich_setting_floatview_ctrl);
        this.f5184j = (Switch) findViewById(R.id.swtich_setting_vibration);
        this.f5185k = (Switch) findViewById(R.id.switch_setting_word_recognition_library);
        this.f5190q = (Button) findViewById(R.id.btn_setting_scriptlog);
        this.f5191r = (Button) findViewById(R.id.setting_button_update);
        this.f5192s = (Button) findViewById(R.id.setting_button_exitapp);
        this.f5193t = (Button) findViewById(R.id.button_setting_feedback);
        this.f5186l = (Switch) findViewById(R.id.setting_swtich_open_run);
        this.f5187m = (LinearLayout) findViewById(R.id.layout_boot_script);
        this.f5196w = (LinearLayout) findViewById(R.id.ll_device_name);
        this.f5197x = (LinearLayout) findViewById(R.id.ll_project_number);
        this.f5194u = (TextView) findViewById(R.id.tv_project_number);
        this.f5195v = (TextView) findViewById(R.id.tv_device_name);
        this.f5195v.setText(C1162e.m4370a(this));
        m6301c();
        if (C1485d.m6873a().m6879b()) {
            this.f5185k.setChecked(true);
            this.f5185k.setClickable(false);
        } else {
            this.f5185k.setChecked(false);
            this.f5185k.setOnCheckedChangeListener(this);
        }
        this.f5179e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f5180f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f5182h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f5183i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f5184j.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f5186l.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
        this.f5179e.setOnCheckedChangeListener(this);
        this.f5180f.setOnCheckedChangeListener(this);
        this.f5181g.setOnCheckedChangeListener(this);
        this.f5182h.setOnCheckedChangeListener(this);
        this.f5183i.setOnCheckedChangeListener(this);
        this.f5184j.setOnCheckedChangeListener(this);
        this.f5186l.setOnCheckedChangeListener(this);
        this.f5190q.setOnClickListener(this);
        this.f5191r.setOnClickListener(this);
        this.f5192s.setOnClickListener(this);
        this.f5193t.setOnClickListener(this);
        this.f5196w.setOnClickListener(this);
        this.f5197x.setOnClickListener(this);
        this.f5197x.setVisibility(8);
        this.f5196w.setVisibility(8);
        this.f5187m.setVisibility(0);
        C2772c.m12482a().m12503a(this);
    }

    /* renamed from: c */
    private void m6301c() {
        this.f5194u.setText(getString(TextUtils.isEmpty(AppContext.m5350a().f4565e) ? R.string.not_binding : R.string.already_binding));
    }

    /* renamed from: d */
    private void m6302d() {
        this.f5179e.setOnCheckedChangeListener(this);
        this.f5180f.setOnCheckedChangeListener(this);
        this.f5181g.setOnCheckedChangeListener(this);
        this.f5182h.setOnCheckedChangeListener(this);
        this.f5183i.setOnCheckedChangeListener(this);
        this.f5184j.setOnCheckedChangeListener(this);
        this.f5186l.setOnCheckedChangeListener(this);
        this.f5190q.setOnClickListener(this);
        this.f5191r.setOnClickListener(this);
        this.f5192s.setOnClickListener(this);
        this.f5193t.setOnClickListener(this);
        this.f5196w.setOnClickListener(this);
        this.f5197x.setOnClickListener(this);
    }

    /* renamed from: e */
    private void m6303e() {
        TitleView titleView = (TitleView) findViewById(R.id.titleview_setting);
        titleView.setTitleText(R.string.setting);
        titleView.setVisibilityLeftImage(0);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1357a(this, (byte) 0));
        titleView.setVisibilityRightImage(4);
    }

    /* renamed from: f */
    private void m6304f() {
        this.f5179e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f5180f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f5182h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f5183i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f5184j.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f5186l.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
    }

    /* renamed from: g */
    private void m6305g() {
        if (C1485d.m6873a().m6879b()) {
            this.f5185k.setChecked(true);
            this.f5185k.setClickable(false);
        } else {
            this.f5185k.setChecked(false);
            this.f5185k.setOnCheckedChangeListener(this);
        }
    }

    /* renamed from: h */
    private void m6306h() {
        ViewOnClickListenerC1139b viewOnClickListenerC1139b = new ViewOnClickListenerC1139b(this);
        viewOnClickListenerC1139b.show();
        C1485d.m6873a().m6878a(InterfaceC1133a.f3943aR, new C13541(viewOnClickListenerC1139b));
    }

    /* renamed from: i */
    private void m6307i() {
        C1170m.m4450a();
        if (C1170m.m4451b()) {
            return;
        }
        if (!C1201x.m5233a(this)) {
            C1154ag.m4343b(getApplicationContext(), (int) R.string.network_off);
            return;
        }
        String m5750a = C1261l.m5750a(this, InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(this);
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        C1151ad.m4325c(f5175b, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + ",ScriptVersion=" + updateRequestInfo.ScriptVersion);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new C13552();
        m6898a.m6902a(true, this, updateRequestInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            this.f5189o = new DialogC1454a(this);
            this.f5189o.show();
            this.f5188n = new CountDownTimerC1358b(this, (byte) 0);
            this.f5188n.start();
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (compoundButton.getId()) {
            case R.id.swtich_setting_volume_key_ctrl /* 2131755246 */:
                if (z || this.f5183i.isChecked()) {
                    C1149ab.m4306a().m4312a(InterfaceC1224a.f4457y, Boolean.valueOf(z));
                    return;
                } else {
                    AppContext.m5350a().m5362a(R.string.setting_illegal);
                    this.f5180f.setChecked(true);
                    return;
                }
            case R.id.swtich_setting_script_pause_and_resume /* 2131755247 */:
                if (z) {
                    C1289b.m6001j();
                    C1289b.m5996e();
                    return;
                } else {
                    C1289b.m6001j();
                    C1289b.m5997f();
                    return;
                }
            case R.id.swtich_setting_floatview_ctrl /* 2131755248 */:
                if (z || this.f5180f.isChecked()) {
                    C1260k.m5735a(101);
                    C1149ab.m4306a().m4312a(InterfaceC1224a.f4436A, Boolean.valueOf(z));
                    return;
                } else {
                    AppContext.m5350a().m5362a(R.string.setting_illegal);
                    this.f5183i.setChecked(true);
                    return;
                }
            case R.id.swtich_setting_waggle_stop /* 2131755249 */:
                C1149ab.m4306a().m4312a(InterfaceC1224a.f4458z, Boolean.valueOf(z));
                return;
            case R.id.swtich_setting_call_stop /* 2131755250 */:
                C1149ab.m4306a().m4312a(InterfaceC1224a.f4456x, Boolean.valueOf(z));
                return;
            case R.id.swtich_setting_vibration /* 2131755251 */:
                C1149ab.m4306a().m4312a(InterfaceC1224a.f4437B, Boolean.valueOf(z));
                return;
            case R.id.layout_boot_script /* 2131755252 */:
            default:
                return;
            case R.id.setting_swtich_open_run /* 2131755253 */:
                C1149ab.m4306a().m4312a(InterfaceC1224a.f4439D, Boolean.valueOf(z));
                C1162e.m4375a(this, z);
                return;
            case R.id.switch_setting_word_recognition_library /* 2131755254 */:
                if (z) {
                    ViewOnClickListenerC1139b viewOnClickListenerC1139b = new ViewOnClickListenerC1139b(this);
                    viewOnClickListenerC1139b.show();
                    C1485d.m6873a().m6878a(InterfaceC1133a.f3943aR, new C13541(viewOnClickListenerC1139b));
                    return;
                }
                return;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ll_device_name) {
            Intent intent = new Intent(this, (Class<?>) EditDeviceNameActivity.class);
            intent.putExtra("device_name", this.f5195v.getText().toString());
            startActivity(intent);
            return;
        }
        if (id == R.id.ll_project_number) {
            if (TextUtils.isEmpty(AppContext.m5350a().f4565e)) {
                StudioBindActivity.m6393a(this);
                return;
            } else {
                StudioBindClearActivity.m6407a(this, AppContext.m5350a().f4565e);
                return;
            }
        }
        switch (id) {
            case R.id.btn_setting_scriptlog /* 2131755255 */:
                File[] listFiles = new File(AppContext.m5350a().f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
                if (listFiles == null || listFiles.length == 0) {
                    AppContext.m5350a().m5362a(R.string.No_ScriptLog);
                    return;
                }
                Arrays.sort(listFiles, new C1256g());
                File file = listFiles[0];
                ScriptLog scriptLog = new ScriptLog();
                scriptLog.setName(file.getName());
                scriptLog.setSize(C1172o.m4478a(file.length()));
                scriptLog.setFile(file);
                Intent intent2 = new Intent(this, (Class<?>) ScriptLogDetailActivity.class);
                intent2.putExtra(InterfaceC1224a.f4441F, true);
                intent2.putExtra(InterfaceC1224a.f4442G, scriptLog);
                startActivity(intent2);
                return;
            case R.id.setting_button_update /* 2131755256 */:
                C1170m.m4450a();
                if (C1170m.m4451b()) {
                    return;
                }
                if (!C1201x.m5233a(this)) {
                    C1154ag.m4343b(getApplicationContext(), (int) R.string.network_off);
                    return;
                }
                String m5750a = C1261l.m5750a(this, InterfaceC1224a.f4453u);
                String m4370a = C1162e.m4370a(this);
                UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
                updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
                updateRequestInfo.DeviceName = m4370a;
                updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
                C1151ad.m4325c(f5175b, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + ",ScriptVersion=" + updateRequestInfo.ScriptVersion);
                C1543a m6898a = C1543a.m6898a();
                m6898a.f5824c = new C13552();
                m6898a.m6902a(true, this, updateRequestInfo);
                return;
            case R.id.button_setting_feedback /* 2131755257 */:
                Intent intent3 = new Intent(this, (Class<?>) FeedbackActivity.class);
                intent3.putExtra(FeedbackActivity.class.getCanonicalName(), ParamsWrap.getParamsWrap().feedbackTips);
                startActivityForResult(intent3, 1);
                return;
            case R.id.setting_button_exitapp /* 2131755258 */:
                stopService(new Intent(this, (Class<?>) PhoneStateService.class));
                C1752d.m8028a(this);
                MobclickAgent.onKillProcess(AppContext.m5350a());
                ActivityManager activityManager = (ActivityManager) getSystemService("activity");
                if (activityManager != null) {
                    activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
                }
                Process.killProcess(Process.myPid());
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_setting);
        TitleView titleView = (TitleView) findViewById(R.id.titleview_setting);
        titleView.setTitleText(R.string.setting);
        titleView.setVisibilityLeftImage(0);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1357a(this, (byte) 0));
        titleView.setVisibilityRightImage(4);
        this.f5179e = (Switch) findViewById(R.id.swtich_setting_call_stop);
        this.f5180f = (Switch) findViewById(R.id.swtich_setting_volume_key_ctrl);
        this.f5181g = (Switch) findViewById(R.id.swtich_setting_script_pause_and_resume);
        this.f5182h = (Switch) findViewById(R.id.swtich_setting_waggle_stop);
        this.f5183i = (Switch) findViewById(R.id.swtich_setting_floatview_ctrl);
        this.f5184j = (Switch) findViewById(R.id.swtich_setting_vibration);
        this.f5185k = (Switch) findViewById(R.id.switch_setting_word_recognition_library);
        this.f5190q = (Button) findViewById(R.id.btn_setting_scriptlog);
        this.f5191r = (Button) findViewById(R.id.setting_button_update);
        this.f5192s = (Button) findViewById(R.id.setting_button_exitapp);
        this.f5193t = (Button) findViewById(R.id.button_setting_feedback);
        this.f5186l = (Switch) findViewById(R.id.setting_swtich_open_run);
        this.f5187m = (LinearLayout) findViewById(R.id.layout_boot_script);
        this.f5196w = (LinearLayout) findViewById(R.id.ll_device_name);
        this.f5197x = (LinearLayout) findViewById(R.id.ll_project_number);
        this.f5194u = (TextView) findViewById(R.id.tv_project_number);
        this.f5195v = (TextView) findViewById(R.id.tv_device_name);
        this.f5195v.setText(C1162e.m4370a(this));
        m6301c();
        if (C1485d.m6873a().m6879b()) {
            this.f5185k.setChecked(true);
            this.f5185k.setClickable(false);
        } else {
            this.f5185k.setChecked(false);
            this.f5185k.setOnCheckedChangeListener(this);
        }
        this.f5179e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f5180f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f5182h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f5183i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f5184j.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f5186l.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
        this.f5179e.setOnCheckedChangeListener(this);
        this.f5180f.setOnCheckedChangeListener(this);
        this.f5181g.setOnCheckedChangeListener(this);
        this.f5182h.setOnCheckedChangeListener(this);
        this.f5183i.setOnCheckedChangeListener(this);
        this.f5184j.setOnCheckedChangeListener(this);
        this.f5186l.setOnCheckedChangeListener(this);
        this.f5190q.setOnClickListener(this);
        this.f5191r.setOnClickListener(this);
        this.f5192s.setOnClickListener(this);
        this.f5193t.setOnClickListener(this);
        this.f5196w.setOnClickListener(this);
        this.f5197x.setOnClickListener(this);
        this.f5197x.setVisibility(8);
        this.f5196w.setVisibility(8);
        this.f5187m.setVisibility(0);
        C2772c.m12482a().m12503a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f5188n != null) {
            this.f5188n.cancel();
        }
        C1543a.m6898a().m6907d();
        C2772c.m12482a().m12505b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(SettingActivity.class.getCanonicalName());
        MobclickAgent.onPause(this);
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onReceiveStudioProjectStatusEvent(C1710b c1710b) {
        switch (c1710b.f6691e) {
            case 10001:
            case 10002:
                m6301c();
                String str = c1710b.f6692f;
                Script script = C1285c.m5955f().f4851a;
                new IMResultInfo().IMToken = str;
                getString(R.string.elfin_appid);
                script.getId();
                String str2 = C1487a.m6886a().f5811c.DeviceId;
                C1752d.m8035a();
                this.f5194u.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.activity.SettingActivity.3
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                }, 500L);
                return;
            case 10003:
                m6301c();
                return;
            case 10004:
                this.f5195v.setText(c1710b.f6692f);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(SettingActivity.class.getCanonicalName());
        MobclickAgent.onResume(this);
    }
}
