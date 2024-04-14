package com.cyjh.elfin.p085ui.fragment;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cyjh.common.base.fragment.BaseFragement;
import com.cyjh.http.bean.response.NoticeBean;
import com.cyjh.http.p096c.p099c.C1555l;
import com.cyjh.http.p096c.p100d.InterfaceC1567e;
import com.cyjh.http.p104e.C1579a;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class MsgDetailFragment extends BaseFragement implements InterfaceC1567e {

    /* renamed from: a */
    private TextView f5352a;

    /* renamed from: b */
    private TextView f5353b;

    /* renamed from: c */
    private WebView f5354c;

    /* renamed from: d */
    private LinearLayout f5355d;

    /* renamed from: e */
    private C1555l f5356e;

    /* renamed from: a */
    public static MsgDetailFragment m6425a(long j) {
        MsgDetailFragment msgDetailFragment = new MsgDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putLong(MsgDetailFragment.class.getCanonicalName(), j);
        msgDetailFragment.setArguments(bundle);
        return msgDetailFragment;
    }

    /* renamed from: a */
    private void m6426a(View view) {
        this.f5352a = (TextView) view.findViewById(R.id.id_tv_msg_title);
        this.f5353b = (TextView) view.findViewById(R.id.id_tv_msg_time);
        this.f5354c = (WebView) view.findViewById(R.id.id_msg_web_view);
        this.f5355d = (LinearLayout) view.findViewById(R.id.incl_loading);
    }

    /* renamed from: b */
    private void m6427b(NoticeBean noticeBean) {
        this.f5352a.setText(noticeBean.NoticeTitle);
        this.f5353b.setText(C1579a.m7015a(noticeBean.NoticeTime, "yyyy-MM-dd HH:mm:ss"));
        this.f5354c.loadDataWithBaseURL(null, noticeBean.NoticeContent, "text/html", "utf-8", null);
        this.f5354c.getSettings().setJavaScriptEnabled(true);
        this.f5354c.setWebChromeClient(new WebChromeClient());
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement
    /* renamed from: a */
    public final int mo4220a() {
        return R.layout.fragment_msg_detail;
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1567e
    /* renamed from: a */
    public final void mo6428a(NoticeBean noticeBean) {
        this.f5352a.setText(noticeBean.NoticeTitle);
        this.f5353b.setText(C1579a.m7015a(noticeBean.NoticeTime, "yyyy-MM-dd HH:mm:ss"));
        this.f5354c.loadDataWithBaseURL(null, noticeBean.NoticeContent, "text/html", "utf-8", null);
        this.f5354c.getSettings().setJavaScriptEnabled(true);
        this.f5354c.setWebChromeClient(new WebChromeClient());
        this.f5355d.setVisibility(8);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1567e
    /* renamed from: b */
    public final void mo6429b() {
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getArguments() != null) {
            long j = getArguments().getLong(MsgDetailFragment.class.getCanonicalName());
            if (j != 0) {
                this.f5356e = new C1555l(this);
                this.f5356e.m6960a(getActivity(), j);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.f5356e != null) {
            this.f5356e.m6959a();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(MsgDetailFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(MsgDetailFragment.class.getCanonicalName());
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NonNull View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f5352a = (TextView) view.findViewById(R.id.id_tv_msg_title);
        this.f5353b = (TextView) view.findViewById(R.id.id_tv_msg_time);
        this.f5354c = (WebView) view.findViewById(R.id.id_msg_web_view);
        this.f5355d = (LinearLayout) view.findViewById(R.id.incl_loading);
    }
}
