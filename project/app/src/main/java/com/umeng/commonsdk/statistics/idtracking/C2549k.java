package com.umeng.commonsdk.statistics.idtracking;

import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.k */
/* loaded from: classes.dex */
public class C2549k extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9833a = "serial";

    public C2549k() {
        super(f9833a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return DeviceConfig.getSerial();
    }
}
