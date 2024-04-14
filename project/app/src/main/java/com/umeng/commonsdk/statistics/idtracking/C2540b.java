package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.b */
/* loaded from: classes.dex */
public class C2540b extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9795a = "android_id";

    /* renamed from: b */
    private Context f9796b;

    public C2540b(Context context) {
        super("android_id");
        this.f9796b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return DeviceConfig.getAndroidId(this.f9796b);
    }
}
