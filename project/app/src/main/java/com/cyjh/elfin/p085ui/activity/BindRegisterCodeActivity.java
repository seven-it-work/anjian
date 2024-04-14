package com.cyjh.elfin.p085ui.activity;

import android.app.AlertDialog;
import android.arch.lifecycle.Observer;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p076d.C1238c;
import com.cyjh.elfin.p085ui.model.RegCodeModel;
import com.cyjh.elfin.p085ui.p086a.C1314b;
import com.cyjh.elfin.p085ui.p086a.DialogC1319g;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.bean.response.BaseResponseInfo;
import com.cyjh.http.bean.response.BuyRegCodeConfigInfo;
import com.cyjh.http.bean.response.QueryRegCodeInfo;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class BindRegisterCodeActivity extends BaseModelActivity<RegCodeModel> implements View.OnClickListener {

    /* renamed from: c */
    public static final String[] f5094c = {"android.permission.CAMERA"};

    /* renamed from: d */
    public static final int f5095d = 1003;

    /* renamed from: e */
    private String f5096e;

    /* renamed from: f */
    private EditText f5097f;

    /* renamed from: g */
    private TextView f5098g;

    /* renamed from: h */
    private LinearLayout f5099h;

    /* renamed from: i */
    private TextView f5100i;

    /* renamed from: j */
    private TextView f5101j;

    /* renamed from: k */
    private TextView f5102k;

    /* renamed from: l */
    private View f5103l;

    /* renamed from: m */
    private View f5104m;

    /* renamed from: n */
    private View f5105n;

    /* renamed from: o */
    private TextView f5106o;

    /* renamed from: p */
    private final Handler f5107p = new Handler();

    /* renamed from: q */
    private boolean f5108q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$3 */
    /* loaded from: classes.dex */
    public final class ViewOnClickListenerC13263 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ AlertDialog f5113a;

        ViewOnClickListenerC13263(AlertDialog alertDialog) {
            this.f5113a = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f5113a.dismiss();
            ((RegCodeModel) BindRegisterCodeActivity.this.f4009b).m6498a(BindRegisterCodeActivity.this.f5096e, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$4 */
    /* loaded from: classes.dex */
    public final class ViewOnClickListenerC13274 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ AlertDialog f5115a;

        ViewOnClickListenerC13274(AlertDialog alertDialog) {
            this.f5115a = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f5115a.dismiss();
            ((RegCodeModel) BindRegisterCodeActivity.this.f4009b).m6498a(BindRegisterCodeActivity.this.f5096e, 1);
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$7 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC13307 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ BuyRegCodeConfigInfo f5119a;

        ViewOnClickListenerC13307(BuyRegCodeConfigInfo buyRegCodeConfigInfo) {
            this.f5119a = buyRegCodeConfigInfo;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(this.f5119a.BuyLinkUrl));
                if (!BindRegisterCodeActivity.m6218a(AppContext.m5350a(), intent)) {
                    intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
                }
                BindRegisterCodeActivity.this.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
                C1154ag.m4344b(AppContext.m5350a(), BindRegisterCodeActivity.this.getString(R.string.invalid_url_address));
            }
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$a */
    /* loaded from: classes.dex */
    private class C1331a implements TitleView.InterfaceC1421a {
        private C1331a() {
        }

        /* synthetic */ C1331a(BindRegisterCodeActivity bindRegisterCodeActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            BindRegisterCodeActivity.this.finish();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6216a(BindRegisterCodeActivity bindRegisterCodeActivity, QueryRegCodeInfo queryRegCodeInfo) {
        if (queryRegCodeInfo.IsSuperposeConfirm != 1) {
            ((RegCodeModel) bindRegisterCodeActivity.f4009b).m6498a(bindRegisterCodeActivity.f5096e, 0);
            return;
        }
        C1314b.m6177a();
        AlertDialog m6176a = C1314b.m6176a(bindRegisterCodeActivity, (int) R.layout.dialog_overlay_regcode);
        m6176a.setCancelable(false);
        m6176a.show();
        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_no_superimposed);
        TextView textView2 = (TextView) m6176a.findViewById(R.id.id_tv_superimposed);
        textView.setOnClickListener(new ViewOnClickListenerC13263(m6176a));
        textView2.setOnClickListener(new ViewOnClickListenerC13274(m6176a));
    }

    /* renamed from: a */
    private void m6217a(QueryRegCodeInfo queryRegCodeInfo) {
        if (queryRegCodeInfo.IsSuperposeConfirm != 1) {
            ((RegCodeModel) this.f4009b).m6498a(this.f5096e, 0);
            return;
        }
        C1314b.m6177a();
        AlertDialog m6176a = C1314b.m6176a(this, (int) R.layout.dialog_overlay_regcode);
        m6176a.setCancelable(false);
        m6176a.show();
        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_no_superimposed);
        TextView textView2 = (TextView) m6176a.findViewById(R.id.id_tv_superimposed);
        textView.setOnClickListener(new ViewOnClickListenerC13263(m6176a));
        textView2.setOnClickListener(new ViewOnClickListenerC13274(m6176a));
    }

    /* renamed from: a */
    static /* synthetic */ boolean m6218a(Context context, Intent intent) {
        return !C1225b.f4510b.equals(context.getPackageManager().resolveActivity(intent, 65536).activityInfo.packageName);
    }

    /* renamed from: b */
    private static boolean m6220b(Context context, Intent intent) {
        return !C1225b.f4510b.equals(context.getPackageManager().resolveActivity(intent, 65536).activityInfo.packageName);
    }

    /* renamed from: d */
    static /* synthetic */ boolean m6222d(BindRegisterCodeActivity bindRegisterCodeActivity) {
        bindRegisterCodeActivity.f5108q = false;
        return false;
    }

    /* renamed from: f */
    private void m6223f() {
        if (Build.VERSION.SDK_INT < 23) {
            m6224g();
        } else if (ContextCompat.checkSelfPermission(getApplication(), "android.permission.CAMERA") == 0) {
            ActivityCompat.requestPermissions(this, f5094c, 1000);
        } else {
            m6224g();
        }
    }

    /* renamed from: g */
    private void m6224g() {
        startActivityForResult(new Intent(this, (Class<?>) SweepCodeZbarActivity.class), 1003);
    }

    /* renamed from: h */
    private void m6225h() {
        if (ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos == null || ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size() <= 0) {
            this.f5098g.setVisibility(0);
            return;
        }
        TextView[] textViewArr = {this.f5100i, this.f5101j, this.f5102k, this.f5106o};
        View[] viewArr = {this.f5103l, this.f5104m, this.f5105n};
        this.f5099h.setVisibility(0);
        this.f5098g.setVisibility(8);
        for (int i = 0; i < ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size(); i++) {
            BuyRegCodeConfigInfo buyRegCodeConfigInfo = ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.get(i);
            TextView textView = textViewArr[i];
            textView.setVisibility(0);
            textView.setText(buyRegCodeConfigInfo.ButtonName);
            if (3 < ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size() - 1) {
                viewArr[i].setVisibility(0);
            }
            textView.setOnClickListener(new ViewOnClickListenerC13307(buyRegCodeConfigInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: b */
    public final Class<RegCodeModel> mo4214b() {
        return RegCodeModel.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: c */
    public final void mo4215c() {
        ((RegCodeModel) this.f4009b).f5411a.observe(this, new Observer<BaseResponseInfo>() { // from class: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity.1

            /* renamed from: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            final class AnonymousClass1 implements View.OnClickListener {

                /* renamed from: a */
                final /* synthetic */ DialogC1319g f5110a;

                AnonymousClass1(DialogC1319g dialogC1319g) {
                    this.f5110a = dialogC1319g;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5110a.dismiss();
                }
            }

            /* renamed from: a */
            private void m6226a(@Nullable BaseResponseInfo baseResponseInfo) {
                if (baseResponseInfo.Code == 200) {
                    C1154ag.m4344b(BindRegisterCodeActivity.this, BindRegisterCodeActivity.this.getString(R.string.activation_code_suc));
                    return;
                }
                int i = baseResponseInfo.Code;
                if (1100 != i && 1200 != i && 1201 != i && 1202 != i && 1300 != i) {
                    C1154ag.m4344b(AppContext.m5350a(), baseResponseInfo.Message);
                } else {
                    if (DialogC1319g.f5054a) {
                        C2772c.m12482a().m12506c(new MsgItem.UpdateMessageToDialog(baseResponseInfo.Message));
                        return;
                    }
                    DialogC1319g dialogC1319g = new DialogC1319g(BindRegisterCodeActivity.this, false, baseResponseInfo.Message);
                    dialogC1319g.f5056b = new AnonymousClass1(dialogC1319g);
                    dialogC1319g.show();
                }
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable BaseResponseInfo baseResponseInfo) {
                BaseResponseInfo baseResponseInfo2 = baseResponseInfo;
                if (baseResponseInfo2.Code == 200) {
                    C1154ag.m4344b(BindRegisterCodeActivity.this, BindRegisterCodeActivity.this.getString(R.string.activation_code_suc));
                    return;
                }
                int i = baseResponseInfo2.Code;
                if (1100 != i && 1200 != i && 1201 != i && 1202 != i && 1300 != i) {
                    C1154ag.m4344b(AppContext.m5350a(), baseResponseInfo2.Message);
                } else {
                    if (DialogC1319g.f5054a) {
                        C2772c.m12482a().m12506c(new MsgItem.UpdateMessageToDialog(baseResponseInfo2.Message));
                        return;
                    }
                    DialogC1319g dialogC1319g = new DialogC1319g(BindRegisterCodeActivity.this, false, baseResponseInfo2.Message);
                    dialogC1319g.f5056b = new AnonymousClass1(dialogC1319g);
                    dialogC1319g.show();
                }
            }
        });
        ((RegCodeModel) this.f4009b).f5412b.observe(this, new Observer<RegCodeInfoResponse>() { // from class: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity.2
            /* renamed from: a */
            private void m6227a(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
                if (regCodeInfoResponse.Code == 200) {
                    BindRegisterCodeActivity.m6216a(BindRegisterCodeActivity.this, regCodeInfoResponse.Data);
                    return;
                }
                String str = regCodeInfoResponse.Message;
                if (TextUtils.isEmpty(str)) {
                    str = String.valueOf(regCodeInfoResponse.Code);
                }
                C1154ag.m4344b(AppContext.m5350a(), str);
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
                RegCodeInfoResponse regCodeInfoResponse2 = regCodeInfoResponse;
                if (regCodeInfoResponse2.Code == 200) {
                    BindRegisterCodeActivity.m6216a(BindRegisterCodeActivity.this, regCodeInfoResponse2.Data);
                    return;
                }
                String str = regCodeInfoResponse2.Message;
                if (TextUtils.isEmpty(str)) {
                    str = String.valueOf(regCodeInfoResponse2.Code);
                }
                C1154ag.m4344b(AppContext.m5350a(), str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: d */
    public final void mo4216d() {
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.activation_code));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setRightTvText(R.string.register_code_unbind);
        titleView.setVisibilityTvRight(0);
        this.f5097f = (EditText) findViewById(R.id.register_number);
        this.f5098g = (TextView) findViewById(R.id.tv_empty_msg);
        this.f5099h = (LinearLayout) findViewById(R.id.ll_registration_buy);
        this.f5100i = (TextView) findViewById(R.id.tv_day);
        this.f5101j = (TextView) findViewById(R.id.tv_week);
        this.f5102k = (TextView) findViewById(R.id.tv_month);
        this.f5103l = findViewById(R.id.line_day);
        this.f5104m = findViewById(R.id.line_week);
        this.f5105n = findViewById(R.id.line_month);
        this.f5106o = (TextView) findViewById(R.id.tv_permanent_card);
        ((Button) findViewById(R.id.btn_activation)).setOnClickListener(this);
        this.f5097f.setText(C1238c.m5531a().m5543b());
        findViewById(R.id.btn_sweep_activation).setOnClickListener(this);
        titleView.setOnRightTextViewListener(new TitleView.InterfaceC1423c() { // from class: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity.5
            @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1423c
            /* renamed from: a */
            public final void mo6228a() {
                BindRegisterCodeActivity bindRegisterCodeActivity = BindRegisterCodeActivity.this;
                String m5543b = C1238c.m5531a().m5543b();
                Intent intent = new Intent(bindRegisterCodeActivity, (Class<?>) UnbindRegistrationCodeActivity.class);
                intent.addFlags(268435456);
                intent.putExtra(UnbindRegistrationCodeActivity.class.getCanonicalName(), m5543b);
                bindRegisterCodeActivity.startActivity(intent);
            }
        });
        titleView.setOnLeftImageViewListener(new C1331a(this, (byte) 0));
        if (ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos == null || ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size() <= 0) {
            this.f5098g.setVisibility(0);
            return;
        }
        TextView[] textViewArr = {this.f5100i, this.f5101j, this.f5102k, this.f5106o};
        View[] viewArr = {this.f5103l, this.f5104m, this.f5105n};
        this.f5099h.setVisibility(0);
        this.f5098g.setVisibility(8);
        for (int i = 0; i < ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size(); i++) {
            BuyRegCodeConfigInfo buyRegCodeConfigInfo = ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.get(i);
            TextView textView = textViewArr[i];
            textView.setVisibility(0);
            textView.setText(buyRegCodeConfigInfo.ButtonName);
            if (3 < ParamsWrap.getParamsWrap().mBuyRegCodeConfigInfos.size() - 1) {
                viewArr[i].setVisibility(0);
            }
            textView.setOnClickListener(new ViewOnClickListenerC13307(buyRegCodeConfigInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: e */
    public final int mo4217e() {
        return R.layout.activity_register_code;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1003 && i2 == -1 && intent != null) {
            this.f5096e = intent.getStringExtra("SWEEP_RESULT_BACK");
            if (TextUtils.isEmpty(this.f5096e)) {
                C1154ag.m4344b(this, getString(R.string.regcode_sweep_result_null));
            } else {
                this.f5097f.setText(this.f5096e);
                ((RegCodeModel) this.f4009b).m6497a(this.f5096e);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_activation /* 2131755223 */:
                this.f5096e = this.f5097f.getText().toString().trim();
                if (TextUtils.isEmpty(this.f5096e)) {
                    C1154ag.m4343b(AppContext.m5350a(), (int) R.string.input_register_number);
                    return;
                }
                if (!C1201x.m5233a(AppContext.m5350a())) {
                    C1154ag.m4344b(AppContext.m5350a(), AppContext.m5350a().getString(R.string.network_off));
                    return;
                } else {
                    if (this.f5108q) {
                        return;
                    }
                    this.f5108q = true;
                    ((RegCodeModel) this.f4009b).m6497a(this.f5096e);
                    this.f5107p.removeCallbacksAndMessages(null);
                    this.f5107p.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.activity.BindRegisterCodeActivity.6
                        @Override // java.lang.Runnable
                        public final void run() {
                            BindRegisterCodeActivity.m6222d(BindRegisterCodeActivity.this);
                        }
                    }, 3000L);
                    return;
                }
            case R.id.btn_sweep_activation /* 2131755224 */:
                if (Build.VERSION.SDK_INT < 23) {
                    m6224g();
                    return;
                } else if (ContextCompat.checkSelfPermission(getApplication(), "android.permission.CAMERA") == 0) {
                    ActivityCompat.requestPermissions(this, f5094c, 1000);
                    return;
                } else {
                    m6224g();
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1000) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                finish();
            } else {
                m6224g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
}
