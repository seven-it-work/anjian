package com.cyjh.elfin.p085ui.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.feedback.lib.fragment.FeedBackInfoFragment;
import com.cyjh.feedback.lib.p093e.C1468e;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class FeedbackActivity extends BaseActivity {

    /* renamed from: b */
    TitleView f5148b;

    /* renamed from: com.cyjh.elfin.ui.activity.FeedbackActivity$1 */
    /* loaded from: classes.dex */
    final class C13401 implements TitleView.InterfaceC1421a {
        C13401() {
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            FeedbackActivity.this.onBackPressed();
        }
    }

    /* renamed from: b */
    private void m6267b() {
        this.f5148b = (TitleView) findViewById(R.id.titleview_feedback);
        this.f5148b.setTitleText(R.string.feedback);
        this.f5148b.setVisibilityLeftImage(0);
        this.f5148b.setleftImage(R.drawable.ic_back);
        this.f5148b.setOnLeftImageViewListener(new C13401());
        this.f5148b.setVisibilityRightImage(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_feedback);
        this.f5148b = (TitleView) findViewById(R.id.titleview_feedback);
        this.f5148b.setTitleText(R.string.feedback);
        this.f5148b.setVisibilityLeftImage(0);
        this.f5148b.setleftImage(R.drawable.ic_back);
        this.f5148b.setOnLeftImageViewListener(new C13401());
        this.f5148b.setVisibilityRightImage(4);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.frameLayout_feedback, FeedBackInfoFragment.m6832a(getIntent().getStringExtra(FeedbackActivity.class.getCanonicalName()), C1468e.m6828a()));
        beginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
}
