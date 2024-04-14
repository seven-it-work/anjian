package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2518v;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.i */
/* loaded from: classes.dex */
public class C2547i extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9827a = "newumid";

    /* renamed from: b */
    private Context f9828b;

    public C2547i(Context context) {
        super(f9827a);
        this.f9828b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        return UMEnvelopeBuild.imprintProperty(this.f9828b, C2518v.f9559e, null);
    }
}
