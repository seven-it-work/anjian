package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2513q;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.p */
/* loaded from: classes.dex */
public class C2554p extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9842a = "umtt2";

    /* renamed from: b */
    private Context f9843b;

    public C2554p(Context context) {
        super(f9842a);
        this.f9843b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return new C2513q(this.f9843b).m10994d();
    }
}
