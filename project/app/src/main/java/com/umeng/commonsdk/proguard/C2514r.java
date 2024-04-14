package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import com.cyjh.elfin.p076d.InterfaceC1237b;
import com.umeng.commonsdk.framework.C2451b;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.umeng.commonsdk.proguard.r */
/* loaded from: classes.dex */
public class C2514r {

    /* renamed from: a */
    private static final String f9471a = "info";

    /* renamed from: b */
    private static final String f9472b = "stat";

    /* renamed from: c */
    private static boolean f9473c = false;

    /* renamed from: d */
    private static HandlerThread f9474d = null;

    /* renamed from: e */
    private static Context f9475e = null;

    /* renamed from: f */
    private static int f9476f = 0;

    /* renamed from: g */
    private static int f9477g = 0;

    /* renamed from: h */
    private static int f9478h = 0;

    /* renamed from: i */
    private static int f9479i = 1;

    /* renamed from: j */
    private static long f9480j = 0;

    /* renamed from: k */
    private static long f9481k = 0;

    /* renamed from: l */
    private static final int f9482l = 40;

    /* renamed from: m */
    private static final int f9483m = 50000;

    /* renamed from: n */
    private static SensorManager f9484n;

    /* renamed from: o */
    private static ArrayList<float[]> f9485o = new ArrayList<>();

    /* renamed from: p */
    private static SensorEventListener f9486p = new SensorEventListener() { // from class: com.umeng.commonsdk.proguard.r.1
        @Override // android.hardware.SensorEventListener
        public final void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public final void onSensorChanged(SensorEvent sensorEvent) {
            if (C2514r.f9477g < 15) {
                C2514r.m11005c();
                return;
            }
            if (C2514r.f9476f < 20) {
                C2514r.m11009e();
                C2514r.f9485o.add(sensorEvent.values);
            }
            if (C2514r.f9476f == 20) {
                C2514r.m11009e();
                if (C2514r.f9479i == 1) {
                    long unused = C2514r.f9480j = System.currentTimeMillis();
                }
                if (C2514r.f9479i == 2) {
                    long unused2 = C2514r.f9481k = System.currentTimeMillis();
                }
                C2514r.m11014h();
                C2514r.m11018l();
            }
        }
    };

    /* renamed from: com.umeng.commonsdk.proguard.r$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        public int f9489a;

        /* renamed from: b */
        public int f9490b;

        /* renamed from: c */
        public long f9491c;
    }

    /* renamed from: a */
    public static List<Sensor> m11000a(Context context) {
        if (context == null) {
            return null;
        }
        return ((SensorManager) context.getSystemService(C2518v.f9529W)).getSensorList(-1);
    }

    /* renamed from: a */
    public static synchronized boolean m11001a() {
        boolean z;
        synchronized (C2514r.class) {
            z = f9473c;
        }
        return z;
    }

    /* renamed from: b */
    public static void m11004b(Context context) {
        if (context == null || m11001a()) {
            return;
        }
        f9473c = true;
        f9475e = context.getApplicationContext();
        String m10647a = C2451b.m10647a(context);
        String packageName = context.getPackageName();
        if (m10647a == null || !m10647a.equals(packageName)) {
            return;
        }
        SensorManager sensorManager = (SensorManager) context.getSystemService(C2518v.f9529W);
        f9484n = sensorManager;
        final Sensor defaultSensor = sensorManager.getDefaultSensor(4);
        final Sensor defaultSensor2 = f9484n.getDefaultSensor(1);
        if (defaultSensor != null) {
            f9478h = 4;
            f9484n.registerListener(f9486p, defaultSensor, f9483m);
        } else if (defaultSensor2 != null) {
            f9478h = 1;
            f9484n.registerListener(f9486p, defaultSensor2, f9483m);
        }
        int nextInt = (new Random().nextInt(3) * 1000) + InterfaceC1237b.f4586c;
        HandlerThread handlerThread = new HandlerThread("sensor_thread");
        f9474d = handlerThread;
        handlerThread.start();
        new Handler(f9474d.getLooper()).postDelayed(new Runnable() { // from class: com.umeng.commonsdk.proguard.r.2
            @Override // java.lang.Runnable
            public final void run() {
                int unused = C2514r.f9476f = 0;
                if (defaultSensor != null) {
                    C2514r.f9484n.registerListener(C2514r.f9486p, defaultSensor, C2514r.f9483m);
                } else if (defaultSensor2 != null) {
                    C2514r.f9484n.registerListener(C2514r.f9486p, defaultSensor2, C2514r.f9483m);
                }
            }
        }, nextInt);
    }

    /* renamed from: c */
    static /* synthetic */ int m11005c() {
        int i = f9477g;
        f9477g = i + 1;
        return i;
    }

    /* renamed from: c */
    public static JSONArray m11006c(Context context) {
        String string;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f9471a, 0);
        if (sharedPreferences != null && (string = sharedPreferences.getString(f9472b, null)) != null) {
            try {
                return new JSONArray(string);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: d */
    public static void m11008d(Context context) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().getSharedPreferences(f9471a, 0).edit().remove(f9472b).commit();
    }

    /* renamed from: e */
    static /* synthetic */ int m11009e() {
        int i = f9476f;
        f9476f = i + 1;
        return i;
    }

    /* renamed from: e */
    public static List<a> m11010e(Context context) {
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.CAMERA")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
                for (String str : cameraManager.getCameraIdList()) {
                    Size size = (Size) cameraManager.getCameraCharacteristics(str).get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
                    if (size != null) {
                        a aVar = new a();
                        aVar.f9489a = size.getWidth();
                        aVar.f9490b = size.getHeight();
                        aVar.f9491c = System.currentTimeMillis();
                        arrayList.add(aVar);
                    }
                }
            }
        } catch (Exception unused) {
            C2536e.m11338c("camera access exception");
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073 A[Catch: Exception -> 0x009a, TryCatch #0 {Exception -> 0x009a, blocks: (B:5:0x0003, B:8:0x000d, B:13:0x0024, B:15:0x005f, B:18:0x0066, B:20:0x0073, B:21:0x0077, B:22:0x0080, B:24:0x007b, B:25:0x006a), top: B:4:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b A[Catch: Exception -> 0x009a, TryCatch #0 {Exception -> 0x009a, blocks: (B:5:0x0003, B:8:0x000d, B:13:0x0024, B:15:0x005f, B:18:0x0066, B:20:0x0073, B:21:0x0077, B:22:0x0080, B:24:0x007b, B:25:0x006a), top: B:4:0x0003 }] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void m11012f(android.content.Context r13) {
        /*
            if (r13 != 0) goto L3
            return
        L3:
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch: java.lang.Exception -> L9a
            r0.<init>()     // Catch: java.lang.Exception -> L9a
            r1 = 0
            r2 = 0
        La:
            r3 = 2
            if (r2 >= r3) goto L99
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Exception -> L9a
            r4.<init>()     // Catch: java.lang.Exception -> L9a
            org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.lang.Exception -> L9a
            r5.<init>()     // Catch: java.lang.Exception -> L9a
            r6 = 20
            r7 = 1
            if (r2 != r7) goto L1f
            r8 = 40
            goto L22
        L1f:
            r6 = 0
            r8 = 20
        L22:
            if (r6 >= r8) goto L5f
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: java.lang.Exception -> L9a
            r9.<init>()     // Catch: java.lang.Exception -> L9a
            java.lang.String r10 = "x"
            java.util.ArrayList<float[]> r11 = com.umeng.commonsdk.proguard.C2514r.f9485o     // Catch: java.lang.Exception -> L9a
            java.lang.Object r11 = r11.get(r6)     // Catch: java.lang.Exception -> L9a
            float[] r11 = (float[]) r11     // Catch: java.lang.Exception -> L9a
            r11 = r11[r1]     // Catch: java.lang.Exception -> L9a
            double r11 = (double) r11     // Catch: java.lang.Exception -> L9a
            r9.put(r10, r11)     // Catch: java.lang.Exception -> L9a
            java.lang.String r10 = "y"
            java.util.ArrayList<float[]> r11 = com.umeng.commonsdk.proguard.C2514r.f9485o     // Catch: java.lang.Exception -> L9a
            java.lang.Object r11 = r11.get(r6)     // Catch: java.lang.Exception -> L9a
            float[] r11 = (float[]) r11     // Catch: java.lang.Exception -> L9a
            r11 = r11[r7]     // Catch: java.lang.Exception -> L9a
            double r11 = (double) r11     // Catch: java.lang.Exception -> L9a
            r9.put(r10, r11)     // Catch: java.lang.Exception -> L9a
            java.lang.String r10 = "z"
            java.util.ArrayList<float[]> r11 = com.umeng.commonsdk.proguard.C2514r.f9485o     // Catch: java.lang.Exception -> L9a
            java.lang.Object r11 = r11.get(r6)     // Catch: java.lang.Exception -> L9a
            float[] r11 = (float[]) r11     // Catch: java.lang.Exception -> L9a
            r11 = r11[r3]     // Catch: java.lang.Exception -> L9a
            double r11 = (double) r11     // Catch: java.lang.Exception -> L9a
            r9.put(r10, r11)     // Catch: java.lang.Exception -> L9a
            r5.put(r9)     // Catch: java.lang.Exception -> L9a
            int r6 = r6 + 1
            goto L22
        L5f:
            int r3 = com.umeng.commonsdk.proguard.C2514r.f9478h     // Catch: java.lang.Exception -> L9a
            r6 = 4
            if (r3 != r6) goto L6a
            java.lang.String r3 = "g"
        L66:
            r4.put(r3, r5)     // Catch: java.lang.Exception -> L9a
            goto L71
        L6a:
            int r3 = com.umeng.commonsdk.proguard.C2514r.f9478h     // Catch: java.lang.Exception -> L9a
            if (r3 != r7) goto L71
            java.lang.String r3 = "a"
            goto L66
        L71:
            if (r2 != 0) goto L7b
            java.lang.String r3 = "ts"
            long r5 = com.umeng.commonsdk.proguard.C2514r.f9480j     // Catch: java.lang.Exception -> L9a
        L77:
            r4.put(r3, r5)     // Catch: java.lang.Exception -> L9a
            goto L80
        L7b:
            java.lang.String r3 = "ts"
            long r5 = com.umeng.commonsdk.proguard.C2514r.f9481k     // Catch: java.lang.Exception -> L9a
            goto L77
        L80:
            r0.put(r4)     // Catch: java.lang.Exception -> L9a
            r3 = 32776(0x8008, float:4.5929E-41)
            com.umeng.commonsdk.proguard.b r4 = com.umeng.commonsdk.proguard.C2482b.m10851a(r13)     // Catch: java.lang.Exception -> L9a
            com.umeng.commonsdk.proguard.c r4 = r4.m10852a()     // Catch: java.lang.Exception -> L9a
            java.lang.String r5 = r0.toString()     // Catch: java.lang.Exception -> L9a
            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(r13, r3, r4, r5)     // Catch: java.lang.Exception -> L9a
            int r2 = r2 + 1
            goto La
        L99:
            return
        L9a:
            r0 = move-exception
            com.umeng.commonsdk.proguard.C2501e.m10904a(r13, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.proguard.C2514r.m11012f(android.content.Context):void");
    }

    /* renamed from: h */
    static /* synthetic */ int m11014h() {
        int i = f9479i;
        f9479i = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static void m11018l() {
        if (f9484n != null) {
            f9484n.unregisterListener(f9486p);
        }
        if (f9485o.size() == 40) {
            m11012f(f9475e);
            if (f9485o != null) {
                f9485o.clear();
            }
            if (f9474d != null) {
                f9474d.quit();
                f9474d = null;
            }
            f9475e = null;
            f9473c = false;
        }
    }
}
