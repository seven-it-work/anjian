package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.l */
/* loaded from: classes.dex */
public class C2550l extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9834a = "umtt5";

    /* renamed from: b */
    private Context f9835b;

    public C2550l(Context context) {
        super(f9834a);
        this.f9835b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9835b).m10997g();
    }
}
