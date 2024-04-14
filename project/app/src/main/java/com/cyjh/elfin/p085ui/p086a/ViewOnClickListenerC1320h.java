package com.cyjh.elfin.p085ui.p086a;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cyjh.common.util.C1147a;
import com.cyjh.common.util.C1151ad;
import com.cyjh.common.util.C1172o;
import com.cyjh.elfin.receiver.NetStateReceiver;
import com.cyjh.http.bean.response.VersionUpdateInfo;
import com.cyjh.http.p104e.C1580b;
import com.hjol.R;
import java.io.File;
import java.util.concurrent.Executors;

/* renamed from: com.cyjh.elfin.ui.a.h */
/* loaded from: classes.dex */
public class ViewOnClickListenerC1320h extends DialogC1313a implements View.OnClickListener {

    /* renamed from: S */
    private static final int f5059S = 500;

    /* renamed from: T */
    private static final int f5060T = 1000;

    /* renamed from: U */
    private static final int f5061U = 1001;

    /* renamed from: V */
    private static final int f5062V = 1002;

    /* renamed from: a */
    static String f5063a = "h";

    /* renamed from: K */
    private Button f5064K;

    /* renamed from: L */
    private Button f5065L;

    /* renamed from: M */
    private LinearLayout f5066M;

    /* renamed from: N */
    private LinearLayout f5067N;

    /* renamed from: O */
    private VersionUpdateInfo f5068O;

    /* renamed from: P */
    private boolean f5069P;

    /* renamed from: Q */
    private String f5070Q;

    /* renamed from: R */
    private String f5071R;

    /* renamed from: W */
    private boolean f5072W;

    /* renamed from: X */
    private boolean f5073X;

    /* renamed from: Y */
    private Handler f5074Y;

    /* renamed from: b */
    TextView f5075b;

    /* renamed from: c */
    Button f5076c;

    /* renamed from: e */
    ProgressBar f5077e;

    /* renamed from: f */
    boolean f5078f;

    /* renamed from: g */
    Context f5079g;

    /* renamed from: h */
    protected NetStateReceiver.InterfaceC1303a f5080h;

    /* renamed from: i */
    boolean f5081i;

    /* renamed from: j */
    C1580b.a f5082j;

    /* renamed from: k */
    private TextView f5083k;

    /* renamed from: l */
    private TextView f5084l;

    /* renamed from: m */
    private Button f5085m;

    /* renamed from: com.cyjh.elfin.ui.a.h$1, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements NetStateReceiver.InterfaceC1303a {
        AnonymousClass1() {
        }

        @Override // com.cyjh.elfin.receiver.NetStateReceiver.InterfaceC1303a
        /* renamed from: a */
        public final void mo6109a() {
            C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "onNetConnected --> ");
            if (ViewOnClickListenerC1320h.this.f5072W && ViewOnClickListenerC1320h.this.f5073X) {
                ViewOnClickListenerC1320h.this.m6207e();
            }
        }

        @Override // com.cyjh.elfin.receiver.NetStateReceiver.InterfaceC1303a
        /* renamed from: b */
        public final void mo6110b() {
            C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "onNetDisConnect --> ");
            ViewOnClickListenerC1320h.m6206d(ViewOnClickListenerC1320h.this);
            ViewOnClickListenerC1320h.m6208e(ViewOnClickListenerC1320h.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.ui.a.h$a */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<String, Void, Void> {
        private a() {
        }

        /* synthetic */ a(ViewOnClickListenerC1320h viewOnClickListenerC1320h, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(String... strArr) {
            try {
                ViewOnClickListenerC1320h.m6210g(ViewOnClickListenerC1320h.this);
                File file = new File(strArr[0]);
                C1580b.m7055a().m7059a(ViewOnClickListenerC1320h.this.f5068O.UpdateUrl, file.getParentFile().getAbsolutePath(), file.getName(), ViewOnClickListenerC1320h.this.f5068O.PackageSize, ViewOnClickListenerC1320h.this.f5082j);
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public ViewOnClickListenerC1320h(Context context, VersionUpdateInfo versionUpdateInfo, boolean z) {
        super(context);
        Window window;
        int i;
        this.f5081i = true;
        this.f5074Y = new Handler(new Handler.Callback(this) { // from class: com.cyjh.elfin.ui.a.i

            /* renamed from: a */
            private final ViewOnClickListenerC1320h f5089a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5089a = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                ViewOnClickListenerC1320h viewOnClickListenerC1320h = this.f5089a;
                switch (message.what) {
                    case 1000:
                        File file = (File) message.obj;
                        if (viewOnClickListenerC1320h.f5078f) {
                            return false;
                        }
                        C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "afterDownloadSuccess --> 1 ");
                        viewOnClickListenerC1320h.m6205d(file);
                        viewOnClickListenerC1320h.f5076c.setText("安装");
                        viewOnClickListenerC1320h.f5076c.setOnClickListener(new ViewOnClickListenerC1322j(viewOnClickListenerC1320h, file));
                        return false;
                    case 1001:
                        int intValue = ((Integer) message.obj).intValue();
                        viewOnClickListenerC1320h.f5075b.setText(intValue + "%");
                        viewOnClickListenerC1320h.f5077e.setProgress(intValue);
                        return false;
                    case 1002:
                        viewOnClickListenerC1320h.f5081i = true;
                        viewOnClickListenerC1320h.m6212a();
                        return false;
                    default:
                        return false;
                }
            }
        });
        this.f5082j = new C1580b.a() { // from class: com.cyjh.elfin.ui.a.h.2
            @Override // com.cyjh.http.p104e.C1580b.a
            /* renamed from: a */
            public final void mo5779a(int i2) {
                C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "onDownloading --> progress=" + i2);
                Message obtain = Message.obtain();
                obtain.obj = Integer.valueOf(i2);
                obtain.what = 1001;
                ViewOnClickListenerC1320h.this.f5074Y.sendMessage(obtain);
            }

            @Override // com.cyjh.http.p104e.C1580b.a
            /* renamed from: a */
            public final void mo5780a(File file) {
                C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "onDownloadSuccess --> file=" + file.getName());
                Message obtain = Message.obtain();
                obtain.obj = file;
                obtain.what = 1000;
                ViewOnClickListenerC1320h.this.f5074Y.sendMessage(obtain);
            }

            @Override // com.cyjh.http.p104e.C1580b.a
            /* renamed from: a */
            public final void mo5781a(Exception exc) {
                C1151ad.m4325c(ViewOnClickListenerC1320h.f5063a, "onDownloadFailed --> exception=" + exc.getMessage());
                ViewOnClickListenerC1320h.this.f5074Y.sendEmptyMessage(1002);
            }
        };
        this.f5069P = z;
        this.f5079g = context;
        if (this.f5069P) {
            if (Build.VERSION.SDK_INT >= 26) {
                window = getWindow();
                i = 2038;
            } else if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 24) {
                window = getWindow();
                i = 2002;
            } else {
                window = getWindow();
                i = 2005;
            }
            window.setType(i);
        }
        this.f5068O = versionUpdateInfo;
    }

    /* renamed from: a */
    private /* synthetic */ boolean m6196a(Message message) {
        switch (message.what) {
            case 1000:
                File file = (File) message.obj;
                if (this.f5078f) {
                    return false;
                }
                C1151ad.m4325c(f5063a, "afterDownloadSuccess --> 1 ");
                m6205d(file);
                this.f5076c.setText("安装");
                this.f5076c.setOnClickListener(new ViewOnClickListenerC1322j(this, file));
                return false;
            case 1001:
                int intValue = ((Integer) message.obj).intValue();
                this.f5075b.setText(intValue + "%");
                this.f5077e.setProgress(intValue);
                return false;
            case 1002:
                this.f5081i = true;
                m6212a();
                return false;
            default:
                return false;
        }
    }

    /* renamed from: b */
    private void m6199b(File file) {
        if (this.f5078f) {
            return;
        }
        C1151ad.m4325c(f5063a, "afterDownloadSuccess --> 1 ");
        m6205d(file);
        this.f5076c.setText("安装");
        this.f5076c.setOnClickListener(new ViewOnClickListenerC1322j(this, file));
    }

    /* renamed from: c */
    private void m6201c() {
        this.f5083k = (TextView) findViewById(R.id.update_dialog_textview_size);
        this.f5084l = (TextView) findViewById(R.id.update_dialog_textview_updatecontent);
        this.f5075b = (TextView) findViewById(R.id.update_dialog_textview_downloadprogress);
        this.f5085m = (Button) findViewById(R.id.update_dialog_button_forceupdate);
        this.f5064K = (Button) findViewById(R.id.update_dialog_button_updatenow);
        this.f5065L = (Button) findViewById(R.id.update_dialog_button_nexttime);
        this.f5076c = (Button) findViewById(R.id.update_dialog_button_cancel);
        this.f5077e = (ProgressBar) findViewById(R.id.update_dialog_progressBar);
        this.f5066M = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_update);
        this.f5067N = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_download);
        this.f5085m.setOnClickListener(this);
        this.f5064K.setOnClickListener(this);
        this.f5065L.setOnClickListener(this);
        this.f5076c.setOnClickListener(this);
        m6212a();
        this.f5083k.setText(C1172o.m4478a(this.f5068O.PackageSize));
        this.f5083k.setVisibility(0);
        this.f5084l.setText(this.f5068O.UpdateContent);
    }

    /* renamed from: c */
    private /* synthetic */ void m6203c(File file) {
        try {
            dismiss();
            C1147a.m4253a(this.f5079g, file);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private void m6204d() {
        this.f5080h = new AnonymousClass1();
        NetStateReceiver.m6101a(this.f5079g);
        NetStateReceiver.m6102a(this.f5080h);
    }

    /* renamed from: d */
    static /* synthetic */ boolean m6206d(ViewOnClickListenerC1320h viewOnClickListenerC1320h) {
        viewOnClickListenerC1320h.f5073X = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m6207e() {
        if (this.f5081i) {
            this.f5081i = false;
            setCanceledOnTouchOutside(false);
            setCancelable(false);
            this.f5067N.setVisibility(0);
            this.f5066M.setVisibility(8);
            this.f5085m.setVisibility(8);
            new a(this, (byte) 0).executeOnExecutor(Executors.newCachedThreadPool(), Environment.getExternalStorageDirectory() + File.separator + getContext().getPackageName() + ".apk");
        }
    }

    /* renamed from: e */
    static /* synthetic */ boolean m6208e(ViewOnClickListenerC1320h viewOnClickListenerC1320h) {
        viewOnClickListenerC1320h.f5081i = true;
        return true;
    }

    /* renamed from: g */
    static /* synthetic */ boolean m6210g(ViewOnClickListenerC1320h viewOnClickListenerC1320h) {
        viewOnClickListenerC1320h.f5072W = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6212a() {
        this.f5067N.setVisibility(8);
        if (this.f5068O.UpdateType != 1) {
            this.f5066M.setVisibility(0);
            this.f5085m.setVisibility(8);
            setCancelable(true);
            setCanceledOnTouchOutside(true);
            return;
        }
        this.f5066M.setVisibility(8);
        this.f5076c.setVisibility(8);
        this.f5085m.setVisibility(0);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void m6205d(final File file) {
        new Handler().postDelayed(new Runnable(this, file) { // from class: com.cyjh.elfin.ui.a.k

            /* renamed from: a */
            private final ViewOnClickListenerC1320h f5092a;

            /* renamed from: b */
            private final File f5093b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5092a = this;
                this.f5093b = file;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ViewOnClickListenerC1320h viewOnClickListenerC1320h = this.f5092a;
                File file2 = this.f5093b;
                try {
                    viewOnClickListenerC1320h.dismiss();
                    C1147a.m4253a(viewOnClickListenerC1320h.f5079g, file2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, 500L);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        C1151ad.m4325c(f5063a, "dismiss -->");
        NetStateReceiver.m6103b(this.f5079g);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.update_dialog_button_cancel /* 2131755532 */:
                this.f5078f = true;
                NetStateReceiver.m6103b(this.f5079g);
                C1580b m7055a = C1580b.m7055a();
                if (m7055a.f5893c != null) {
                    m7055a.f5893c.mo570c();
                }
                dismiss();
                return;
            case R.id.update_dialog_button_forceupdate /* 2131755533 */:
            case R.id.update_dialog_button_updatenow /* 2131755536 */:
                m6207e();
                return;
            case R.id.update_dialog_linearlayout_update /* 2131755534 */:
            default:
                return;
            case R.id.update_dialog_button_nexttime /* 2131755535 */:
                dismiss();
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.elfin.p085ui.p086a.DialogC1313a, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.update_dialog);
        m6175a(0.9f, 0.6f);
        this.f5083k = (TextView) findViewById(R.id.update_dialog_textview_size);
        this.f5084l = (TextView) findViewById(R.id.update_dialog_textview_updatecontent);
        this.f5075b = (TextView) findViewById(R.id.update_dialog_textview_downloadprogress);
        this.f5085m = (Button) findViewById(R.id.update_dialog_button_forceupdate);
        this.f5064K = (Button) findViewById(R.id.update_dialog_button_updatenow);
        this.f5065L = (Button) findViewById(R.id.update_dialog_button_nexttime);
        this.f5076c = (Button) findViewById(R.id.update_dialog_button_cancel);
        this.f5077e = (ProgressBar) findViewById(R.id.update_dialog_progressBar);
        this.f5066M = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_update);
        this.f5067N = (LinearLayout) findViewById(R.id.update_dialog_linearlayout_download);
        this.f5085m.setOnClickListener(this);
        this.f5064K.setOnClickListener(this);
        this.f5065L.setOnClickListener(this);
        this.f5076c.setOnClickListener(this);
        m6212a();
        this.f5083k.setText(C1172o.m4478a(this.f5068O.PackageSize));
        this.f5083k.setVisibility(0);
        this.f5084l.setText(this.f5068O.UpdateContent);
        this.f5080h = new AnonymousClass1();
        NetStateReceiver.m6101a(this.f5079g);
        NetStateReceiver.m6102a(this.f5080h);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }
}
