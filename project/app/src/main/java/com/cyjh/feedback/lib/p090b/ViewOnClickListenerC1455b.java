package com.cyjh.feedback.lib.p090b;

import android.content.Context;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.cyjh.feedback.lib.base.DialogC1457a;
import com.cyjh.feedback.libraryfeedbackinfo.C1478R;
import com.cyjh.http.bean.request.FeedbackRequestInfo;
import com.cyjh.http.oss.MyOSSUtils;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p096c.p099c.C1552i;
import com.cyjh.http.p096c.p099c.C1554k;
import com.cyjh.http.p096c.p100d.InterfaceC1565c;
import com.cyjh.http.p101d.p103b.C1577c;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.cyjh.feedback.lib.b.b */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1455b extends DialogC1457a implements View.OnClickListener, InterfaceC1565c {

    /* renamed from: d */
    private static final String f5620d = "0";

    /* renamed from: e */
    private static final int f5621e = 1;

    /* renamed from: f */
    private static final int f5622f = 2;

    /* renamed from: r */
    private static final int f5623r = 1;

    /* renamed from: s */
    private static final int f5624s = 0;

    /* renamed from: c */
    public a f5625c;

    /* renamed from: g */
    private Button f5626g;

    /* renamed from: h */
    private Button f5627h;

    /* renamed from: i */
    private TextView f5628i;

    /* renamed from: j */
    private TextView f5629j;

    /* renamed from: k */
    private TextView f5630k;

    /* renamed from: l */
    private TextView f5631l;

    /* renamed from: m */
    private FeedbackRequestInfo f5632m;

    /* renamed from: n */
    private DialogC1456c f5633n;

    /* renamed from: o */
    private Context f5634o;

    /* renamed from: p */
    private C1552i f5635p;

    /* renamed from: q */
    private List<String> f5636q;

    /* renamed from: t */
    private volatile int f5637t;

    /* renamed from: com.cyjh.feedback.lib.b.b$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo6717a(int i);
    }

    public ViewOnClickListenerC1455b(Context context, FeedbackRequestInfo feedbackRequestInfo, List<String> list) {
        super(context, C1478R.style.Theme_Dialog);
        this.f5637t = 0;
        this.f5632m = feedbackRequestInfo;
        this.f5634o = context;
        this.f5636q = list;
    }

    /* renamed from: a */
    private static SpannableStringBuilder m6708a(String str, String str2) {
        int indexOf = str.indexOf(str2);
        int length = str2.length() + indexOf;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#3c7ac5")), indexOf, length, 34);
        return spannableStringBuilder;
    }

    /* renamed from: a */
    private void m6709a(a aVar) {
        this.f5625c = aVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m6710a(ViewOnClickListenerC1455b viewOnClickListenerC1455b, List list) {
        viewOnClickListenerC1455b.f5637t++;
        if (viewOnClickListenerC1455b.f5637t == viewOnClickListenerC1455b.f5636q.size()) {
            if (list.size() > 0) {
                viewOnClickListenerC1455b.f5632m.FreebackImages = (String[]) list.toArray(new String[list.size()]);
            }
            viewOnClickListenerC1455b.f5635p.m6954a(viewOnClickListenerC1455b.f5634o, viewOnClickListenerC1455b.f5632m);
        }
    }

    /* renamed from: a */
    private void m6711a(List<String> list) {
        this.f5637t++;
        if (this.f5637t == this.f5636q.size()) {
            if (list.size() > 0) {
                this.f5632m.FreebackImages = (String[]) list.toArray(new String[list.size()]);
            }
            this.f5635p.m6954a(this.f5634o, this.f5632m);
        }
    }

    /* renamed from: c */
    private void m6712c() {
        this.f5628i = (TextView) findViewById(C1478R.id.id_tv_device_name);
        this.f5629j = (TextView) findViewById(C1478R.id.id_tv_device_system);
        this.f5630k = (TextView) findViewById(C1478R.id.id_tv_device_root);
        this.f5631l = (TextView) findViewById(C1478R.id.id_tv_feedback_content);
        this.f5626g = (Button) findViewById(C1478R.id.id_btn_back);
        this.f5627h = (Button) findViewById(C1478R.id.id_btn_commit_feedback_info);
    }

    /* renamed from: d */
    private void m6713d() {
        String string;
        TextView textView;
        Context context;
        int i;
        this.f5628i.setText(m6708a(this.f5634o.getString(C1478R.string.devices_name, this.f5632m.DeviceModel), this.f5632m.DeviceModel));
        this.f5629j.setText(m6708a(this.f5634o.getString(C1478R.string.devices_use_system, this.f5632m.AndoridVersion), this.f5632m.AndoridVersion));
        switch (this.f5632m.RootStatus) {
            case 1:
                string = this.f5634o.getString(C1478R.string.devices_is_root, this.f5634o.getString(C1478R.string.devices_yes_root));
                textView = this.f5630k;
                context = this.f5634o;
                i = C1478R.string.devices_yes_root;
                break;
            case 2:
                string = this.f5634o.getString(C1478R.string.devices_is_root, this.f5634o.getString(C1478R.string.devices_no_root));
                textView = this.f5630k;
                context = this.f5634o;
                i = C1478R.string.devices_no_root;
                break;
        }
        textView.setText(m6708a(string, context.getString(i)));
        if (this.f5632m.Content.equals(f5620d)) {
            return;
        }
        this.f5631l.setText(this.f5632m.Content);
    }

    /* renamed from: e */
    private void m6714e() {
        this.f5627h.setOnClickListener(this);
        this.f5626g.setOnClickListener(this);
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1565c
    /* renamed from: a */
    public final void mo6715a() {
        this.f5633n.dismiss();
        if (this.f5625c != null) {
            this.f5625c.mo6717a(1);
        }
        dismiss();
    }

    @Override // com.cyjh.http.p096c.p100d.InterfaceC1565c
    /* renamed from: b */
    public final void mo6716b() {
        this.f5633n.dismiss();
        if (this.f5625c != null) {
            this.f5625c.mo6717a(0);
        }
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        this.f5632m = null;
        this.f5637t = 0;
        if (this.f5635p != null) {
            C1577c.m7005a().m7010a(this.f5635p.getClass().getCanonicalName());
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id = view.getId();
        if (id == C1478R.id.id_btn_back) {
            dismiss();
            return;
        }
        if (id == C1478R.id.id_btn_commit_feedback_info) {
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f5634o.getSystemService("connectivity")).getActiveNetworkInfo();
                if (!(activeNetworkInfo != null && activeNetworkInfo.getType() == 0)) {
                    Context context = this.f5634o;
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    if (!((connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().getState() == NetworkInfo.State.CONNECTED) || ((TelephonyManager) context.getSystemService("phone")).getNetworkType() == 3)) {
                        Toast.makeText(this.f5634o, this.f5634o.getString(C1478R.string.is_net_open), 1).show();
                        return;
                    }
                }
                MyOSSUtils build = new MyOSSUtils.Builder(this.f5634o, C1487a.m6886a().f5812d).build();
                if (build.isTokenExpireTime()) {
                    Toast.makeText(this.f5634o, "阿里云Token过期，稍后再试！", 1).show();
                    new C1554k().m6958a(this.f5634o);
                    return;
                }
                if (this.f5633n == null) {
                    this.f5633n = new DialogC1456c(this.f5634o);
                }
                this.f5633n.show();
                this.f5635p = new C1552i(this);
                if (this.f5636q.size() <= 0 || C1487a.m6886a().f5812d == null) {
                    this.f5635p.m6954a(this.f5634o, this.f5632m);
                    return;
                }
                final ArrayList arrayList = new ArrayList();
                for (String str : this.f5636q) {
                    build.uploadFile(str, C1487a.m6886a().f5812d.OssStoragePath + new File(str).getName(), new MyOSSUtils.UploadFileCallBack() { // from class: com.cyjh.feedback.lib.b.b.1
                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadFail(String str2) {
                            ViewOnClickListenerC1455b.m6710a(ViewOnClickListenerC1455b.this, arrayList);
                        }

                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadProgress(long j, long j2) {
                        }

                        @Override // com.cyjh.http.oss.MyOSSUtils.UploadFileCallBack
                        public final void uploadSuc(String str2, String str3) {
                            arrayList.add(str3);
                            ViewOnClickListenerC1455b.m6710a(ViewOnClickListenerC1455b.this, arrayList);
                        }
                    });
                }
            } catch (Exception e) {
                e.printStackTrace();
                Log.e("zzz", "FeedBackDialog--提交数据给后台：" + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.feedback.lib.base.DialogC1457a, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        String string;
        TextView textView;
        Context context;
        int i;
        super.onCreate(bundle);
        setContentView(C1478R.layout.dialog_feedback_info);
        m6720a(0.3f);
        m6721a(0.8f, 0.6f);
        this.f5628i = (TextView) findViewById(C1478R.id.id_tv_device_name);
        this.f5629j = (TextView) findViewById(C1478R.id.id_tv_device_system);
        this.f5630k = (TextView) findViewById(C1478R.id.id_tv_device_root);
        this.f5631l = (TextView) findViewById(C1478R.id.id_tv_feedback_content);
        this.f5626g = (Button) findViewById(C1478R.id.id_btn_back);
        this.f5627h = (Button) findViewById(C1478R.id.id_btn_commit_feedback_info);
        this.f5628i.setText(m6708a(this.f5634o.getString(C1478R.string.devices_name, this.f5632m.DeviceModel), this.f5632m.DeviceModel));
        this.f5629j.setText(m6708a(this.f5634o.getString(C1478R.string.devices_use_system, this.f5632m.AndoridVersion), this.f5632m.AndoridVersion));
        switch (this.f5632m.RootStatus) {
            case 1:
                string = this.f5634o.getString(C1478R.string.devices_is_root, this.f5634o.getString(C1478R.string.devices_yes_root));
                textView = this.f5630k;
                context = this.f5634o;
                i = C1478R.string.devices_yes_root;
                break;
            case 2:
                string = this.f5634o.getString(C1478R.string.devices_is_root, this.f5634o.getString(C1478R.string.devices_no_root));
                textView = this.f5630k;
                context = this.f5634o;
                i = C1478R.string.devices_no_root;
                break;
        }
        textView.setText(m6708a(string, context.getString(i)));
        if (!this.f5632m.Content.equals(f5620d)) {
            this.f5631l.setText(this.f5632m.Content);
        }
        this.f5627h.setOnClickListener(this);
        this.f5626g.setOnClickListener(this);
    }
}
