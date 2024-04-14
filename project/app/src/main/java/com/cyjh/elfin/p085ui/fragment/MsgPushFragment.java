package com.cyjh.elfin.p085ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import cn.bingoogolapple.androidcommon.adapter.BGARecyclerViewAdapter;
import cn.bingoogolapple.androidcommon.adapter.InterfaceC0565f;
import com.cyjh.common.base.fragment.BaseFragement;
import com.cyjh.elfin.entity.MsgItem;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p085ui.activity.MessageDetailActivity;
import com.cyjh.elfin.p085ui.adpter.MsgNotifyAdapter;
import com.cyjh.http.bean.NotifyMsgBean;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class MsgPushFragment extends BaseFragement {

    /* renamed from: a */
    private RecyclerView f5357a;

    /* renamed from: b */
    private BGARecyclerViewAdapter f5358b;

    /* renamed from: c */
    private List<NotifyMsgBean> f5359c;

    /* renamed from: d */
    private TextView f5360d;

    /* renamed from: e */
    private InterfaceC0565f f5361e = new InterfaceC0565f() { // from class: com.cyjh.elfin.ui.fragment.MsgPushFragment.1
        @Override // cn.bingoogolapple.androidcommon.adapter.InterfaceC0565f
        /* renamed from: a */
        public final void mo1293a(int i) {
            NotifyMsgBean notifyMsgBean = (NotifyMsgBean) MsgPushFragment.this.f5358b.m1263a(i);
            Intent intent = new Intent(MsgPushFragment.this.getActivity(), (Class<?>) MessageDetailActivity.class);
            intent.putExtra(MessageDetailActivity.class.getCanonicalName(), Long.parseLong(notifyMsgBean.f5814ID));
            MsgPushFragment.this.startActivity(intent);
        }
    };

    /* renamed from: a */
    public static MsgPushFragment m6431a(ArrayList<NotifyMsgBean> arrayList) {
        MsgPushFragment msgPushFragment = new MsgPushFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(C1225b.f4511c, arrayList);
        msgPushFragment.setArguments(bundle);
        return msgPushFragment;
    }

    /* renamed from: a */
    private void m6432a(View view) {
        this.f5357a = (RecyclerView) view.findViewById(R.id.id_recycler_view);
        this.f5357a.setItemAnimator(new DefaultItemAnimator());
        this.f5357a.setHasFixedSize(true);
        this.f5357a.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.f5358b = new MsgNotifyAdapter(this.f5357a);
        this.f5358b.m1265a(this.f5361e);
        this.f5360d = (TextView) view.findViewById(R.id.id_tv_no_msg);
    }

    /* renamed from: b */
    private void m6433b() {
        if (this.f5359c == null || this.f5359c.size() <= 0) {
            this.f5360d.setVisibility(0);
            this.f5357a.setVisibility(8);
        } else {
            this.f5360d.setVisibility(8);
            this.f5357a.setVisibility(0);
            this.f5358b.m1267a((List) this.f5359c);
            this.f5357a.setAdapter(this.f5358b);
        }
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement
    /* renamed from: a */
    public final int mo4220a() {
        return R.layout.fragment_msg_push;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C2772c.m12482a().m12505b(this);
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onMessageMainThread(MsgItem msgItem) {
        if (msgItem.getMsgType() != 1002) {
            return;
        }
        this.f5358b.m1264a();
        this.f5360d.setVisibility(0);
        this.f5357a.setVisibility(8);
        C2772c.m12482a().m12506c(new MsgItem(1003));
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(MsgPushFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(MsgPushFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        C2772c.m12482a().m12503a(this);
        if (arguments != null) {
            this.f5359c = arguments.getParcelableArrayList(C1225b.f4511c);
        }
        this.f5357a = (RecyclerView) view.findViewById(R.id.id_recycler_view);
        this.f5357a.setItemAnimator(new DefaultItemAnimator());
        this.f5357a.setHasFixedSize(true);
        this.f5357a.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.f5358b = new MsgNotifyAdapter(this.f5357a);
        this.f5358b.m1265a(this.f5361e);
        this.f5360d = (TextView) view.findViewById(R.id.id_tv_no_msg);
        if (this.f5359c == null || this.f5359c.size() <= 0) {
            this.f5360d.setVisibility(0);
            this.f5357a.setVisibility(8);
        } else {
            this.f5360d.setVisibility(8);
            this.f5357a.setVisibility(0);
            this.f5358b.m1267a((List) this.f5359c);
            this.f5357a.setAdapter(this.f5358b);
        }
    }
}
