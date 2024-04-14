package com.cyjh.elfin.p085ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1154ag;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p085ui.activity.studio.StudioBindClearActivity;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.bean.response.ProjectNumberInfo;
import com.cyjh.http.p096c.p099c.C1551h;
import com.elf.studio.p114a.C1710b;
import com.hjol.R;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class StudioBindClearActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public static String f5320b = "StudioBindClearActivity";

    /* renamed from: c */
    public static String f5321c = "studio_project_key";

    /* renamed from: d */
    private TextView f5322d;

    /* renamed from: e */
    private TextView f5323e;

    /* renamed from: f */
    private TextView f5324f;

    /* renamed from: g */
    private boolean f5325g = true;

    /* renamed from: h */
    private Handler f5326h = new Handler();

    /* renamed from: i */
    private String f5327i;

    /* renamed from: j */
    private FrameLayout f5328j;

    /* renamed from: k */
    private TitleView f5329k;

    /* renamed from: com.cyjh.elfin.ui.activity.studio.StudioBindClearActivity$1 */
    /* loaded from: classes.dex */
    final class C13861 implements C1551h.a {
        C13861() {
        }

        /* renamed from: a */
        private /* synthetic */ void m6417a() {
            C1154ag.m4342a(StudioBindClearActivity.this.getApplicationContext(), "解绑成功！");
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5774a(ProjectNumberInfo projectNumberInfo) {
            StudioBindClearActivity.m6408a(StudioBindClearActivity.this);
            AppContext.m5350a().f4565e = null;
            C2772c.m12482a().m12506c(new C1710b((byte) 0));
            StudioBindClearActivity.this.finish();
            StudioBindClearActivity.this.f5326h.post(new Runnable(this) { // from class: com.cyjh.elfin.ui.activity.studio.c

                /* renamed from: a */
                private final StudioBindClearActivity.C13861 f5333a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5333a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C1154ag.m4342a(StudioBindClearActivity.this.getApplicationContext(), "解绑成功！");
                }
            });
        }

        @Override // com.cyjh.http.p096c.p099c.C1551h.a
        /* renamed from: a */
        public final void mo5775a(String str) {
            StudioBindClearActivity.m6408a(StudioBindClearActivity.this);
            C1154ag.m4340a(StudioBindClearActivity.this.getApplicationContext(), (int) R.string.unbind_project_failure);
        }
    }

    /* renamed from: a */
    public static void m6407a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) StudioBindClearActivity.class);
        intent.putExtra(f5321c, str);
        context.startActivity(intent);
    }

    /* renamed from: a */
    static /* synthetic */ boolean m6408a(StudioBindClearActivity studioBindClearActivity) {
        studioBindClearActivity.f5325g = true;
        return true;
    }

    /* renamed from: b */
    private void m6410b() {
        this.f5329k = (TitleView) findViewById(R.id.titleView);
        this.f5329k.setVisibilityTvRight(0);
        this.f5322d = (TextView) findViewById(R.id.tv_studio_bind_code);
        this.f5323e = (TextView) findViewById(R.id.tv_studio_unbind);
        this.f5324f = (TextView) findViewById(R.id.tv_studio_change);
    }

    /* renamed from: b */
    private static void m6411b(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) StudioBindClearActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(f5321c, str);
        context.startActivity(intent);
    }

    /* renamed from: c */
    private void m6412c() {
        this.f5329k.setTitleText(R.string.already_bind_project_number);
        this.f5329k.setVisibilityLeftImage(0);
        this.f5329k.setleftImage(R.drawable.ic_back);
        this.f5329k.setOnLeftImageViewListener(new C1388b(this));
        this.f5329k.setVisibilityRightImage(4);
    }

    /* renamed from: d */
    private void m6413d() {
        this.f5322d.setText(this.f5327i);
    }

    /* renamed from: e */
    private void m6414e() {
        this.f5323e.setOnClickListener(this);
        this.f5324f.setOnClickListener(this);
    }

    /* renamed from: f */
    private void m6415f() {
        if (this.f5325g) {
            this.f5325g = false;
            Script script = C1285c.m5955f().f4851a;
            if (script != null) {
                C1551h.m6946a().m6951a(this, script.getId(), new C13861());
            } else {
                C1154ag.m4340a(getApplicationContext(), (int) R.string.unbind_project_failure);
            }
        }
    }

    /* renamed from: g */
    private /* synthetic */ void m6416g() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_studio_unbind /* 2131755269 */:
                if (this.f5325g) {
                    this.f5325g = false;
                    Script script = C1285c.m5955f().f4851a;
                    if (script != null) {
                        C1551h.m6946a().m6951a(this, script.getId(), new C13861());
                        return;
                    } else {
                        C1154ag.m4340a(getApplicationContext(), (int) R.string.unbind_project_failure);
                        return;
                    }
                }
                return;
            case R.id.tv_studio_change /* 2131755270 */:
                StudioBindActivity.m6397b(this);
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_studio_bind_clear);
        this.f5327i = getIntent().getStringExtra(f5321c);
        this.f5329k = (TitleView) findViewById(R.id.titleView);
        this.f5329k.setVisibilityTvRight(0);
        this.f5322d = (TextView) findViewById(R.id.tv_studio_bind_code);
        this.f5323e = (TextView) findViewById(R.id.tv_studio_unbind);
        this.f5324f = (TextView) findViewById(R.id.tv_studio_change);
        this.f5329k.setTitleText(R.string.already_bind_project_number);
        this.f5329k.setVisibilityLeftImage(0);
        this.f5329k.setleftImage(R.drawable.ic_back);
        this.f5329k.setOnLeftImageViewListener(new C1388b(this));
        this.f5329k.setVisibilityRightImage(4);
        this.f5322d.setText(this.f5327i);
        this.f5323e.setOnClickListener(this);
        this.f5324f.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
