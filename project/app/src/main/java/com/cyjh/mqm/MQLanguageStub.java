package com.cyjh.mqm;

import android.app.Application;
import com.cyjh.event.C1448a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MQLanguageStub {
    public static final int SCRIPT_COMPILECODE_SUCCEED = 0;
    public static final int SCRIPT_RUNCODE_SUCCEED = 0;
    public static final int TYPE = 2;

    /* renamed from: a */
    private volatile long f6644a = 0;

    /* renamed from: b */
    private volatile long f6645b = 0;

    /* loaded from: classes.dex */
    public class MQAuxiliary {
        public MQAuxiliary() {
        }

        public native void Clear();

        public native int CompareColorEx(String str, float f);

        public native boolean FindMultiColor(int i, int i2, int i3, int i4, String str, String str2, int i5, float f, int[] iArr);

        public native void Init();

        public native void KeepCapture(boolean z);

        public native byte[] ScreenCap(int[] iArr);

        public native void SetImageCrop(boolean z, int i, int i2, int i3, int i4);

        public native void SetScreenRotation(int i);

        public native void SetScreenScale(float f, float f2);

        public native int WaitKey();
    }

    static {
        System.loadLibrary("mqm");
    }

    public static native void InitAnjianVerification(String str);

    public static native void InitElf(Application application, String str, String str2, String str3);

    public static native void InitHost(String str);

    public static native void QuitApp();

    public static native void SetHeartBeatTime(int i, int i2);

    public static native void SetIsAccessibility(boolean z);

    public static native void SetRegCode(String str);

    public native int Compile(String str, String str2, String str3, ArrayList<String> arrayList);

    public native int Debug(String str, String str2, String str3, int i);

    public byte[] DebugMessage(byte[] bArr) {
        return C1448a.m6657a();
    }

    public native void InitRunner(Application application, String str);

    public native int Pause();

    public native void Request(String str);

    public native int Resume();

    public native int Run(String str, String str2, String str3, int i, int i2, long j, String str4);

    public native int Run(String str, String str2, String str3, String str4, String str5, int i, long j);

    public native int Run(byte[] bArr, String str, String str2);

    @Deprecated
    public native int Run(byte[] bArr, String str, String str2, int i, int i2, long j);

    public native void SendFloatEvent(byte[] bArr);

    public native void SetDeviceSessionId(String str);

    public native void SetLocalDir(String str, String str2, String str3);

    public native void SetProcess(String str);

    public native void SetSid(long j);

    public native void SetWriteLog2File(boolean z);

    public native int Stop();

    public synchronized long getGundamRunner() {
        return this.f6644a;
    }

    public synchronized long getRunner() {
        return this.f6645b;
    }

    public synchronized void setGundamRunner(long j) {
        this.f6644a = j;
    }

    public synchronized void setRunner(long j) {
        this.f6645b = j;
    }
}
