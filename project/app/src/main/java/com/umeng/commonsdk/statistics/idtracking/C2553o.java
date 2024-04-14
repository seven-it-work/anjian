package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.o */
/* loaded from: classes.dex */
public class C2553o extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9840a = "umtt3";

    /* renamed from: b */
    private Context f9841b;

    public C2553o(Context context) {
        super(f9840a);
        this.f9841b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9841b).m10995e();
    }
}
