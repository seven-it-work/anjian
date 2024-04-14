package com.cyjh.common.base.activity;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.MotionEvent;
import com.cyjh.common.C1130R;
import com.cyjh.common.p071f.InterfaceC1144c;
import com.cyjh.common.p072g.C1146a;
import com.cyjh.common.receiver.NetworkStatusReceiver;
import com.cyjh.common.util.C1154ag;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class BaseActivity extends FragmentActivity {

    /* renamed from: a */
    protected ProgressDialog f4004a;

    /* renamed from: b */
    private NetworkStatusReceiver f4005b;

    /* renamed from: c */
    private InterfaceC1144c f4006c;

    /* renamed from: d */
    private ArrayList<InterfaceC1135a> f4007d = new ArrayList<>();

    /* renamed from: com.cyjh.common.base.activity.BaseActivity$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1135a {
        /* renamed from: a */
        boolean m4213a();
    }

    /* renamed from: a */
    private void m4207a(Context context, int i, int i2) {
        this.f4004a = new ProgressDialog(context);
        this.f4004a.setTitle(context.getString(i));
        this.f4004a.setProgressStyle(0);
        this.f4004a.setMessage(context.getString(i2));
        this.f4004a.setCanceledOnTouchOutside(false);
        this.f4004a.show();
    }

    /* renamed from: a */
    private void m4208a(InterfaceC1135a interfaceC1135a) {
        this.f4007d.add(interfaceC1135a);
    }

    /* renamed from: b */
    private void m4209b() {
        this.f4004a.dismiss();
    }

    /* renamed from: b */
    private void m4210b(InterfaceC1135a interfaceC1135a) {
        this.f4007d.remove(interfaceC1135a);
    }

    /* renamed from: h_ */
    protected static void m4211h_() {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Iterator<InterfaceC1135a> it = this.f4007d.iterator();
        while (it.hasNext()) {
            it.next();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        C1146a.m4237a();
        C1146a.m4238a(this);
        this.f4006c = new InterfaceC1144c() { // from class: com.cyjh.common.base.activity.BaseActivity.1
            @Override // com.cyjh.common.p071f.InterfaceC1144c
            /* renamed from: a */
            public final void mo4212a(boolean z) {
                BaseActivity.m4211h_();
                if (z) {
                    return;
                }
                C1154ag.m4343b(BaseActivity.this, C1130R.string.network_off);
            }
        };
        this.f4005b = new NetworkStatusReceiver();
        this.f4005b.f4024a = this.f4006c;
        registerReceiver(this.f4005b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f4005b);
        C1146a.m4237a();
        C1146a.m4240b(this);
    }
}
