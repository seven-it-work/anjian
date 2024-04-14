package com.umeng.commonsdk.stateless;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2465aj;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.common.C2536e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.stateless.c */
/* loaded from: classes.dex */
public class C2525c {

    /* renamed from: e */
    private String f9699e;

    /* renamed from: j */
    private int f9704j;

    /* renamed from: k */
    private int f9705k;

    /* renamed from: l */
    private byte[] f9706l;

    /* renamed from: m */
    private byte[] f9707m;

    /* renamed from: a */
    private final byte[] f9695a = {0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b */
    private final int f9696b = 1;

    /* renamed from: c */
    private final int f9697c = 0;

    /* renamed from: d */
    private String f9698d = "1.0";

    /* renamed from: f */
    private byte[] f9700f = null;

    /* renamed from: g */
    private byte[] f9701g = null;

    /* renamed from: h */
    private byte[] f9702h = null;

    /* renamed from: i */
    private int f9703i = 0;

    /* renamed from: n */
    private boolean f9708n = false;

    private C2525c(byte[] bArr, String str, byte[] bArr2) throws Exception {
        this.f9699e = null;
        this.f9704j = 0;
        this.f9705k = 0;
        this.f9706l = null;
        this.f9707m = null;
        if (bArr == null || bArr.length == 0) {
            throw new Exception("entity is null or empty");
        }
        this.f9699e = str;
        this.f9705k = bArr.length;
        this.f9706l = C2528f.m11246a(bArr);
        this.f9704j = (int) (System.currentTimeMillis() / 1000);
        this.f9707m = bArr2;
    }

    /* renamed from: a */
    public static C2525c m11220a(Context context, String str, byte[] bArr) {
        try {
            String mac = DeviceConfig.getMac(context);
            String deviceId = DeviceConfig.getDeviceId(context);
            Object[] objArr = new Object[1];
            StringBuilder sb = new StringBuilder("[stateless] build envelope, raw is  ");
            sb.append(bArr == null);
            sb.append("m app key is ");
            sb.append(str);
            sb.append("device id is ");
            sb.append(deviceId);
            sb.append(", mac is ");
            sb.append(mac);
            objArr[0] = sb.toString();
            C2536e.m11329a("walle", objArr);
            C2525c c2525c = new C2525c(bArr, str, (deviceId + mac).getBytes());
            c2525c.m11225a();
            return c2525c;
        } catch (Exception e) {
            C2536e.m11329a("walle", "[stateless] build envelope, e is " + e.getMessage());
            C2501e.m10904a(context, e);
            return null;
        }
    }

    /* renamed from: a */
    private byte[] m11221a(byte[] bArr, int i) {
        byte[] m11248b = C2528f.m11248b(this.f9707m);
        byte[] m11248b2 = C2528f.m11248b(this.f9706l);
        int length = m11248b.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr2[i3] = m11248b2[i2];
            bArr2[i3 + 1] = m11248b[i2];
        }
        for (int i4 = 0; i4 < 2; i4++) {
            bArr2[i4] = bArr[i4];
            bArr2[(bArr2.length - i4) - 1] = bArr[(bArr.length - i4) - 1];
        }
        byte[] bArr3 = {(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) (i >>> 24)};
        for (int i5 = 0; i5 < bArr2.length; i5++) {
            bArr2[i5] = (byte) (bArr2[i5] ^ bArr3[i5 % 4]);
        }
        return bArr2;
    }

    /* renamed from: b */
    public static C2525c m11222b(Context context, String str, byte[] bArr) {
        try {
            String mac = DeviceConfig.getMac(context);
            C2525c c2525c = new C2525c(bArr, str, (DeviceConfig.getDeviceId(context) + mac).getBytes());
            c2525c.m11226a(true);
            c2525c.m11225a();
            return c2525c;
        } catch (Exception e) {
            C2501e.m10904a(context, e);
            return null;
        }
    }

    /* renamed from: c */
    private byte[] m11223c() {
        return m11221a(this.f9695a, (int) (System.currentTimeMillis() / 1000));
    }

    /* renamed from: d */
    private byte[] m11224d() {
        return C2528f.m11248b((C2528f.m11249c(this.f9700f) + this.f9703i + this.f9704j + this.f9705k + C2528f.m11249c(this.f9701g)).getBytes());
    }

    /* renamed from: a */
    public void m11225a() {
        if (this.f9700f == null) {
            this.f9700f = m11223c();
        }
        if (this.f9708n) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.f9700f, 1, bArr, 0, 16);
                this.f9706l = C2528f.m11247a(this.f9706l, bArr);
            } catch (Exception unused) {
            }
        }
        this.f9701g = m11221a(this.f9700f, this.f9704j);
        this.f9702h = m11224d();
    }

    /* renamed from: a */
    public void m11226a(boolean z) {
        this.f9708n = z;
    }

    /* renamed from: b */
    public byte[] m11227b() {
        C2524b c2524b = new C2524b();
        c2524b.m11165a(this.f9698d);
        c2524b.m11170b(this.f9699e);
        c2524b.m11174c(C2528f.m11249c(this.f9700f));
        c2524b.m11164a(this.f9703i);
        c2524b.m11169b(this.f9704j);
        c2524b.m11173c(this.f9705k);
        c2524b.m11167a(this.f9706l);
        c2524b.m11177d(this.f9708n ? 1 : 0);
        c2524b.m11178d(C2528f.m11249c(this.f9701g));
        c2524b.m11182e(C2528f.m11249c(this.f9702h));
        try {
            return new C2465aj().m10741a(c2524b);
        } catch (Exception unused) {
            return null;
        }
    }
}
