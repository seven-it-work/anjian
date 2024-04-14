package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.q */
/* loaded from: classes.dex */
public class C2555q extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9844a = "umtt0";

    /* renamed from: b */
    private Context f9845b;

    public C2555q(Context context) {
        super(f9844a);
        this.f9845b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9845b).m10992b();
    }
}
