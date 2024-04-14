package com.cyjh.mq.sdk;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.cyjh.mobileanjian.ipc.C1589d;
import com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver;
import com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.C1613b;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.utils.RootUtil;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p109c.C1676b;
import com.cyjh.mq.p110d.C1683e;
import com.cyjh.mq.sdk.entity.Script4Run;
import com.cyjh.mq.sdk.inf.IRunner;
import com.cyjh.mqsdk.C1696R;
import com.google.protobuf.ByteString;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

/* renamed from: com.cyjh.mq.sdk.a */
/* loaded from: classes.dex */
public abstract class AbstractC1689a implements EngineStateObserver, OnRootApplyCallback, IRunner {

    /* renamed from: a */
    protected static final int f6618a = 256;

    /* renamed from: c */
    protected Script4Run f6620c;

    /* renamed from: g */
    private OnScriptListener f6624g;

    /* renamed from: b */
    protected C1676b f6619b = null;

    /* renamed from: e */
    protected boolean f6622e = false;

    /* renamed from: h */
    private boolean f6625h = false;

    /* renamed from: f */
    protected boolean f6623f = false;

    /* renamed from: d */
    protected Handler f6621d = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.mq.sdk.a.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 256 || C1673a.f6504i == null) {
                return;
            }
            if (message.what == 4) {
                Toast.makeText(C1673a.f6502g.getApplicationContext(), C1673a.f6502g.getString(C1696R.string.toast_failed_got_root, new Object[]{C1683e.m7698a(C1673a.f6502g.getApplicationContext())}), 1).show();
            }
            C1673a.f6504i.onRootProgress((String) message.obj, message.what);
        }
    };

    /* renamed from: com.cyjh.mq.sdk.a$a */
    /* loaded from: classes.dex */
    private class a extends AsyncTask<Script4Run, Void, Script4Run> {
        private a() {
        }

        /* synthetic */ a(AbstractC1689a abstractC1689a, byte b2) {
            this();
        }

        /* renamed from: a */
        private static Script4Run m7734a(Script4Run... script4RunArr) {
            Script4Run script4Run = script4RunArr[0];
            try {
                File file = new File(C1673a.f6502g.getApplicationContext().getFilesDir(), "script");
                if (file.exists()) {
                    FileUtils.deleteDirectory(file);
                } else {
                    file.mkdirs();
                    file.setReadable(true, false);
                    file.setExecutable(true, false);
                }
                File[] fileArr = {new File(script4Run.getLcPath()), new File(script4Run.getAtcPath()), new File(script4Run.getConfigPath())};
                File file2 = new File(file, FilenameUtils.getName(script4Run.getLcPath()));
                File file3 = new File(file, FilenameUtils.getName(script4Run.getAtcPath()));
                File file4 = new File(file, FilenameUtils.getName(script4Run.getConfigPath()));
                File[] fileArr2 = new File[3];
                fileArr2[0] = file2;
                fileArr2[1] = file3;
                fileArr2[2] = file4;
                for (int i = 0; i < 3; i++) {
                    if (fileArr[i].exists()) {
                        FileUtils.copyFile(fileArr[i], fileArr2[i]);
                        fileArr2[i].setReadable(true, false);
                    } else {
                        fileArr2[i] = fileArr[i];
                    }
                }
                Script4Run m13987clone = script4Run.m13987clone();
                m13987clone.setLcPath(file2.getAbsolutePath()).setAtcPath(file3.getAbsolutePath()).setConfigPath(file4.getAbsolutePath());
                return m13987clone;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: a */
        private void m7735a(Script4Run script4Run) {
            if (script4Run != null) {
                AbstractC1689a.this.m7732a(script4Run.toMessage(7));
                AbstractC1689a.this.m7732a(script4Run.toMessage(1));
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Script4Run doInBackground(Script4Run[] script4RunArr) {
            return m7734a(script4RunArr);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Script4Run script4Run) {
            Script4Run script4Run2 = script4Run;
            if (script4Run2 != null) {
                AbstractC1689a.this.m7732a(script4Run2.toMessage(7));
                AbstractC1689a.this.m7732a(script4Run2.toMessage(1));
            }
        }
    }

    /* renamed from: a */
    private void m7731a(Script4Run script4Run) {
        new a(this, (byte) 0).execute(script4Run);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m7732a(Ipc.IpcMessage ipcMessage) {
        if (this.f6622e) {
            this.f6619b.m7637a(ipcMessage);
        }
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: a */
    public final void mo7722a(ByteString byteString) {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(64).setFileData(byteString).build());
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: b */
    public final void mo7723b(ByteString byteString) {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(65).setFileData(byteString).build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m7733c() {
        if (this.f6625h) {
            return;
        }
        this.f6625h = true;
        File m7572a = C1673a.m7572a();
        C1589d.m7132a().m7147a("setenforce 0");
        C1589d.m7132a().m7147a("chmod 677 /dev/input/*");
        C1589d.m7132a().m7147a(m7572a.getAbsolutePath());
        this.f6621d.sendEmptyMessageDelayed(256, 6000L);
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: c */
    public final void mo7724c(ByteString byteString) {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(C1612a.f6070aL).setFileData(byteString).build());
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1692c
    /* renamed from: c */
    public final void mo7725c(String str) {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(C1612a.f6071aM).addArg2(str).build());
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public boolean isScriptStarted() {
        if (this.f6619b == null) {
            return false;
        }
        return this.f6619b.f6523e;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void notifyRotationStatus() {
        m7732a(Ipc.IpcMessage.newBuilder().setCmd(15).addArg1(((WindowManager) C1673a.f6502g.getSystemService("window")).getDefaultDisplay().getRotation()).build());
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver
    public void onConnected(C1676b c1676b) {
        this.f6621d.removeMessages(256);
        this.f6622e = true;
        this.f6619b = c1676b;
        this.f6625h = false;
        setOnScriptListener(this.f6624g);
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback
    public void onObtained() {
        Log.d("JAVA_RUNNER", "onObtained()1");
        if (RootUtil.isRoot()) {
            this.f6621d.obtainMessage(6, "ROOT SUCCESS").sendToTarget();
        }
        m7733c();
        this.f6623f = false;
    }

    @Override // com.cyjh.mobileanjian.ipc.interfaces.OnRootApplyCallback
    public void onRefused() {
        if (RootUtil.isRoot()) {
            this.f6621d.obtainMessage(4, "User refused root.").sendToTarget();
        }
        this.f6623f = false;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void pause() {
        m7732a(C1613b.m7204a(2));
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void resume() {
        m7732a(C1613b.m7204a(9));
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setOnScriptListener(OnScriptListener onScriptListener) {
        this.f6624g = onScriptListener;
        if (this.f6619b != null) {
            this.f6619b.f6530l = this.f6624g;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public IRunner setScript(Script4Run script4Run) {
        this.f6620c = script4Run;
        m7732a(script4Run.toMessage(7));
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IRunner
    public void stop() {
        Log.d("JAVA_RUNNER", "GeneralMqRunner stop");
        m7732a(C1613b.m7204a(3));
    }
}
