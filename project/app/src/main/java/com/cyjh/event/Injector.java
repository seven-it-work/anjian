package com.cyjh.event;

import android.app.Instrumentation;
import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaScannerConnection;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.telephony.TelephonyManager;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import com.cyjh.common.p067b.InterfaceC1133a;
import com.cyjh.event.accessibility.Cservice;
import com.cyjh.mobileanjian.ipc.C1584a;
import com.cyjh.mobileanjian.ipc.interfaces.OnScriptListener;
import com.cyjh.mobileanjian.ipc.p106ui.C1624b;
import com.cyjh.mobileanjian.ipc.p106ui.C1625c;
import com.cyjh.mobileanjian.ipc.p106ui.C1629g;
import com.cyjh.mobileanjian.ipc.p106ui.C1633k;
import com.cyjh.mobileanjian.ipc.p106ui.EnumC1635m;
import com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1631i;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.utils.C1649c;
import com.cyjh.mobileanjian.ipc.utils.C1650d;
import com.cyjh.mobileanjian.ipc.view.C1668b;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.p107a.C1673a;
import com.cyjh.mq.p110d.C1681c;
import com.cyjh.mq.p110d.C1685g;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mq.sdk.MqRunnerLite;
import com.cyjh.mqsdk.C1696R;
import com.github.kevinsawicki.http.HttpRequest;
import com.google.p130a.C2026w;
import com.google.p130a.EnumC1796a;
import com.google.p130a.EnumC1903g;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p158i.C2000b;
import com.google.p130a.p158i.p159a.EnumC1995f;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.googlecode.tesseract.android.TessBaseAPI;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Injector {

    /* renamed from: A */
    private static MotionEvent.PointerCoords[] f5532A = null;

    /* renamed from: a */
    private static final String f5533a = "Injector";

    /* renamed from: b */
    private static Instrumentation f5534b = null;

    /* renamed from: c */
    private static Context f5535c = null;

    /* renamed from: d */
    private static ExToast f5536d = null;

    /* renamed from: e */
    private static C1584a f5537e = null;

    /* renamed from: f */
    private static ViewOnClickListenerC1631i f5538f = null;

    /* renamed from: g */
    private static TessBaseAPI f5539g = null;

    /* renamed from: h */
    private static boolean f5540h = false;

    /* renamed from: i */
    private static boolean f5541i = false;

    /* renamed from: j */
    private static Handler f5542j = new Handler(Looper.getMainLooper()) { // from class: com.cyjh.event.Injector.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Injector.m6632a((C1450b) message.obj);
                    return;
                case 2:
                    Injector.m6636b((C1450b) message.obj);
                    return;
                case 3:
                    Injector.m6640c((C1450b) message.obj);
                    return;
                case 4:
                    Injector.m6643d((C1450b) message.obj);
                    return;
                case 5:
                    Injector.m6635b();
                    return;
                case 6:
                    Injector.m6628a();
                    return;
                case 7:
                    Injector.m6633a((byte[]) message.obj);
                    return;
                case 8:
                    C1450b c1450b = (C1450b) message.obj;
                    if (!MqRunnerLite.getInstance().f6612d) {
                        MqRunner.getInstance();
                        return;
                    }
                    if (MqRunnerLite.getInstance().f6611c != null) {
                        MqRunnerLite.getInstance().f6611c.onCallback(c1450b.f5589a, c1450b.f5592d);
                    }
                    if (MqRunnerLite.getInstance().f6610b != null) {
                        MqRunnerLite.getInstance().f6610b.callback(c1450b.f5589a, c1450b.f5592d);
                        return;
                    }
                    return;
                case 9:
                    Injector.m6645e((C1450b) message.obj);
                    return;
                default:
                    return;
            }
        }
    };

    /* renamed from: k */
    private static final float f5543k = 0.0f;

    /* renamed from: l */
    private static final float f5544l = -1.5707964f;

    /* renamed from: m */
    private static final float f5545m = -3.1415927f;

    /* renamed from: n */
    private static final float f5546n = 1.5707964f;

    /* renamed from: o */
    private static boolean f5547o = false;

    /* renamed from: p */
    private static int f5548p = 0;

    /* renamed from: q */
    private static String f5549q = null;

    /* renamed from: r */
    private static final int f5550r = 1;

    /* renamed from: s */
    private static final int f5551s = 2;

    /* renamed from: t */
    private static final String f5552t = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11";

    /* renamed from: u */
    private static final int f5553u = 5;

    /* renamed from: v */
    private static final int f5554v = 1;

    /* renamed from: w */
    private static final int f5555w = 2;

    /* renamed from: x */
    private static final int f5556x = 3;

    /* renamed from: y */
    private static C1446a[] f5557y;

    /* renamed from: z */
    private static MotionEvent.PointerProperties[] f5558z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.event.Injector$2 */
    /* loaded from: classes.dex */
    public static class C14442 implements C1624b.a {
        C14442() {
        }

        @Override // com.cyjh.mobileanjian.ipc.p106ui.C1624b.a
        /* renamed from: a */
        public final void mo6654a(int i) {
            Injector.setSyncReturnValue(i, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.event.Injector$3 */
    /* loaded from: classes.dex */
    public static class C14453 implements C1625c.a {
        C14453() {
        }

        @Override // com.cyjh.mobileanjian.ipc.p106ui.C1625c.a
        /* renamed from: a */
        public final void mo6655a(String str) {
            Injector.setSyncReturnValue(0, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.event.Injector$a */
    /* loaded from: classes.dex */
    public static class C1446a {

        /* renamed from: a */
        public boolean f5559a;

        /* renamed from: b */
        public int f5560b;

        /* renamed from: c */
        public float f5561c;

        /* renamed from: d */
        public float f5562d;

        private C1446a() {
        }

        /* synthetic */ C1446a(byte b2) {
            this();
        }
    }

    /* renamed from: com.cyjh.event.Injector$b */
    /* loaded from: classes.dex */
    interface InterfaceC1447b {

        /* renamed from: a */
        public static final int f5563a = 1;

        /* renamed from: b */
        public static final int f5564b = 2;

        /* renamed from: c */
        public static final int f5565c = 3;

        /* renamed from: d */
        public static final int f5566d = 4;

        /* renamed from: e */
        public static final int f5567e = 5;

        /* renamed from: f */
        public static final int f5568f = 6;

        /* renamed from: g */
        public static final int f5569g = 7;

        /* renamed from: h */
        public static final int f5570h = 8;

        /* renamed from: i */
        public static final int f5571i = 9;
    }

    private Injector() {
    }

    public static void AddContact(String str, String str2, String str3) {
        C1650d.m7482a(f5535c, str, str2, str3);
    }

    public static void ClearAllPhotos() {
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
        File[] listFiles = new File(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                file.delete();
            }
        }
        String str2 = "_data like \"" + str + "%\"";
        f5535c.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, str2, null);
        f5535c.getContentResolver().delete(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, str2, null);
    }

    public static void ClearCaches(String str) {
    }

    public static void ClearContacts() {
        C1650d.m7480a(f5535c);
    }

    public static void DeleteContact(String str) {
        C1650d.m7481a(f5535c, str);
    }

    public static void FloatEventThreadExit() {
        C1451c.m6693e();
        Log.e(f5533a, "FloatEventThreadExit: ");
    }

    public static void FreeupMemory() {
        f5537e.m7085e();
    }

    public static String GetAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String GetAppPath(String str) {
        try {
            return f5535c.getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String GetDeviceID() {
        Context applicationContext = C1673a.f6502g.getApplicationContext();
        String deviceId = ((TelephonyManager) applicationContext.getSystemService("phone")).getDeviceId();
        if (deviceId == null || deviceId.equals("")) {
            deviceId = C1685g.m7710a(applicationContext);
        }
        return TextUtils.isEmpty(deviceId) ? C1685g.m7710a(C1673a.f6502g.getApplicationContext()) : deviceId;
    }

    public static String GetDeviceName() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && !TextUtils.isEmpty(defaultAdapter.getName())) {
                return defaultAdapter.getName();
            }
        } catch (Exception unused) {
        }
        return Build.MODEL;
    }

    public static int GetDisplayDpi() {
        return f5535c.getResources().getDisplayMetrics().densityDpi;
    }

    public static byte[] GetFloatEvent() {
        Log.e(f5533a, "GetFloatEvent: ");
        ByteString m6692d = C1451c.m6692d();
        if (m6692d == null) {
            return null;
        }
        return m6692d.toByteArray();
    }

    public static String GetForegroundPackage() {
        return MqRunnerLite.getInstance().f6613e != null ? MqRunnerLite.getInstance().f6613e.getForegroundPackage() : "";
    }

    public static String GetFullUiElement() {
        return "";
    }

    public static String GetNetType() {
        return f5537e.m7089i();
    }

    public static String GetRunningApp() {
        return MqRunnerLite.getInstance().f6613e.getRunningPackages();
    }

    public static int GetScreenRotation() {
        return ((WindowManager) C1673a.f6502g.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static String GetSdcardDir() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static float GetTapRotation() {
        switch (GetScreenRotation()) {
            case 0:
                Log.e(f5533a, "Tap Tap ROTATION_0");
                return 0.0f;
            case 1:
                Log.e(f5533a, "Tap Tap ROTATION_90");
                return f5544l;
            case 2:
                Log.e(f5533a, "Tap Tap ROTATION_180");
                return f5545m;
            case 3:
                Log.e(f5533a, "Tap Tap ROTATION_270");
                return f5546n;
            default:
                return 0.0f;
        }
    }

    public static String GetUiElement() {
        return "";
    }

    public static byte[] GetUiEvent() {
        return C1451c.m6689b();
    }

    public static boolean GetVPNStatus() {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                NetworkInterface networkInterface = (NetworkInterface) it.next();
                if (networkInterface.isUp()) {
                    String name = networkInterface.getName();
                    Log.e("GetVPNStatus", "GetVPNStatus name:" + networkInterface.getName());
                    if (name.contains("tun") || name.contains("ppp") || name.contains("pptp")) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String GetVersion() {
        return "10_1661";
    }

    public static String GetWebViewElement(String str) {
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String ImageQRDeCode(java.lang.String r12) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            com.google.a.e r1 = com.google.p130a.EnumC1891e.CHARACTER_SET
            java.lang.String r2 = "utf-8"
            r0.put(r1, r2)
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            r2.<init>(r12)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            android.graphics.Bitmap r12 = android.graphics.BitmapFactory.decodeStream(r2)     // Catch: java.lang.Exception -> L20 java.lang.Throwable -> L9f
            r2.close()     // Catch: java.io.IOException -> L1a
            goto L1e
        L1a:
            r2 = move-exception
            r2.printStackTrace()
        L1e:
            r2 = r12
            goto L35
        L20:
            r12 = move-exception
            goto L27
        L22:
            r12 = move-exception
            goto La1
        L25:
            r12 = move-exception
            r2 = r1
        L27:
            r12.printStackTrace()     // Catch: java.lang.Throwable -> L9f
            if (r2 == 0) goto L34
            r2.close()     // Catch: java.io.IOException -> L30
            goto L34
        L30:
            r12 = move-exception
            r12.printStackTrace()
        L34:
            r2 = r1
        L35:
            int r12 = r2.getWidth()     // Catch: java.lang.Exception -> L7d
            int r10 = r2.getHeight()     // Catch: java.lang.Exception -> L7d
            int r3 = r12 * r10
            int[] r11 = new int[r3]     // Catch: java.lang.Exception -> L7d
            r4 = 0
            r6 = 0
            r7 = 0
            r3 = r11
            r5 = r12
            r8 = r12
            r9 = r10
            r2.getPixels(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L7d
            com.google.a.o r2 = new com.google.a.o     // Catch: java.lang.Exception -> L7d
            r2.<init>(r12, r10, r11)     // Catch: java.lang.Exception -> L7d
            com.google.a.k r12 = new com.google.a.k     // Catch: java.lang.Exception -> L7b
            r12.<init>()     // Catch: java.lang.Exception -> L7b
            com.google.a.c r3 = new com.google.a.c     // Catch: java.lang.Exception -> L7b
            com.google.a.c.j r4 = new com.google.a.c.j     // Catch: java.lang.Exception -> L7b
            r4.<init>(r2)     // Catch: java.lang.Exception -> L7b
            r3.<init>(r4)     // Catch: java.lang.Exception -> L7b
            com.google.a.r r12 = r12.mo8181a(r3, r0)     // Catch: java.lang.Exception -> L7b
            java.lang.String r3 = "RootIpcFramework"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7b
            java.lang.String r5 = "syncDecodeQRCode: result is:"
            r4.<init>(r5)     // Catch: java.lang.Exception -> L7b
            java.lang.String r5 = r12.f7894a     // Catch: java.lang.Exception -> L7b
            r4.append(r5)     // Catch: java.lang.Exception -> L7b
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L7b
            android.util.Log.i(r3, r4)     // Catch: java.lang.Exception -> L7b
            java.lang.String r12 = r12.f7894a     // Catch: java.lang.Exception -> L7b
            return r12
        L7b:
            r12 = move-exception
            goto L7f
        L7d:
            r12 = move-exception
            r2 = r1
        L7f:
            r12.printStackTrace()
            if (r2 == 0) goto L9e
            com.google.a.k r12 = new com.google.a.k     // Catch: java.lang.Throwable -> L9a
            r12.<init>()     // Catch: java.lang.Throwable -> L9a
            com.google.a.c r3 = new com.google.a.c     // Catch: java.lang.Throwable -> L9a
            com.google.a.c.h r4 = new com.google.a.c.h     // Catch: java.lang.Throwable -> L9a
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L9a
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L9a
            com.google.a.r r12 = r12.mo8181a(r3, r0)     // Catch: java.lang.Throwable -> L9a
            java.lang.String r12 = r12.f7894a     // Catch: java.lang.Throwable -> L9a
            return r12
        L9a:
            r12 = move-exception
            r12.printStackTrace()
        L9e:
            return r1
        L9f:
            r12 = move-exception
            r1 = r2
        La1:
            if (r1 == 0) goto Lab
            r1.close()     // Catch: java.io.IOException -> La7
            goto Lab
        La7:
            r0 = move-exception
            r0.printStackTrace()
        Lab:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.event.Injector.ImageQRDeCode(java.lang.String):java.lang.String");
    }

    public static void ImageQREnCode(String str, String str2, int i) {
        C1852b c1852b;
        C2000b c2000b = new C2000b();
        HashMap hashMap = new HashMap();
        hashMap.put(EnumC1903g.CHARACTER_SET, "utf-8");
        hashMap.put(EnumC1903g.ERROR_CORRECTION, EnumC1995f.M);
        hashMap.put(EnumC1903g.MARGIN, 2);
        try {
            c1852b = c2000b.mo8208a(str2, EnumC1796a.QR_CODE, 400, 400, hashMap);
        } catch (C2026w e) {
            e.printStackTrace();
            c1852b = null;
        }
        int[] iArr = new int[160000];
        for (int i2 = 0; i2 < 400; i2++) {
            for (int i3 = 0; i3 < 400; i3++) {
                if (c1852b.m8479a(i2, i3)) {
                    iArr[(i2 * 400) + i3] = -16777216;
                } else {
                    iArr[(i2 * 400) + i3] = -1;
                }
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(iArr, 400, 400, Bitmap.Config.RGB_565);
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
            Log.e("RootIpcFramework", "ImageQREnCode IOException" + e2.toString());
        }
    }

    public static int InjectWebViewElement(String str, String str2) {
        return 0;
    }

    public static void InsertImageToGallery(String str, int i) {
        File file = new File(str);
        if (file.exists()) {
            if (i == 1) {
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.mkdir();
                }
                File file3 = new File(str2 + file.getName());
                if (file3.exists()) {
                    file3.delete();
                }
                try {
                    FileUtils.copyFile(file, file3);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                file = file3;
            }
            if (Build.VERSION.SDK_INT < 29) {
                try {
                    MediaStore.Images.Media.insertImage(f5535c.getContentResolver(), file.getAbsolutePath(), file.getName(), (String) null);
                } catch (FileNotFoundException e2) {
                    e2.printStackTrace();
                }
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", file.getName());
                contentValues.put("mime_type", "image/jpeg");
                contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
                ContentResolver contentResolver = f5535c.getContentResolver();
                Uri insert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (insert == null) {
                    Log.e("InsertImageToGallery", "图片保存失败:" + str + "|" + file.getName());
                    return;
                }
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                    android.os.FileUtils.copy(bufferedInputStream, openOutputStream);
                    bufferedInputStream.close();
                    openOutputStream.close();
                    file.delete();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            if (Build.VERSION.SDK_INT >= 19) {
                MediaScannerConnection.scanFile(f5535c, new String[]{file.getAbsolutePath()}, null, null);
                return;
            }
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            f5535c.sendBroadcast(intent);
        }
    }

    public static void InsertVideoToGallery(String str) {
        File file = new File(str);
        if (file.exists()) {
            String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/DCIM/anjian/";
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdir();
            }
            File file3 = new File(str2 + file.getName());
            if (file3.exists()) {
                file3.delete();
            }
            try {
                FileUtils.copyFile(file, file3);
            } catch (IOException e) {
                e.printStackTrace();
            }
            long currentTimeMillis = System.currentTimeMillis();
            ContentResolver contentResolver = f5535c.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", file3.getName());
            contentValues.put("_display_name", file3.getName());
            contentValues.put("mime_type", "video/3gp");
            contentValues.put("datetaken", Long.valueOf(currentTimeMillis));
            contentValues.put("date_modified", Long.valueOf(currentTimeMillis));
            contentValues.put("date_added", Long.valueOf(currentTimeMillis));
            contentValues.put("_data", file3.getAbsolutePath());
            contentValues.put("_size", Long.valueOf(file3.length()));
            f5535c.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues)));
        }
    }

    public static boolean Is64Bit() {
        Class<?> cls;
        Method declaredMethod;
        Object invoke;
        Method declaredMethod2;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (Build.VERSION.SDK_INT < 21 || (cls = Class.forName("dalvik.system.VMRuntime")) == null || (declaredMethod = cls.getDeclaredMethod("getRuntime", new Class[0])) == null || (invoke = declaredMethod.invoke(null, new Object[0])) == null || (declaredMethod2 = cls.getDeclaredMethod("is64Bit", new Class[0])) == null) {
            return false;
        }
        Object invoke2 = declaredMethod2.invoke(invoke, new Object[0]);
        if (invoke2 instanceof Boolean) {
            return ((Boolean) invoke2).booleanValue();
        }
        return false;
    }

    public static boolean IsRoot() {
        String str = System.getenv("PATH");
        new ArrayList();
        for (String str2 : str.split(":")) {
            File file = new File(str2, "su");
            if (file.exists() && file.canExecute()) {
                return true;
            }
        }
        return false;
    }

    public static void KeepScreen(boolean z) {
        f5537e.m7078b(z ? 10 : 0);
    }

    public static void KeyDown(int i) {
        try {
            m6644e().sendKeySync(new KeyEvent(0, i));
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void KeyPress(int i) {
        if (f5541i) {
            KeyPressAB(i);
        } else if (MqRunnerLite.getInstance().f6613e != null) {
            MqRunnerLite.getInstance().f6613e.keyPress(i);
        }
    }

    public static void KeyPressAB(int i) {
        int i2;
        if (Cservice.m6666a()) {
            Cservice cservice = Cservice.f5574a;
            Context context = f5535c;
            if (Build.VERSION.SDK_INT >= 16) {
                if (i != 26) {
                    switch (i) {
                        case 3:
                            i2 = 2;
                            break;
                        case 4:
                            i2 = 1;
                            break;
                        default:
                            if (Cservice.m6660a(i).isEmpty()) {
                                return;
                            }
                            cservice.m6674a(Cservice.m6660a(i), context);
                            return;
                    }
                } else {
                    i2 = 6;
                }
                cservice.performGlobalAction(i2);
            }
        }
    }

    public static void KeyUp(int i) {
        try {
            m6644e().sendKeySync(new KeyEvent(1, i));
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void KillApp(String str) {
        if (MqRunnerLite.getInstance().f6613e != null) {
            MqRunnerLite.getInstance().f6613e.killApp(str);
        }
    }

    public static void LockScreen() {
        f5537e.m7087g();
    }

    public static void MoveZoomIn(float f, float f2, float f3, float f4, int i) {
        Log.e("RootIpcFramework", "MoveZoomIn");
        float f5 = (f + f3) / 2.0f;
        float f6 = (f2 + f4) / 2.0f;
        TouchDown(10123, f5, f6);
        TouchDown(10124, f5, f6);
        int i2 = i / 11;
        if (i2 < 10) {
            i2 = 10;
        }
        float f7 = (f - f5) / 11.0f;
        float f8 = (f2 - f6) / 11.0f;
        float f9 = (f3 - f5) / 11.0f;
        float f10 = (f4 - f6) / 11.0f;
        try {
            Thread.sleep(20L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        float f11 = f5;
        float f12 = f6;
        float f13 = f12;
        float f14 = f11;
        for (int i3 = 0; i3 < 11; i3++) {
            f14 += f7;
            f12 += f8;
            f11 += f9;
            f13 += f10;
            TouchMoveEvent(10123, f14, f12, 0);
            TouchMoveEvent(10124, f11, f13, 0);
            try {
                Thread.sleep(i2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        TouchUp(10123);
        TouchUp(10124);
    }

    public static void MoveZoomOut(float f, float f2, float f3, float f4, int i) {
        Log.e("RootIpcFramework", "MoveZoomOut");
        float f5 = (f + f3) / 2.0f;
        float f6 = (f2 + f4) / 2.0f;
        TouchDown(10125, f, f2);
        TouchDown(10126, f3, f4);
        int i2 = i / 11;
        if (i2 < 10) {
            i2 = 10;
        }
        float f7 = (f5 - f) / 11.0f;
        float f8 = (f6 - f2) / 11.0f;
        float f9 = (f5 - f3) / 11.0f;
        float f10 = (f6 - f4) / 11.0f;
        try {
            Thread.sleep(20L);
        } catch (Exception e) {
            e.printStackTrace();
        }
        float f11 = f4;
        float f12 = f3;
        float f13 = f2;
        float f14 = f;
        for (int i3 = 0; i3 < 11; i3++) {
            f14 += f7;
            f13 += f8;
            f12 += f9;
            f11 += f10;
            TouchMoveEvent(10125, f14, f13, 0);
            TouchMoveEvent(10126, f12, f11, 0);
            try {
                Thread.sleep(i2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        TouchUp(10125);
        TouchUp(10126);
    }

    public static void NotifyApp(String str) {
        if (MqRunnerLite.getInstance().f6614f != null) {
            MqRunnerLite.getInstance().f6614f.callback(str);
        }
    }

    public static String OcrText(byte[] bArr, int i, int i2, int i3) {
        Log.e("TAG", "GetOrcText: width=" + i2 + " hight=" + i3 + " size=" + i);
        if (!f5540h) {
            f5540h = initTessBass();
        }
        if (!f5540h) {
            return "";
        }
        int i4 = i / 4;
        int[] iArr = new int[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < 4; i6++) {
                iArr[i5] = iArr[i5] + ((bArr[(i5 * 4) + i6] & 255) << ((3 - i6) * 8));
            }
        }
        f5539g.m9443a(Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888));
        return f5539g.m9442a();
    }

    public static void OnElfCallback(int i, String str) {
        C1450b c1450b = new C1450b();
        c1450b.f5589a = i;
        c1450b.f5592d = str;
        m6631a(8, c1450b);
    }

    public static void OnPause() {
        f5542j.sendEmptyMessage(6);
    }

    public static void OnResponse(int i, String str) {
        C1450b c1450b = new C1450b();
        c1450b.f5589a = i;
        c1450b.f5592d = str;
        m6631a(8, c1450b);
    }

    public static void OnResume() {
        f5542j.sendEmptyMessage(5);
    }

    public static void PlaySound(String str) {
        C1584a.m7067c(str);
    }

    public static void RandomTap(float f, float f2, int i, String str) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            StringBuilder sb = new StringBuilder("RandomTap：x=");
            sb.append(f);
            sb.append(",y = ");
            sb.append(f2);
            sb.append(",random = ");
            sb.append(i);
            double d = i;
            float random = f + ((int) ((Math.random() * d) - (i / 2)));
            float random2 = f2 + ((int) ((Math.random() * d) - (i / 2)));
            StringBuilder sb2 = new StringBuilder("RandomTap：realX=");
            sb2.append(random);
            sb2.append(",realY = ");
            sb2.append(random2);
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoords.x = random;
            pointerCoords.y = random2;
            pointerCoords.orientation = GetTapRotation();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, 0, 0, 0, 0));
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, 0, 0, 0, 0));
            new C1668b(f5535c).m7553a((int) random, (int) random2, str);
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void RandomsTap(float f, float f2, int i, String str) {
        float f3;
        StringBuilder sb = new StringBuilder("RandomsTap：x=");
        sb.append(f);
        sb.append(",y = ");
        sb.append(f2);
        sb.append(",random = ");
        sb.append(i);
        double d = i;
        double d2 = i / 2;
        float random = f + ((int) ((Math.random() * d) - d2));
        float random2 = f2 + ((int) ((Math.random() * d) - d2));
        StringBuilder sb2 = new StringBuilder("RandomTap：x2=");
        sb2.append(random);
        sb2.append(",y2 = ");
        sb2.append(random2);
        long uptimeMillis = SystemClock.uptimeMillis();
        m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, f, f2, 0));
        try {
            long uptimeMillis2 = SystemClock.uptimeMillis();
            f3 = random;
            try {
                m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis2, uptimeMillis2, 2, random, random2, 0));
                Thread.sleep(20L);
            } catch (InterruptedException e) {
                e = e;
                e.printStackTrace();
                long uptimeMillis3 = SystemClock.uptimeMillis();
                m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis3, uptimeMillis3, 1, f3, random2, 0));
                new C1668b(f5535c).m7553a((int) f3, (int) random2, str);
            }
        } catch (InterruptedException e2) {
            e = e2;
            f3 = random;
        }
        long uptimeMillis32 = SystemClock.uptimeMillis();
        m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis32, uptimeMillis32, 1, f3, random2, 0));
        new C1668b(f5535c).m7553a((int) f3, (int) random2, str);
    }

    public static void RunApp(String str, String str2) {
        if (MqRunnerLite.getInstance().f6613e != null) {
            MqRunnerLite.getInstance().f6613e.launchApp(str);
        }
    }

    public static void SaveSnapShot(int[] iArr, int i, int i2, int i3, String str, int i4) {
        Bitmap createBitmap = Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888);
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
            createBitmap.compress(Bitmap.CompressFormat.JPEG, i4, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("RootIpcFramework", "SaveSnapShot IOException" + e.toString());
        }
    }

    public static boolean SendSimpleEmail(String str, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str6)) {
            return false;
        }
        SimpleEmail simpleEmail = new SimpleEmail();
        simpleEmail.setHostName(str);
        simpleEmail.setSmtpPort(465);
        simpleEmail.setAuthentication(str2, str3);
        simpleEmail.setSSLOnConnect(true);
        try {
            simpleEmail.setFrom(str2);
            simpleEmail.setSubject(str4);
            simpleEmail.setMsg(str5);
            for (String str7 : str6.split(";")) {
                simpleEmail.addTo(str7.trim());
            }
            simpleEmail.send();
            return true;
        } catch (EmailException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static byte[] SendUiRequest(byte[] bArr) {
        f5542j.obtainMessage(7, bArr).sendToTarget();
        return C1451c.m6687a();
    }

    public static int SetAirplaneMode(boolean z) {
        return -1;
    }

    public static void SetAutoLockTime(int i) {
        f5537e.m7081c(i);
    }

    public static void SetBTEnable(boolean z) {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (z) {
            defaultAdapter.enable();
        } else {
            defaultAdapter.disable();
        }
    }

    public static void SetBacklightLevel(int i) {
        if (i > 100) {
            i = 100;
        }
        f5537e.m7084d(i);
    }

    public static void SetCaptureScreenMode(int i) {
        if (i == 1) {
            C1681c.m7692a(f5535c);
        }
    }

    public static void SetCellularDataEnable(boolean z) {
        ConnectivityManager connectivityManager = (ConnectivityManager) f5535c.getSystemService("connectivity");
        try {
            connectivityManager.getClass().getMethod("setMobileDataEnabled", Boolean.TYPE).invoke(connectivityManager, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void SetControlBarPos(float f, int i, int i2) {
        C1450b c1450b = new C1450b();
        c1450b.f5593e = f;
        c1450b.f5589a = i;
        c1450b.f5590b = i2;
        m6631a(4, c1450b);
    }

    public static void SetControlBarVisiable(boolean z) {
        C1450b c1450b = new C1450b();
        c1450b.f5589a = z ? 1 : 0;
        m6631a(9, c1450b);
    }

    public static void SetIsAccessibility(boolean z) {
        f5541i = z;
    }

    public static void SetRotationLockEnable(boolean z) {
        Settings.System.putInt(f5535c.getContentResolver(), "accelerometer_rotation", !z ? 1 : 0);
    }

    public static void SetVPNEnable(boolean z) {
        f5537e.m7091k();
    }

    public static void SetVolumeLevel(int i) {
        if (i > 100) {
            i = 100;
        }
        f5537e.m7086e(i);
    }

    public static void SetWifiEnable(boolean z) {
        ((WifiManager) f5535c.getSystemService("wifi")).setWifiEnabled(z);
    }

    public static String ShowInputDialog(String str, int i, int i2) {
        f5547o = false;
        C1450b c1450b = new C1450b();
        c1450b.f5589a = i;
        c1450b.f5590b = i2;
        c1450b.f5592d = str;
        m6631a(3, c1450b);
        while (!f5547o) {
            try {
                TimeUnit.MILLISECONDS.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        new StringBuilder("InputDialog typed text: ").append(f5549q);
        return f5549q;
    }

    public static void ShowMessage(String str, int i, int i2, int i3) {
        C1450b c1450b = new C1450b();
        c1450b.f5589a = i2;
        c1450b.f5590b = i3;
        c1450b.f5591c = i;
        c1450b.f5592d = str;
        m6631a(1, c1450b);
    }

    public static int ShowMsgBox(String str, int i, int i2, int i3) {
        f5547o = false;
        C1450b c1450b = new C1450b();
        c1450b.f5589a = i;
        c1450b.f5590b = i2;
        c1450b.f5591c = i3;
        c1450b.f5592d = str;
        m6631a(2, c1450b);
        while (!f5547o) {
            try {
                TimeUnit.MILLISECONDS.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return f5548p;
    }

    public static void SpecialFunction(int i, String str) {
        StringBuilder sb = new StringBuilder("SpecialFunction   ");
        sb.append(i);
        sb.append(", ");
        sb.append(str);
        if (MqRunnerLite.getInstance().f6613e != null) {
            MqRunnerLite.getInstance().f6613e.doSpecialFuction(i, str);
        }
    }

    public static void StopPlay() {
        C1584a.m7069f();
    }

    public static void StopScript() {
    }

    public static void Swipe(float f, float f2, float f3, float f4, int i) {
        if (f5541i) {
            SwipeAB(f, f2, f3, f4, i);
            return;
        }
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, f, f2, 0));
            int i2 = i / 11;
            for (int i3 = 1; i3 <= 11; i3++) {
                try {
                    long uptimeMillis2 = SystemClock.uptimeMillis();
                    float f5 = i3 / 11.0f;
                    m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis2, uptimeMillis2, 2, ((f3 - f) * f5) + f, ((f4 - f2) * f5) + f2, 0));
                    if (i2 != 0) {
                        Thread.sleep(i2);
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            long uptimeMillis3 = SystemClock.uptimeMillis();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis3, uptimeMillis3, 1, f3, f4, 0));
        } catch (Throwable th) {
            th.toString();
        }
    }

    @RequiresApi(api = 24)
    public static void SwipeAB(float f, float f2, float f3, float f4, int i) {
        if (i <= 10) {
            i = 10;
        }
        Log.e(f5533a, "SwipeABSwipeABSwipeAB1");
        if (Cservice.m6666a()) {
            Log.e(f5533a, "SwipeABSwipeABSwipeAB2");
            Cservice cservice = Cservice.f5574a;
            Path path = new Path();
            path.moveTo((int) f, (int) f2);
            path.lineTo((int) f3, (int) f4);
            cservice.m6673a(path, i);
        }
    }

    public static void Tap(float f, float f2, int i) {
        StringBuilder sb = new StringBuilder("Tap1：x=");
        sb.append(f);
        sb.append(",y = ");
        sb.append(f2);
        sb.append(",delay = ");
        sb.append(i);
        if (f5541i) {
            TapAB(f, f2, i);
            return;
        }
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoords.x = f;
            pointerCoords.y = f2;
            pointerCoords.orientation = GetTapRotation();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, 0, 0, 0, 0));
            StringBuilder sb2 = new StringBuilder("Tap2 ：x=");
            sb2.append(f);
            sb2.append(",y = ");
            sb2.append(f2);
            sb2.append(",delay = ");
            sb2.append(i);
            if (i != 0) {
                try {
                    Thread.sleep(i);
                } catch (Exception unused) {
                }
            }
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, 1, new int[]{0}, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0.0f, 0.0f, 0, 0, 0, 0));
            StringBuilder sb3 = new StringBuilder("Tap3 ：x=");
            sb3.append(f);
            sb3.append(",y = ");
            sb3.append(f2);
            sb3.append(",delay = ");
            sb3.append(i);
        } catch (Throwable th) {
            th.toString();
        }
    }

    @RequiresApi(api = 24)
    public static void TapAB(float f, float f2, int i) {
        if (i <= 10) {
            i = 10;
        }
        StringBuilder sb = new StringBuilder("TapAB (");
        sb.append(f);
        sb.append(",");
        sb.append(f2);
        sb.append(")");
        if (Cservice.m6666a()) {
            StringBuilder sb2 = new StringBuilder("TapAB (");
            sb2.append(f);
            sb2.append(",");
            sb2.append(f2);
            sb2.append(")");
            Cservice.f5574a.m6672a((int) f, (int) f2, i);
        }
    }

    public static void TouchDown(int i, float f, float f2) {
        try {
            if (f5557y == null) {
                f5557y = new C1446a[5];
                byte b2 = 0;
                for (int i2 = 0; i2 < 5; i2++) {
                    C1446a c1446a = new C1446a(b2);
                    c1446a.f5559a = true;
                    c1446a.f5560b = 0;
                    c1446a.f5561c = 0.0f;
                    c1446a.f5562d = 0.0f;
                    f5557y[i2] = c1446a;
                }
            }
            if (m6648g() >= 5) {
                return;
            }
            m6630a(i, f, f2);
            long uptimeMillis = SystemClock.uptimeMillis();
            int m6626a = m6626a(i, 1);
            int m6648g = m6648g();
            m6650h();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, m6626a, m6648g, f5558z, f5532A, 0, 0, 0.0f, 0.0f, 0, 0, 0, 0));
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void TouchMove(int i, float f, float f2, int i2) {
        C1446a m6634b;
        try {
            if (f5557y == null || (m6634b = m6634b(i)) == null) {
                return;
            }
            float f3 = m6634b.f5561c;
            float f4 = m6634b.f5562d;
            int i3 = 11;
            if (i2 <= 200) {
                float f5 = f3 - f;
                float f6 = f4 - f2;
                double sqrt = Math.sqrt((f5 * f5) + (f6 * f6));
                double min = Math.min(C1673a.f6502g.getApplicationContext().getResources().getDisplayMetrics().widthPixels, C1673a.f6502g.getApplicationContext().getResources().getDisplayMetrics().heightPixels);
                if (!(2.0d * sqrt > min)) {
                    i3 = ((int) ((sqrt * 20.0d) / min)) + 1;
                }
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            for (int i4 = 1; i4 <= i3; i4++) {
                long uptimeMillis2 = SystemClock.uptimeMillis();
                float f7 = i4 / i3;
                m6630a(i, ((f - f3) * f7) + f3, ((f2 - f4) * f7) + f4);
                int m6626a = m6626a(i, 2);
                int m6648g = m6648g();
                m6650h();
                m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis2, uptimeMillis2, m6626a, m6648g, f5558z, f5532A, 0, 0, 0.0f, 0.0f, 0, 0, 0, 0));
                if (i2 != 0) {
                    long uptimeMillis3 = (i2 - (SystemClock.uptimeMillis() - uptimeMillis)) / ((i3 + 1) - i4);
                    if (uptimeMillis3 >= 10) {
                        Thread.sleep(uptimeMillis3);
                    }
                }
            }
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void TouchMoveEvent(int i, float f, float f2, int i2) {
        try {
            if (f5557y == null || m6634b(i) == null) {
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            m6630a(i, f, f2);
            int m6626a = m6626a(i, 2);
            int m6648g = m6648g();
            m6650h();
            if (i2 > 10) {
                Thread.sleep((long) (i2 - 15));
            }
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, m6626a, m6648g, f5558z, f5532A, 0, 0, 0.0f, 0.0f, 0, 0, 0, 0));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void TouchUp(int i) {
        try {
            if (f5557y == null || m6634b(i) == null) {
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            int m6626a = m6626a(i, 3);
            int m6648g = m6648g();
            m6650h();
            m6644e().sendPointerSync(MotionEvent.obtain(uptimeMillis, uptimeMillis, m6626a, m6648g, f5558z, f5532A, 0, 0, 0.0f, 0.0f, 0, 0, 0, 0));
            for (int i2 = 0; i2 < 5; i2++) {
                if (i == f5557y[i2].f5560b) {
                    f5557y[i2].f5559a = true;
                    f5557y[i2].f5560b = 0;
                    f5557y[i2].f5561c = 0.0f;
                    f5557y[i2].f5562d = 0.0f;
                }
            }
        } catch (Throwable th) {
            th.toString();
        }
    }

    public static void TracePrint(String str) {
    }

    public static int UninstallApp(String str, String str2) {
        return -1;
    }

    public static void UnlockScreen() {
        f5537e.m7088h();
    }

    public static String UrlRequest(int i, String str, String str2, int i2) {
        if (i2 <= 0) {
            i2 = 5;
        }
        try {
            if (i == 1) {
                int i3 = i2 * 1000;
                String body = HttpRequest.get(m6627a(str)).connectTimeout(i3).readTimeout(i3).useCaches(false).body();
                return body == null ? "" : body;
            }
            if (i != 2) {
                return "";
            }
            int i4 = i2 * 1000;
            String body2 = new HttpRequest(str, "POST").header("User-Agent", f5552t).followRedirects(false).connectTimeout(i4).readTimeout(i4).useCaches(false).send(str2).body();
            return body2 == null ? "" : body2;
        } catch (HttpRequest.HttpRequestException unused) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01fb A[Catch: IOException -> 0x01c0, TRY_ENTER, TryCatch #4 {IOException -> 0x01c0, blocks: (B:49:0x01bc, B:51:0x01c5, B:60:0x01fb, B:62:0x0200), top: B:2:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0200 A[Catch: IOException -> 0x01c0, TRY_LEAVE, TryCatch #4 {IOException -> 0x01c0, blocks: (B:49:0x01bc, B:51:0x01c5, B:60:0x01fb, B:62:0x0200), top: B:2:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0224 A[Catch: IOException -> 0x021f, TRY_LEAVE, TryCatch #3 {IOException -> 0x021f, blocks: (B:77:0x021b, B:68:0x0224), top: B:76:0x021b }] */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String UrlRequestEx(int r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.event.Injector.UrlRequestEx(int, java.lang.String):java.lang.String");
    }

    public static void Vibrate(int i) {
        f5537e.m7075a(i);
    }

    /* renamed from: a */
    private static final float m6625a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    /* renamed from: a */
    private static int m6626a(int i, int i2) {
        int m6648g = m6648g();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= 5) {
                i4 = -1;
                break;
            }
            if (!f5557y[i4].f5559a && f5557y[i4].f5560b == i) {
                break;
            }
            i4++;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            if (!f5557y[i6].f5559a) {
                i5++;
            }
        }
        switch (i2) {
            case 1:
                if (1 != m6648g) {
                    i3 = (i5 * 256) + 5;
                    break;
                }
                break;
            case 2:
                if (1 == m6648g) {
                    i3 = 2;
                    break;
                } else {
                    i3 = (i5 * 256) + 2;
                    break;
                }
            case 3:
                if (1 == m6648g) {
                    i3 = 1;
                    break;
                } else {
                    i3 = (i5 * 256) + 6;
                    break;
                }
        }
        StringBuilder sb = new StringBuilder("injector>>>>>>touchType:");
        sb.append(i2);
        sb.append("action:");
        sb.append(i3);
        sb.append("---pointerNum:");
        sb.append(m6648g);
        sb.append("---pointerId:");
        sb.append(i5);
        return i3;
    }

    /* renamed from: a */
    private static String m6627a(String str) {
        try {
            Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
            while (matcher.find()) {
                String group = matcher.group();
                str = str.replaceAll(group, URLEncoder.encode(group, "UTF-8"));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    /* renamed from: a */
    static /* synthetic */ void m6628a() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onPause();
        }
    }

    /* renamed from: a */
    private static void m6629a(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            if (i == f5557y[i2].f5560b) {
                f5557y[i2].f5559a = true;
                f5557y[i2].f5560b = 0;
                f5557y[i2].f5561c = 0.0f;
                f5557y[i2].f5562d = 0.0f;
            }
        }
    }

    /* renamed from: a */
    private static void m6630a(int i, float f, float f2) {
        C1446a c1446a;
        int i2 = 0;
        while (true) {
            if (i2 >= 5) {
                for (int i3 = 0; i3 < 5; i3++) {
                    if (f5557y[i3].f5559a) {
                        f5557y[i3].f5560b = i;
                        f5557y[i3].f5561c = f;
                        f5557y[i3].f5562d = f2;
                        c1446a = f5557y[i3];
                    }
                }
                return;
            }
            if (!f5557y[i2].f5559a && f5557y[i2].f5560b == i) {
                f5557y[i2].f5560b = i;
                f5557y[i2].f5561c = f;
                f5557y[i2].f5562d = f2;
                c1446a = f5557y[i2];
                break;
            }
            i2++;
        }
        c1446a.f5559a = false;
    }

    /* renamed from: a */
    private static void m6631a(int i, C1450b c1450b) {
        StringBuilder sb = new StringBuilder("sendToTargetHandler ");
        sb.append(i);
        sb.append("         ");
        sb.append(c1450b);
        f5542j.obtainMessage(i, c1450b).sendToTarget();
    }

    /* renamed from: a */
    static /* synthetic */ void m6632a(C1450b c1450b) {
        if (f5536d == null) {
            f5536d = new ExToast(f5535c);
        }
        f5536d.show(c1450b.f5592d, c1450b.f5589a, c1450b.f5590b, c1450b.f5591c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:155:0x0415. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x002a. Please report as an issue. */
    /* renamed from: a */
    static /* synthetic */ void m6633a(byte[] bArr) {
        String parentId;
        View view;
        C1633k c1633k;
        CharSequence text;
        String charSequence;
        TextPaint paint;
        try {
            UiMessage.CommandToUi parseFrom = UiMessage.CommandToUi.parseFrom(ByteString.copyFrom(bArr));
            if (parseFrom != null) {
                ViewOnClickListenerC1631i viewOnClickListenerC1631i = f5538f;
                String controlId = parseFrom.getControlId();
                UiMessage.CommandToUi.Command_Type command = parseFrom.getCommand();
                new StringBuilder("command: ").append(parseFrom);
                int i = 2;
                boolean z = true;
                switch (ViewOnClickListenerC1631i.AnonymousClass3.f6252a[command.ordinal()]) {
                    case 1:
                        try {
                            viewOnClickListenerC1631i.m7358a(parseFrom.getPath());
                        } catch (IOException e) {
                            e = e;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 2:
                        try {
                            viewOnClickListenerC1631i.m7362b(parseFrom.getPath());
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        } catch (JSONException e4) {
                            e = e4;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 3:
                        int width = parseFrom.getWidth();
                        int height = parseFrom.getHeight();
                        viewOnClickListenerC1631i.f6242b++;
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] = viewOnClickListenerC1631i.f6243c.m7272a(controlId, width, height);
                        viewOnClickListenerC1631i.f6244d.put(controlId, Integer.valueOf(viewOnClickListenerC1631i.f6242b));
                        viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b] = new HashMap();
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].f6294b = new ViewOnClickListenerC1631i.AnonymousClass1(viewOnClickListenerC1631i, controlId);
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].f6293a = new ViewOnClickListenerC1631i.AnonymousClass2(viewOnClickListenerC1631i, controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 4:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else {
                            if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].f6295c) {
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                            }
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7412c();
                            ViewOnClickListenerC1631i.m7335a(true);
                            C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                            return;
                        }
                    case 5:
                        ViewOnClickListenerC1631i.m7339c(controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 6:
                        z = viewOnClickListenerC1631i.m7365d(controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 7:
                        viewOnClickListenerC1631i.m7363c();
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 8:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1633k c1633k2 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            viewOnClickListenerC1631i.m7356a();
                            c1633k2.m7406a(controlId, parseFrom.getParentId(), parseFrom.getWidth(), parseFrom.getHeight());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 9:
                        String text2 = parseFrom.getText();
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            z = false;
                        } else {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7404a(text2);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 10:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) != null) {
                            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7399a()).build()).build().toByteString());
                            return;
                        } else {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                    case 11:
                        String controlId2 = parseFrom.getControlId();
                        String color = parseFrom.getColor();
                        if (viewOnClickListenerC1631i.f6244d.get(controlId2) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId2);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color.startsWith("#")) {
                            color = "#" + color;
                        }
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId2).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 12:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7274b = c1629g.m7274b(controlId, parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.LINE);
                            C1633k c1633k3 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k3;
                            view = m7274b;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 13:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g2 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7270a = c1629g2.m7270a(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.TEXT_VIEW);
                            C1633k c1633k4 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k4;
                            view = m7270a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 14:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g3 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            EditText m7277d = c1629g3.m7277d(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.EDIT_TEXT);
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7403a(m7277d, parseFrom.getParentId());
                            m7277d.addTextChangedListener(new ViewOnClickListenerC1631i.a(viewOnClickListenerC1631i, controlId));
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 15:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g4 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            Button m7273b = c1629g4.m7273b(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.BUTTON);
                            m7273b.setOnClickListener(viewOnClickListenerC1631i);
                            C1633k c1633k5 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k5;
                            view = m7273b;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 16:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g5 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7268a = c1629g5.m7268a(controlId, parseFrom.getItemTextList(), parseFrom.getDefaultItemIndex(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.RADIIO_GROUP);
                            C1633k c1633k6 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k6;
                            view = m7268a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 17:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g6 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7266a = c1629g6.m7266a(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getDefaultCheckStatus());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.CHECK_BOX);
                            C1633k c1633k7 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k7;
                            view = m7266a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 18:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            ImageView m7267a = viewOnClickListenerC1631i.f6243c.m7267a(viewOnClickListenerC1631i.m7356a(), controlId, parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getPath());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.IMAGE_VIEW);
                            m7267a.setOnClickListener(viewOnClickListenerC1631i);
                            C1633k c1633k8 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k8;
                            view = m7267a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 19:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g7 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7265a = c1629g7.m7265a(controlId, parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getUrl());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.WEB_VIEW);
                            C1633k c1633k9 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k9;
                            view = m7265a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 20:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g8 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            List<String> itemTextList = parseFrom.getItemTextList();
                            int defaultItemIndex = parseFrom.getDefaultItemIndex();
                            parseFrom.getWidth();
                            parseFrom.getHeight();
                            Spinner m7269a = c1629g8.m7269a(controlId, itemTextList, defaultItemIndex);
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.SPINNER);
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7403a(m7269a, parseFrom.getParentId());
                            m7269a.setOnItemSelectedListener(viewOnClickListenerC1631i);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 21:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7405a(parseFrom.getControlId(), parseFrom.getHeight());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 22:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            z = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7407a(viewOnClickListenerC1631i.m7356a(), parseFrom.getControlId(), parseFrom.getParentId(), parseFrom.getText());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                        z = viewOnClickListenerC1631i.m7359a(parseFrom);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 34:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) != null) {
                            ViewOnClickListenerC1631i.m7335a(true);
                        } else if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                        } else {
                            View m7408b = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                            layoutParams.width = -1;
                            m7408b.setLayoutParams(layoutParams);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 35:
                        viewOnClickListenerC1631i.m7364c(parseFrom);
                        return;
                    case 36:
                        viewOnClickListenerC1631i.m7361b(parseFrom);
                        return;
                    case 37:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId3 = parseFrom.getControlId();
                        parseFrom.getText();
                        View m7408b2 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId3);
                        if (m7408b2 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId3) != EnumC1635m.EDIT_TEXT) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else {
                            ((EditText) m7408b2).setInputType(parseFrom.getEditInputType());
                            ViewOnClickListenerC1631i.m7335a(true);
                            return;
                        }
                    case 38:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId4 = parseFrom.getControlId();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId4) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId4)).ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                text = ((TextView) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 4:
                                text = ((CheckBox) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 5:
                                RadioButton radioButton = (RadioButton) ((RadioGroup) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).findViewById(parseFrom.getItemIndex());
                                if (radioButton == null) {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                                text = radioButton.getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 6:
                                Spinner spinner = (Spinner) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4);
                                if (parseFrom.getItemIndex() >= spinner.getCount()) {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                                new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(parseFrom.getItemIndex()));
                                charSequence = (String) spinner.getItemAtPosition(parseFrom.getItemIndex());
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            default:
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                        }
                    case 39:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId5 = parseFrom.getControlId();
                        String color2 = parseFrom.getColor();
                        if (!color2.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color2.startsWith("#")) {
                            color2 = "#" + color2;
                        }
                        int m7479a = C1649c.m7479a(Color.parseColor(color2));
                        if (viewOnClickListenerC1631i.f6244d.get(controlId5) != null) {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId5).intValue()].m7400a(m7479a);
                        } else {
                            View m7408b3 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId5);
                            if (m7408b3 == null) {
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                            }
                            switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId5)).ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                    ((TextView) m7408b3).setTextColor(m7479a);
                                    break;
                                case 4:
                                    ((CheckBox) m7408b3).setTextColor(m7479a);
                                    break;
                                case 5:
                                    RadioButton radioButton2 = (RadioButton) ((RadioGroup) m7408b3).findViewById(parseFrom.getItemIndex());
                                    if (radioButton2 != null) {
                                        radioButton2.setTextColor(m7479a);
                                        break;
                                    } else {
                                        ViewOnClickListenerC1631i.m7335a(false);
                                        return;
                                    }
                                case 6:
                                    if (parseFrom.getItemIndex() >= ((Spinner) m7408b3).getCount()) {
                                        ViewOnClickListenerC1631i.m7335a(false);
                                        return;
                                    }
                                    break;
                                default:
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                            }
                        }
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 40:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId6 = parseFrom.getControlId();
                        View m7408b4 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId6);
                        if (m7408b4 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String color3 = parseFrom.getColor();
                        if (!color3.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color3.startsWith("#")) {
                            color3 = "#" + color3;
                        }
                        int m7479a2 = C1649c.m7479a(Color.parseColor(color3));
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId6) != EnumC1635m.BUTTON) {
                            if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId6) != EnumC1635m.SPINNER) {
                                m7408b4.setBackgroundColor(m7479a2);
                            }
                            ViewOnClickListenerC1631i.m7335a(true);
                            return;
                        }
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setColor(m7479a2);
                        gradientDrawable.setCornerRadius(viewOnClickListenerC1631i.m7360b());
                        if (Build.VERSION.SDK_INT >= 16) {
                            m7408b4.setBackground(gradientDrawable);
                        } else {
                            m7408b4.setBackgroundDrawable(gradientDrawable);
                        }
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 41:
                        viewOnClickListenerC1631i.m7366e(controlId);
                        return;
                    case 42:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b5 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                        if (m7408b5 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        boolean isEnabled = m7408b5.isEnabled();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId) == EnumC1635m.EDIT_TEXT) {
                            isEnabled = ((EditText) m7408b5).isFocusable();
                        }
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
                        return;
                    case 43:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b6 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                        if (m7408b6 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        int visibility = m7408b6.getVisibility();
                        if (visibility != 0) {
                            if (visibility != 4) {
                                if (visibility == 8) {
                                    i = 3;
                                }
                            }
                            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                            return;
                        }
                        i = 1;
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                        return;
                    case 44:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId7 = parseFrom.getControlId();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId7) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId7)).ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                paint = ((TextView) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).getPaint();
                                break;
                            case 4:
                                paint = ((CheckBox) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).getPaint();
                                break;
                            case 5:
                                RadioButton radioButton3 = (RadioButton) ((RadioGroup) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).findViewById(parseFrom.getItemIndex());
                                if (radioButton3 != null) {
                                    paint = radioButton3.getPaint();
                                    break;
                                } else {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                            default:
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                        }
                        int color4 = paint.getColor();
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                        return;
                    case 45:
                    case 47:
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 46:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b7 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(parseFrom.getControlId());
                        if (m7408b7 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m7408b7.getLayoutParams();
                        layoutParams2.gravity = parseFrom.getAlignType();
                        m7408b7.setLayoutParams(layoutParams2);
                        new StringBuilder("set gravity ok; ").append(layoutParams2);
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 48:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b8 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(parseFrom.getControlId());
                        if (m7408b8 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        UiMessage.Padding_Var padding = parseFrom.getPadding();
                        new StringBuilder("padding: ").append(padding.getLeft());
                        new StringBuilder("padding: ").append(padding.getTop());
                        new StringBuilder("padding: ").append(padding.getRight());
                        new StringBuilder("padding: ").append(padding.getBottom());
                        m7408b8.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    default:
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                }
            }
        } catch (InvalidProtocolBufferException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: b */
    private static C1446a m6634b(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            if (!f5557y[i2].f5559a && f5557y[i2].f5560b == i) {
                return f5557y[i2];
            }
        }
        return null;
    }

    /* renamed from: b */
    static /* synthetic */ void m6635b() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onResume();
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m6636b(C1450b c1450b) {
        new C1624b(f5535c, c1450b.f5592d, c1450b.f5589a, new C14442()).m7237a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:155:0x0415. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x002a. Please report as an issue. */
    /* renamed from: b */
    private static void m6637b(byte[] bArr) {
        String parentId;
        View view;
        C1633k c1633k;
        CharSequence text;
        String charSequence;
        TextPaint paint;
        try {
            UiMessage.CommandToUi parseFrom = UiMessage.CommandToUi.parseFrom(ByteString.copyFrom(bArr));
            if (parseFrom != null) {
                ViewOnClickListenerC1631i viewOnClickListenerC1631i = f5538f;
                String controlId = parseFrom.getControlId();
                UiMessage.CommandToUi.Command_Type command = parseFrom.getCommand();
                new StringBuilder("command: ").append(parseFrom);
                int i = 2;
                boolean z = true;
                switch (ViewOnClickListenerC1631i.AnonymousClass3.f6252a[command.ordinal()]) {
                    case 1:
                        try {
                            viewOnClickListenerC1631i.m7358a(parseFrom.getPath());
                        } catch (IOException e) {
                            e = e;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        } catch (JSONException e2) {
                            e = e2;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 2:
                        try {
                            viewOnClickListenerC1631i.m7362b(parseFrom.getPath());
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        } catch (JSONException e4) {
                            e = e4;
                            e.printStackTrace();
                            ViewOnClickListenerC1631i.m7335a(z);
                            return;
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 3:
                        int width = parseFrom.getWidth();
                        int height = parseFrom.getHeight();
                        viewOnClickListenerC1631i.f6242b++;
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] = viewOnClickListenerC1631i.f6243c.m7272a(controlId, width, height);
                        viewOnClickListenerC1631i.f6244d.put(controlId, Integer.valueOf(viewOnClickListenerC1631i.f6242b));
                        viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b] = new HashMap();
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].f6294b = new ViewOnClickListenerC1631i.AnonymousClass1(viewOnClickListenerC1631i, controlId);
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].f6293a = new ViewOnClickListenerC1631i.AnonymousClass2(viewOnClickListenerC1631i, controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 4:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else {
                            if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].f6295c) {
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                            }
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7412c();
                            ViewOnClickListenerC1631i.m7335a(true);
                            C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                            return;
                        }
                    case 5:
                        ViewOnClickListenerC1631i.m7339c(controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 6:
                        z = viewOnClickListenerC1631i.m7365d(controlId);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 7:
                        viewOnClickListenerC1631i.m7363c();
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 8:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1633k c1633k2 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            viewOnClickListenerC1631i.m7356a();
                            c1633k2.m7406a(controlId, parseFrom.getParentId(), parseFrom.getWidth(), parseFrom.getHeight());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 9:
                        String text2 = parseFrom.getText();
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            z = false;
                        } else {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7404a(text2);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 10:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) != null) {
                            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId).intValue()].m7399a()).build()).build().toByteString());
                            return;
                        } else {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                    case 11:
                        String controlId2 = parseFrom.getControlId();
                        String color = parseFrom.getColor();
                        if (viewOnClickListenerC1631i.f6244d.get(controlId2) == null) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_not_found_ui, controlId2);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color.startsWith("#")) {
                            color = "#" + color;
                        }
                        viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId2).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 12:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7274b = c1629g.m7274b(controlId, parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.LINE);
                            C1633k c1633k3 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k3;
                            view = m7274b;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 13:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g2 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7270a = c1629g2.m7270a(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.TEXT_VIEW);
                            C1633k c1633k4 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k4;
                            view = m7270a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 14:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g3 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            EditText m7277d = c1629g3.m7277d(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.EDIT_TEXT);
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7403a(m7277d, parseFrom.getParentId());
                            m7277d.addTextChangedListener(new ViewOnClickListenerC1631i.a(viewOnClickListenerC1631i, controlId));
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 15:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g4 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            Button m7273b = c1629g4.m7273b(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.BUTTON);
                            m7273b.setOnClickListener(viewOnClickListenerC1631i);
                            C1633k c1633k5 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k5;
                            view = m7273b;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 16:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g5 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7268a = c1629g5.m7268a(controlId, parseFrom.getItemTextList(), parseFrom.getDefaultItemIndex(), parseFrom.getWidth(), parseFrom.getHeight());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.RADIIO_GROUP);
                            C1633k c1633k6 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k6;
                            view = m7268a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 17:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g6 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7266a = c1629g6.m7266a(controlId, parseFrom.getText(), parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getDefaultCheckStatus());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.CHECK_BOX);
                            C1633k c1633k7 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k7;
                            view = m7266a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 18:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            ImageView m7267a = viewOnClickListenerC1631i.f6243c.m7267a(viewOnClickListenerC1631i.m7356a(), controlId, parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getPath());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.IMAGE_VIEW);
                            m7267a.setOnClickListener(viewOnClickListenerC1631i);
                            C1633k c1633k8 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k8;
                            view = m7267a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 19:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g7 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            View m7265a = c1629g7.m7265a(controlId, parseFrom.getWidth(), parseFrom.getHeight(), parseFrom.getUrl());
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.WEB_VIEW);
                            C1633k c1633k9 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b];
                            parentId = parseFrom.getParentId();
                            c1633k = c1633k9;
                            view = m7265a;
                            c1633k.m7403a(view, parentId);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 20:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            C1629g c1629g8 = viewOnClickListenerC1631i.f6243c;
                            viewOnClickListenerC1631i.m7356a();
                            List<String> itemTextList = parseFrom.getItemTextList();
                            int defaultItemIndex = parseFrom.getDefaultItemIndex();
                            parseFrom.getWidth();
                            parseFrom.getHeight();
                            Spinner m7269a = c1629g8.m7269a(controlId, itemTextList, defaultItemIndex);
                            viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].put(controlId, EnumC1635m.SPINNER);
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7403a(m7269a, parseFrom.getParentId());
                            m7269a.setOnItemSelectedListener(viewOnClickListenerC1631i);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 21:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7405a(parseFrom.getControlId(), parseFrom.getHeight());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 22:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] != null) {
                            z = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7407a(viewOnClickListenerC1631i.m7356a(), parseFrom.getControlId(), parseFrom.getParentId(), parseFrom.getText());
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                        z = viewOnClickListenerC1631i.m7359a(parseFrom);
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 34:
                        if (viewOnClickListenerC1631i.f6244d.get(controlId) != null) {
                            ViewOnClickListenerC1631i.m7335a(true);
                        } else if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                        } else {
                            View m7408b = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                            layoutParams.width = -1;
                            m7408b.setLayoutParams(layoutParams);
                        }
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 35:
                        viewOnClickListenerC1631i.m7364c(parseFrom);
                        return;
                    case 36:
                        viewOnClickListenerC1631i.m7361b(parseFrom);
                        return;
                    case 37:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId3 = parseFrom.getControlId();
                        parseFrom.getText();
                        View m7408b2 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId3);
                        if (m7408b2 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId3) != EnumC1635m.EDIT_TEXT) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        } else {
                            ((EditText) m7408b2).setInputType(parseFrom.getEditInputType());
                            ViewOnClickListenerC1631i.m7335a(true);
                            return;
                        }
                    case 38:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId4 = parseFrom.getControlId();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId4) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId4)).ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                text = ((TextView) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 4:
                                text = ((CheckBox) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 5:
                                RadioButton radioButton = (RadioButton) ((RadioGroup) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4)).findViewById(parseFrom.getItemIndex());
                                if (radioButton == null) {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                                text = radioButton.getText();
                                charSequence = text.toString();
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            case 6:
                                Spinner spinner = (Spinner) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId4);
                                if (parseFrom.getItemIndex() >= spinner.getCount()) {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                                new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(parseFrom.getItemIndex()));
                                charSequence = (String) spinner.getItemAtPosition(parseFrom.getItemIndex());
                                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                                return;
                            default:
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                        }
                    case 39:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId5 = parseFrom.getControlId();
                        String color2 = parseFrom.getColor();
                        if (!color2.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color2.startsWith("#")) {
                            color2 = "#" + color2;
                        }
                        int m7479a = C1649c.m7479a(Color.parseColor(color2));
                        if (viewOnClickListenerC1631i.f6244d.get(controlId5) != null) {
                            viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6244d.get(controlId5).intValue()].m7400a(m7479a);
                        } else {
                            View m7408b3 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId5);
                            if (m7408b3 == null) {
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                            }
                            switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId5)).ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                    ((TextView) m7408b3).setTextColor(m7479a);
                                    break;
                                case 4:
                                    ((CheckBox) m7408b3).setTextColor(m7479a);
                                    break;
                                case 5:
                                    RadioButton radioButton2 = (RadioButton) ((RadioGroup) m7408b3).findViewById(parseFrom.getItemIndex());
                                    if (radioButton2 != null) {
                                        radioButton2.setTextColor(m7479a);
                                        break;
                                    } else {
                                        ViewOnClickListenerC1631i.m7335a(false);
                                        return;
                                    }
                                case 6:
                                    if (parseFrom.getItemIndex() >= ((Spinner) m7408b3).getCount()) {
                                        ViewOnClickListenerC1631i.m7335a(false);
                                        return;
                                    }
                                    break;
                                default:
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                            }
                        }
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 40:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId6 = parseFrom.getControlId();
                        View m7408b4 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId6);
                        if (m7408b4 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String color3 = parseFrom.getColor();
                        if (!color3.matches("^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})")) {
                            viewOnClickListenerC1631i.m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        if (!color3.startsWith("#")) {
                            color3 = "#" + color3;
                        }
                        int m7479a2 = C1649c.m7479a(Color.parseColor(color3));
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId6) != EnumC1635m.BUTTON) {
                            if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId6) != EnumC1635m.SPINNER) {
                                m7408b4.setBackgroundColor(m7479a2);
                            }
                            ViewOnClickListenerC1631i.m7335a(true);
                            return;
                        }
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setColor(m7479a2);
                        gradientDrawable.setCornerRadius(viewOnClickListenerC1631i.m7360b());
                        if (Build.VERSION.SDK_INT >= 16) {
                            m7408b4.setBackground(gradientDrawable);
                        } else {
                            m7408b4.setBackgroundDrawable(gradientDrawable);
                        }
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 41:
                        viewOnClickListenerC1631i.m7366e(controlId);
                        return;
                    case 42:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b5 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                        if (m7408b5 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        boolean isEnabled = m7408b5.isEnabled();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId) == EnumC1635m.EDIT_TEXT) {
                            isEnabled = ((EditText) m7408b5).isFocusable();
                        }
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
                        return;
                    case 43:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b6 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId);
                        if (m7408b6 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        int visibility = m7408b6.getVisibility();
                        if (visibility != 0) {
                            if (visibility != 4) {
                                if (visibility == 8) {
                                    i = 3;
                                }
                            }
                            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                            return;
                        }
                        i = 1;
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                        return;
                    case 44:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        String controlId7 = parseFrom.getControlId();
                        if (viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId7) == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        switch (ViewOnClickListenerC1631i.AnonymousClass3.f6253b[((EnumC1635m) viewOnClickListenerC1631i.f6245e[viewOnClickListenerC1631i.f6242b].get(controlId7)).ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                paint = ((TextView) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).getPaint();
                                break;
                            case 4:
                                paint = ((CheckBox) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).getPaint();
                                break;
                            case 5:
                                RadioButton radioButton3 = (RadioButton) ((RadioGroup) viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(controlId7)).findViewById(parseFrom.getItemIndex());
                                if (radioButton3 != null) {
                                    paint = radioButton3.getPaint();
                                    break;
                                } else {
                                    ViewOnClickListenerC1631i.m7335a(false);
                                    return;
                                }
                            default:
                                ViewOnClickListenerC1631i.m7335a(false);
                                return;
                        }
                        int color4 = paint.getColor();
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                        return;
                    case 45:
                    case 47:
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                    case 46:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b7 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(parseFrom.getControlId());
                        if (m7408b7 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m7408b7.getLayoutParams();
                        layoutParams2.gravity = parseFrom.getAlignType();
                        m7408b7.setLayoutParams(layoutParams2);
                        new StringBuilder("set gravity ok; ").append(layoutParams2);
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    case 48:
                        if (viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b] == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        View m7408b8 = viewOnClickListenerC1631i.f6241a[viewOnClickListenerC1631i.f6242b].m7408b(parseFrom.getControlId());
                        if (m7408b8 == null) {
                            ViewOnClickListenerC1631i.m7335a(false);
                            return;
                        }
                        UiMessage.Padding_Var padding = parseFrom.getPadding();
                        new StringBuilder("padding: ").append(padding.getLeft());
                        new StringBuilder("padding: ").append(padding.getTop());
                        new StringBuilder("padding: ").append(padding.getRight());
                        new StringBuilder("padding: ").append(padding.getBottom());
                        m7408b8.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                        ViewOnClickListenerC1631i.m7335a(true);
                        return;
                    default:
                        ViewOnClickListenerC1631i.m7335a(z);
                        return;
                }
            }
        } catch (InvalidProtocolBufferException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: c */
    private static int m6638c(int i) {
        for (int i2 = 0; i2 < 5; i2++) {
            if (!f5557y[i2].f5559a && f5557y[i2].f5560b == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: c */
    private static void m6639c() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onResume();
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m6640c(C1450b c1450b) {
        new C1625c(f5535c, c1450b.f5592d, new C14453()).m7243a();
    }

    /* renamed from: d */
    private static int m6641d(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (!f5557y[i3].f5559a) {
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: d */
    private static void m6642d() {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onPause();
        }
    }

    /* renamed from: d */
    static /* synthetic */ void m6643d(C1450b c1450b) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onUpdateControlBarPos(c1450b.f5593e, c1450b.f5589a, c1450b.f5590b);
        }
    }

    public static void dispatchGestureMoveAB(String str) {
        Exception e;
        int i;
        Path path = new Path();
        try {
            JSONObject jSONObject = new JSONObject(str);
            i = jSONObject.getInt("duration");
            try {
                if (jSONObject.get("points") instanceof JSONArray) {
                    JSONArray jSONArray = jSONObject.getJSONArray("points");
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        int intValue = ((Integer) jSONArray.getJSONObject(i2).get("x")).intValue();
                        int intValue2 = ((Integer) jSONArray.getJSONObject(i2).get("y")).intValue();
                        if (i2 == 0) {
                            path.moveTo(intValue, intValue2);
                        } else {
                            path.lineTo(intValue, intValue2);
                        }
                        StringBuilder sb = new StringBuilder("x:");
                        sb.append(intValue);
                        sb.append("y:");
                        sb.append(intValue2);
                    }
                }
            } catch (Exception e2) {
                e = e2;
                new StringBuilder("dispatchGestureMove: Exception:").append(e.toString());
                e.printStackTrace();
                Cservice.f5574a.m6673a(path, i);
            }
        } catch (Exception e3) {
            e = e3;
            i = 0;
        }
        Cservice.f5574a.m6673a(path, i);
    }

    /* renamed from: e */
    private static Instrumentation m6644e() {
        if (f5534b == null) {
            f5534b = new Instrumentation();
        }
        return f5534b;
    }

    /* renamed from: e */
    static /* synthetic */ void m6645e(C1450b c1450b) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onSetControlBarVisiable(c1450b.f5589a);
        }
    }

    /* renamed from: f */
    private static void m6646f() {
        if (f5557y == null) {
            f5557y = new C1446a[5];
            byte b2 = 0;
            for (int i = 0; i < 5; i++) {
                C1446a c1446a = new C1446a(b2);
                c1446a.f5559a = true;
                c1446a.f5560b = 0;
                c1446a.f5561c = 0.0f;
                c1446a.f5562d = 0.0f;
                f5557y[i] = c1446a;
            }
        }
    }

    /* renamed from: f */
    private static void m6647f(C1450b c1450b) {
        if (f5536d == null) {
            f5536d = new ExToast(f5535c);
        }
        f5536d.show(c1450b.f5592d, c1450b.f5589a, c1450b.f5590b, c1450b.f5591c);
    }

    /* renamed from: g */
    private static int m6648g() {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            if (!f5557y[i2].f5559a) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: g */
    private static void m6649g(C1450b c1450b) {
        new C1624b(f5535c, c1450b.f5592d, c1450b.f5589a, new C14442()).m7237a();
    }

    /* renamed from: h */
    private static void m6650h() {
        int m6648g = m6648g();
        if (m6648g == 0) {
            return;
        }
        f5558z = new MotionEvent.PointerProperties[m6648g];
        f5532A = new MotionEvent.PointerCoords[m6648g];
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            if (!f5557y[i2].f5559a) {
                if (i < m6648g) {
                    MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                    MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                    pointerProperties.id = i2;
                    pointerCoords.x = f5557y[i2].f5561c;
                    pointerCoords.y = f5557y[i2].f5562d;
                    pointerCoords.orientation = GetTapRotation();
                    f5558z[i] = pointerProperties;
                    f5532A[i] = pointerCoords;
                }
                i++;
            }
        }
    }

    /* renamed from: h */
    private static void m6651h(C1450b c1450b) {
        new C1625c(f5535c, c1450b.f5592d, new C14453()).m7243a();
    }

    /* renamed from: i */
    private static void m6652i(C1450b c1450b) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onUpdateControlBarPos(c1450b.f5593e, c1450b.f5589a, c1450b.f5590b);
        }
    }

    public static void init(Context context) {
        if (context == null) {
            throw new NullPointerException("Context is null...");
        }
        f5535c = context.getApplicationContext();
        f5537e = new C1584a(f5535c);
        f5538f = new ViewOnClickListenerC1631i(f5535c);
        f5540h = initTessBass();
    }

    public static boolean initTessBass() {
        File file = new File(f5535c.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3942aQ);
        File file2 = new File(f5535c.getFilesDir().getAbsolutePath() + "/tessdata/", InterfaceC1133a.f3941aP);
        if (!file.exists() || !file2.exists()) {
            return false;
        }
        f5539g = new TessBaseAPI();
        boolean m9444a = f5539g.m9444a(f5535c.getFilesDir().getAbsolutePath(), "chi_sim+eng");
        Log.i("MqmHandler", "initTessBass: init ret=" + m9444a);
        return m9444a;
    }

    /* renamed from: j */
    private static void m6653j(C1450b c1450b) {
        OnScriptListener onScriptListener = MqRunnerLite.getInstance().f6609a;
        if (onScriptListener != null) {
            onScriptListener.onSetControlBarVisiable(c1450b.f5589a);
        }
    }

    public static void release() {
        C1584a.m7069f();
        f5537e.m7074a();
        ViewOnClickListenerC1631i viewOnClickListenerC1631i = f5538f;
        viewOnClickListenerC1631i.m7363c();
        viewOnClickListenerC1631i.f6242b = 0;
        viewOnClickListenerC1631i.f6246f = 1;
        for (int i = 0; i < 32; i++) {
            viewOnClickListenerC1631i.f6241a[i] = null;
            if (viewOnClickListenerC1631i.f6245e[i] != null) {
                viewOnClickListenerC1631i.f6245e[i].clear();
            }
        }
        releasePointerInfoArray();
    }

    public static void releasePointerInfoArray() {
        f5557y = null;
    }

    public static void sendText(String str, int i) {
        if (f5541i) {
            sendTextAB(str);
        } else if (MqRunnerLite.getInstance().f6613e != null) {
            MqRunnerLite.getInstance().f6613e.inputText(str);
        }
    }

    public static void sendTextAB(String str) {
        if (Cservice.m6666a()) {
            Cservice.f5574a.m6674a(str, f5535c);
        }
    }

    public static void setSyncReturnValue(int i, String str) {
        f5548p = i;
        f5549q = str;
        f5547o = true;
    }

    public static void switchToIm(String str) {
    }
}
