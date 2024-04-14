package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.m */
/* loaded from: classes.dex */
public class C2551m extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9836a = "umtt4";

    /* renamed from: b */
    private Context f9837b;

    public C2551m(Context context) {
        super(f9836a);
        this.f9837b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9837b).m10996f();
    }
}
