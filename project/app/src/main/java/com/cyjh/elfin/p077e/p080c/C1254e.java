package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.text.TextUtils;
import com.cyjh.elfin.p073a.C1225b;
import com.umeng.commonsdk.proguard.C2518v;
import java.io.BufferedInputStream;

/* renamed from: com.cyjh.elfin.e.c.e */
/* loaded from: classes.dex */
public final class C1254e {

    /* renamed from: a */
    private a f4674a;

    /* renamed from: com.cyjh.elfin.e.c.e$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void m5687a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.elfin.e.c.e$b */
    /* loaded from: classes.dex */
    public class b implements SensorEventListener {

        /* renamed from: a */
        SensorManager f4675a;

        b(SensorManager sensorManager) {
            this.f4675a = sensorManager;
        }

        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            this.f4675a.unregisterListener(this);
            this.f4675a = null;
        }
    }

    /* renamed from: com.cyjh.elfin.e.c.e$c */
    /* loaded from: classes.dex */
    private static class c {

        /* renamed from: a */
        private static final C1254e f4677a = new C1254e(0);

        private c() {
        }
    }

    private C1254e() {
    }

    /* synthetic */ C1254e(byte b2) {
        this();
    }

    /* renamed from: a */
    private static C1254e m5675a() {
        return c.f4677a;
    }

    /* renamed from: a */
    private static String m5676a(BufferedInputStream bufferedInputStream) {
        int read;
        byte[] bArr = new byte[512];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    sb.append(new String(bArr, 0, read));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (read >= 512);
        return sb.toString();
    }

    /* renamed from: a */
    private static String m5677a(String str) {
        try {
            Object invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    private boolean m5678a(Context context) {
        return m5679a(context, 4);
    }

    /* renamed from: a */
    private boolean m5679a(Context context, int i) {
        SensorManager sensorManager;
        Sensor defaultSensor;
        if (context == null || (sensorManager = (SensorManager) context.getSystemService(C2518v.f9529W)) == null || (defaultSensor = sensorManager.getDefaultSensor(i)) == null) {
            return false;
        }
        sensorManager.registerListener(new b(sensorManager), defaultSensor, 3);
        return true;
    }

    /* renamed from: b */
    private static String m5680b() {
        return m5681b("cat /proc/cpuinfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.BufferedOutputStream] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String m5681b(java.lang.String r5) {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L75
            java.lang.String r2 = "sh"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L75
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            java.io.OutputStream r3 = r1.getOutputStream()     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            java.io.InputStream r4 = r1.getInputStream()     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4f java.lang.Exception -> L51
            byte[] r5 = r5.getBytes()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r2.write(r5)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r5 = 10
            r2.write(r5)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r2.flush()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r2.close()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r1.waitFor()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            java.lang.String r5 = m5676a(r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L78
            r2.close()     // Catch: java.io.IOException -> L3a
            goto L3e
        L3a:
            r0 = move-exception
            r0.printStackTrace()
        L3e:
            r3.close()     // Catch: java.io.IOException -> L42
            goto L46
        L42:
            r0 = move-exception
            r0.printStackTrace()
        L46:
            if (r1 == 0) goto L4b
            r1.destroy()
        L4b:
            return r5
        L4c:
            r5 = move-exception
            r0 = r3
            goto L5b
        L4f:
            r5 = move-exception
            goto L5b
        L51:
            r3 = r0
            goto L78
        L53:
            r5 = move-exception
            r2 = r0
            goto L5b
        L56:
            r2 = r0
            goto L77
        L58:
            r5 = move-exception
            r1 = r0
            r2 = r1
        L5b:
            if (r2 == 0) goto L65
            r2.close()     // Catch: java.io.IOException -> L61
            goto L65
        L61:
            r2 = move-exception
            r2.printStackTrace()
        L65:
            if (r0 == 0) goto L6f
            r0.close()     // Catch: java.io.IOException -> L6b
            goto L6f
        L6b:
            r0 = move-exception
            r0.printStackTrace()
        L6f:
            if (r1 == 0) goto L74
            r1.destroy()
        L74:
            throw r5
        L75:
            r1 = r0
            r2 = r1
        L77:
            r3 = r2
        L78:
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.io.IOException -> L7e
            goto L82
        L7e:
            r5 = move-exception
            r5.printStackTrace()
        L82:
            if (r3 == 0) goto L8c
            r3.close()     // Catch: java.io.IOException -> L88
            goto L8c
        L88:
            r5 = move-exception
            r5.printStackTrace()
        L8c:
            if (r1 == 0) goto L91
            r1.destroy()
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.elfin.p077e.p080c.C1254e.m5681b(java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    private boolean m5682b(Context context) {
        return m5679a(context, 5);
    }

    /* renamed from: c */
    private static boolean m5683c() {
        String m5681b = m5681b("cat /proc/self/cgroup");
        return m5681b == null || m5681b.length() == 0;
    }

    /* renamed from: d */
    private boolean m5684d() {
        this.f4674a = null;
        String m5677a = m5677a("gsm.version.baseband");
        int i = TextUtils.isEmpty(m5677a) | (m5677a != null && m5677a.contains("1.0.0.0")) ? 1 : 0;
        String m5677a2 = m5677a("ro.build.flavor");
        if (TextUtils.isEmpty(m5677a2) || (m5677a2.contains("vbox") | m5677a2.contains("sdk_gphone"))) {
            i++;
        }
        String m5677a3 = m5677a("ro.product.board");
        if (TextUtils.isEmpty(m5677a3) || (m5677a3.contains(C1225b.f4510b) | m5677a3.contains("goldfish"))) {
            i++;
        }
        String m5677a4 = m5677a("ro.board.platform");
        if (TextUtils.isEmpty(m5677a4) || m5677a4.contains(C1225b.f4510b)) {
            i++;
        }
        if (!TextUtils.isEmpty(m5677a3) && !TextUtils.isEmpty(m5677a4) && !m5677a3.equals(m5677a4)) {
            i++;
        }
        String m5681b = m5681b("cat /proc/self/cgroup");
        if (TextUtils.isEmpty(m5681b)) {
            i++;
        }
        if (this.f4674a != null) {
            StringBuffer stringBuffer = new StringBuffer("ceshi start|");
            stringBuffer.append(m5677a);
            stringBuffer.append("|");
            stringBuffer.append(m5677a2);
            stringBuffer.append("|");
            stringBuffer.append(m5677a3);
            stringBuffer.append("|");
            stringBuffer.append(m5677a4);
            stringBuffer.append("|");
            stringBuffer.append(m5681b);
            stringBuffer.append("|end");
            this.f4674a = null;
        }
        return i > 2;
    }

    /* renamed from: e */
    private boolean m5685e() {
        this.f4674a = null;
        String m5677a = m5677a("gsm.version.baseband");
        int i = TextUtils.isEmpty(m5677a) | (m5677a != null && m5677a.contains("1.0.0.0")) ? 1 : 0;
        String m5677a2 = m5677a("ro.build.flavor");
        if (TextUtils.isEmpty(m5677a2) || (m5677a2.contains("vbox") | m5677a2.contains("sdk_gphone"))) {
            i++;
        }
        String m5677a3 = m5677a("ro.product.board");
        if (TextUtils.isEmpty(m5677a3) || (m5677a3.contains(C1225b.f4510b) | m5677a3.contains("goldfish"))) {
            i++;
        }
        String m5677a4 = m5677a("ro.board.platform");
        if (TextUtils.isEmpty(m5677a4) || m5677a4.contains(C1225b.f4510b)) {
            i++;
        }
        if (!TextUtils.isEmpty(m5677a3) && !TextUtils.isEmpty(m5677a4) && !m5677a3.equals(m5677a4)) {
            i++;
        }
        String m5681b = m5681b("cat /proc/self/cgroup");
        if (TextUtils.isEmpty(m5681b)) {
            i++;
        }
        if (this.f4674a != null) {
            StringBuffer stringBuffer = new StringBuffer("ceshi start|");
            stringBuffer.append(m5677a);
            stringBuffer.append("|");
            stringBuffer.append(m5677a2);
            stringBuffer.append("|");
            stringBuffer.append(m5677a3);
            stringBuffer.append("|");
            stringBuffer.append(m5677a4);
            stringBuffer.append("|");
            stringBuffer.append(m5681b);
            stringBuffer.append("|end");
            this.f4674a = null;
        }
        return i > 2;
    }

    @Deprecated
    /* renamed from: f */
    private static String m5686f() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("-\nBOARD-");
        stringBuffer.append(Build.BOARD);
        stringBuffer.append("\nBOOTLOADER-");
        stringBuffer.append(Build.BOOTLOADER);
        stringBuffer.append("\nBRAND-");
        stringBuffer.append(Build.BRAND);
        stringBuffer.append("\nDEVICE-");
        stringBuffer.append(Build.DEVICE);
        stringBuffer.append("\nHARDWARE-");
        stringBuffer.append(Build.HARDWARE);
        stringBuffer.append("\nMODEL-");
        stringBuffer.append(Build.MODEL);
        stringBuffer.append("\nPRODUCT-");
        stringBuffer.append(Build.PRODUCT);
        return stringBuffer.toString();
    }
}
