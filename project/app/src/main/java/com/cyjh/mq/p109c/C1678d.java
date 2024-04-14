package com.cyjh.mq.p109c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
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
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.view.inputmethod.InputConnection;
import android.widget.Toast;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.event.Injector;
import com.cyjh.mobileanjian.ipc.C1584a;
import com.cyjh.mobileanjian.ipc.interfaces.OnKeyEventListener;
import com.cyjh.mobileanjian.ipc.interfaces.OnRecordScriptCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScreenShotCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptMessageCallback;
import com.cyjh.mobileanjian.ipc.interfaces.OnUiElementCallback;
import com.cyjh.mobileanjian.ipc.p106ui.C1624b;
import com.cyjh.mobileanjian.ipc.p106ui.C1625c;
import com.cyjh.mobileanjian.ipc.p106ui.C1632j;
import com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1630h;
import com.cyjh.mobileanjian.ipc.rpc.Invocator;
import com.cyjh.mobileanjian.ipc.share.proto.C1612a;
import com.cyjh.mobileanjian.ipc.share.proto.C1613b;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.utils.C1650d;
import com.cyjh.mobileanjian.ipc.view.C1668b;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p108b.C1674a;
import com.cyjh.mq.p109c.C1676b;
import com.cyjh.mq.p110d.C1681c;
import com.cyjh.mqsdk.C1696R;
import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p158i.C2000b;
import com.google.p130a.p158i.p159a.EnumC1995f;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UninitializedMessageException;
import com.googlecode.tesseract.android.TessBaseAPI;
import com.ime.input.C2351a;
import com.ime.input.InputKb;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.UUID;

/* renamed from: com.cyjh.mq.c.d */
/* loaded from: classes.dex */
public final class C1678d {

    /* renamed from: h */
    private static final int f6552h = 1;

    /* renamed from: i */
    private static final int f6553i = 2;

    /* renamed from: j */
    private static final int f6554j = 3;

    /* renamed from: k */
    private static final int f6555k = 4;

    /* renamed from: l */
    private static final int f6556l = 5;

    /* renamed from: m */
    private static final int f6557m = 10;

    /* renamed from: n */
    private static final int f6558n = 6;

    /* renamed from: o */
    private static final int f6559o = 7;

    /* renamed from: p */
    private static final int f6560p = 8;

    /* renamed from: q */
    private static final int f6561q = 9;

    /* renamed from: r */
    private static final int f6562r = 16;

    /* renamed from: s */
    private static final int f6563s = 17;

    /* renamed from: t */
    private static final int f6564t = 18;

    /* renamed from: u */
    private static final int f6565u = 19;

    /* renamed from: v */
    private static final int f6566v = 20;

    /* renamed from: w */
    private static final int f6567w = 21;

    /* renamed from: x */
    private static final int f6568x = 22;

    /* renamed from: y */
    private static final int f6569y = 23;

    /* renamed from: z */
    private static final int f6570z = 24;

    /* renamed from: a */
    Context f6571a;

    /* renamed from: b */
    C1584a f6572b;

    /* renamed from: c */
    C1676b f6573c;

    /* renamed from: d */
    ViewOnClickListenerC1630h f6574d;

    /* renamed from: f */
    private TessBaseAPI f6576f = null;

    /* renamed from: g */
    private boolean f6577g = false;

    /* renamed from: e */
    Handler f6575e = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.mq.c.d.1

        /* renamed from: b */
        private ExToast f6579b = null;

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            switch (i) {
                case 1:
                    if (this.f6579b == null) {
                        this.f6579b = new ExToast(C1678d.this.f6571a);
                    }
                    Ipc.IpcMessage ipcMessage = (Ipc.IpcMessage) message.obj;
                    this.f6579b.show(ipcMessage.getArg2(0), ipcMessage.getArg1(0), ipcMessage.getArg1(1), ipcMessage.getArg1(2));
                    return;
                case 2:
                    if (C1678d.this.f6573c.f6529k != null) {
                        C1678d.this.f6573c.f6529k.onStartScript();
                    }
                    if (C1678d.this.f6573c.f6530l != null) {
                        C1678d.this.f6573c.f6530l.onStartScript();
                        return;
                    }
                    return;
                case 3:
                    Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP SCRIPT_STOPPED");
                    ViewOnClickListenerC1630h viewOnClickListenerC1630h = C1678d.this.f6574d;
                    viewOnClickListenerC1630h.f6221f.clear();
                    viewOnClickListenerC1630h.f6222g.clear();
                    viewOnClickListenerC1630h.f6223h.clear();
                    viewOnClickListenerC1630h.m7331a();
                    viewOnClickListenerC1630h.f6217b = 0;
                    viewOnClickListenerC1630h.f6224i = 1;
                    for (int i2 = 0; i2 < 32; i2++) {
                        viewOnClickListenerC1630h.f6216a[i2] = null;
                        if (viewOnClickListenerC1630h.f6218c[i2] != null) {
                            viewOnClickListenerC1630h.f6218c[i2].clear();
                        }
                    }
                    viewOnClickListenerC1630h.f6219d = new C1632j[32];
                    viewOnClickListenerC1630h.f6220e = 0;
                    if (this.f6579b != null) {
                        this.f6579b.hide();
                    }
                    if (C1678d.this.f6573c.f6529k != null) {
                        Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP mConnection.getBasicScriptListener()");
                        C1678d.this.f6573c.f6529k.onStopScript(message.arg1, (String) message.obj);
                    }
                    if (C1678d.this.f6573c.f6530l != null) {
                        Log.d("JAVA_RUNNER", "ScriptRunnerLite WHAT_STOP mConnection.getOnScriptListener() != null");
                        C1678d.this.f6573c.f6530l.onStopScript(message.arg1, (String) message.obj);
                        return;
                    }
                    return;
                case 4:
                    if (C1678d.this.f6573c.f6529k != null) {
                        C1678d.this.f6573c.f6529k.onScriptIsRunning();
                    }
                    if (C1678d.this.f6573c.f6530l != null) {
                        C1678d.this.f6573c.f6530l.onScriptIsRunning();
                        return;
                    }
                    return;
                case 5:
                    if (message.obj == null) {
                        Toast.makeText(C1678d.this.f6571a, message.arg1, 0).show();
                        return;
                    } else {
                        Toast.makeText(C1678d.this.f6571a, (CharSequence) message.obj, 0).show();
                        return;
                    }
                case 6:
                    Ipc.IpcMessage ipcMessage2 = (Ipc.IpcMessage) message.obj;
                    String arg2 = ipcMessage2.getArg2(0);
                    int arg1 = ipcMessage2.getArg1(0);
                    ipcMessage2.getArg1(0);
                    ipcMessage2.getArg1(0);
                    new C1624b(C1678d.this.f6571a, arg2, arg1, new C1624b.a() { // from class: com.cyjh.mq.c.d.1.1
                        @Override // com.cyjh.mobileanjian.ipc.p106ui.C1624b.a
                        /* renamed from: a */
                        public final void mo6654a(int i3) {
                            C1678d.this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(66).addArg1(i3).build());
                        }
                    }).m7237a();
                    return;
                case 7:
                    Ipc.IpcMessage ipcMessage3 = (Ipc.IpcMessage) message.obj;
                    String arg22 = ipcMessage3.getArg2(0);
                    ipcMessage3.getArg1(0);
                    ipcMessage3.getArg1(0);
                    new C1625c(C1678d.this.f6571a, arg22, new C1625c.a() { // from class: com.cyjh.mq.c.d.1.2
                        @Override // com.cyjh.mobileanjian.ipc.p106ui.C1625c.a
                        /* renamed from: a */
                        public final void mo6655a(String str) {
                            C1678d.this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(67).addArg2(str).build());
                        }
                    }).m7243a();
                    return;
                case 8:
                    if (C1678d.this.f6573c.f6529k != null) {
                        C1678d.this.f6573c.f6529k.onPause();
                    }
                    if (C1678d.this.f6573c.f6530l != null) {
                        C1678d.this.f6573c.f6530l.onPause();
                        return;
                    }
                    return;
                case 9:
                    if (C1678d.this.f6573c.f6529k != null) {
                        C1678d.this.f6573c.f6529k.onResume();
                    }
                    if (C1678d.this.f6573c.f6530l != null) {
                        C1678d.this.f6573c.f6530l.onResume();
                        return;
                    }
                    return;
                case 10:
                    if (this.f6579b != null) {
                        this.f6579b.hide();
                        return;
                    }
                    return;
                default:
                    switch (i) {
                        case 16:
                            if (C1678d.this.f6573c.f6530l != null) {
                                C1678d.this.f6573c.f6530l.onUpdateControlBarPos(message.arg1 / 100.0f, message.arg2, ((Integer) message.obj).intValue());
                                return;
                            }
                            return;
                        case 17:
                            OnKeyEventListener onKeyEventListener = C1673a.f6503h;
                            if (onKeyEventListener != null) {
                                onKeyEventListener.onKeyEvent(message.arg1);
                                return;
                            }
                            return;
                        case 18:
                            try {
                                UiMessage.CommandToUi parseFrom = UiMessage.CommandToUi.parseFrom((ByteString) message.obj);
                                if (parseFrom != null) {
                                    C1678d.this.f6574d.m7332a(parseFrom);
                                    return;
                                }
                                return;
                            } catch (InvalidProtocolBufferException e) {
                                e.printStackTrace();
                                return;
                            }
                        case 19:
                            if (C1678d.this.f6573c.f6531m != null) {
                                C1678d.this.f6573c.f6531m.onCallback(message.arg1, (String) message.obj);
                                return;
                            }
                            return;
                        case 20:
                            if (C1678d.this.f6573c.f6532n != null) {
                                C1678d.this.f6573c.f6532n.callback((String) message.obj);
                                return;
                            }
                            return;
                        case 21:
                            if (C1678d.this.f6573c.f6533o != null) {
                                C1678d.this.f6573c.f6533o.callback(message.arg1, (String) message.obj);
                                return;
                            }
                            return;
                        case 22:
                            if (C1678d.this.f6573c.f6535q != null) {
                                C1678d.this.f6573c.f6535q.doSpecialFuction(message.arg1, (String) message.obj);
                                return;
                            }
                            return;
                        case 23:
                            C1668b c1668b = new C1668b(C1678d.this.f6571a);
                            Ipc.IpcMessage ipcMessage4 = (Ipc.IpcMessage) message.obj;
                            c1668b.m7553a(ipcMessage4.getArg1(0), ipcMessage4.getArg1(1), ipcMessage4.getArg2(0));
                            return;
                        case 24:
                            if (C1678d.this.f6573c.f6530l != null) {
                                C1678d.this.f6573c.f6530l.onSetControlBarVisiable(message.arg1);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }
    };

    public C1678d(Context context, C1676b c1676b) {
        this.f6573c = null;
        this.f6571a = context;
        this.f6574d = new ViewOnClickListenerC1630h(this.f6571a);
        this.f6572b = new C1584a(this.f6571a);
        this.f6573c = c1676b;
        WindowManager windowManager = (WindowManager) this.f6571a.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        String m7082d = this.f6572b.m7082d();
        String m7080c = this.f6572b.m7080c();
        String m7077b = this.f6572b.m7077b();
        String str = this.f6571a.getPackageName() + "/" + InputKb.class.getName();
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        String str2 = UUID.randomUUID().toString() + ".tmp";
        m7082d = m7082d == null ? "UNKNOW" : m7082d;
        m7080c = m7080c == null ? "UNKNOW" : m7080c;
        File file = new File(absolutePath, str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Ipc.IpcMessage.Builder cmd = Ipc.IpcMessage.newBuilder().setCmd(14);
        cmd.addArg1(i).addArg1(i2).addArg1(i3).addArg2(m7082d).addArg2(m7080c).addArg2(m7077b).addArg2(str).addArg2(str2).addArg2(absolutePath).addArg2(this.f6571a.getPackageName());
        this.f6573c.m7637a(cmd.build());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* renamed from: a */
    private void m7650a(Ipc.IpcMessage ipcMessage) {
        InputConnection currentInputConnection;
        Ipc.IpcMessage ipcMessage2;
        if (ipcMessage == null) {
            return;
        }
        new StringBuilder("handMessage msg.getCmd() -> ").append(ipcMessage.getCmd());
        OnRecordScriptCallback onRecordScriptCallback = this.f6573c.f6526h;
        int cmd = ipcMessage.getCmd();
        switch (cmd) {
            case 4:
                this.f6573c.f6523e = true;
                m7674a(C1696R.string.toast_on_start_script);
                this.f6575e.sendEmptyMessage(2);
                return;
            case 5:
                this.f6575e.sendEmptyMessage(4);
                return;
            case 6:
                this.f6572b.m7074a();
                C1584a.m7069f();
                int arg1 = ipcMessage.getArg1(0);
                this.f6573c.f6523e = false;
                if (arg1 == 105 || arg1 == 0) {
                    m7674a(C1696R.string.toast_on_stop_script);
                }
                this.f6575e.obtainMessage(3, arg1, 0, ipcMessage.getArg2(0)).sendToTarget();
                return;
            default:
                switch (cmd) {
                    case 27:
                        OnUiElementCallback onUiElementCallback = this.f6573c.f6534p;
                        if (onUiElementCallback != null) {
                            onUiElementCallback.onUiElementback(ipcMessage.getArg2(0));
                            return;
                        }
                        return;
                    case 28:
                        String valueOf = String.valueOf((ipcMessage.getArg1(0) << 16) | ipcMessage.getArg1(1));
                        OnUiElementCallback onUiElementCallback2 = this.f6573c.f6534p;
                        if (onUiElementCallback2 != null) {
                            onUiElementCallback2.onScreenShotDone(valueOf, ipcMessage.getFileData());
                            return;
                        }
                        return;
                    default:
                        switch (cmd) {
                            case 32:
                                OnScriptMessageCallback onScriptMessageCallback = this.f6573c.f6528j;
                                if (onScriptMessageCallback != null) {
                                    onScriptMessageCallback.onTracePrint(ipcMessage.getArg2(0));
                                    return;
                                }
                                return;
                            case 33:
                                this.f6575e.obtainMessage(1, ipcMessage).sendToTarget();
                                return;
                            case 34:
                                this.f6572b.m7075a(ipcMessage.getArg1(0));
                                return;
                            case 35:
                                C1584a.m7067c(ipcMessage.getArg2(0));
                                return;
                            case 36:
                                this.f6572b.m7076a(ipcMessage.getArg2(0));
                                return;
                            case 37:
                                this.f6572b.m7078b(ipcMessage.getArg1(0));
                                return;
                            case 38:
                                C1584a c1584a = this.f6572b;
                                String arg2 = ipcMessage.getArg2(0);
                                C2351a c2351a = c1584a.f5911b;
                                if (c2351a.f8824a != null && (currentInputConnection = c2351a.f8824a.getCurrentInputConnection()) != null) {
                                    currentInputConnection.commitText(arg2, arg2.length());
                                }
                                this.f6573c.m7637a(C1613b.m7204a(38));
                                return;
                            case 39:
                                this.f6572b.m7079b(ipcMessage.getArg2(0));
                                return;
                            case 40:
                                this.f6575e.obtainMessage(16, (int) (ipcMessage.getArg3(0) * 100.0f), ipcMessage.getArg1(0), Integer.valueOf(ipcMessage.getArg1(1))).sendToTarget();
                                return;
                            case 41:
                                this.f6572b.m7085e();
                                return;
                            case 42:
                                this.f6575e.sendEmptyMessage(8);
                                return;
                            case 43:
                                this.f6575e.sendEmptyMessage(9);
                                return;
                            case 44:
                                this.f6575e.obtainMessage(24, Integer.valueOf(ipcMessage.getArg1(0))).sendToTarget();
                                return;
                            default:
                                switch (cmd) {
                                    case 50:
                                        this.f6573c.f6537s.onRpcReturn(ipcMessage.getArg2(0));
                                        return;
                                    case 51:
                                        C1584a.m7069f();
                                        return;
                                    case 52:
                                        C1650d.m7482a(this.f6571a, ipcMessage.getArg2(0), ipcMessage.getArg2(1), ipcMessage.getArg2(2));
                                        return;
                                    case 53:
                                        C1650d.m7481a(this.f6571a, ipcMessage.getArg2(0));
                                        return;
                                    case 54:
                                        C1650d.m7480a(this.f6571a);
                                        return;
                                    case 55:
                                        this.f6572b.m7087g();
                                        return;
                                    case 56:
                                        this.f6572b.m7088h();
                                        return;
                                    case 57:
                                        this.f6572b.m7081c(ipcMessage.getArg1(0));
                                        return;
                                    case 58:
                                        this.f6572b.m7084d(ipcMessage.getArg1(0));
                                        return;
                                    case 59:
                                        this.f6572b.m7086e(ipcMessage.getArg1(0));
                                        return;
                                    default:
                                        switch (cmd) {
                                            case 64:
                                                this.f6575e.obtainMessage(18, ipcMessage.getFileData()).sendToTarget();
                                                return;
                                            case 65:
                                                return;
                                            case 66:
                                                this.f6575e.obtainMessage(6, ipcMessage).sendToTarget();
                                                return;
                                            case 67:
                                                this.f6575e.obtainMessage(7, ipcMessage).sendToTarget();
                                                return;
                                            default:
                                                switch (cmd) {
                                                    case 98:
                                                        this.f6575e.obtainMessage(20, ipcMessage.getArg2(0)).sendToTarget();
                                                        return;
                                                    case 99:
                                                        this.f6575e.obtainMessage(22, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                                                        return;
                                                    case 100:
                                                        String arg22 = ipcMessage.getArg2(0);
                                                        String arg23 = ipcMessage.getArg2(1);
                                                        Log.e("InsertImageToGallery", "InsertImageToGallery:" + arg22 + "|" + arg23);
                                                        File file = new File(arg22);
                                                        if (Build.VERSION.SDK_INT < 29) {
                                                            try {
                                                                MediaStore.Images.Media.insertImage(this.f6571a.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
                                                            } catch (FileNotFoundException e) {
                                                                e.printStackTrace();
                                                            }
                                                        } else {
                                                            ContentValues contentValues = new ContentValues();
                                                            contentValues.put("_display_name", arg23);
                                                            contentValues.put("mime_type", "image/jpeg");
                                                            contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
                                                            ContentResolver contentResolver = this.f6571a.getContentResolver();
                                                            Uri insert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                                                            if (insert == null) {
                                                                Log.e("InsertImageToGallery", "图片保存失败:" + arg22 + "|" + arg23);
                                                                return;
                                                            }
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
                                                        if (Build.VERSION.SDK_INT >= 19) {
                                                            MediaScannerConnection.scanFile(this.f6571a, new String[]{file.getAbsolutePath()}, null, null);
                                                            return;
                                                        }
                                                        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                                                        intent.setData(Uri.fromFile(file));
                                                        this.f6571a.sendBroadcast(intent);
                                                        return;
                                                    case 101:
                                                        String arg24 = ipcMessage.getArg2(0);
                                                        ipcMessage.getArg2(1);
                                                        File file2 = new File(arg24);
                                                        ContentResolver contentResolver2 = this.f6571a.getContentResolver();
                                                        ContentValues contentValues2 = new ContentValues();
                                                        contentValues2.put("title", file2.getName());
                                                        contentValues2.put("_display_name", file2.getName());
                                                        contentValues2.put("mime_type", "video/3gp");
                                                        contentValues2.put("datetaken", Long.valueOf(System.currentTimeMillis()));
                                                        contentValues2.put("date_modified", Long.valueOf(System.currentTimeMillis()));
                                                        contentValues2.put("date_added", Long.valueOf(System.currentTimeMillis()));
                                                        contentValues2.put("_data", file2.getAbsolutePath());
                                                        contentValues2.put("_size", Long.valueOf(file2.length()));
                                                        this.f6571a.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver2.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues2)));
                                                        return;
                                                    case 102:
                                                        String str = "_data like \"" + ipcMessage.getArg2(0) + "%\"";
                                                        this.f6571a.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, str, null);
                                                        this.f6571a.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, str, null);
                                                        return;
                                                    case 103:
                                                        ((WifiManager) this.f6571a.getSystemService("wifi")).setWifiEnabled(ipcMessage.getArg1(0) == 1);
                                                        return;
                                                    case 104:
                                                        Settings.System.putInt(this.f6572b.f5910a.getContentResolver(), "accelerometer_rotation", (ipcMessage.getArg1(0) == 1 ? 1 : 0) ^ 1);
                                                        return;
                                                    case 105:
                                                        ?? r7 = ipcMessage.getArg1(0) != 1 ? 0 : 1;
                                                        C1584a c1584a2 = this.f6572b;
                                                        Settings.System.putInt(c1584a2.f5910a.getContentResolver(), "airplane_mode_on", r7);
                                                        Intent intent2 = new Intent("android.intent.action.AIRPLANE_MODE");
                                                        intent2.putExtra("state", (boolean) r7);
                                                        c1584a2.f5910a.sendBroadcast(intent2);
                                                        return;
                                                    case 106:
                                                        this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(106).addArg2(this.f6572b.m7089i()).build());
                                                        return;
                                                    case 107:
                                                        this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(107).addArg2(this.f6572b.m7083d(ipcMessage.getArg2(0))).build());
                                                        return;
                                                    case 108:
                                                        this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(108).addArg2(this.f6572b.m7090j()).build());
                                                        return;
                                                    case 109:
                                                        String m7673a = m7673a(ipcMessage.getArg2Bytes(0), ipcMessage.getArg1(0), ipcMessage.getArg1(1), ipcMessage.getArg1(2));
                                                        Log.e("GET_OCR_TEXT", "strOrcText:" + m7673a);
                                                        this.f6573c.m7637a(Ipc.IpcMessage.newBuilder().setCmd(109).addArg2(m7673a).build());
                                                        return;
                                                    case 110:
                                                        this.f6575e.obtainMessage(23, ipcMessage).sendToTarget();
                                                        return;
                                                    case 111:
                                                        ipcMessage.getArg1(0);
                                                        this.f6572b.m7091k();
                                                        return;
                                                    case 112:
                                                        m7653a(ipcMessage.getArg2(0), ipcMessage.getArg2(1), ipcMessage.getArg1(0));
                                                        return;
                                                    case 113:
                                                        if (ipcMessage.getArg1(0) == 1) {
                                                            C1681c.m7692a(this.f6571a);
                                                            return;
                                                        }
                                                        return;
                                                    default:
                                                        switch (cmd) {
                                                            case 272:
                                                                Injector.KeyPressAB(ipcMessage.getArg1(0));
                                                                return;
                                                            case 273:
                                                                Injector.dispatchGestureMoveAB(ipcMessage.getArg2(0));
                                                                break;
                                                            case C1612a.f6075aQ /* 274 */:
                                                                break;
                                                            case C1612a.f6076aR /* 275 */:
                                                                Injector.SwipeAB(ipcMessage.getArg3(0), ipcMessage.getArg3(1), ipcMessage.getArg3(2), ipcMessage.getArg3(3), ipcMessage.getArg1(0));
                                                                return;
                                                            case C1612a.f6077aS /* 276 */:
                                                                Injector.TapAB(ipcMessage.getArg3(0), ipcMessage.getArg3(1), ipcMessage.getArg1(0));
                                                                return;
                                                            default:
                                                                switch (cmd) {
                                                                    case 14:
                                                                        C1674a.a aVar = new C1674a.a();
                                                                        aVar.f6509a = ipcMessage.getArg1(0);
                                                                        aVar.f6510b = ipcMessage.getArg1(1);
                                                                        aVar.f6511c = ipcMessage.getArg1(2) != 0;
                                                                        this.f6573c.f6524f = new C1674a(aVar, (byte) 0);
                                                                        new C1676b.AnonymousClass2().start();
                                                                        return;
                                                                    case 19:
                                                                        if (onRecordScriptCallback != null) {
                                                                            onRecordScriptCallback.onOpenRecord();
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 21:
                                                                        int arg12 = ipcMessage.getArg1(0);
                                                                        if (onRecordScriptCallback != null) {
                                                                            onRecordScriptCallback.onStartRecord(arg12);
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 23:
                                                                        String arg25 = ipcMessage.getArg2(0);
                                                                        if (onRecordScriptCallback != null) {
                                                                            onRecordScriptCallback.onFinishRecord(arg25);
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 25:
                                                                        int arg13 = ipcMessage.getArg1(0);
                                                                        int arg14 = ipcMessage.getArg1(1);
                                                                        int arg15 = ipcMessage.getArg1(2);
                                                                        String valueOf2 = String.valueOf((arg13 << 16) | arg14);
                                                                        OnScreenShotCallback onScreenShotCallback = this.f6573c.f6527i;
                                                                        if (arg15 == 0) {
                                                                            this.f6573c.f6522d = false;
                                                                        }
                                                                        if (onScreenShotCallback != null) {
                                                                            onScreenShotCallback.onScreenShotDone(valueOf2, ipcMessage.getFileData());
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 48:
                                                                        Object invoke = Invocator.invoke(ipcMessage.getPkgName(), ipcMessage.getClassName(), ipcMessage.getMethodName(), ipcMessage.getTypesList(), ipcMessage.getParamsList(), 0);
                                                                        new StringBuilder("retObj = ").append(invoke);
                                                                        if (ipcMessage.getIsSyncCall()) {
                                                                            Ipc.FundType type = ipcMessage.getRetValue().getType();
                                                                            Ipc.ReturnValue.Builder type2 = Ipc.ReturnValue.newBuilder().setType(type);
                                                                            Ipc.IpcMessage.Builder waitId = Ipc.IpcMessage.newBuilder().setCmd(ipcMessage.getCmd()).setIsSyncCall(true).setWaitId(ipcMessage.getWaitId());
                                                                            try {
                                                                                switch (type) {
                                                                                    case BOOLEAN:
                                                                                        type2.setValBoolean(((Boolean) invoke).booleanValue());
                                                                                        break;
                                                                                    case INT:
                                                                                        type2.setValInt(((Integer) invoke).intValue());
                                                                                        break;
                                                                                    case LONG:
                                                                                        type2.setValLong(((Long) invoke).longValue());
                                                                                        break;
                                                                                    case FLOAT:
                                                                                        type2.setValFloat(((Float) invoke).floatValue());
                                                                                        break;
                                                                                    case DOUBLE:
                                                                                        type2.setValDouble(((Double) invoke).doubleValue());
                                                                                        break;
                                                                                    case STRING:
                                                                                        type2.setValString(invoke == null ? "" : (String) invoke);
                                                                                        break;
                                                                                }
                                                                            } catch (Throwable th) {
                                                                                th.printStackTrace();
                                                                            }
                                                                            if (type != Ipc.FundType.VOID) {
                                                                                waitId.setRetValue(type2.build());
                                                                            }
                                                                            try {
                                                                                ipcMessage2 = waitId.build();
                                                                            } catch (UninitializedMessageException e3) {
                                                                                e3.printStackTrace();
                                                                                ipcMessage2 = null;
                                                                            }
                                                                            if (ipcMessage2 != null) {
                                                                                this.f6573c.m7637a(ipcMessage2);
                                                                                return;
                                                                            }
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 81:
                                                                        this.f6575e.obtainMessage(21, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                                                                        return;
                                                                    case 96:
                                                                        this.f6575e.obtainMessage(19, ipcMessage.getArg1(0), 0, ipcMessage.getArg2(0)).sendToTarget();
                                                                        return;
                                                                    case C1612a.f6065aG /* 129 */:
                                                                        this.f6575e.obtainMessage(17, ipcMessage.getArg1(0), 0).sendToTarget();
                                                                        return;
                                                                    case 257:
                                                                        OnScriptMessageCallback onScriptMessageCallback2 = this.f6573c.f6528j;
                                                                        if (onScriptMessageCallback2 != null) {
                                                                            onScriptMessageCallback2.onDebugMessage(ipcMessage.getFileData());
                                                                            return;
                                                                        }
                                                                        return;
                                                                    case 65535:
                                                                        this.f6573c.m7639c();
                                                                        return;
                                                                    default:
                                                                        return;
                                                                }
                                                        }
                                                        Injector.sendTextAB(ipcMessage.getArg2(0));
                                                        return;
                                                }
                                        }
                                }
                        }
                }
        }
    }

    /* renamed from: a */
    private void m7651a(String str) {
        this.f6575e.obtainMessage(5, str).sendToTarget();
    }

    /* renamed from: a */
    private void m7652a(String str, String str2) {
        Log.e("InsertImageToGallery", "InsertImageToGallery:" + str + "|" + str2);
        File file = new File(str);
        if (Build.VERSION.SDK_INT < 29) {
            try {
                MediaStore.Images.Media.insertImage(this.f6571a.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
            ContentResolver contentResolver = this.f6571a.getContentResolver();
            Uri insert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (insert == null) {
                Log.e("InsertImageToGallery", "图片保存失败:" + str + "|" + str2);
                return;
            }
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
        if (Build.VERSION.SDK_INT >= 19) {
            MediaScannerConnection.scanFile(this.f6571a, new String[]{file.getAbsolutePath()}, null, null);
            return;
        }
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file));
        this.f6571a.sendBroadcast(intent);
    }

    /* renamed from: a */
    public static void m7653a(String str, String str2, int i) {
        C1852b c1852b;
        C2000b c2000b = new C2000b();
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC1903g.CHARACTER_SET, "utf-8");
        hashMap.put(EnumC1903g.ERROR_CORRECTION, EnumC1995f.M);
        hashMap.put(EnumC1903g.MARGIN, 2);
        try {
            c1852b = c2000b.mo8208a(str2, EnumC1796a.QR_CODE, i, i, hashMap);
        } catch (C2026w e) {
            e.printStackTrace();
            c1852b = null;
        }
        int[] iArr = new int[i * i];
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (c1852b.m8479a(i2, i3)) {
                    iArr[(i2 * i) + i3] = -16777216;
                } else {
                    iArr[(i2 * i) + i3] = -1;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr, i, i, Bitmap.Config.RGB_565);
        if (createBitmap == null) {
            return;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            createBitmap.compress(str.endsWith(".png") ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e2) {
            Log.e("RootIpcDex", "ImageQREnCode IOException" + e2.toString());
        }
    }

    /* renamed from: a */
    private void m7654a(boolean z) {
        ((WifiManager) this.f6571a.getSystemService("wifi")).setWifiEnabled(z);
    }

    /* renamed from: a */
    private boolean m7655a() {
        File file = new File(this.f6571a.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3942aQ);
        File file2 = new File(this.f6571a.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3941aP);
        if (!file.exists() || !file2.exists()) {
            return false;
        }
        this.f6576f = new TessBaseAPI();
        boolean m9444a = this.f6576f.m9444a(this.f6571a.getFilesDir().getAbsolutePath(), "chi_sim+eng");
        Log.d("MqmHandler", "initTessBass: init ret=" + m9444a);
        return m9444a;
    }

    /* renamed from: b */
    private void m7657b() {
        this.f6573c.f6523e = true;
        m7674a(C1696R.string.toast_on_start_script);
        this.f6575e.sendEmptyMessage(2);
    }

    /* renamed from: b */
    private void m7658b(int i) {
        if (i == 1) {
            C1681c.m7692a(this.f6571a);
        }
    }

    /* renamed from: b */
    private void m7659b(Ipc.IpcMessage ipcMessage) {
        C1674a.a aVar = new C1674a.a();
        aVar.f6509a = ipcMessage.getArg1(0);
        aVar.f6510b = ipcMessage.getArg1(1);
        aVar.f6511c = ipcMessage.getArg1(2) != 0;
        this.f6573c.f6524f = new C1674a(aVar, (byte) 0);
    }

    /* renamed from: b */
    private void m7660b(String str) {
        File file = new File(str);
        ContentResolver contentResolver = this.f6571a.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", file.getName());
        contentValues.put("_display_name", file.getName());
        contentValues.put("mime_type", "video/3gp");
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("_data", file.getAbsolutePath());
        contentValues.put("_size", Long.valueOf(file.length()));
        this.f6571a.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues)));
    }

    /* renamed from: c */
    private void m7662c() {
        this.f6575e.sendEmptyMessage(8);
    }

    /* renamed from: c */
    private void m7663c(Ipc.IpcMessage ipcMessage) {
        this.f6572b.m7074a();
        C1584a.m7069f();
        int arg1 = ipcMessage.getArg1(0);
        this.f6573c.f6523e = false;
        if (arg1 == 105 || arg1 == 0) {
            m7674a(C1696R.string.toast_on_stop_script);
        }
        this.f6575e.obtainMessage(3, arg1, 0, ipcMessage.getArg2(0)).sendToTarget();
    }

    /* renamed from: c */
    private void m7664c(String str) {
        String str2 = "_data like \"" + str + "%\"";
        this.f6571a.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, str2, null);
        this.f6571a.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, str2, null);
    }

    /* renamed from: d */
    private void m7665d() {
        this.f6575e.sendEmptyMessage(9);
    }

    /* renamed from: d */
    private void m7666d(Ipc.IpcMessage ipcMessage) {
        OnScriptMessageCallback onScriptMessageCallback = this.f6573c.f6528j;
        if (onScriptMessageCallback != null) {
            onScriptMessageCallback.onTracePrint(ipcMessage.getArg2(0));
        }
    }

    /* renamed from: e */
    private void m7667e() {
        WindowManager windowManager = (WindowManager) this.f6571a.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.densityDpi;
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        String m7082d = this.f6572b.m7082d();
        String m7080c = this.f6572b.m7080c();
        String m7077b = this.f6572b.m7077b();
        String str = this.f6571a.getPackageName() + "/" + InputKb.class.getName();
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        String str2 = UUID.randomUUID().toString() + ".tmp";
        if (m7082d == null) {
            m7082d = "UNKNOW";
        }
        if (m7080c == null) {
            m7080c = "UNKNOW";
        }
        File file = new File(absolutePath, str2);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        Ipc.IpcMessage.Builder cmd = Ipc.IpcMessage.newBuilder().setCmd(14);
        cmd.addArg1(i).addArg1(i2).addArg1(i3).addArg2(m7082d).addArg2(m7080c).addArg2(m7077b).addArg2(str).addArg2(str2).addArg2(absolutePath).addArg2(this.f6571a.getPackageName());
        this.f6573c.m7637a(cmd.build());
    }

    /* renamed from: e */
    private void m7668e(Ipc.IpcMessage ipcMessage) {
        OnScriptMessageCallback onScriptMessageCallback = this.f6573c.f6528j;
        if (onScriptMessageCallback != null) {
            onScriptMessageCallback.onDebugMessage(ipcMessage.getFileData());
        }
    }

    /* renamed from: f */
    private void m7669f() {
        this.f6575e.sendEmptyMessage(10);
    }

    /* renamed from: f */
    private void m7670f(Ipc.IpcMessage ipcMessage) {
        int arg1 = ipcMessage.getArg1(0);
        int arg12 = ipcMessage.getArg1(1);
        int arg13 = ipcMessage.getArg1(2);
        String valueOf = String.valueOf((arg1 << 16) | arg12);
        OnScreenShotCallback onScreenShotCallback = this.f6573c.f6527i;
        if (arg13 == 0) {
            this.f6573c.f6522d = false;
        }
        if (onScreenShotCallback != null) {
            onScreenShotCallback.onScreenShotDone(valueOf, ipcMessage.getFileData());
        }
    }

    /* renamed from: g */
    private void m7671g(Ipc.IpcMessage ipcMessage) {
        String valueOf = String.valueOf((ipcMessage.getArg1(0) << 16) | ipcMessage.getArg1(1));
        OnUiElementCallback onUiElementCallback = this.f6573c.f6534p;
        if (onUiElementCallback != null) {
            onUiElementCallback.onScreenShotDone(valueOf, ipcMessage.getFileData());
        }
    }

    /* renamed from: h */
    private void m7672h(Ipc.IpcMessage ipcMessage) {
        OnUiElementCallback onUiElementCallback = this.f6573c.f6534p;
        if (onUiElementCallback != null) {
            onUiElementCallback.onUiElementback(ipcMessage.getArg2(0));
        }
    }

    /* renamed from: a */
    public final String m7673a(ByteString byteString, int i, int i2, int i3) {
        Log.e("TAG", "GetOrcText: width=" + i + " hight=" + i2 + " size=" + i3);
        byte[] byteArray = byteString.toByteArray();
        int i4 = i3 / 4;
        int[] iArr = new int[i4];
        boolean z = false;
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                iArr[i5] = iArr[i5] + ((byteArray[(i5 * 4) + i6] & 255) << ((3 - i6) * 8));
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        if (!this.f6577g) {
            File file = new File(this.f6571a.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3942aQ);
            File file2 = new File(this.f6571a.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3941aP);
            if (file.exists() && file2.exists()) {
                this.f6576f = new TessBaseAPI();
                z = this.f6576f.m9444a(this.f6571a.getFilesDir().getAbsolutePath(), "chi_sim+eng");
                Log.d("MqmHandler", "initTessBass: init ret=" + z);
            }
            this.f6577g = z;
        }
        if (!this.f6577g) {
            return "";
        }
        this.f6576f.m9443a(createBitmap);
        String m9442a = this.f6576f.m9442a();
        createBitmap.recycle();
        return m9442a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7674a(int i) {
        Message obtainMessage = this.f6575e.obtainMessage(5);
        obtainMessage.arg1 = i;
        obtainMessage.sendToTarget();
    }
}
