package com.cyjh.mobileanjian.ipc;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.LocalBroadcastManager;
import com.cyjh.mobileanjian.ipc.stuff.IntentActions;
import com.cyjh.mobileanjian.ipc.utils.RootUtil;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mqsdk.C1696R;
import com.goldcoast.sdk.domain.AnalyseResult;
import com.goldcoast.sdk.domain.EntryPoint;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.File;

/* renamed from: com.cyjh.mobileanjian.ipc.c */
/* loaded from: classes.dex */
public final class C1588c {

    /* renamed from: a */
    public static final int f5948a = 1;

    /* renamed from: b */
    public static final int f5949b = 2;

    /* renamed from: g */
    private static C1588c f5950g = null;

    /* renamed from: j */
    private static final String f5951j = "3rd.need.or.not.m";

    /* renamed from: i */
    private int f5957i;

    /* renamed from: d */
    boolean f5953d = false;

    /* renamed from: h */
    private boolean f5956h = false;

    /* renamed from: e */
    boolean f5954e = false;

    /* renamed from: f */
    boolean f5955f = false;

    /* renamed from: c */
    Handler f5952c = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.mobileanjian.ipc.c.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (C1673a.f6504i != null) {
                C1673a.f6504i.onRootProgress((String) message.obj, message.what);
            }
        }
    };

    /* renamed from: com.cyjh.mobileanjian.ipc.c$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ExToast.makeText(C1673a.f6502g.getApplicationContext(), C1673a.f6502g.getApplicationContext().getString(C1696R.string.toast_script_engine_failed_start), (int) ExToast.LENGTH_LONG).show();
        }
    }

    /* renamed from: com.cyjh.mobileanjian.ipc.c$3, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 extends Thread {

        /* renamed from: a */
        final /* synthetic */ File f5960a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(String str, File file) {
            super(str);
            this.f5960a = file;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!this.f5960a.exists()) {
                    this.f5960a.createNewFile();
                }
                EntryPoint.instance().analyse(new AnalyseResult() { // from class: com.cyjh.mobileanjian.ipc.c.3.1
                    @Override // com.goldcoast.sdk.domain.AnalyseResult
                    public final void onException(String str) {
                        C1588c.this.f5953d = false;
                        if (!C1588c.this.f5955f) {
                            C1588c.this.f5952c.obtainMessage(3, str).sendToTarget();
                        }
                        C1588c.this.f5955f = true;
                        C1588c.m7117a();
                    }

                    @Override // com.goldcoast.sdk.domain.AnalyseResult
                    public final void onFailed(String str) {
                        C1588c.this.f5953d = false;
                        if (!C1588c.this.f5955f) {
                            C1588c.this.f5952c.obtainMessage(3, str).sendToTarget();
                        }
                        C1588c.this.f5955f = true;
                        C1588c.m7117a();
                    }

                    @Override // com.goldcoast.sdk.domain.AnalyseResult
                    public final void onProgress(String str) {
                    }

                    @Override // com.goldcoast.sdk.domain.AnalyseResult
                    public final void onSuccess(String str) {
                        if (AnonymousClass3.this.f5960a.exists()) {
                            AnonymousClass3.this.f5960a.delete();
                        }
                        C1588c.this.f5953d = false;
                        C1588c.this.f5955f = true;
                        C1588c.this.f5954e = true;
                        EntryPoint.instance().exec(new String[]{"chmod 677 /dev/input/*", C1673a.m7572a().getAbsolutePath()});
                        C1588c.this.f5952c.sendMessageDelayed(C1588c.this.f5952c.obtainMessage(3, str), UMAmapConfig.AMAP_CACHE_WRITE_TIME);
                    }
                });
            } catch (Exception unused) {
                C1588c.this.f5953d = false;
                C1588c.this.f5955f = true;
                C1588c.this.f5952c.obtainMessage(3, "Exception occurs when startThirdRoot()").sendToTarget();
            }
        }
    }

    private C1588c() {
    }

    /* renamed from: a */
    static /* synthetic */ void m7117a() {
        Intent intent = new Intent(IntentActions.TRY_ACTIVE_RUNNER);
        intent.putExtra(IntentActions.EXTRA_ACTIVITE_TYPE, "2");
        intent.putExtra(IntentActions.EXTRA_ACTIVE_RESULT, "0");
        LocalBroadcastManager.getInstance(C1673a.f6502g).sendBroadcast(intent);
    }

    /* renamed from: a */
    private void m7118a(int i) {
        this.f5957i = i;
    }

    /* renamed from: a */
    private void m7119a(String str) {
        this.f5952c.obtainMessage(2, str).sendToTarget();
        this.f5952c.removeMessages(3);
    }

    /* renamed from: a */
    private static void m7120a(boolean z) {
        Intent intent = new Intent(IntentActions.TRY_ACTIVE_RUNNER);
        intent.putExtra(IntentActions.EXTRA_ACTIVITE_TYPE, "2");
        intent.putExtra(IntentActions.EXTRA_ACTIVE_RESULT, z ? "1" : "0");
        LocalBroadcastManager.getInstance(C1673a.f6502g).sendBroadcast(intent);
    }

    /* renamed from: a */
    private static boolean m7121a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: a */
    private static /* synthetic */ boolean m7122a(C1588c c1588c) {
        c1588c.f5953d = false;
        return false;
    }

    /* renamed from: b */
    private static synchronized C1588c m7123b() {
        C1588c c1588c;
        synchronized (C1588c.class) {
            if (f5950g == null) {
                f5950g = new C1588c();
            }
            c1588c = f5950g;
        }
        return c1588c;
    }

    /* renamed from: b */
    private void m7124b(String str) {
        this.f5952c.obtainMessage(3, str).sendToTarget();
    }

    /* renamed from: b */
    private static /* synthetic */ boolean m7125b(C1588c c1588c) {
        c1588c.f5955f = true;
        return true;
    }

    /* renamed from: c */
    private boolean m7126c() {
        return this.f5955f && this.f5954e;
    }

    /* renamed from: c */
    private static /* synthetic */ boolean m7127c(C1588c c1588c) {
        c1588c.f5954e = true;
        return true;
    }

    /* renamed from: d */
    private void m7129d() {
        Handler handler;
        String str;
        Message obtainMessage;
        if (this.f5956h) {
            return;
        }
        this.f5956h = true;
        if (RootUtil.isRoot()) {
            C1589d.m7132a().m7146a(MqRunner.getInstance());
        } else {
            new StringBuilder("check EntryPoint ").append(EntryPoint.instance());
            if (EntryPoint.instance() != null && C1673a.f6504i != null) {
                if (this.f5953d) {
                    obtainMessage = this.f5952c.obtainMessage(1, "3rd root is going on now." + EntryPoint.class.getSimpleName());
                } else {
                    File file = new File(C1673a.f6502g.getFilesDir(), f5951j);
                    if (!file.exists()) {
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) C1673a.f6502g.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            if (!this.f5955f) {
                                this.f5953d = true;
                                this.f5952c.obtainMessage(1, "Now start 3rd root using " + EntryPoint.class.getSimpleName()).sendToTarget();
                                new AnonymousClass3("third_root_request", file).start();
                            } else if (this.f5954e) {
                                this.f5952c.post(new AnonymousClass2());
                            } else {
                                handler = this.f5952c;
                                str = "result";
                                obtainMessage = handler.obtainMessage(5, str);
                            }
                        }
                    }
                    handler = this.f5952c;
                    str = "failed because mark file";
                    obtainMessage = handler.obtainMessage(5, str);
                }
                obtainMessage.sendToTarget();
            }
        }
        this.f5956h = false;
    }

    /* renamed from: e */
    private void m7130e() {
        if (this.f5953d) {
            this.f5952c.obtainMessage(1, "3rd root is going on now." + EntryPoint.class.getSimpleName()).sendToTarget();
            return;
        }
        File file = new File(C1673a.f6502g.getFilesDir(), f5951j);
        if (!file.exists()) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C1673a.f6502g.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (this.f5955f) {
                    if (this.f5954e) {
                        this.f5952c.post(new AnonymousClass2());
                        return;
                    } else {
                        this.f5952c.obtainMessage(5, "result").sendToTarget();
                        return;
                    }
                }
                this.f5953d = true;
                this.f5952c.obtainMessage(1, "Now start 3rd root using " + EntryPoint.class.getSimpleName()).sendToTarget();
                new AnonymousClass3("third_root_request", file).start();
                return;
            }
        }
        this.f5952c.obtainMessage(5, "failed because mark file").sendToTarget();
    }
}
