package com.cyjh.elfin.p085ui.activity;

import android.app.AlertDialog;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.Observer;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.request.C1066g;
import com.cyjh.common.base.activity.BaseModelActivity;
import com.cyjh.common.p068c.AbstractCountDownTimerC1136a;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.cyjh.common.p072g.C1146a;
import com.cyjh.common.util.C1154ag;
import com.cyjh.common.util.C1174q;
import com.cyjh.common.util.C1201x;
import com.cyjh.elfin.C1223a;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p077e.p080c.C1260k;
import com.cyjh.elfin.p085ui.activity.SplashActivity;
import com.cyjh.elfin.p085ui.activity.guide.RecognitionGuideActivity;
import com.cyjh.elfin.p085ui.model.SplashModel;
import com.cyjh.elfin.p085ui.p086a.C1314b;
import com.cyjh.elfin.p085ui.p087b.AbstractViewOnClickListenerC1391a;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.http.bean.response.PhoneConfig;
import com.elfin.ad.activity.FullScreenTwoAdActivity;
import com.elfin.ad.p119c.InterfaceC1731a;
import com.elfin.ad.p121e.C1733a;
import com.elfin.ad.p121e.C1734b;
import com.elfin.engin.C1752d;
import com.elfin.engin.p123a.C1743c;
import com.hjol.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SplashActivity extends BaseModelActivity<SplashModel> implements View.OnClickListener {

    /* renamed from: c */
    public static final int f5204c = 8;

    /* renamed from: f */
    private static final String f5205f = "SplashActivity";

    /* renamed from: h */
    private static final int f5206h = 1;

    /* renamed from: e */
    CountDownTimerC1362a f5208e;

    /* renamed from: i */
    private ImageView f5210i;

    /* renamed from: j */
    private TextView f5211j;

    /* renamed from: k */
    private LinearLayout f5212k;

    /* renamed from: l */
    private TextView f5213l;

    /* renamed from: m */
    private C1734b f5214m;

    /* renamed from: g */
    private String[] f5209g = {"android.permission.INTERNET", "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.CALL_PHONE", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.SEND_SMS", "android.permission.READ_SMS", "android.permission.READ_CONTACTS", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.CAMERA"};

    /* renamed from: d */
    int f5207d = 0;

    /* renamed from: n */
    private InterfaceC1731a<String> f5215n = new InterfaceC1731a<String>() { // from class: com.cyjh.elfin.ui.activity.SplashActivity.3
        /* renamed from: c */
        private void m6335c(String str) {
            SplashActivity.m6312a(SplashActivity.this, str);
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final void mo6336a() {
            SplashActivity.this.f5213l.setVisibility(0);
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo6337a(String str) {
            SplashActivity.m6312a(SplashActivity.this, str);
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: a, reason: avoid collision after fix types in other method */
        public final void mo7907a(String str) {
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6338b() {
            SplashActivity splashActivity = SplashActivity.this;
            byte b2 = 0;
            if (splashActivity.f5208e != null) {
                splashActivity.f5208e.cancel();
                splashActivity.f5207d = 0;
                splashActivity.f5208e = null;
            }
            splashActivity.f5208e = new CountDownTimerC1362a(splashActivity, b2);
            splashActivity.f5208e.start();
            SplashActivity.this.f5210i.setOnClickListener(SplashActivity.this);
            SplashActivity.this.f5210i.setVisibility(0);
            AndroidViewModel unused = SplashActivity.this.f4009b;
        }

        @Override // com.elfin.ad.p119c.InterfaceC1731a
        /* renamed from: b */
        public final void mo6339b(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            SplashActivity.this.f5211j.setText(String.format(SplashActivity.this.getString(R.string.ad_source_mark), str));
            SplashActivity.this.f5211j.setVisibility(0);
        }
    };

    /* renamed from: com.cyjh.elfin.ui.activity.SplashActivity$1 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC13591 implements View.OnClickListener {
        /* JADX INFO: Access modifiers changed from: package-private */
        public ViewOnClickListenerC13591() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SplashActivity.this.startActivity(new Intent("android.settings.DATA_ROAMING_SETTINGS"));
        }
    }

    /* renamed from: com.cyjh.elfin.ui.activity.SplashActivity$a */
    /* loaded from: classes.dex */
    private class CountDownTimerC1362a extends AbstractCountDownTimerC1136a {
        private CountDownTimerC1362a() {
            super(8);
        }

        /* synthetic */ CountDownTimerC1362a(SplashActivity splashActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.common.p068c.AbstractCountDownTimerC1137b
        /* renamed from: a */
        protected final void mo4222a(int i) {
            SplashActivity.m6323h(SplashActivity.this);
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            SplashActivity.m6326i(SplashActivity.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.activity.SplashActivity$b */
    /* loaded from: classes.dex */
    public class C1363b extends AbstractViewOnClickListenerC1391a {
        private C1363b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ C1363b(SplashActivity splashActivity, byte b2) {
            this();
        }

        @Override // com.cyjh.elfin.p085ui.p087b.AbstractViewOnClickListenerC1391a
        /* renamed from: a */
        public final void mo6340a() {
            SplashActivity.this.m6333f();
        }

        @Override // com.cyjh.elfin.p085ui.p087b.AbstractViewOnClickListenerC1391a
        /* renamed from: b */
        public final void mo6341b() {
            SplashActivity.this.stopService(new Intent(SplashActivity.this, (Class<?>) PhoneStateService.class));
            C1752d.m8028a(SplashActivity.this);
            C1146a.m4237a();
            C1146a.m4239b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.activity.SplashActivity$c */
    /* loaded from: classes.dex */
    public class AsyncTaskC1364c extends AsyncTask<String, String, String> {
        private AsyncTaskC1364c() {
        }

        /* synthetic */ AsyncTaskC1364c(SplashActivity splashActivity, byte b2) {
            this();
        }

        /* renamed from: a */
        private static String m6342a() {
            String m6309a = SplashActivity.m6309a(C1223a.f4422i);
            Log.i("ping", m6309a);
            return m6309a;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(String[] strArr) {
            String m6309a = SplashActivity.m6309a(C1223a.f4422i);
            Log.i("ping", m6309a);
            return m6309a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.activity.SplashActivity$d */
    /* loaded from: classes.dex */
    public class ViewOnClickListenerC1365d implements View.OnClickListener {

        /* renamed from: b */
        private AlertDialog f5223b;

        private ViewOnClickListenerC1365d(AlertDialog alertDialog) {
            this.f5223b = alertDialog;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ ViewOnClickListenerC1365d(SplashActivity splashActivity, AlertDialog alertDialog, byte b2) {
            this(alertDialog);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f5223b.dismiss();
            ((SplashModel) SplashActivity.this.f4009b).m6538b();
        }
    }

    /* renamed from: a */
    public static String m6309a(String str) {
        try {
            Process exec = Runtime.getRuntime().exec("ping -c 3 -w 100 " + str);
            int waitFor = exec.waitFor();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
            }
            return waitFor == 0 ? "success" : "faild";
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    private void m6310a(int i, String str) {
        C1314b.m6177a();
        C1363b c1363b = new C1363b(this, (byte) 0);
        AlertDialog m6176a = C1314b.m6176a(this, (int) R.layout.dialog_version_inspection);
        m6176a.setCancelable(false);
        m6176a.show();
        ((TextView) m6176a.findViewById(R.id.id_tv_message)).setText(str);
        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_known);
        c1363b.f5346b = m6176a;
        c1363b.f5347c = i;
        textView.setOnClickListener(c1363b);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void m6311a(com.cyjh.elfin.p085ui.activity.SplashActivity r7) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p085ui.activity.SplashActivity.m6311a(com.cyjh.elfin.ui.activity.SplashActivity):void");
    }

    /* renamed from: a */
    static /* synthetic */ void m6312a(SplashActivity splashActivity, String str) {
        if (str.endsWith(".gif")) {
            C1066g m4505a = C1174q.m4505a();
            m4505a.mo3360b(AbstractC0913i.f2752c);
            C1174q.m4511a(splashActivity, str, splashActivity.f5210i, m4505a);
        } else {
            C1066g m4505a2 = C1174q.m4505a();
            m4505a2.mo3360b(AbstractC0913i.f2751b);
            C1174q.m4518b(splashActivity, str, splashActivity.f5210i, m4505a2);
        }
        splashActivity.f5214m.m7943b();
    }

    /* renamed from: a */
    private /* synthetic */ void m6313a(SplashModel.C1416a c1416a) {
        if (c1416a == null) {
            C1154ag.m4343b(getApplication(), (int) R.string.response_data_null);
            return;
        }
        byte b2 = 0;
        switch (c1416a.f5448a) {
            case -1:
                C1314b.m6177a();
                AlertDialog m6176a = C1314b.m6176a(getApplication(), (int) R.layout.dialog_network_inspection);
                m6176a.setCancelable(false);
                m6176a.show();
                TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_reset);
                TextView textView2 = (TextView) m6176a.findViewById(R.id.id_tv_setting);
                textView.setOnClickListener(new ViewOnClickListenerC1365d(this, m6176a, b2));
                textView2.setOnClickListener(new ViewOnClickListenerC13591());
                return;
            case 0:
                int i = c1416a.f5450c;
                String str = c1416a.f5449b;
                C1314b.m6177a();
                C1363b c1363b = new C1363b(this, b2);
                AlertDialog m6176a2 = C1314b.m6176a(this, (int) R.layout.dialog_version_inspection);
                m6176a2.setCancelable(false);
                m6176a2.show();
                ((TextView) m6176a2.findViewById(R.id.id_tv_message)).setText(str);
                TextView textView3 = (TextView) m6176a2.findViewById(R.id.id_tv_known);
                c1363b.f5346b = m6176a2;
                c1363b.f5347c = i;
                textView3.setOnClickListener(c1363b);
                return;
            case 1:
                m6333f();
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    private /* synthetic */ void m6314a(PhoneConfig phoneConfig) {
        if (phoneConfig != null) {
            RecognitionGuideActivity.m6377a(this, phoneConfig);
            finish();
        }
    }

    /* renamed from: b */
    private void m6316b(String str) {
        if (str.endsWith(".gif")) {
            C1066g m4505a = C1174q.m4505a();
            m4505a.mo3360b(AbstractC0913i.f2752c);
            C1174q.m4511a(this, str, this.f5210i, m4505a);
        } else {
            C1066g m4505a2 = C1174q.m4505a();
            m4505a2.mo3360b(AbstractC0913i.f2751b);
            C1174q.m4518b(this, str, this.f5210i, m4505a2);
        }
        this.f5214m.m7943b();
    }

    /* renamed from: g */
    private void m6321g() {
        byte b2 = 0;
        if (this.f5208e != null) {
            this.f5208e.cancel();
            this.f5207d = 0;
            this.f5208e = null;
        }
        this.f5208e = new CountDownTimerC1362a(this, b2);
        this.f5208e.start();
    }

    /* renamed from: h */
    static /* synthetic */ int m6323h(SplashActivity splashActivity) {
        int i = splashActivity.f5207d;
        splashActivity.f5207d = i + 1;
        return i;
    }

    /* renamed from: h */
    private void m6324h() {
        C1314b.m6177a();
        AlertDialog m6176a = C1314b.m6176a(getApplication(), (int) R.layout.dialog_network_inspection);
        m6176a.setCancelable(false);
        m6176a.show();
        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_reset);
        TextView textView2 = (TextView) m6176a.findViewById(R.id.id_tv_setting);
        textView.setOnClickListener(new ViewOnClickListenerC1365d(this, m6176a, (byte) 0));
        textView2.setOnClickListener(new ViewOnClickListenerC13591());
    }

    /* renamed from: i */
    private void m6325i() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f5209g) {
            if (ContextCompat.checkSelfPermission(this, str) != 0) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            m6327j();
        } else {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 1);
        }
    }

    /* renamed from: i */
    static /* synthetic */ void m6326i(SplashActivity splashActivity) {
        Intent intent = new Intent(splashActivity, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        splashActivity.startActivity(intent);
        splashActivity.finish();
    }

    /* renamed from: j */
    private void m6327j() {
        C1743c.a.f6878a.mo7757a(new InterfaceC1142a<String>() { // from class: com.cyjh.elfin.ui.activity.SplashActivity.2
            /* renamed from: b */
            private void m6334b() {
                SplashActivity.m6311a(SplashActivity.this);
            }

            @Override // com.cyjh.common.p071f.InterfaceC1142a
            /* renamed from: a */
            public final void mo4230a() {
                SplashActivity.m6311a(SplashActivity.this);
            }

            @Override // com.cyjh.common.p071f.InterfaceC1142a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ void mo4231a(String str) {
                SplashActivity.m6311a(SplashActivity.this);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016c  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m6328k() {
        /*
            Method dump skipped, instructions count: 427
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p085ui.activity.SplashActivity.m6328k():void");
    }

    /* renamed from: l */
    private void m6329l() {
        SplashModel splashModel = (SplashModel) this.f4009b;
        if (C1201x.m5233a(splashModel.getApplication())) {
            splashModel.m6537a();
        } else {
            splashModel.f5436i.postValue(new SplashModel.C1416a(-1));
        }
        C1260k.m5735a(1);
    }

    /* renamed from: m */
    private void m6330m() {
        Intent intent = new Intent(this, (Class<?>) FullScreenTwoAdActivity.class);
        intent.addFlags(268435456);
        startActivity(intent);
        finish();
    }

    /* renamed from: n */
    private void m6331n() {
        this.f5214m.m7942a(1, this.f5215n);
    }

    /* renamed from: o */
    private void m6332o() {
        if (this.f5208e != null) {
            this.f5208e.cancel();
            this.f5207d = 0;
            this.f5208e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: b */
    public final Class<SplashModel> mo4214b() {
        return SplashModel.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: c */
    public final void mo4215c() {
        ((SplashModel) this.f4009b).f5436i.observe(this, new Observer(this) { // from class: com.cyjh.elfin.ui.activity.c

            /* renamed from: a */
            private final SplashActivity f5280a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5280a = this;
            }

            @Override // android.arch.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity splashActivity = this.f5280a;
                SplashModel.C1416a c1416a = (SplashModel.C1416a) obj;
                if (c1416a == null) {
                    C1154ag.m4343b(splashActivity.getApplication(), (int) R.string.response_data_null);
                    return;
                }
                byte b2 = 0;
                switch (c1416a.f5448a) {
                    case -1:
                        C1314b.m6177a();
                        AlertDialog m6176a = C1314b.m6176a(splashActivity.getApplication(), (int) R.layout.dialog_network_inspection);
                        m6176a.setCancelable(false);
                        m6176a.show();
                        TextView textView = (TextView) m6176a.findViewById(R.id.id_tv_reset);
                        TextView textView2 = (TextView) m6176a.findViewById(R.id.id_tv_setting);
                        textView.setOnClickListener(new SplashActivity.ViewOnClickListenerC1365d(splashActivity, m6176a, b2));
                        textView2.setOnClickListener(new SplashActivity.ViewOnClickListenerC13591());
                        return;
                    case 0:
                        int i = c1416a.f5450c;
                        String str = c1416a.f5449b;
                        C1314b.m6177a();
                        SplashActivity.C1363b c1363b = new SplashActivity.C1363b(splashActivity, b2);
                        AlertDialog m6176a2 = C1314b.m6176a(splashActivity, (int) R.layout.dialog_version_inspection);
                        m6176a2.setCancelable(false);
                        m6176a2.show();
                        ((TextView) m6176a2.findViewById(R.id.id_tv_message)).setText(str);
                        TextView textView3 = (TextView) m6176a2.findViewById(R.id.id_tv_known);
                        c1363b.f5346b = m6176a2;
                        c1363b.f5347c = i;
                        textView3.setOnClickListener(c1363b);
                        return;
                    case 1:
                        splashActivity.m6333f();
                        return;
                    default:
                        return;
                }
            }
        });
        ((SplashModel) this.f4009b).f5437j.observe(this, new Observer(this) { // from class: com.cyjh.elfin.ui.activity.d

            /* renamed from: a */
            private final SplashActivity f5281a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5281a = this;
            }

            @Override // android.arch.lifecycle.Observer
            public final void onChanged(Object obj) {
                SplashActivity splashActivity = this.f5281a;
                PhoneConfig phoneConfig = (PhoneConfig) obj;
                if (phoneConfig != null) {
                    RecognitionGuideActivity.m6377a(splashActivity, phoneConfig);
                    splashActivity.finish();
                }
            }
        });
        this.f5214m = new C1734b(this, this.f5210i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: d */
    public final void mo4216d() {
        this.f5210i = (ImageView) findViewById(R.id.iv_splash_ad_fullscreen);
        this.f5211j = (TextView) findViewById(R.id.tv_splash_ad_mark);
        this.f5212k = (LinearLayout) findViewById(R.id.id_ll_dot);
        this.f5213l = (TextView) findViewById(R.id.tv_close_ad);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity
    /* renamed from: e */
    public final int mo4217e() {
        return R.layout.activity_splash2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m6333f() {
        if (!C1733a.m7908a().m7912b()) {
            this.f5214m.m7942a(1, this.f5215n);
            return;
        }
        Intent intent = new Intent(this, (Class<?>) ElfinFreeActivity.class);
        intent.addFlags(268435456);
        startActivity(intent);
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.tv_close_ad) {
            if (id != R.id.iv_splash_ad_fullscreen) {
                return;
            }
            this.f5214m.m7944c();
        } else {
            C1734b c1734b = this.f5214m;
            if (c1734b.f6821d < 4) {
                c1734b.m7944c();
            } else {
                C1734b.m7918a(c1734b.f6826j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseModelActivity, com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isTaskRoot()) {
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT < 23) {
            m6327j();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.f5209g) {
            if (ContextCompat.checkSelfPermission(this, str) != 0) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            m6327j();
        } else {
            ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.common.base.activity.BaseActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f5214m != null) {
            this.f5214m.m7946e();
            this.f5214m = null;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return i == 4;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        boolean z = true;
        for (int i2 : iArr) {
            if (i2 == -1) {
                z = false;
            }
        }
        if (z) {
            m6327j();
        } else {
            C1154ag.m4342a(AppContext.m5350a(), "获取权限失败");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f5214m != null) {
            C1734b c1734b = this.f5214m;
            if (c1734b.f6819a) {
                C1734b.m7918a(c1734b.f6826j);
            }
        }
    }
}
