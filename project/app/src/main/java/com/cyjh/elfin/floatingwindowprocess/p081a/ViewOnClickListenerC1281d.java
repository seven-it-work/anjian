package com.cyjh.elfin.floatingwindowprocess.p081a;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
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
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1283a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1256g;
import com.cyjh.elfin.p077e.p080c.C1261l;
import com.cyjh.elfin.p085ui.activity.ScriptLogDetailActivity;
import com.cyjh.elfin.p085ui.p086a.DialogC1313a;
import com.cyjh.elfin.p085ui.p086a.ViewOnClickListenerC1320h;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.http.bean.request.UpdateRequestInfo;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p094a.C1485d;
import com.cyjh.http.p096c.p098b.C1543a;
import com.cyjh.mq.sdk.MqBridge;
import com.hjol.R;
import java.io.File;
import java.util.Arrays;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.a.d */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1281d extends DialogC1313a implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: K */
    private static final int f4814K = 24;

    /* renamed from: a */
    public static final String f4815a = "d";

    /* renamed from: m */
    private static final int f4816m = 19;

    /* renamed from: b */
    public Context f4817b;

    /* renamed from: c */
    boolean f4818c;

    /* renamed from: e */
    private Switch f4819e;

    /* renamed from: f */
    private Switch f4820f;

    /* renamed from: g */
    private Switch f4821g;

    /* renamed from: h */
    private Switch f4822h;

    /* renamed from: i */
    private Switch f4823i;

    /* renamed from: j */
    private Switch f4824j;

    /* renamed from: k */
    private Switch f4825k;

    /* renamed from: l */
    private LinearLayout f4826l;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.d$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements C1543a.a {
        AnonymousClass1() {
        }

        @Override // com.cyjh.http.p096c.p098b.C1543a.a
        /* renamed from: a */
        public final void mo5930a(VersionUpdateInfo versionUpdateInfo) {
            C1151ad.m4325c(ViewOnClickListenerC1281d.f4815a, "onUpdateHas --> ");
            if (versionUpdateInfo == null) {
                return;
            }
            new ViewOnClickListenerC1320h(ViewOnClickListenerC1281d.this.getContext(), versionUpdateInfo, true).show();
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

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.a.d$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements C1485d.c {

        /* renamed from: a */
        final /* synthetic */ ViewOnClickListenerC1139b f4828a;

        AnonymousClass2(ViewOnClickListenerC1139b viewOnClickListenerC1139b) {
            this.f4828a = viewOnClickListenerC1139b;
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: a */
        public final void mo5933a() {
            this.f4828a.dismiss();
            C1154ag.m4342a(ViewOnClickListenerC1281d.this.getContext().getApplicationContext(), "文字识别库已下载！");
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: b */
        public final void mo5934b() {
            this.f4828a.dismiss();
            C1154ag.m4342a(ViewOnClickListenerC1281d.this.getContext().getApplicationContext(), "文字识别库下载成功！");
            ViewOnClickListenerC1281d.this.f4824j.setClickable(false);
        }

        @Override // com.cyjh.http.p094a.C1485d.c
        /* renamed from: c */
        public final void mo5935c() {
            this.f4828a.dismiss();
            C1154ag.m4342a(ViewOnClickListenerC1281d.this.getContext().getApplicationContext(), "文字识别库下载失败！");
            ViewOnClickListenerC1281d.this.f4824j.setClickable(true);
            ViewOnClickListenerC1281d.this.f4824j.setChecked(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewOnClickListenerC1281d(Context context) {
        super(context);
        Window window;
        int i;
        this.f5041d = (AppContext) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 26) {
            window = getWindow();
            i = 2038;
        } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
            if (getWindow() != null) {
                getWindow().setType(2002);
                return;
            }
            return;
        } else {
            if (getWindow() == null) {
                return;
            }
            window = getWindow();
            i = 2005;
        }
        window.setType(i);
    }

    /* renamed from: a */
    private void m5924a() {
        this.f4819e = (Switch) findViewById(R.id.setting_swtich_call_stop);
        this.f4820f = (Switch) findViewById(R.id.setting_swtich_volume_key_ctrl);
        this.f4821g = (Switch) findViewById(R.id.setting_swtich_waggle_stop);
        this.f4822h = (Switch) findViewById(R.id.setting_swtich_floatview_ctrl);
        this.f4823i = (Switch) findViewById(R.id.setting_swtich_vibration);
        this.f4824j = (Switch) findViewById(R.id.switch_setting_word_recognition_library);
        this.f4825k = (Switch) findViewById(R.id.setting_swtich_open_run);
        this.f4826l = (LinearLayout) findViewById(R.id.layout_boot_script);
        this.f4826l.setVisibility(0);
        Button button = (Button) findViewById(R.id.setting_button_scriptlog);
        Button button2 = (Button) findViewById(R.id.setting_button_update);
        Button button3 = (Button) findViewById(R.id.setting_button_exitapp);
        ImageView imageView = (ImageView) findViewById(R.id.setting_dialog_imageview_back);
        this.f4819e.setOnCheckedChangeListener(this);
        this.f4820f.setOnCheckedChangeListener(this);
        this.f4821g.setOnCheckedChangeListener(this);
        this.f4822h.setOnCheckedChangeListener(this);
        this.f4823i.setOnCheckedChangeListener(this);
        this.f4825k.setOnCheckedChangeListener(this);
        button.setOnClickListener(this);
        button3.setOnClickListener(this);
        button2.setOnClickListener(this);
        imageView.setOnClickListener(this);
        if (C1485d.m6873a().m6879b()) {
            this.f4824j.setChecked(true);
            this.f4824j.setClickable(false);
        } else {
            this.f4824j.setChecked(false);
            this.f4824j.setOnCheckedChangeListener(this);
        }
        this.f4819e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f4820f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f4821g.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f4822h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f4823i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f4825k.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
    }

    /* renamed from: b */
    private void m5925b() {
        this.f4819e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f4820f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f4821g.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f4822h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f4823i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f4825k.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
    }

    /* renamed from: c */
    private void m5926c() {
        if (C1485d.m6873a().m6879b()) {
            this.f4824j.setChecked(true);
            this.f4824j.setClickable(false);
        } else {
            this.f4824j.setChecked(false);
            this.f4824j.setOnCheckedChangeListener(this);
        }
    }

    /* renamed from: d */
    private void m5927d() {
        C1170m.m4450a();
        if (C1170m.m4451b()) {
            return;
        }
        if (!C1201x.m5233a(getContext())) {
            C1154ag.m4343b(getContext().getApplicationContext(), (int) R.string.network_off);
            return;
        }
        this.f4818c = false;
        String m5750a = C1261l.m5750a(getContext(), InterfaceC1224a.f4453u);
        String m4370a = C1162e.m4370a(getContext());
        UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
        updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
        updateRequestInfo.DeviceName = m4370a;
        updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
        C1151ad.m4325c(f4815a, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + ",ScriptVersion=" + updateRequestInfo.ScriptVersion);
        C1543a m6898a = C1543a.m6898a();
        m6898a.f5824c = new AnonymousClass1();
        m6898a.m6902a(true, getContext(), updateRequestInfo);
    }

    /* renamed from: e */
    private void m5928e() {
        ViewOnClickListenerC1139b viewOnClickListenerC1139b = new ViewOnClickListenerC1139b(getContext());
        viewOnClickListenerC1139b.show();
        C1485d.m6873a().m6878a(InterfaceC1133a.f3943aR, new AnonymousClass2(viewOnClickListenerC1139b));
    }

    /* renamed from: f */
    private boolean m5929f() {
        return this.f4818c;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        C1543a.m6898a().m6907d();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = compoundButton.getId();
        switch (id) {
            case R.id.setting_swtich_open_run /* 2131755253 */:
                C1149ab.m4306a().m4312a(InterfaceC1224a.f4439D, Boolean.valueOf(z));
                C1162e.m4375a(getContext(), z);
                return;
            case R.id.switch_setting_word_recognition_library /* 2131755254 */:
                if (z) {
                    ViewOnClickListenerC1139b viewOnClickListenerC1139b = new ViewOnClickListenerC1139b(getContext());
                    viewOnClickListenerC1139b.show();
                    C1485d.m6873a().m6878a(InterfaceC1133a.f3943aR, new AnonymousClass2(viewOnClickListenerC1139b));
                    return;
                }
                return;
            default:
                switch (id) {
                    case R.id.setting_swtich_volume_key_ctrl /* 2131755496 */:
                        if (z || this.f4822h.isChecked()) {
                            C1149ab.m4306a().m4312a(InterfaceC1224a.f4457y, Boolean.valueOf(z));
                            return;
                        } else {
                            this.f5041d.m5362a(R.string.setting_illegal);
                            this.f4820f.setChecked(true);
                            return;
                        }
                    case R.id.setting_swtich_floatview_ctrl /* 2131755497 */:
                        if (z || this.f4820f.isChecked()) {
                            C1149ab.m4306a().m4312a(InterfaceC1224a.f4436A, Boolean.valueOf(z));
                            C1283a.m5940a().f4842a.m6084d();
                            return;
                        } else {
                            this.f5041d.m5362a(R.string.setting_illegal);
                            this.f4822h.setChecked(true);
                            return;
                        }
                    case R.id.setting_swtich_waggle_stop /* 2131755498 */:
                        C1149ab.m4306a().m4312a(InterfaceC1224a.f4458z, Boolean.valueOf(z));
                        return;
                    case R.id.setting_swtich_call_stop /* 2131755499 */:
                        C1149ab.m4306a().m4312a(InterfaceC1224a.f4456x, Boolean.valueOf(z));
                        return;
                    case R.id.setting_swtich_vibration /* 2131755500 */:
                        C1149ab.m4306a().m4312a(InterfaceC1224a.f4437B, Boolean.valueOf(z));
                        return;
                    default:
                        return;
                }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.setting_button_update) {
            C1170m.m4450a();
            if (C1170m.m4451b()) {
                return;
            }
            if (!C1201x.m5233a(getContext())) {
                C1154ag.m4343b(getContext().getApplicationContext(), (int) R.string.network_off);
                return;
            }
            this.f4818c = false;
            String m5750a = C1261l.m5750a(getContext(), InterfaceC1224a.f4453u);
            String m4370a = C1162e.m4370a(getContext());
            UpdateRequestInfo updateRequestInfo = new UpdateRequestInfo();
            updateRequestInfo.ScriptId = C1285c.m5955f().f4851a.getId();
            updateRequestInfo.DeviceName = m4370a;
            updateRequestInfo.ScriptVersion = Integer.parseInt(m5750a);
            C1151ad.m4325c(f4815a, "updateVersionRequest --> 1 ScriptId=" + updateRequestInfo.ScriptId + ",DeviceName=" + updateRequestInfo.DeviceName + ",ScriptVersion=" + updateRequestInfo.ScriptVersion);
            C1543a m6898a = C1543a.m6898a();
            m6898a.f5824c = new AnonymousClass1();
            m6898a.m6902a(true, getContext(), updateRequestInfo);
            return;
        }
        if (id == R.id.setting_button_exitapp) {
            this.f4818c = false;
            if (this.f4817b != null && (this.f4817b instanceof Activity)) {
                ((Activity) this.f4817b).finish();
            }
            getContext().stopService(new Intent(getContext(), (Class<?>) PhoneStateService.class));
            MqBridge.exit();
            Process.killProcess(Process.myPid());
            ActivityManager activityManager = (ActivityManager) getContext().getSystemService("activity");
            if (activityManager != null) {
                activityManager.killBackgroundProcesses("com.cyjh.elfin:download_server");
                return;
            }
            return;
        }
        if (id == R.id.setting_dialog_imageview_back) {
            this.f4818c = false;
            dismiss();
            new ViewOnClickListenerC1280c(getContext()).show();
            return;
        }
        if (id != R.id.setting_button_scriptlog) {
            return;
        }
        File[] listFiles = new File(this.f5041d.f4564c).listFiles(new C1172o.a(InterfaceC1224a.f4440E));
        if (listFiles == null || listFiles.length == 0) {
            this.f5041d.m5362a(R.string.No_ScriptLog);
            return;
        }
        Arrays.sort(listFiles, new C1256g());
        File file = listFiles[0];
        ScriptLog scriptLog = new ScriptLog();
        scriptLog.setName(file.getName());
        scriptLog.setSize(C1172o.m4478a(file.length()));
        scriptLog.setFile(file);
        Intent intent = new Intent(getContext(), (Class<?>) ScriptLogDetailActivity.class);
        intent.putExtra(InterfaceC1224a.f4441F, true);
        intent.putExtra(InterfaceC1224a.f4442G, scriptLog);
        intent.addFlags(268435456);
        getContext().startActivity(intent);
        this.f4818c = true;
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.setting_dialog);
        m6174a(0.1f);
        m6175a(0.9f, 0.6f);
        this.f4819e = (Switch) findViewById(R.id.setting_swtich_call_stop);
        this.f4820f = (Switch) findViewById(R.id.setting_swtich_volume_key_ctrl);
        this.f4821g = (Switch) findViewById(R.id.setting_swtich_waggle_stop);
        this.f4822h = (Switch) findViewById(R.id.setting_swtich_floatview_ctrl);
        this.f4823i = (Switch) findViewById(R.id.setting_swtich_vibration);
        this.f4824j = (Switch) findViewById(R.id.switch_setting_word_recognition_library);
        this.f4825k = (Switch) findViewById(R.id.setting_swtich_open_run);
        this.f4826l = (LinearLayout) findViewById(R.id.layout_boot_script);
        this.f4826l.setVisibility(0);
        Button button = (Button) findViewById(R.id.setting_button_scriptlog);
        Button button2 = (Button) findViewById(R.id.setting_button_update);
        Button button3 = (Button) findViewById(R.id.setting_button_exitapp);
        ImageView imageView = (ImageView) findViewById(R.id.setting_dialog_imageview_back);
        this.f4819e.setOnCheckedChangeListener(this);
        this.f4820f.setOnCheckedChangeListener(this);
        this.f4821g.setOnCheckedChangeListener(this);
        this.f4822h.setOnCheckedChangeListener(this);
        this.f4823i.setOnCheckedChangeListener(this);
        this.f4825k.setOnCheckedChangeListener(this);
        button.setOnClickListener(this);
        button3.setOnClickListener(this);
        button2.setOnClickListener(this);
        imageView.setOnClickListener(this);
        if (C1485d.m6873a().m6879b()) {
            this.f4824j.setChecked(true);
            this.f4824j.setClickable(false);
        } else {
            this.f4824j.setChecked(false);
            this.f4824j.setOnCheckedChangeListener(this);
        }
        this.f4819e.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4456x, (Boolean) true));
        this.f4820f.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4457y, (Boolean) true));
        this.f4821g.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4458z, (Boolean) true));
        this.f4822h.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4436A, (Boolean) true));
        this.f4823i.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4437B, (Boolean) true));
        this.f4825k.setChecked(C1149ab.m4306a().m4314b(InterfaceC1224a.f4439D, (Boolean) false));
    }
}
