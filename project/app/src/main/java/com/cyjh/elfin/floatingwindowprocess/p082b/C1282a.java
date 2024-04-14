package com.cyjh.elfin.floatingwindowprocess.p082b;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.umeng.commonsdk.proguard.C2518v;

/* renamed from: com.cyjh.elfin.floatingwindowprocess.b.a */
/* loaded from: classes.dex */
public final class C1282a implements SensorEventListener {

    /* renamed from: c */
    private static final int f4830c = 3000;

    /* renamed from: d */
    private static final int f4831d = 100;

    /* renamed from: a */
    public SensorManager f4832a;

    /* renamed from: b */
    public a f4833b;

    /* renamed from: e */
    private Sensor f4834e;

    /* renamed from: f */
    private Context f4835f;

    /* renamed from: g */
    private float f4836g;

    /* renamed from: h */
    private float f4837h;

    /* renamed from: i */
    private float f4838i;

    /* renamed from: j */
    private long f4839j;

    /* renamed from: com.cyjh.elfin.floatingwindowprocess.b.a$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        void mo5939a();
    }

    public C1282a(Context context) {
        this.f4835f = context;
        m5938a();
    }

    /* renamed from: a */
    private void m5936a(a aVar) {
        this.f4833b = aVar;
    }

    /* renamed from: b */
    private void m5937b() {
        this.f4832a.unregisterListener(this);
    }

    /* renamed from: a */
    public final void m5938a() {
        this.f4832a = (SensorManager) this.f4835f.getSystemService(C2518v.f9529W);
        if (this.f4832a != null) {
            this.f4834e = this.f4832a.getDefaultSensor(1);
        }
        if (this.f4834e != null) {
            this.f4832a.registerListener(this, this.f4834e, 1);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.f4839j;
        if (j < 100) {
            return;
        }
        this.f4839j = currentTimeMillis;
        float f = sensorEvent.values[0];
        float f2 = sensorEvent.values[1];
        float f3 = sensorEvent.values[2];
        float f4 = f - this.f4836g;
        float f5 = f2 - this.f4837h;
        float f6 = f3 - this.f4838i;
        this.f4836g = f;
        this.f4837h = f2;
        this.f4838i = f3;
        if ((Math.sqrt(((f4 * f4) + (f5 * f5)) + (f6 * f6)) / j) * 10000.0d >= 3000.0d) {
            this.f4833b.mo5939a();
        }
    }
}
