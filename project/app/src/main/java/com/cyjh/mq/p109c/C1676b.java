package com.cyjh.mq.p109c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.LocalSocket;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.MediaStore;
import android.provider.Settings;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.C1584a;
import com.cyjh.mobileanjian.ipc.C1587b;
import com.cyjh.mobileanjian.ipc.interfaces.BasicScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.EngineStateObserver;
import com.cyjh.mobileanjian.ipc.interfaces.OnMqScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRecordScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRequestCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnRpcCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptMessageCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnSpecialMqCmdCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnUiElementCallback;
import com.cyjh.mobileanjian.ipc.interfaces.ScriptStateObserver;
import com.cyjh.mobileanjian.ipc.rpc.Invocator;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.C1613b;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.utils.C1650d;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p108b.C1674a;
import com.cyjh.mq.p109c.C1678d;
import com.cyjh.mq.p110d.C1681c;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.inf.OnElfCallback;
import com.cyjh.mqsdk.C1696R;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import com.ime.input.C2351a;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ArrayBlockingQueue;

/* renamed from: com.cyjh.mq.c.b */
/* loaded from: classes.dex */
public final class C1676b extends C1675a {

    /* renamed from: t */
    private static final int f6517t = 4096;

    /* renamed from: u */
    private static final int f6518u = 1024;

    /* renamed from: a */
    boolean f6519a;

    /* renamed from: b */
    boolean f6520b;

    /* renamed from: c */
    Context f6521c;

    /* renamed from: d */
    public boolean f6522d;

    /* renamed from: e */
    public boolean f6523e;

    /* renamed from: f */
    C1674a f6524f;

    /* renamed from: g */
    List<EngineStateObserver> f6525g;

    /* renamed from: h */
    OnRecordScriptCallback f6526h;

    /* renamed from: i */
    public OnScreenShotCallback f6527i;

    /* renamed from: j */
    OnScriptMessageCallback f6528j;

    /* renamed from: k */
    BasicScriptListener f6529k;

    /* renamed from: l */
    public OnScriptListener f6530l;

    /* renamed from: m */
    OnRequestCallback f6531m;

    /* renamed from: n */
    public OnMqScriptCallback f6532n;

    /* renamed from: o */
    public OnElfCallback f6533o;

    /* renamed from: p */
    OnUiElementCallback f6534p;

    /* renamed from: q */
    public OnSpecialMqCmdCallback f6535q;

    /* renamed from: r */
    ArrayBlockingQueue<Ipc.IpcMessage> f6536r;

    /* renamed from: s */
    OnRpcCallback f6537s;

    /* renamed from: v */
    private C1678d f6538v;

    /* renamed from: w */
    private Vector<ScriptStateObserver> f6539w;

    /* renamed from: x */
    private Thread f6540x;

    /* renamed from: com.cyjh.mq.c.b$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 extends Thread {
        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Iterator<EngineStateObserver> it = C1676b.this.f6525g.iterator();
            while (it.hasNext()) {
                it.next().onConnected(C1676b.this);
            }
            if (C1673a.f6505j != null) {
                C1673a.f6505j.onEngineStart(C1676b.this.f6524f.f6506a);
            }
        }
    }

    public C1676b(Context context, LocalSocket localSocket) {
        super(localSocket);
        this.f6519a = true;
        this.f6520b = false;
        this.f6538v = null;
        this.f6521c = null;
        this.f6522d = false;
        this.f6523e = false;
        this.f6525g = new ArrayList();
        this.f6539w = new Vector<>();
        this.f6526h = null;
        this.f6527i = null;
        this.f6528j = null;
        this.f6529k = null;
        this.f6530l = null;
        this.f6536r = new ArrayBlockingQueue<>(1024);
        this.f6540x = new Thread("send_thread") { // from class: com.cyjh.mq.c.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                while (C1676b.this.f6519a) {
                    try {
                        C1613b c1613b = new C1613b(C1676b.this.f6536r.take());
                        C1676b c1676b = C1676b.this;
                        int length = c1613b.mo7205a().length;
                        ByteBuffer wrap = ByteBuffer.wrap(new byte[length + 4]);
                        wrap.putInt(length);
                        wrap.put(c1613b.mo7205a());
                        wrap.flip();
                        c1676b.m7594a(wrap);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        this.f6537s = null;
        this.f6521c = context;
        this.f6538v = new C1678d(context, this);
    }

    public C1676b(Context context, Socket socket) {
        super(socket);
        this.f6519a = true;
        this.f6520b = false;
        this.f6538v = null;
        this.f6521c = null;
        this.f6522d = false;
        this.f6523e = false;
        this.f6525g = new ArrayList();
        this.f6539w = new Vector<>();
        this.f6526h = null;
        this.f6527i = null;
        this.f6528j = null;
        this.f6529k = null;
        this.f6530l = null;
        this.f6536r = new ArrayBlockingQueue<>(1024);
        this.f6540x = new Thread("send_thread") { // from class: com.cyjh.mq.c.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                while (C1676b.this.f6519a) {
                    try {
                        C1613b c1613b = new C1613b(C1676b.this.f6536r.take());
                        C1676b c1676b = C1676b.this;
                        int length = c1613b.mo7205a().length;
                        ByteBuffer wrap = ByteBuffer.wrap(new byte[length + 4]);
                        wrap.putInt(length);
                        wrap.put(c1613b.mo7205a());
                        wrap.flip();
                        c1676b.m7594a(wrap);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        this.f6537s = null;
        this.f6521c = context;
        this.f6538v = new C1678d(context, this);
    }

    /* renamed from: a */
    private void m7595a(BasicScriptListener basicScriptListener) {
        this.f6529k = basicScriptListener;
    }

    /* renamed from: a */
    private void m7596a(OnMqScriptCallback onMqScriptCallback) {
        this.f6532n = onMqScriptCallback;
    }

    /* renamed from: a */
    private void m7597a(OnRecordScriptCallback onRecordScriptCallback) {
        this.f6526h = onRecordScriptCallback;
    }

    /* renamed from: a */
    private void m7598a(OnRequestCallback onRequestCallback) {
        this.f6531m = onRequestCallback;
    }

    /* renamed from: a */
    private void m7599a(OnRpcCallback onRpcCallback) {
        this.f6537s = onRpcCallback;
    }

    /* renamed from: a */
    private void m7600a(OnScreenShotCallback onScreenShotCallback) {
        this.f6527i = onScreenShotCallback;
    }

    /* renamed from: a */
    private void m7601a(OnScriptListener onScriptListener) {
        this.f6530l = onScriptListener;
    }

    /* renamed from: a */
    private void m7602a(OnScriptMessageCallback onScriptMessageCallback) {
        this.f6528j = onScriptMessageCallback;
    }

    /* renamed from: a */
    private void m7603a(OnSpecialMqCmdCallback onSpecialMqCmdCallback) {
        this.f6535q = onSpecialMqCmdCallback;
    }

    /* renamed from: a */
    private void m7604a(OnUiElementCallback onUiElementCallback) {
        this.f6534p = onUiElementCallback;
    }

    /* renamed from: a */
    private void m7605a(ScriptStateObserver scriptStateObserver) {
        this.f6539w.add(scriptStateObserver);
    }

    /* renamed from: a */
    private void m7606a(C1674a c1674a) {
        this.f6524f = c1674a;
    }

    /* renamed from: a */
    private void m7607a(OnElfCallback onElfCallback) {
        this.f6533o = onElfCallback;
    }

    /* renamed from: a */
    private void m7608a(List<EngineStateObserver> list) {
        this.f6525g = list;
    }

    /* renamed from: a */
    private void m7609a(boolean z) {
        this.f6523e = z;
    }

    /* renamed from: b */
    private void m7612b(boolean z) {
        this.f6522d = z;
    }

    /* renamed from: d */
    private boolean m7615d() {
        return this.f6520b;
    }

    /* renamed from: e */
    private int m7616e() {
        byte[] bArr = new byte[4];
        if (m7592a(bArr) < 0) {
            return -1;
        }
        return ByteBuffer.wrap(bArr).getInt();
    }

    /* renamed from: f */
    private Ipc.IpcMessage m7619f() {
        byte[] bArr = new byte[4];
        int i = m7592a(bArr) < 0 ? -1 : ByteBuffer.wrap(bArr).getInt();
        if (i >= 0) {
            byte[] bArr2 = new byte[i];
            if (m7592a(bArr2) >= 0) {
                try {
                    return Ipc.IpcMessage.parseFrom(bArr2);
                } catch (InvalidProtocolBufferException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        mo7593a();
        m7635v();
        return null;
    }

    /* renamed from: g */
    private OnRpcCallback m7620g() {
        return this.f6537s;
    }

    /* renamed from: h */
    private C1674a m7621h() {
        return this.f6524f;
    }

    /* renamed from: i */
    private boolean m7622i() {
        return this.f6523e;
    }

    /* renamed from: j */
    private boolean m7623j() {
        return this.f6522d;
    }

    /* renamed from: k */
    private Vector<ScriptStateObserver> m7624k() {
        return this.f6539w;
    }

    /* renamed from: l */
    private BasicScriptListener m7625l() {
        return this.f6529k;
    }

    /* renamed from: m */
    private OnScriptListener m7626m() {
        return this.f6530l;
    }

    /* renamed from: n */
    private OnRecordScriptCallback m7627n() {
        return this.f6526h;
    }

    /* renamed from: o */
    private OnScreenShotCallback m7628o() {
        return this.f6527i;
    }

    /* renamed from: p */
    private OnScriptMessageCallback m7629p() {
        return this.f6528j;
    }

    /* renamed from: q */
    private OnRequestCallback m7630q() {
        return this.f6531m;
    }

    /* renamed from: r */
    private OnMqScriptCallback m7631r() {
        return this.f6532n;
    }

    /* renamed from: s */
    private OnElfCallback m7632s() {
        return this.f6533o;
    }

    /* renamed from: t */
    private OnUiElementCallback m7633t() {
        return this.f6534p;
    }

    /* renamed from: u */
    private void m7634u() {
        new AnonymousClass2().start();
    }

    /* renamed from: v */
    private void m7635v() {
        C1587b c1587b = new C1587b();
        c1587b.f5947a = MqRunner.getInstance().isScriptStarted();
        if (MqRunner.getInstance().isScriptStarted()) {
            this.f6538v.f6575e.sendEmptyMessage(10);
            if (this.f6529k != null) {
                Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP root进程异常终止");
                this.f6529k.onStopScript(1002, "root进程异常终止");
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.cyjh.mq.c.b.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (C1676b.this.f6530l != null) {
                        Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP root进程异常终止 2");
                        C1676b.this.f6530l.onStopScript(1002, "root进程异常终止");
                    }
                    ExToast.makeText(C1676b.this.f6521c, C1696R.string.toast_engine_crash_then_restart, 2000).show();
                }
            });
        }
        if (this.f6522d && this.f6527i != null) {
            this.f6522d = false;
            this.f6527i.onScreenShotFailed(1002);
        }
        Iterator<EngineStateObserver> it = this.f6525g.iterator();
        while (it.hasNext()) {
            it.next().onCrash(c1587b);
        }
    }

    /* renamed from: w */
    private OnSpecialMqCmdCallback m7636w() {
        return this.f6535q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cyjh.mq.p109c.C1675a
    /* renamed from: a */
    public final void mo7593a() {
        super.mo7593a();
        this.f6519a = false;
        m7637a(C1613b.m7204a(3));
    }

    /* renamed from: a */
    public final synchronized void m7637a(Ipc.IpcMessage ipcMessage) {
        this.f6536r.add(ipcMessage);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:121:0x003b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:124:0x0041. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:208:0x0044. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:224:0x0047. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0032. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0035. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:89:0x0038. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x002d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v43, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v72 */
    /* renamed from: b */
    public final void m7638b() {
        int i;
        Handler handler;
        ByteString byteString;
        Message obtainMessage;
        Ipc.IpcMessage ipcMessage;
        Handler handler2;
        int i2;
        Handler handler3;
        int i3;
        Object arg2;
        String m7089i;
        Ipc.IpcMessage.Builder newBuilder;
        int i4;
        InputConnection currentInputConnection;
        Handler handler4;
        int i5;
        this.f6520b = true;
        this.f6540x.start();
        while (true) {
            if (!this.f6519a) {
                this.f6520b = false;
                return;
            }
            Ipc.IpcMessage m7619f = m7619f();
            C1678d c1678d = this.f6538v;
            if (m7619f != null) {
                new StringBuilder("handMessage msg.getCmd() -> ").append(m7619f.getCmd());
                OnRecordScriptCallback onRecordScriptCallback = c1678d.f6573c.f6526h;
                int cmd = m7619f.getCmd();
                switch (cmd) {
                    case 4:
                        c1678d.f6573c.f6523e = true;
                        c1678d.m7674a(C1696R.string.toast_on_start_script);
                        c1678d.f6575e.sendEmptyMessage(2);
                        break;
                    case 5:
                        handler4 = c1678d.f6575e;
                        i5 = 4;
                        handler4.sendEmptyMessage(i5);
                        break;
                    case 6:
                        c1678d.f6572b.m7074a();
                        C1584a.m7069f();
                        int arg1 = m7619f.getArg1(0);
                        c1678d.f6573c.f6523e = false;
                        if (arg1 == 105 || arg1 == 0) {
                            c1678d.m7674a(C1696R.string.toast_on_stop_script);
                        }
                        obtainMessage = c1678d.f6575e.obtainMessage(3, arg1, 0, m7619f.getArg2(0));
                        obtainMessage.sendToTarget();
                        break;
                    default:
                        switch (cmd) {
                            case 27:
                                OnUiElementCallback onUiElementCallback = c1678d.f6573c.f6534p;
                                if (onUiElementCallback == null) {
                                    break;
                                } else {
                                    onUiElementCallback.onUiElementback(m7619f.getArg2(0));
                                    break;
                                }
                            case 28:
                                String valueOf = String.valueOf((m7619f.getArg1(0) << 16) | m7619f.getArg1(1));
                                OnUiElementCallback onUiElementCallback2 = c1678d.f6573c.f6534p;
                                if (onUiElementCallback2 == null) {
                                    break;
                                } else {
                                    onUiElementCallback2.onScreenShotDone(valueOf, m7619f.getFileData());
                                    break;
                                }
                            default:
                                switch (cmd) {
                                    case 32:
                                        OnScriptMessageCallback onScriptMessageCallback = c1678d.f6573c.f6528j;
                                        if (onScriptMessageCallback == null) {
                                            break;
                                        } else {
                                            onScriptMessageCallback.onTracePrint(m7619f.getArg2(0));
                                            break;
                                        }
                                    case 33:
                                        obtainMessage = c1678d.f6575e.obtainMessage(1, m7619f);
                                        obtainMessage.sendToTarget();
                                        break;
                                    case 34:
                                        c1678d.f6572b.m7075a(m7619f.getArg1(0));
                                        break;
                                    case 35:
                                        C1584a.m7067c(m7619f.getArg2(0));
                                        break;
                                    case 36:
                                        c1678d.f6572b.m7076a(m7619f.getArg2(0));
                                        break;
                                    case 37:
                                        c1678d.f6572b.m7078b(m7619f.getArg1(0));
                                        break;
                                    case 38:
                                        C1584a c1584a = c1678d.f6572b;
                                        String arg22 = m7619f.getArg2(0);
                                        C2351a c2351a = c1584a.f5911b;
                                        if (c2351a.f8824a != null && (currentInputConnection = c2351a.f8824a.getCurrentInputConnection()) != null) {
                                            currentInputConnection.commitText(arg22, arg22.length());
                                        }
                                        c1678d.f6573c.m7637a(C1613b.m7204a(38));
                                        break;
                                    case 39:
                                        c1678d.f6572b.m7079b(m7619f.getArg2(0));
                                        break;
                                    case 40:
                                        obtainMessage = c1678d.f6575e.obtainMessage(16, (int) (m7619f.getArg3(0) * 100.0f), m7619f.getArg1(0), Integer.valueOf(m7619f.getArg1(1)));
                                        obtainMessage.sendToTarget();
                                        break;
                                    case 41:
                                        c1678d.f6572b.m7085e();
                                        break;
                                    case 42:
                                        handler4 = c1678d.f6575e;
                                        i5 = 8;
                                        handler4.sendEmptyMessage(i5);
                                        break;
                                    case 43:
                                        handler4 = c1678d.f6575e;
                                        i5 = 9;
                                        handler4.sendEmptyMessage(i5);
                                        break;
                                    case 44:
                                        handler3 = c1678d.f6575e;
                                        i3 = 24;
                                        arg2 = Integer.valueOf(m7619f.getArg1(0));
                                        obtainMessage = handler3.obtainMessage(i3, arg2);
                                        obtainMessage.sendToTarget();
                                        break;
                                    default:
                                        switch (cmd) {
                                            case 50:
                                                c1678d.f6573c.f6537s.onRpcReturn(m7619f.getArg2(0));
                                                break;
                                            case 51:
                                                C1584a.m7069f();
                                                break;
                                            case 52:
                                                C1650d.m7482a(c1678d.f6571a, m7619f.getArg2(0), m7619f.getArg2(1), m7619f.getArg2(2));
                                                break;
                                            case 53:
                                                C1650d.m7481a(c1678d.f6571a, m7619f.getArg2(0));
                                                break;
                                            case 54:
                                                C1650d.m7480a(c1678d.f6571a);
                                                break;
                                            case 55:
                                                c1678d.f6572b.m7087g();
                                                break;
                                            case 56:
                                                c1678d.f6572b.m7088h();
                                                break;
                                            case 57:
                                                c1678d.f6572b.m7081c(m7619f.getArg1(0));
                                                break;
                                            case 58:
                                                c1678d.f6572b.m7084d(m7619f.getArg1(0));
                                                break;
                                            case 59:
                                                c1678d.f6572b.m7086e(m7619f.getArg1(0));
                                                break;
                                            default:
                                                switch (cmd) {
                                                    case 64:
                                                        Handler handler5 = c1678d.f6575e;
                                                        i = 18;
                                                        byteString = m7619f.getFileData();
                                                        handler = handler5;
                                                        obtainMessage = handler.obtainMessage(i, byteString);
                                                        obtainMessage.sendToTarget();
                                                        break;
                                                    case 65:
                                                        break;
                                                    case 66:
                                                        Handler handler6 = c1678d.f6575e;
                                                        i = 6;
                                                        byteString = m7619f;
                                                        handler = handler6;
                                                        obtainMessage = handler.obtainMessage(i, byteString);
                                                        obtainMessage.sendToTarget();
                                                        break;
                                                    case 67:
                                                        Handler handler7 = c1678d.f6575e;
                                                        i = 7;
                                                        byteString = m7619f;
                                                        handler = handler7;
                                                        obtainMessage = handler.obtainMessage(i, byteString);
                                                        obtainMessage.sendToTarget();
                                                        break;
                                                    default:
                                                        switch (cmd) {
                                                            case 98:
                                                                handler3 = c1678d.f6575e;
                                                                i3 = 20;
                                                                arg2 = m7619f.getArg2(0);
                                                                obtainMessage = handler3.obtainMessage(i3, arg2);
                                                                obtainMessage.sendToTarget();
                                                                break;
                                                            case 99:
                                                                handler2 = c1678d.f6575e;
                                                                i2 = 22;
                                                                obtainMessage = handler2.obtainMessage(i2, m7619f.getArg1(0), 0, m7619f.getArg2(0));
                                                                obtainMessage.sendToTarget();
                                                                break;
                                                            case 100:
                                                                String arg23 = m7619f.getArg2(0);
                                                                String arg24 = m7619f.getArg2(1);
                                                                Log.e("InsertImageToGallery", "InsertImageToGallery:" + arg23 + "|" + arg24);
                                                                File file = new File(arg23);
                                                                if (Build.VERSION.SDK_INT < 29) {
                                                                    try {
                                                                        MediaStore.Images.Media.insertImage(c1678d.f6571a.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
                                                                    } catch (FileNotFoundException e) {
                                                                        e.printStackTrace();
                                                                    }
                                                                } else {
                                                                    ContentValues contentValues = new ContentValues();
                                                                    contentValues.put("_display_name", arg24);
                                                                    contentValues.put("mime_type", "image/jpeg");
                                                                    contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
                                                                    ContentResolver contentResolver = c1678d.f6571a.getContentResolver();
                                                                    Uri insert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                                                                    if (insert == null) {
                                                                        Log.e("InsertImageToGallery", "图片保存失败:" + arg23 + "|" + arg24);
                                                                        break;
                                                                    } else {
                                                                        try {
                                                                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                                                                            OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                                                                            FileUtils.copy(bufferedInputStream, openOutputStream);
                                                                            bufferedInputStream.close();
                                                                            openOutputStream.close();
                                                                            file.delete();
                                                                        } catch (IOException e2) {
                                                                            e2.printStackTrace();
                                                                        }
                                                                    }
                                                                }
                                                                if (Build.VERSION.SDK_INT < 19) {
                                                                    Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                                                    intent.setData(Uri.fromFile(file));
                                                                    c1678d.f6571a.sendBroadcast(intent);
                                                                    break;
                                                                } else {
                                                                    MediaScannerConnection.scanFile(c1678d.f6571a, new String[]{file.getAbsolutePath()}, null, null);
                                                                    break;
                                                                }
                                                            case 101:
                                                                String arg25 = m7619f.getArg2(0);
                                                                m7619f.getArg2(1);
                                                                File file2 = new File(arg25);
                                                                ContentResolver contentResolver2 = c1678d.f6571a.getContentResolver();
                                                                ContentValues contentValues2 = new ContentValues();
                                                                contentValues2.put("title", file2.getName());
                                                                contentValues2.put("_display_name", file2.getName());
                                                                contentValues2.put("mime_type", "video/3gp");
                                                                contentValues2.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                                                                contentValues2.put("date_modified", Long.valueOf(System.currentTimeMillis()));
                                                                contentValues2.put("date_added", Long.valueOf(System.currentTimeMillis()));
                                                                contentValues2.put("_data", file2.getAbsolutePath());
                                                                contentValues2.put("_size", Long.valueOf(file2.length()));
                                                                c1678d.f6571a.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver2.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues2)));
                                                                break;
                                                            case 102:
                                                                String str = "_data like \"" + m7619f.getArg2(0) + "%\"";
                                                                c1678d.f6571a.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, str, null);
                                                                c1678d.f6571a.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, str, null);
                                                                break;
                                                            case 103:
                                                                ((WifiManager) c1678d.f6571a.getSystemService("wifi")).setWifiEnabled(m7619f.getArg1(0) == 1);
                                                                break;
                                                            case 104:
                                                                Settings.System.putInt(c1678d.f6572b.f5910a.getContentResolver(), "accelerometer_rotation", (m7619f.getArg1(0) == 1 ? 1 : 0) ^ 1);
                                                                break;
                                                            case 105:
                                                                ?? r2 = m7619f.getArg1(0) == 1 ? 1 : 0;
                                                                C1584a c1584a2 = c1678d.f6572b;
                                                                Settings.System.putInt(c1584a2.f5910a.getContentResolver(), "airplane_mode_on", r2);
                                                                Intent intent2 = new Intent("android.intent.action.AIRPLANE_MODE");
                                                                intent2.putExtra("state", (boolean) r2);
                                                                c1584a2.f5910a.sendBroadcast(intent2);
                                                                break;
                                                            case 106:
                                                                m7089i = c1678d.f6572b.m7089i();
                                                                newBuilder = Ipc.IpcMessage.newBuilder();
                                                                i4 = 106;
                                                                ipcMessage = newBuilder.setCmd(i4).addArg2(m7089i).build();
                                                                c1678d.f6573c.m7637a(ipcMessage);
                                                                break;
                                                            case 107:
                                                                m7089i = c1678d.f6572b.m7083d(m7619f.getArg2(0));
                                                                newBuilder = Ipc.IpcMessage.newBuilder();
                                                                i4 = 107;
                                                                ipcMessage = newBuilder.setCmd(i4).addArg2(m7089i).build();
                                                                c1678d.f6573c.m7637a(ipcMessage);
                                                                break;
                                                            case 108:
                                                                m7089i = c1678d.f6572b.m7090j();
                                                                newBuilder = Ipc.IpcMessage.newBuilder();
                                                                i4 = 108;
                                                                ipcMessage = newBuilder.setCmd(i4).addArg2(m7089i).build();
                                                                c1678d.f6573c.m7637a(ipcMessage);
                                                                break;
                                                            case 109:
                                                                m7089i = c1678d.m7673a(m7619f.getArg2Bytes(0), m7619f.getArg1(0), m7619f.getArg1(1), m7619f.getArg1(2));
                                                                Log.e("GET_OCR_TEXT", "strOrcText:" + m7089i);
                                                                newBuilder = Ipc.IpcMessage.newBuilder();
                                                                i4 = 109;
                                                                ipcMessage = newBuilder.setCmd(i4).addArg2(m7089i).build();
                                                                c1678d.f6573c.m7637a(ipcMessage);
                                                                break;
                                                            case 110:
                                                                Handler handler8 = c1678d.f6575e;
                                                                i = 23;
                                                                byteString = m7619f;
                                                                handler = handler8;
                                                                obtainMessage = handler.obtainMessage(i, byteString);
                                                                obtainMessage.sendToTarget();
                                                                break;
                                                            case 111:
                                                                m7619f.getArg1(0);
                                                                c1678d.f6572b.m7091k();
                                                                break;
                                                            case 112:
                                                                C1678d.m7653a(m7619f.getArg2(0), m7619f.getArg2(1), m7619f.getArg1(0));
                                                                break;
                                                            case 113:
                                                                if (m7619f.getArg1(0) != 1) {
                                                                    break;
                                                                } else {
                                                                    C1681c.m7692a(c1678d.f6571a);
                                                                    break;
                                                                }
                                                            default:
                                                                switch (cmd) {
                                                                    case 272:
                                                                        Injector.KeyPressAB(m7619f.getArg1(0));
                                                                        break;
                                                                    case 273:
                                                                        Injector.dispatchGestureMoveAB(m7619f.getArg2(0));
                                                                        Injector.sendTextAB(m7619f.getArg2(0));
                                                                        break;
                                                                    case C1612a.f6075aQ /* 274 */:
                                                                        Injector.sendTextAB(m7619f.getArg2(0));
                                                                        break;
                                                                    case C1612a.f6076aR /* 275 */:
                                                                        Injector.SwipeAB(m7619f.getArg3(0), m7619f.getArg3(1), m7619f.getArg3(2), m7619f.getArg3(3), m7619f.getArg1(0));
                                                                        break;
                                                                    case C1612a.f6077aS /* 276 */:
                                                                        Injector.TapAB(m7619f.getArg3(0), m7619f.getArg3(1), m7619f.getArg1(0));
                                                                        break;
                                                                    default:
                                                                        switch (cmd) {
                                                                            case 14:
                                                                                C1674a.a aVar = new C1674a.a();
                                                                                aVar.f6509a = m7619f.getArg1(0);
                                                                                aVar.f6510b = m7619f.getArg1(1);
                                                                                aVar.f6511c = m7619f.getArg1(2) != 0;
                                                                                c1678d.f6573c.f6524f = new C1674a(aVar, (byte) 0);
                                                                                new AnonymousClass2().start();
                                                                                break;
                                                                            case 19:
                                                                                if (onRecordScriptCallback == null) {
                                                                                    break;
                                                                                } else {
                                                                                    onRecordScriptCallback.onOpenRecord();
                                                                                    break;
                                                                                }
                                                                            case 21:
                                                                                int arg12 = m7619f.getArg1(0);
                                                                                if (onRecordScriptCallback == null) {
                                                                                    break;
                                                                                } else {
                                                                                    onRecordScriptCallback.onStartRecord(arg12);
                                                                                    break;
                                                                                }
                                                                            case 23:
                                                                                String arg26 = m7619f.getArg2(0);
                                                                                if (onRecordScriptCallback == null) {
                                                                                    break;
                                                                                } else {
                                                                                    onRecordScriptCallback.onFinishRecord(arg26);
                                                                                    break;
                                                                                }
                                                                            case 25:
                                                                                int arg13 = m7619f.getArg1(0);
                                                                                int arg14 = m7619f.getArg1(1);
                                                                                int arg15 = m7619f.getArg1(2);
                                                                                String valueOf2 = String.valueOf((arg13 << 16) | arg14);
                                                                                OnScreenShotCallback onScreenShotCallback = c1678d.f6573c.f6527i;
                                                                                if (arg15 == 0) {
                                                                                    c1678d.f6573c.f6522d = false;
                                                                                }
                                                                                if (onScreenShotCallback == null) {
                                                                                    break;
                                                                                } else {
                                                                                    onScreenShotCallback.onScreenShotDone(valueOf2, m7619f.getFileData());
                                                                                    break;
                                                                                }
                                                                            case 48:
                                                                                Object invoke = Invocator.invoke(m7619f.getPkgName(), m7619f.getClassName(), m7619f.getMethodName(), m7619f.getTypesList(), m7619f.getParamsList(), 0);
                                                                                new StringBuilder("retObj = ").append(invoke);
                                                                                if (!m7619f.getIsSyncCall()) {
                                                                                    break;
                                                                                } else {
                                                                                    Ipc.FundType type = m7619f.getRetValue().getType();
                                                                                    Ipc.ReturnValue.Builder type2 = Ipc.ReturnValue.newBuilder().setType(type);
                                                                                    Ipc.IpcMessage.Builder waitId = Ipc.IpcMessage.newBuilder().setCmd(m7619f.getCmd()).setIsSyncCall(true).setWaitId(m7619f.getWaitId());
                                                                                    try {
                                                                                        switch (C1678d.AnonymousClass2.f6582a[type.ordinal()]) {
                                                                                            case 1:
                                                                                                type2.setValBoolean(((Boolean) invoke).booleanValue());
                                                                                                break;
                                                                                            case 2:
                                                                                                type2.setValInt(((Integer) invoke).intValue());
                                                                                                break;
                                                                                            case 3:
                                                                                                type2.setValLong(((Long) invoke).longValue());
                                                                                                break;
                                                                                            case 4:
                                                                                                type2.setValFloat(((Float) invoke).floatValue());
                                                                                                break;
                                                                                            case 5:
                                                                                                type2.setValDouble(((Double) invoke).doubleValue());
                                                                                                break;
                                                                                            case 6:
                                                                                                type2.setValString(invoke == null ? "" : (String) invoke);
                                                                                                break;
                                                                                        }
                                                                                    } catch (Throwable th) {
                                                                                        th.printStackTrace();
                                                                                    }
                                                                                    th.printStackTrace();
                                                                                    if (type != Ipc.FundType.VOID) {
                                                                                        waitId.setRetValue(type2.build());
                                                                                    }
                                                                                    try {
                                                                                        ipcMessage = waitId.build();
                                                                                    } catch (UninitializedMessageException e3) {
                                                                                        e3.printStackTrace();
                                                                                        ipcMessage = null;
                                                                                    }
                                                                                    if (ipcMessage == null) {
                                                                                        break;
                                                                                    } else {
                                                                                        c1678d.f6573c.m7637a(ipcMessage);
                                                                                        break;
                                                                                    }
                                                                                }
                                                                            case 81:
                                                                                handler2 = c1678d.f6575e;
                                                                                i2 = 21;
                                                                                obtainMessage = handler2.obtainMessage(i2, m7619f.getArg1(0), 0, m7619f.getArg2(0));
                                                                                obtainMessage.sendToTarget();
                                                                                break;
                                                                            case 96:
                                                                                obtainMessage = c1678d.f6575e.obtainMessage(19, m7619f.getArg1(0), 0, m7619f.getArg2(0));
                                                                                obtainMessage.sendToTarget();
                                                                                break;
                                                                            case C1612a.f6065aG /* 129 */:
                                                                                obtainMessage = c1678d.f6575e.obtainMessage(17, m7619f.getArg1(0), 0);
                                                                                obtainMessage.sendToTarget();
                                                                                break;
                                                                            case 257:
                                                                                OnScriptMessageCallback onScriptMessageCallback2 = c1678d.f6573c.f6528j;
                                                                                if (onScriptMessageCallback2 == null) {
                                                                                    break;
                                                                                } else {
                                                                                    onScriptMessageCallback2.onDebugMessage(m7619f.getFileData());
                                                                                    break;
                                                                                }
                                                                            case 65535:
                                                                                c1678d.f6573c.m7639c();
                                                                                break;
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
            }
        }
    }

    /* renamed from: c */
    public final void m7639c() {
        Iterator<EngineStateObserver> it = this.f6525g.iterator();
        while (it.hasNext()) {
            it.next().onExit();
        }
    }
}
