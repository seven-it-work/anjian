package com.cyjh.elfin.p085ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1198u;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p077e.p080c.C1264o;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.http.p096c.p099c.C1551h;
import com.elf.studio.p114a.C1710b;
import com.hjol.R;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class StudioBindActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public static String f5301b = "StudioBindActivity";

    /* renamed from: d */
    private FrameLayout f5303d;

    /* renamed from: e */
    private TextView f5304e;

    /* renamed from: f */
    private EditText f5305f;

    /* renamed from: g */
    private TitleView f5306g;

    /* renamed from: h */
    private String f5307h;

    /* renamed from: i */
    private String f5308i;

    /* renamed from: j */
    private String f5309j;

    /* renamed from: k */
    private String f5310k;

    /* renamed from: l */
    private String f5311l;

    /* renamed from: n */
    private boolean f5313n;

    /* renamed from: c */
    private Handler f5302c = new Handler();

    /* renamed from: m */
    private boolean f5312m = true;

    /* renamed from: com.cyjh.elfin.ui.activity.studio.StudioBindActivity$1 */
    /* loaded from: classes.dex */
    final class C13851 implements C1551h.a {
        C13851() {
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5774a(final ProjectNumberInfo projectNumberInfo) {
            StudioBindActivity.m6394a(StudioBindActivity.this);
            StudioBindActivity.this.f5306g.post(new Runnable() { // from class: com.cyjh.elfin.ui.activity.studio.StudioBindActivity.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    C1154ag.m4342a(StudioBindActivity.this.getApplicationContext(), "绑定成功！");
                }
            });
            AppContext.m5350a().f4565e = StudioBindActivity.this.f5308i;
            C1551h.m6946a().f5852b = null;
            C1149ab.m4306a().m4313a(InterfaceC1224a.f4443H, C1198u.m5223a(StudioBindActivity.this.f5311l));
            String str = projectNumberInfo.IMServerHost;
            int i = projectNumberInfo.IMServerPort;
            if (StudioBindActivity.this.f5313n) {
                StudioBindActivity.this.f5306g.postDelayed(new Runnable() { // from class: com.cyjh.elfin.ui.activity.studio.StudioBindActivity.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2772c.m12482a().m12506c(new C1710b(10002, projectNumberInfo.IMToken));
                    }
                }, 500L);
            } else {
                C2772c.m12482a().m12506c(new C1710b(10001, projectNumberInfo.IMToken));
            }
            StudioBindActivity.this.finish();
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5775a(final String str) {
            C1551h.m6946a().f5852b = null;
            StudioBindActivity.m6394a(StudioBindActivity.this);
            StudioBindActivity.this.f5306g.post(new Runnable() { // from class: com.cyjh.elfin.ui.activity.studio.StudioBindActivity.1.3
                @Override // java.lang.Runnable
                public final void run() {
                    C1154ag.m4342a(StudioBindActivity.this, str);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m6393a(Context context) {
        context.startActivity(new Intent(context, (Class<?>) StudioBindActivity.class));
    }

    /* renamed from: a */
    static /* synthetic */ boolean m6394a(StudioBindActivity studioBindActivity) {
        studioBindActivity.f5312m = true;
        return true;
    }

    /* renamed from: b */
    private void m6396b() {
        this.f5306g = (TitleView) findViewById(R.id.titleView);
        this.f5306g.setVisibilityTvRight(0);
        this.f5304e = (TextView) findViewById(R.id.tv_studio_bind);
        this.f5305f = (EditText) findViewById(R.id.et_studio_project_key);
    }

    /* renamed from: b */
    public static void m6397b(Context context) {
        Intent intent = new Intent(context, (Class<?>) StudioBindActivity.class);
        intent.putExtra("is_change", true);
        context.startActivity(intent);
    }

    /* renamed from: c */
    private void m6399c() {
        this.f5306g.setTitleText(R.string.already_bind_project_number);
        this.f5306g.setVisibilityLeftImage(0);
        this.f5306g.setleftImage(R.drawable.ic_back);
        this.f5306g.setOnLeftImageViewListener(new C1387a(this));
        this.f5306g.setVisibilityRightImage(4);
    }

    /* renamed from: c */
    private static void m6400c(Context context) {
        Intent intent = new Intent(context, (Class<?>) StudioBindActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: d */
    private void m6402d() {
        this.f5313n = getIntent().getBooleanExtra("is_change", false);
        C1151ad.m4325c(f5301b, "studioProjectNumber:" + AppContext.m5350a().f4565e);
        Script script = C1285c.m5955f().f4851a;
        if (script != null) {
            try {
                C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_UI_SAVE_CFG));
                this.f5307h = script.getId();
                this.f5308i = AppContext.m5350a().f4565e;
                this.f5309j = C1264o.m5787b(this, C1285c.m5955f().f4852c);
                this.f5310k = C1264o.m5784a(this, C1285c.m5955f().f4852c);
                this.f5311l = C1264o.m5786b(this);
                C1151ad.m4325c(f5301b, "initData --> scriptUIPContent=" + this.f5310k + ",mScriptCFGContent=" + this.f5311l);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: e */
    private void m6403e() {
        this.f5304e.setOnClickListener(this);
    }

    /* renamed from: f */
    private void m6405f() {
        this.f5308i = this.f5305f.getText().toString().trim();
        if (TextUtils.isEmpty(this.f5308i)) {
            C1154ag.m4340a(getApplicationContext(), (int) R.string.project_number_number_can_not_empty);
            return;
        }
        if (this.f5312m) {
            this.f5312m = false;
            C1151ad.m4325c(f5301b, "bindStudioProject --> scriptCFGContent=" + this.f5311l + ",scriptUIPContent=" + this.f5310k);
            if (TextUtils.isEmpty(this.f5307h)) {
                return;
            }
            C1551h.m6946a().m6952a(this, this.f5308i, this.f5307h, this.f5309j, this.f5310k, this.f5311l, new C13851());
        }
    }

    /* renamed from: g */
    private /* synthetic */ void m6406g() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.tv_studio_bind) {
            return;
        }
        this.f5308i = this.f5305f.getText().toString().trim();
        if (TextUtils.isEmpty(this.f5308i)) {
            C1154ag.m4340a(getApplicationContext(), (int) R.string.project_number_number_can_not_empty);
            return;
        }
        if (this.f5312m) {
            this.f5312m = false;
            C1151ad.m4325c(f5301b, "bindStudioProject --> scriptCFGContent=" + this.f5311l + ",scriptUIPContent=" + this.f5310k);
            if (TextUtils.isEmpty(this.f5307h)) {
                return;
            }
            C1551h.m6946a().m6952a(this, this.f5308i, this.f5307h, this.f5309j, this.f5310k, this.f5311l, new C13851());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_studio_bind);
        this.f5306g = (TitleView) findViewById(R.id.titleView);
        this.f5306g.setVisibilityTvRight(0);
        this.f5304e = (TextView) findViewById(R.id.tv_studio_bind);
        this.f5305f = (EditText) findViewById(R.id.et_studio_project_key);
        this.f5306g.setTitleText(R.string.already_bind_project_number);
        this.f5306g.setVisibilityLeftImage(0);
        this.f5306g.setleftImage(R.drawable.ic_back);
        this.f5306g.setOnLeftImageViewListener(new C1387a(this));
        this.f5306g.setVisibilityRightImage(4);
        this.f5313n = getIntent().getBooleanExtra("is_change", false);
        C1151ad.m4325c(f5301b, "studioProjectNumber:" + AppContext.m5350a().f4565e);
        Script script = C1285c.m5955f().f4851a;
        if (script != null) {
            try {
                C2772c.m12482a().m12506c(new MsgItem(MsgItem.SCRIPT_UI_SAVE_CFG));
                this.f5307h = script.getId();
                this.f5308i = AppContext.m5350a().f4565e;
                this.f5309j = C1264o.m5787b(this, C1285c.m5955f().f4852c);
                this.f5310k = C1264o.m5784a(this, C1285c.m5955f().f4852c);
                this.f5311l = C1264o.m5786b(this);
                C1151ad.m4325c(f5301b, "initData --> scriptUIPContent=" + this.f5310k + ",mScriptCFGContent=" + this.f5311l);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f5304e.setOnClickListener(this);
    }
}
