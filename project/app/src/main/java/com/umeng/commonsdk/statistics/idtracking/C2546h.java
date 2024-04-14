package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2501e;
import com.umeng.commonsdk.statistics.C2530b;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.h */
/* loaded from: classes.dex */
public class C2546h extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9825a = "mac";

    /* renamed from: b */
    private Context f9826b;

    public C2546h(Context context) {
        super(f9825a);
        this.f9826b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        try {
            return DeviceConfig.getMac(this.f9826b);
        } catch (Exception e) {
            if (C2530b.f9733f) {
                e.printStackTrace();
            }
            C2501e.m10904a(this.f9826b, e);
            return null;
        }
    }
}
