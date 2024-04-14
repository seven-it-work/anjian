package com.cyjh.elfin.p085ui.fragment;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.cyjh.common.base.fragment.BaseFragement;
import com.cyjh.common.p070e.C1140a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1152ae;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.IOException;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.InterfaceC2779j;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class DescriptionFragment extends BaseFragement {

    /* renamed from: a */
    public static final String f5348a = "DescriptionFragment";

    /* renamed from: b */
    private ScrollView f5349b;

    /* renamed from: c */
    private WebView f5350c;

    /* renamed from: d */
    private TextView f5351d;

    /* renamed from: b */
    private void m6423b() {
        if (getView() == null) {
            return;
        }
        View view = getView();
        this.f5349b = (ScrollView) view.findViewById(R.id.scrollview_scriptdescription);
        this.f5350c = (WebView) view.findViewById(R.id.webview_scriptdescription);
        this.f5351d = (TextView) view.findViewById(R.id.tv_description);
        this.f5350c.getSettings().setJavaScriptEnabled(true);
        try {
            AppContext.m5350a().getAssets().open(InterfaceC1224a.f4451s);
            this.f5350c.setVisibility(0);
            this.f5349b.setVisibility(8);
            m6424c();
        } catch (IOException unused) {
            this.f5349b.setVisibility(0);
            this.f5350c.setVisibility(8);
        }
    }

    /* renamed from: c */
    private void m6424c() {
        String str;
        File file = new File(getContext().getFilesDir() + File.separator + C1225b.f4506au, InterfaceC1224a.f4451s);
        String str2 = f5348a;
        StringBuilder sb = new StringBuilder("webViewLoad --> sdCardRtdFile path =");
        sb.append(file.getAbsolutePath());
        C1151ad.m4325c(str2, sb.toString());
        if (C1285c.m5955f().f4852c) {
            str = "file://" + file.getAbsolutePath();
        } else {
            str = "file:///android_asset/script.rtd";
        }
        Log.e("TAG", str);
        if (!C1285c.m5955f().f4852c || file.exists()) {
            this.f5350c.loadUrl(str);
        }
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement
    /* renamed from: a */
    public final int mo4220a() {
        return R.layout.fragment_scriptdescription;
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getView() != null) {
            View view = getView();
            this.f5349b = (ScrollView) view.findViewById(R.id.scrollview_scriptdescription);
            this.f5350c = (WebView) view.findViewById(R.id.webview_scriptdescription);
            this.f5351d = (TextView) view.findViewById(R.id.tv_description);
            this.f5350c.getSettings().setJavaScriptEnabled(true);
            try {
                AppContext.m5350a().getAssets().open(InterfaceC1224a.f4451s);
                this.f5350c.setVisibility(0);
                this.f5349b.setVisibility(8);
                m6424c();
            } catch (IOException unused) {
                this.f5349b.setVisibility(0);
                this.f5350c.setVisibility(8);
            }
        }
        C2772c.m12482a().m12503a(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        C2772c.m12482a().m12505b(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(DescriptionFragment.class.getCanonicalName());
    }

    @InterfaceC2779j(m12528a = ThreadMode.MAIN)
    public void onReceiveRTDFileUIEvent(C1140a c1140a) {
        C1152ae.m4331b(getActivity(), "onReceiveRTDFileUIEvent --> 更新RTDFileUI");
        C1151ad.m4325c(f5348a, "onReceiveRTDFileUIEvent --> 更新RTDFileUI");
        m6424c();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(DescriptionFragment.class.getCanonicalName());
    }

    @Override // com.cyjh.common.base.fragment.BaseFragement, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        setUserVisibleHint(true);
    }
}
