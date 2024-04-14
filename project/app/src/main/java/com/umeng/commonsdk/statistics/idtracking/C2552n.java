package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.n */
/* loaded from: classes.dex */
public class C2552n extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9838a = "umtt1";

    /* renamed from: b */
    private Context f9839b;

    public C2552n(Context context) {
        super(f9838a);
        this.f9839b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9839b).m10993c();
    }
}
