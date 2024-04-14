package com.cyjh.elfin.p085ui.adpter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageView;
import android.widget.TextView;
import cn.bingoogolapple.androidcommon.adapter.BGARecyclerViewAdapter;
import cn.bingoogolapple.androidcommon.adapter.ViewOnClickListenerC0567h;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.cyjh.common.util.C1174q;
import com.cyjh.http.bean.NotifyMsgBean;
import com.hjol.R;

/* loaded from: classes.dex */
public class MsgNotifyAdapter extends BGARecyclerViewAdapter<NotifyMsgBean> {
    public MsgNotifyAdapter(RecyclerView recyclerView) {
        super(recyclerView);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private void a2(ViewOnClickListenerC0567h viewOnClickListenerC0567h, NotifyMsgBean notifyMsgBean) {
        if (notifyMsgBean != null) {
            TextView textView = (TextView) viewOnClickListenerC0567h.m1325b(R.id.id_tv_msg_des);
            ImageView imageView = (ImageView) viewOnClickListenerC0567h.m1325b(R.id.id_img_msg);
            viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_title, (CharSequence) notifyMsgBean.NoticeTitle);
            viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_time, (CharSequence) notifyMsgBean.NoticeTime);
            if (notifyMsgBean.DescriptionType.equals("1")) {
                viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_des, (CharSequence) notifyMsgBean.NoticeDescription);
                imageView.setVisibility(8);
                textView.setVisibility(0);
            } else if (notifyMsgBean.DescriptionType.equals("2")) {
                textView.setVisibility(8);
                imageView.setVisibility(0);
                Context context = this.f1162b;
                String str = notifyMsgBean.NoticeDescription;
                if (C1174q.m4515a(context)) {
                    ComponentCallbacks2C0838f.m2311c(context).mo2372a(str).mo3180a(C1174q.m4505a()).m3185a(imageView);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.bingoogolapple.androidcommon.adapter.BGARecyclerViewAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo1266a(ViewOnClickListenerC0567h viewOnClickListenerC0567h, NotifyMsgBean notifyMsgBean) {
        NotifyMsgBean notifyMsgBean2 = notifyMsgBean;
        if (notifyMsgBean2 != null) {
            TextView textView = (TextView) viewOnClickListenerC0567h.m1325b(R.id.id_tv_msg_des);
            ImageView imageView = (ImageView) viewOnClickListenerC0567h.m1325b(R.id.id_img_msg);
            viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_title, (CharSequence) notifyMsgBean2.NoticeTitle);
            viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_time, (CharSequence) notifyMsgBean2.NoticeTime);
            if (notifyMsgBean2.DescriptionType.equals("1")) {
                viewOnClickListenerC0567h.m1319a(R.id.id_tv_msg_des, (CharSequence) notifyMsgBean2.NoticeDescription);
                imageView.setVisibility(8);
                textView.setVisibility(0);
            } else if (notifyMsgBean2.DescriptionType.equals("2")) {
                textView.setVisibility(8);
                imageView.setVisibility(0);
                Context context = this.f1162b;
                String str = notifyMsgBean2.NoticeDescription;
                if (C1174q.m4515a(context)) {
                    ComponentCallbacks2C0838f.m2311c(context).mo2372a(str).mo3180a(C1174q.m4505a()).m3185a(imageView);
                }
            }
        }
    }
}
