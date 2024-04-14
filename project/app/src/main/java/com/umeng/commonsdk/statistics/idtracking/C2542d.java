package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.d */
/* loaded from: classes.dex */
public class C2542d extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9799a = "idmd5";

    /* renamed from: b */
    private Context f9800b;

    public C2542d(Context context) {
        super("idmd5");
        this.f9800b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.f9800b);
    }
}
