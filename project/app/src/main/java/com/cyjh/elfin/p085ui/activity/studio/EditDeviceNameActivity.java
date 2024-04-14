package com.cyjh.elfin.p085ui.activity.studio;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1162e;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.cyjh.http.p096c.p099c.C1550g;
import com.elf.studio.p114a.C1710b;
import com.hjol.R;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes.dex */
public class EditDeviceNameActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public static String f5287b = "EditDeviceNameActivity";

    /* renamed from: c */
    public static final String f5288c = "device_name";

    /* renamed from: d */
    private TitleView f5289d;

    /* renamed from: e */
    private EditText f5290e;

    /* renamed from: f */
    private Handler f5291f = new Handler();

    /* renamed from: g */
    private ImageView f5292g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity$1 */
    /* loaded from: classes.dex */
    public final class C13811 implements C1550g.a {

        /* renamed from: a */
        final /* synthetic */ String f5293a;

        C13811(String str) {
            this.f5293a = str;
        }

        @Override // com.cyjh.http.p096c.p099c.C1550g.a
        /* renamed from: a */
        public final void mo6391a() {
            C2772c.m12482a().m12506c(new C1710b(10004, this.f5293a));
            EditDeviceNameActivity.this.f5289d.post(new Runnable() { // from class: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    C1154ag.m4342a(EditDeviceNameActivity.this.getApplicationContext(), "修改成功！");
                }
            });
            EditDeviceNameActivity.this.finish();
        }

        @Override // com.cyjh.http.p096c.p099c.C1550g.a
        /* renamed from: a */
        public final void mo6392a(final String str) {
            EditDeviceNameActivity.this.f5289d.post(new Runnable() { // from class: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    C1154ag.m4342a(EditDeviceNameActivity.this.getApplicationContext(), str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity$2 */
    /* loaded from: classes.dex */
    public final class RunnableC13822 implements Runnable {
        RunnableC13822() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1154ag.m4342a(EditDeviceNameActivity.this.getApplicationContext(), "脚本数据出错");
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity$a */
    /* loaded from: classes.dex */
    private class C1383a implements TitleView.InterfaceC1421a {
        private C1383a() {
        }

        /* synthetic */ C1383a(EditDeviceNameActivity editDeviceNameActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            EditDeviceNameActivity.this.finish();
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.studio.EditDeviceNameActivity$b */
    /* loaded from: classes.dex */
    private class C1384b implements TitleView.InterfaceC1423c {
        private C1384b() {
        }

        /* synthetic */ C1384b(EditDeviceNameActivity editDeviceNameActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1423c
        /* renamed from: a */
        public final void mo6228a() {
            EditDeviceNameActivity.m6384a(EditDeviceNameActivity.this);
        }
    }

    /* renamed from: a */
    private static void m6382a(Context context) {
        context.startActivity(new Intent(context, (Class<?>) EditDeviceNameActivity.class));
    }

    /* renamed from: a */
    private static void m6383a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) EditDeviceNameActivity.class);
        intent.putExtra("device_name", str);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: a */
    static /* synthetic */ void m6384a(EditDeviceNameActivity editDeviceNameActivity) {
        String obj = editDeviceNameActivity.f5290e.getText().toString();
        C1162e.m4378a(editDeviceNameActivity, obj);
        Script script = C1285c.m5955f().f4851a;
        if (script != null) {
            C1550g.m6940a().m6945a(editDeviceNameActivity, script.getId(), obj, new C13811(obj));
        } else {
            editDeviceNameActivity.f5289d.post(new RunnableC13822());
        }
    }

    /* renamed from: b */
    private void m6386b() {
        this.f5289d = (TitleView) findViewById(R.id.titleView);
        this.f5289d.setVisibilityTvRight(0);
        this.f5290e = (EditText) findViewById(R.id.et_device_name);
        this.f5292g = (ImageView) findViewById(R.id.iv_clear);
    }

    /* renamed from: c */
    private void m6387c() {
        this.f5289d.setRightTvText(R.string.save);
        this.f5289d.setVisibilityTvRight(0);
        String stringExtra = getIntent().getStringExtra("device_name");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f5290e.setText(stringExtra);
        this.f5290e.setSelection(stringExtra.length());
    }

    /* renamed from: d */
    private void m6388d() {
        this.f5292g.setOnClickListener(this);
    }

    /* renamed from: e */
    private void m6389e() {
        this.f5289d.setTitleText(R.string.edit_device_name_title);
        byte b2 = 0;
        this.f5289d.setVisibilityLeftImage(0);
        this.f5289d.setleftImage(R.drawable.ic_back);
        this.f5289d.setOnLeftImageViewListener(new C1383a(this, b2));
        this.f5289d.setOnRightTextViewListener(new C1384b(this, b2));
        this.f5289d.setVisibilityRightImage(4);
    }

    /* renamed from: f */
    private void m6390f() {
        String obj = this.f5290e.getText().toString();
        C1162e.m4378a(this, obj);
        Script script = C1285c.m5955f().f4851a;
        if (script != null) {
            C1550g.m6940a().m6945a(this, script.getId(), obj, new C13811(obj));
        } else {
            this.f5289d.post(new RunnableC13822());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.iv_clear) {
            return;
        }
        this.f5290e.setText("");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_edit_device_name);
        this.f5289d = (TitleView) findViewById(R.id.titleView);
        byte b2 = 0;
        this.f5289d.setVisibilityTvRight(0);
        this.f5290e = (EditText) findViewById(R.id.et_device_name);
        this.f5292g = (ImageView) findViewById(R.id.iv_clear);
        this.f5289d.setTitleText(R.string.edit_device_name_title);
        this.f5289d.setVisibilityLeftImage(0);
        this.f5289d.setleftImage(R.drawable.ic_back);
        this.f5289d.setOnLeftImageViewListener(new C1383a(this, b2));
        this.f5289d.setOnRightTextViewListener(new C1384b(this, b2));
        this.f5289d.setVisibilityRightImage(4);
        this.f5289d.setRightTvText(R.string.save);
        this.f5289d.setVisibilityTvRight(0);
        String stringExtra = getIntent().getStringExtra("device_name");
        if (!TextUtils.isEmpty(stringExtra)) {
            this.f5290e.setText(stringExtra);
            this.f5290e.setSelection(stringExtra.length());
        }
        this.f5292g.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f5291f.removeCallbacksAndMessages(null);
        this.f5291f = null;
    }
}
