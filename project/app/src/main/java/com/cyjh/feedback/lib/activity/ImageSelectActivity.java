package com.cyjh.feedback.lib.activity;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cyjh.common.p072g.C1146a;
import com.cyjh.feedback.lib.fragment.ImageSelectFragment;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import com.umeng.analytics.MobclickAgent;

/* loaded from: classes.dex */
public class ImageSelectActivity extends FragmentActivity implements View.OnClickListener {

    /* renamed from: a */
    private ImageView f5618a;

    /* renamed from: b */
    private TextView f5619b;

    /* renamed from: a */
    private void m6706a() {
        this.f5618a = (ImageView) findViewById(C1478R.id.id_img_left_back_arrow);
        this.f5619b = (TextView) findViewById(C1478R.id.id_tv_title);
    }

    /* renamed from: a */
    private void m6707a(Fragment fragment, String str) {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(C1478R.id.id_fl_replace_fragment, fragment, str);
        beginTransaction.commit();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C1478R.id.id_img_left_back_arrow) {
            onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(C1478R.layout.activity_img_select);
        C1146a.m4237a();
        C1146a.m4238a(this);
        this.f5618a = (ImageView) findViewById(C1478R.id.id_img_left_back_arrow);
        this.f5619b = (TextView) findViewById(C1478R.id.id_tv_title);
        this.f5619b.setText(getString(C1478R.string.img_select_title));
        this.f5619b.setVisibility(0);
        this.f5618a.setOnClickListener(this);
        ImageSelectFragment m6851b = ImageSelectFragment.m6851b();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(C1478R.id.id_fl_replace_fragment, m6851b, "ImageSelectFragment");
        beginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Log.e("elfin", "ImageSelectActivity-- onDestroy");
        C1146a.m4237a();
        C1146a.m4240b(this);
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
