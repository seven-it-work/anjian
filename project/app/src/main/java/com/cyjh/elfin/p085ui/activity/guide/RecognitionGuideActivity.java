package com.cyjh.elfin.p085ui.activity.guide;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1171n;
import com.cyjh.http.bean.response.PhoneConfig;
import com.cyjh.http.p095b.C1487a;
import com.hjol.R;

/* loaded from: classes.dex */
public class RecognitionGuideActivity extends BaseActivity {

    /* renamed from: b */
    public static final String f5282b = "PhoneConfig";

    /* renamed from: c */
    private static final String f5283c = "RecognitionGuideActivity";

    /* renamed from: d */
    private ImageView f5284d;

    /* renamed from: e */
    private String f5285e;

    /* renamed from: com.cyjh.elfin.ui.activity.guide.RecognitionGuideActivity$1 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC13801 implements View.OnClickListener {
        ViewOnClickListenerC13801() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            RecognitionGuideActivity.m6378a(RecognitionGuideActivity.this);
        }
    }

    /* renamed from: a */
    public static void m6377a(Context context, PhoneConfig phoneConfig) {
        Intent intent = new Intent(context, (Class<?>) RecognitionGuideActivity.class);
        intent.putExtra(f5282b, phoneConfig);
        context.startActivity(intent);
    }

    /* renamed from: a */
    static /* synthetic */ void m6378a(RecognitionGuideActivity recognitionGuideActivity) {
        if (TextUtils.isEmpty(recognitionGuideActivity.f5285e)) {
            C1154ag.m4342a(recognitionGuideActivity, "跳转链接为空！");
            return;
        }
        recognitionGuideActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C1487a.m6886a().m6894b(recognitionGuideActivity.f5285e, C1487a.m6886a().m6893b(recognitionGuideActivity)))));
        recognitionGuideActivity.finish();
    }

    /* renamed from: b */
    private void m6379b() {
        this.f5284d = (ImageView) findViewById(R.id.iv_bg);
    }

    /* renamed from: c */
    private void m6380c() {
        PhoneConfig phoneConfig = (PhoneConfig) getIntent().getParcelableExtra(f5282b);
        if (phoneConfig != null) {
            String imageUrl = phoneConfig.getImageUrl();
            this.f5285e = phoneConfig.getLinkUrl();
            C1151ad.m4325c(f5283c, "initData --> imageUrl=" + imageUrl);
            Bitmap m4468c = C1171n.m4468c(imageUrl);
            if (m4468c != null) {
                this.f5284d.setImageBitmap(m4468c);
            }
            this.f5284d.setOnClickListener(new ViewOnClickListenerC13801());
        }
    }

    /* renamed from: d */
    private void m6381d() {
        if (TextUtils.isEmpty(this.f5285e)) {
            C1154ag.m4342a(this, "跳转链接为空！");
            return;
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C1487a.m6886a().m6894b(this.f5285e, C1487a.m6886a().m6893b(this)))));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_recognition_guide);
        this.f5284d = (ImageView) findViewById(R.id.iv_bg);
        PhoneConfig phoneConfig = (PhoneConfig) getIntent().getParcelableExtra(f5282b);
        if (phoneConfig != null) {
            String imageUrl = phoneConfig.getImageUrl();
            this.f5285e = phoneConfig.getLinkUrl();
            C1151ad.m4325c(f5283c, "initData --> imageUrl=" + imageUrl);
            Bitmap m4468c = C1171n.m4468c(imageUrl);
            if (m4468c != null) {
                this.f5284d.setImageBitmap(m4468c);
            }
            this.f5284d.setOnClickListener(new ViewOnClickListenerC13801());
        }
    }
}
