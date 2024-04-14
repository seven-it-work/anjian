package com.cyjh.elfin.base;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Environment;
import android.os.Process;
import android.os.Vibrator;
import android.support.multidex.MultiDex;
import android.util.Log;
import android.widget.Toast;
import bin.mt.signature.KillerApplication;
import com.android.volley.toolbox.C0629t;
import com.cyjh.common.p066a.C1132a;
import com.cyjh.common.util.C1149ab;
import com.cyjh.common.util.C1153af;
import com.cyjh.common.util.C1172o;
import com.cyjh.common.util.SharedPreferencesC1155ah;
import com.cyjh.common.util.toast.C1194q;
import com.cyjh.elfin.entity.ParamsWrap;
import com.cyjh.elfin.floatingwindowprocess.p082b.C1282a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1283a;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1284b;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1285c;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1286d;
import com.cyjh.elfin.floatingwindowprocess.p083c.C1287e;
import com.cyjh.elfin.floatingwindowprocess.p084d.C1289b;
import com.cyjh.elfin.p073a.C1225b;
import com.cyjh.elfin.p073a.C1226c;
import com.cyjh.elfin.p073a.InterfaceC1224a;
import com.cyjh.elfin.services.PhoneStateService;
import com.cyjh.http.p094a.C1483b;
import com.cyjh.http.p094a.C1485d;
import com.cyjh.http.p095b.C1487a;
import com.cyjh.http.p101d.p103b.C1577c;
import com.elfin.ad.C1717a;
import com.elfin.engin.p123a.C1743c;
import com.hjol.R;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import java.io.File;
import org.litepal.C3033f;

/* loaded from: classes.dex */
public class AppContext extends KillerApplication implements InterfaceC1224a {

    /* renamed from: K */
    private static final String f4558K = "AppContext";

    /* renamed from: d */
    protected static AppContext f4559d;

    /* renamed from: L */
    private String f4560L;

    /* renamed from: M */
    private String f4561M;

    /* renamed from: a */
    public String f4562a;

    /* renamed from: b */
    public String f4563b;

    /* renamed from: c */
    public String f4564c;

    /* renamed from: e */
    public String f4565e;

    /* renamed from: l */
    public String f4572l;

    /* renamed from: f */
    public boolean f4566f = false;

    /* renamed from: g */
    public boolean f4567g = false;

    /* renamed from: h */
    public boolean f4568h = false;

    /* renamed from: i */
    public boolean f4569i = true;

    /* renamed from: j */
    public boolean f4570j = false;

    /* renamed from: k */
    public boolean f4571k = false;

    /* renamed from: m */
    public boolean f4573m = false;

    /* renamed from: a */
    public static AppContext m5350a() {
        return f4559d;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x004a: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x004a */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m5351b(int r5) {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r4 = "/proc/"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r3.append(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = "/cmdline"
            r3.append(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = r3.toString()     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L39
            java.lang.String r5 = r1.readLine()     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
            boolean r2 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
            if (r2 != 0) goto L2c
            java.lang.String r5 = r5.trim()     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L49
        L2c:
            r1.close()     // Catch: java.io.IOException -> L30
            return r5
        L30:
            r0 = move-exception
            r0.printStackTrace()
            return r5
        L35:
            r5 = move-exception
            goto L3b
        L37:
            r5 = move-exception
            goto L4b
        L39:
            r5 = move-exception
            r1 = r0
        L3b:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L49
            if (r1 == 0) goto L48
            r1.close()     // Catch: java.io.IOException -> L44
            return r0
        L44:
            r5 = move-exception
            r5.printStackTrace()
        L48:
            return r0
        L49:
            r5 = move-exception
            r0 = r1
        L4b:
            if (r0 == 0) goto L55
            r0.close()     // Catch: java.io.IOException -> L51
            goto L55
        L51:
            r0 = move-exception
            r0.printStackTrace()
        L55:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.base.AppContext.m5351b(int):java.lang.String");
    }

    /* renamed from: b */
    private void m5352b() {
        this.f4560L = m5351b(Process.myPid());
        this.f4561M = getPackageName();
        Log.i("TAG", "initProcess: " + this.f4561M);
        if (getPackageName().equals(this.f4560L)) {
            this.f4570j = true;
        }
        if (this.f4560L.endsWith(":enginfloat")) {
            this.f4571k = true;
        }
    }

    /* renamed from: c */
    private void m5353c() {
        File file = new File(this.f4564c);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: d */
    private void m5354d() {
        C1229a.m5363a().m5366a(this);
        System.loadLibrary("mqm");
        C3033f.m13764a(this);
        C1132a.m4193a(C1226c.f4540f, Long.parseLong(getResources().getString(R.string.elfin_appid)), getResources().getString(R.string.pay_vsersion), "6.1.1", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB", "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ==", getString(R.string.elfin_appinfo));
        C1487a.m6886a().m6892a(this);
        C1717a.m7823a().m7825a(this);
        m5357g();
        m5356f();
        C1283a.m5940a().f4843b = this;
        C1285c.m5955f().m5963b();
        C1289b.m6001j().m6011a();
        C1485d.m6873a().f5797a = this;
    }

    /* renamed from: e */
    private void m5355e() {
        C1229a.m5363a().m5366a(this);
        System.loadLibrary("mqm");
        C1132a.m4193a(C1226c.f4540f, Long.parseLong(getResources().getString(R.string.elfin_appid)), getResources().getString(R.string.pay_vsersion), "6.1.1", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB", "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ==", getString(R.string.elfin_appinfo));
        C1487a.m6886a().m6892a(this);
        C1717a.m7823a().m7825a(this);
        m5357g();
        m5356f();
        C1283a.m5940a().f4843b = this;
        C1285c.m5955f().m5963b();
        C1289b.m6001j().m6011a();
        C1485d.m6873a().f5797a = this;
    }

    /* renamed from: f */
    private void m5356f() {
        C1149ab.m4306a().f4046a = new SharedPreferencesC1155ah(this);
        C1153af.m4332a().f4063a = getSharedPreferences(C1225b.f4514f, 0);
        C1577c m7005a = C1577c.m7005a();
        if (m7005a.f5882b == null) {
            m7005a.f5882b = C0629t.m1518a(this);
        }
        ParamsWrap.getParamsWrap().init(this);
        this.f4562a = getFilesDir().getAbsolutePath();
        this.f4563b = Environment.getExternalStorageDirectory().getAbsolutePath();
        this.f4564c = C1172o.m4483a(C1172o.m4483a(this.f4563b, getPackageName()), "log");
    }

    /* renamed from: g */
    private void m5357g() {
        UMConfigure.init(this, "579ad79de0f55a8b3c001633", "Umeng", 1, null);
        MobclickAgent.openActivityDurationTrack(false);
        MobclickAgent.openActivityDurationTrack(false);
    }

    /* renamed from: h */
    private void m5358h() {
        File file = new File(this.f4564c);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: i */
    private void m5359i() {
        File file = new File(this.f4564c);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: j */
    private void m5360j() {
        startService(new Intent(this, (Class<?>) PhoneStateService.class));
    }

    /* renamed from: k */
    private void m5361k() {
        MobclickAgent.onKillProcess(this);
    }

    /* renamed from: a */
    public final void m5362a(int i) {
        Toast.makeText(this, i, 0).show();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        f4559d = this;
        this.f4560L = m5351b(Process.myPid());
        this.f4561M = getPackageName();
        Log.i("TAG", "initProcess: " + this.f4561M);
        if (getPackageName().equals(this.f4560L)) {
            this.f4570j = true;
        }
        if (this.f4560L.endsWith(":enginfloat")) {
            this.f4571k = true;
        }
        MultiDex.install(this);
        C1743c.a.m7973a();
        getPackageName();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (C1283a.m5940a().f4842a != null) {
            C1283a.m5940a().f4842a.m6083c();
        }
        C1284b m5947a = C1284b.m5947a();
        int i = configuration.orientation;
        if (i == 2) {
            m5947a.f4846a = true;
            if (m5947a.f4847b != null) {
                m5947a.f4847b.mo5913a();
                return;
            }
            return;
        }
        if (i == 1) {
            m5947a.f4846a = false;
            if (m5947a.f4847b != null) {
                m5947a.f4847b.mo5914b();
            }
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Log.i(f4558K, "onCreate process: " + m5351b(Process.myPid()));
        C1743c.a.m7973a().mo7756a(this);
        if (this.f4570j) {
            C1229a.m5363a().m5366a(this);
            System.loadLibrary("mqm");
            C3033f.m13764a(this);
        } else {
            if (!this.f4571k) {
                startService(new Intent(this, (Class<?>) PhoneStateService.class));
                C1286d m5965a = C1286d.m5965a();
                Vibrator vibrator = (Vibrator) getSystemService("vibrator");
                C1282a c1282a = new C1282a(f4559d);
                c1282a.f4833b = new C1287e(m5965a, vibrator, c1282a);
                C1289b.m6001j();
                C1289b.m5984a(this);
                C1194q.m5136a(this);
            }
            C1229a.m5363a().m5366a(this);
            System.loadLibrary("mqm");
        }
        C1132a.m4193a(C1226c.f4540f, Long.parseLong(getResources().getString(R.string.elfin_appid)), getResources().getString(R.string.pay_vsersion), "6.1.1", "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB", "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ==", getString(R.string.elfin_appinfo));
        C1487a.m6886a().m6892a(this);
        C1717a.m7823a().m7825a(this);
        m5357g();
        m5356f();
        C1283a.m5940a().f4843b = this;
        C1285c.m5955f().m5963b();
        C1289b.m6001j().m6011a();
        C1485d.m6873a().f5797a = this;
        C1194q.m5136a(this);
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        C1483b.m6863a().m6866b();
    }
}
