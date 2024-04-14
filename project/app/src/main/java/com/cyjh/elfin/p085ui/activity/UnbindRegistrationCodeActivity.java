package com.cyjh.elfin.p085ui.activity;

import android.arch.lifecycle.Observer;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.p085ui.model.UnRegCodeModel;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.bean.response.RegCodeInfoResponse;
import com.cyjh.http.p096c.p099c.C1559p;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class UnbindRegistrationCodeActivity extends BaseModelActivity<UnRegCodeModel> implements View.OnClickListener {

    /* renamed from: c */
    public static final int f5264c = 1002;

    /* renamed from: d */
    private static final int f5265d = 2;

    /* renamed from: f */
    private String f5267f;

    /* renamed from: g */
    private String f5268g;

    /* renamed from: h */
    private EditText f5269h;

    /* renamed from: j */
    private TextView f5271j;

    /* renamed from: k */
    private Button f5272k;

    /* renamed from: l */
    private Button f5273l;

    /* renamed from: e */
    private Handler f5266e = new Handler();

    /* renamed from: i */
    private boolean f5270i = false;

    /* renamed from: com.cyjh.elfin.ui.activity.UnbindRegistrationCodeActivity$a */
    /* loaded from: classes.dex */
    private class C1375a implements TitleView.InterfaceC1421a {
        private C1375a() {
        }

        /* synthetic */ C1375a(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            UnbindRegistrationCodeActivity.this.finish();
        }
    }

    /* renamed from: a */
    static /* synthetic */ boolean m6374a(UnbindRegistrationCodeActivity unbindRegistrationCodeActivity) {
        unbindRegistrationCodeActivity.f5270i = false;
        return false;
    }

    /* renamed from: f */
    private void m6375f() {
        if (!TextUtils.isEmpty(this.f5267f)) {
            this.f5269h.setText(this.f5267f);
        }
        String valueOf = String.valueOf(ParamsWrap.getParamsWrap().unbindDeductHours);
        String format = String.format(getString(R.string.unbind_app_buckle_time), valueOf);
        SpannableString spannableString = new SpannableString(format);
        int indexOf = format.indexOf(valueOf);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FF4948")), indexOf, valueOf.length() + indexOf + 2, 17);
        this.f5271j.setText(spannableString);
        this.f5272k.setOnClickListener(this);
        this.f5273l.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: b */
    public final Class<UnRegCodeModel> mo4214b() {
        return UnRegCodeModel.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: c */
    public final void mo4215c() {
        ((UnRegCodeModel) this.f4009b).f5453c.observe(this, new Observer<RegCodeInfoResponse>() { // from class: com.cyjh.elfin.ui.activity.UnbindRegistrationCodeActivity.1
            /* renamed from: a */
            private void m6376a(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
                String str = regCodeInfoResponse.Message;
                if (regCodeInfoResponse.Code == 200) {
                    str = UnbindRegistrationCodeActivity.this.getString(R.string.unbind_reg_code_suc);
                }
                if (TextUtils.isEmpty(str)) {
                    str = UnbindRegistrationCodeActivity.this.getString(R.string.status_code_text) + regCodeInfoResponse.Code;
                }
                C1154ag.m4344b(AppContext.m5350a(), str);
            }

            @Override // android.arch.lifecycle.Observer
            public final /* synthetic */ void onChanged(@Nullable RegCodeInfoResponse regCodeInfoResponse) {
                RegCodeInfoResponse regCodeInfoResponse2 = regCodeInfoResponse;
                String str = regCodeInfoResponse2.Message;
                if (regCodeInfoResponse2.Code == 200) {
                    str = UnbindRegistrationCodeActivity.this.getString(R.string.unbind_reg_code_suc);
                }
                if (TextUtils.isEmpty(str)) {
                    str = UnbindRegistrationCodeActivity.this.getString(R.string.status_code_text) + regCodeInfoResponse2.Code;
                }
                C1154ag.m4344b(AppContext.m5350a(), str);
            }
        });
    }

    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: d */
    public final void mo4216d() {
        TitleView titleView = (TitleView) findViewById(R.id.id_title);
        titleView.setTitleText(getString(R.string.register_code_unbind));
        titleView.setVisibilityRightImage(4);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setOnLeftImageViewListener(new C1375a(this, (byte) 0));
        this.f5269h = (EditText) findViewById(R.id.register_number);
        this.f5271j = (TextView) findViewById(R.id.tv_buckle_time);
        this.f5272k = (Button) findViewById(R.id.btn_unbind);
        this.f5273l = (Button) findViewById(R.id.btn_sweep_unbind);
        if (!TextUtils.isEmpty(this.f5267f)) {
            this.f5269h.setText(this.f5267f);
        }
        String valueOf = String.valueOf(ParamsWrap.getParamsWrap().unbindDeductHours);
        String format = String.format(getString(R.string.unbind_app_buckle_time), valueOf);
        SpannableString spannableString = new SpannableString(format);
        int indexOf = format.indexOf(valueOf);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FF4948")), indexOf, valueOf.length() + indexOf + 2, 17);
        this.f5271j.setText(spannableString);
        this.f5272k.setOnClickListener(this);
        this.f5273l.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: e */
    public final int mo4217e() {
        return R.layout.activity_unregister_code;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btn_unbind) {
            return;
        }
        this.f5268g = this.f5269h.getText().toString().trim();
        if (TextUtils.isEmpty(this.f5268g)) {
            C1154ag.m4343b(AppContext.m5350a(), (int) R.string.input_register_number);
            return;
        }
        if (!C1201x.m5233a(view.getContext())) {
            C1154ag.m4344b(AppContext.m5350a(), AppContext.m5350a().getResources().getString(R.string.network_off));
            return;
        }
        if (this.f5270i) {
            return;
        }
        this.f5270i = true;
        UnRegCodeModel unRegCodeModel = (UnRegCodeModel) this.f4009b;
        String str = this.f5268g;
        if (unRegCodeModel.f5451a == null) {
            unRegCodeModel.f5451a = new C1559p(unRegCodeModel);
        }
        unRegCodeModel.f5452b = str;
        unRegCodeModel.f5451a.m6968a(str, AppContext.m5350a());
        this.f5266e.removeCallbacksAndMessages(null);
        this.f5266e.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.activity.UnbindRegistrationCodeActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                UnbindRegistrationCodeActivity.m6374a(UnbindRegistrationCodeActivity.this);
            }
        }, 3000L);
    }

    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f5266e != null) {
            this.f5266e.removeCallbacksAndMessages(null);
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
    }
}
