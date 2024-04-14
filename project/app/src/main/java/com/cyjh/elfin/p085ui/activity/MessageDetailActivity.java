package com.cyjh.elfin.p085ui.activity;

import android.os.Bundle;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.elfin.p085ui.fragment.MsgDetailFragment;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class MessageDetailActivity extends BaseActivity {

    /* renamed from: com.cyjh.elfin.ui.activity.MessageDetailActivity$a */
    /* loaded from: classes.dex */
    private class C1344a implements TitleView.InterfaceC1421a {
        private C1344a() {
        }

        /* synthetic */ C1344a(MessageDetailActivity messageDetailActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            MessageDetailActivity.this.finish();
        }
    }

    /* renamed from: b */
    private void m6270b() {
        TitleView titleView = (TitleView) findViewById(R.id.id_msg_detail_head);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setTitleText(R.string.msg_notify);
        titleView.setVisibilityRightImage(4);
        titleView.setOnLeftImageViewListener(new C1344a(this, (byte) 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_msg_detail);
        TitleView titleView = (TitleView) findViewById(R.id.id_msg_detail_head);
        titleView.setleftImage(R.drawable.ic_back);
        titleView.setTitleText(R.string.msg_notify);
        titleView.setVisibilityRightImage(4);
        titleView.setOnLeftImageViewListener(new C1344a(this, (byte) 0));
        getSupportFragmentManager().beginTransaction().replace(R.id.id_fl_fragment, MsgDetailFragment.m6425a(getIntent().getLongExtra(MessageDetailActivity.class.getCanonicalName(), 0L))).commit();
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
