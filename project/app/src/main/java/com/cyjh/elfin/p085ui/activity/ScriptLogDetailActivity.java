package com.cyjh.elfin.p085ui.activity;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.cyjh.common.base.activity.BaseActivity;
import com.cyjh.common.util.C1172o;
import com.cyjh.elfin.entity.ScriptLog;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.p085ui.view.customview.TitleView;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class ScriptLogDetailActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    private TitleView f5168b;

    /* renamed from: c */
    private TextView f5169c;

    /* renamed from: d */
    private Button f5170d;

    /* renamed from: e */
    private ScriptLog f5171e;

    /* renamed from: f */
    private boolean f5172f;

    /* renamed from: com.cyjh.elfin.ui.activity.ScriptLogDetailActivity$a */
    /* loaded from: classes.dex */
    private class C1352a implements TitleView.InterfaceC1421a {
        private C1352a() {
        }

        /* synthetic */ C1352a(ScriptLogDetailActivity scriptLogDetailActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.view.customview.TitleView.InterfaceC1421a
        /* renamed from: a */
        public final void mo6229a() {
            ScriptLogDetailActivity.this.finish();
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.ScriptLogDetailActivity$b */
    /* loaded from: classes.dex */
    private class AsyncTaskC1353b extends AsyncTask<File, Integer, String> {
        private AsyncTaskC1353b() {
        }

        /* synthetic */ AsyncTaskC1353b(ScriptLogDetailActivity scriptLogDetailActivity, byte b2) {
            this();
        }

        /* renamed from: a */
        private String m6294a() {
            try {
                return C1172o.m4481a(ScriptLogDetailActivity.this.f5171e.getFile(), 0);
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        private void m6295a(String str) {
            super.onPostExecute(str);
            ScriptLogDetailActivity.this.f5169c.setText(str);
            ScriptLogDetailActivity.m6291c(ScriptLogDetailActivity.this);
        }

        /* renamed from: a */
        private void m6296a(Integer... numArr) {
            super.onProgressUpdate(numArr);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(File[] fileArr) {
            return m6294a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            String str2 = str;
            super.onPostExecute(str2);
            ScriptLogDetailActivity.this.f5169c.setText(str2);
            ScriptLogDetailActivity.m6291c(ScriptLogDetailActivity.this);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            ScriptLogDetailActivity.m6287a(ScriptLogDetailActivity.this, ScriptLogDetailActivity.this);
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            super.onProgressUpdate(numArr);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6287a(ScriptLogDetailActivity scriptLogDetailActivity, Context context) {
        scriptLogDetailActivity.f4004a = new ProgressDialog(context);
        scriptLogDetailActivity.f4004a.setTitle(context.getString(R.string.scriptlogdetail_progressdialog_title));
        scriptLogDetailActivity.f4004a.setProgressStyle(0);
        scriptLogDetailActivity.f4004a.setMessage(context.getString(R.string.scriptlogdetail_progressdialog_content));
        scriptLogDetailActivity.f4004a.setCanceledOnTouchOutside(false);
        scriptLogDetailActivity.f4004a.show();
    }

    /* renamed from: b */
    private void m6289b() {
        Intent intent = getIntent();
        this.f5172f = intent.getBooleanExtra(InterfaceC1224a.f4441F, false);
        this.f5171e = (ScriptLog) intent.getParcelableExtra(InterfaceC1224a.f4442G);
    }

    /* renamed from: c */
    private void m6290c() {
        this.f5168b = (TitleView) findViewById(R.id.titleview_scriptlogdetail);
        this.f5168b.setTitleText(this.f5171e.getName());
        this.f5168b.setVisibilityRightImage(4);
        this.f5168b.setleftImage(R.drawable.ic_back);
        byte b2 = 0;
        this.f5168b.setOnLeftImageViewListener(new C1352a(this, b2));
        this.f5168b.setTitleSize(18);
        this.f5170d = (Button) findViewById(R.id.btn_scriptlogdetail_showmore);
        if (this.f5172f) {
            this.f5170d.setVisibility(0);
            this.f5170d.setOnClickListener(this);
        } else {
            this.f5170d.setVisibility(8);
        }
        this.f5169c = (TextView) findViewById(R.id.tv_scriptlogdetail_scriptlog);
        new AsyncTaskC1353b(this, b2).executeOnExecutor(Executors.newCachedThreadPool(), this.f5171e.getFile());
    }

    /* renamed from: c */
    static /* synthetic */ void m6291c(ScriptLogDetailActivity scriptLogDetailActivity) {
        scriptLogDetailActivity.f4004a.dismiss();
    }

    /* renamed from: d */
    private void m6292d() {
        this.f5168b = (TitleView) findViewById(R.id.titleview_scriptlogdetail);
        this.f5168b.setTitleText(this.f5171e.getName());
        this.f5168b.setVisibilityRightImage(4);
        this.f5168b.setleftImage(R.drawable.ic_back);
        this.f5168b.setOnLeftImageViewListener(new C1352a(this, (byte) 0));
        this.f5168b.setTitleSize(18);
    }

    /* renamed from: e */
    private void m6293e() {
        this.f5170d = (Button) findViewById(R.id.btn_scriptlogdetail_showmore);
        if (!this.f5172f) {
            this.f5170d.setVisibility(8);
        } else {
            this.f5170d.setVisibility(0);
            this.f5170d.setOnClickListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.btn_scriptlogdetail_showmore) {
            return;
        }
        startActivity(new Intent(this, (Class<?>) ScriptLogActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_scriptlogdetail);
        Intent intent = getIntent();
        byte b2 = 0;
        this.f5172f = intent.getBooleanExtra(InterfaceC1224a.f4441F, false);
        this.f5171e = (ScriptLog) intent.getParcelableExtra(InterfaceC1224a.f4442G);
        this.f5168b = (TitleView) findViewById(R.id.titleview_scriptlogdetail);
        this.f5168b.setTitleText(this.f5171e.getName());
        this.f5168b.setVisibilityRightImage(4);
        this.f5168b.setleftImage(R.drawable.ic_back);
        this.f5168b.setOnLeftImageViewListener(new C1352a(this, b2));
        this.f5168b.setTitleSize(18);
        this.f5170d = (Button) findViewById(R.id.btn_scriptlogdetail_showmore);
        if (this.f5172f) {
            this.f5170d.setVisibility(0);
            this.f5170d.setOnClickListener(this);
        } else {
            this.f5170d.setVisibility(8);
        }
        this.f5169c = (TextView) findViewById(R.id.tv_scriptlogdetail_scriptlog);
        new AsyncTaskC1353b(this, b2).executeOnExecutor(Executors.newCachedThreadPool(), this.f5171e.getFile());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPageEnd(ScriptLogDetailActivity.class.getCanonicalName());
        MobclickAgent.onPause(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onPageStart(ScriptLogDetailActivity.class.getCanonicalName());
        MobclickAgent.onResume(this);
    }
}
