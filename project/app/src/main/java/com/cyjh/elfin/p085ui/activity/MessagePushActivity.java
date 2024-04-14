package com.cyjh.elfin.p085ui.activity;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1149ab;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p085ui.fragment.MsgPushFragment;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.bean.NotifyMsgBean;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class MessagePushActivity extends BaseActivity {

    /* renamed from: b */
    private TitleView f5155b;

    /* renamed from: c */
    private ArrayList<NotifyMsgBean> f5156c;

    /* renamed from: com.cyjh.elfin.ui.activity.MessagePushActivity$a */
    /* loaded from: classes.dex */
    private class C1346a implements TitleView.InterfaceC1421a {
        private C1346a() {
        }

        /* synthetic */ C1346a(MessagePushActivity messagePushActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            MessagePushActivity.this.finish();
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.MessagePushActivity$b */
    /* loaded from: classes.dex */
    private class C1347b implements TitleView.InterfaceC1423c {
        private C1347b() {
        }

        /* synthetic */ C1347b(MessagePushActivity messagePushActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1423c
        /* renamed from: a */
        public final void mo6228a() {
            C2772c.m12482a().m12506c(new MsgItem(1002));
        }
    }

    /* renamed from: b */
    private void m6271b() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.id_fl_fragment, MsgPushFragment.m6431a(this.f5156c));
        beginTransaction.commit();
    }

    /* renamed from: c */
    private void m6272c() {
        this.f5155b = (TitleView) findViewById(R.id.id_msg_push_head);
        this.f5155b.setleftImage(R.drawable.ic_back);
        byte b2 = 0;
        this.f5155b.setOnLeftImageViewListener(new C1346a(this, b2));
        this.f5155b.setTitleText(R.string.msg_notify);
        this.f5155b.setRightTvText(R.string.clear_msg);
        this.f5155b.setVisibilityRightImage(8);
        this.f5155b.setVisibilityTvRight(0);
        this.f5155b.setOnRightTextViewListener(new C1347b(this, b2));
        C1149ab.m4306a().m4312a(C1225b.f4513e, (Boolean) false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_msg_push);
        this.f5156c = getIntent().getParcelableArrayListExtra(C1225b.f4511c);
        C2772c.m12482a().m12506c(new MsgItem(1001));
        this.f5155b = (TitleView) findViewById(R.id.id_msg_push_head);
        this.f5155b.setleftImage(R.drawable.ic_back);
        byte b2 = 0;
        this.f5155b.setOnLeftImageViewListener(new C1346a(this, b2));
        this.f5155b.setTitleText(R.string.msg_notify);
        this.f5155b.setRightTvText(R.string.clear_msg);
        this.f5155b.setVisibilityRightImage(8);
        this.f5155b.setVisibilityTvRight(0);
        this.f5155b.setOnRightTextViewListener(new C1347b(this, b2));
        C1149ab.m4306a().m4312a(C1225b.f4513e, (Boolean) false);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.id_fl_fragment, MsgPushFragment.m6431a(this.f5156c));
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
