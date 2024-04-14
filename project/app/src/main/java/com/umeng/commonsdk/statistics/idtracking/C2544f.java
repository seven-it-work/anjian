package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.f */
/* loaded from: classes.dex */
public class C2544f extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9813a = "imei";

    /* renamed from: b */
    private Context f9814b;

    public C2544f(Context context) {
        super(f9813a);
        this.f9814b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return DeviceConfig.getImei(this.f9814b);
    }
}
