package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.C2532a;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.c */
/* loaded from: classes.dex */
public class C2541c extends AbstractC2539a {

    /* renamed from: a */
    private static final String f9797a = "idfa";

    /* renamed from: b */
    private Context f9798b;

    public C2541c(Context context) {
        super(f9797a);
        this.f9798b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        String m11293a = C2532a.m11293a(this.f9798b);
        return m11293a == null ? "" : m11293a;
    }
}
