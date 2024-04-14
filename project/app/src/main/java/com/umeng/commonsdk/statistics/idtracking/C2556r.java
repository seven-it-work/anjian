package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* renamed from: com.umeng.commonsdk.statistics.idtracking.r */
/* loaded from: classes.dex */
public class C2556r extends AbstractC2539a {

    /* renamed from: a */
    public static final String f9846a = "uopdta";

    /* renamed from: b */
    private static final String f9847b = "uop";

    /* renamed from: c */
    private Context f9848c;

    public C2556r(Context context) {
        super(f9847b);
        this.f9848c = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2539a
    /* renamed from: f */
    public String mo11375f() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f9848c);
        return sharedPreferences != null ? sharedPreferences.getString(f9846a, "") : "";
    }
}
