package com.core.util.share;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.core.util.share.a */
/* loaded from: classes.dex */
final class C1123a {

    /* renamed from: a */
    static final int f3825a = 1;

    /* renamed from: b */
    static final int f3826b = 2;

    /* renamed from: c */
    static final int f3827c = 3;

    /* renamed from: d */
    static final int f3828d = 4;

    /* renamed from: e */
    static final int f3829e = 5;

    /* renamed from: f */
    static final int f3830f = 6;

    /* renamed from: g */
    static final int f3831g = 1;

    /* renamed from: h */
    static final int f3832h = 2;

    /* renamed from: i */
    static final int f3833i = 3;

    /* renamed from: j */
    static final int f3834j = 4;

    /* renamed from: k */
    static final int f3835k = 5;

    /* renamed from: l */
    static final int f3836l = 6;

    /* renamed from: m */
    static final String f3837m = "key_key";

    /* renamed from: n */
    static final String f3838n = "key_value";

    /* renamed from: o */
    static final String f3839o = "key_value_type";

    /* renamed from: p */
    static final String f3840p = "key_op_type";

    /* renamed from: q */
    @NonNull
    Bundle f3841q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123a() {
        this.f3841q = new Bundle();
    }

    public C1123a(@NonNull Bundle bundle) {
        this.f3841q = bundle;
    }

    /* renamed from: a */
    private String m4148a() {
        return this.f3841q.getString(f3837m, null);
    }

    /* renamed from: b */
    private int m4149b() {
        return this.f3841q.getInt(f3839o, 0);
    }

    /* renamed from: b */
    private long m4150b(long j) {
        return this.f3841q.getLong(f3838n, j);
    }

    /* renamed from: b */
    private boolean m4151b(boolean z) {
        return this.f3841q.getBoolean(f3838n, z);
    }

    /* renamed from: c */
    private int m4152c() {
        return this.f3841q.getInt(f3840p, 0);
    }

    /* renamed from: c */
    private C1123a m4153c(int i) {
        this.f3841q.putInt(f3839o, i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C1123a m4154c(String str) {
        return new C1123a().m4166a(str).m4164a(1);
    }

    /* renamed from: d */
    private float m4155d() {
        return this.f3841q.getFloat(f3838n);
    }

    /* renamed from: d */
    private int m4156d(int i) {
        return this.f3841q.getInt(f3838n, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static C1123a m4157d(String str) {
        return new C1123a().m4166a(str).m4164a(2);
    }

    /* renamed from: e */
    private String m4158e(String str) {
        return this.f3841q.getString(f3838n, str);
    }

    /* renamed from: e */
    private Set<String> m4159e() {
        ArrayList<String> stringArrayList = this.f3841q.getStringArrayList(f3838n);
        if (stringArrayList == null) {
            return null;
        }
        return new HashSet(stringArrayList);
    }

    /* renamed from: f */
    private Bundle m4160f() {
        return this.f3841q;
    }

    /* renamed from: f */
    private static C1123a m4161f(String str) {
        return new C1123a().m4166a(str).m4164a(4);
    }

    /* renamed from: g */
    private static C1123a m4162g() {
        return new C1123a().m4164a(3);
    }

    /* renamed from: a */
    public final C1123a m4163a(float f) {
        this.f3841q.putInt(f3839o, 4);
        this.f3841q.putFloat(f3838n, f);
        return this;
    }

    /* renamed from: a */
    public final C1123a m4164a(int i) {
        this.f3841q.putInt(f3840p, i);
        return this;
    }

    /* renamed from: a */
    public final C1123a m4165a(long j) {
        this.f3841q.putInt(f3839o, 3);
        this.f3841q.putLong(f3838n, j);
        return this;
    }

    /* renamed from: a */
    public final C1123a m4166a(String str) {
        this.f3841q.putString(f3837m, str);
        return this;
    }

    /* renamed from: a */
    public final C1123a m4167a(Set<String> set) {
        this.f3841q.putInt(f3839o, 6);
        this.f3841q.putStringArrayList(f3838n, set == null ? null : new ArrayList<>(set));
        return this;
    }

    /* renamed from: a */
    public final C1123a m4168a(boolean z) {
        this.f3841q.putInt(f3839o, 5);
        this.f3841q.putBoolean(f3838n, z);
        return this;
    }

    /* renamed from: b */
    public final C1123a m4169b(int i) {
        this.f3841q.putInt(f3839o, 2);
        this.f3841q.putInt(f3838n, i);
        return this;
    }

    /* renamed from: b */
    public final C1123a m4170b(String str) {
        this.f3841q.putInt(f3839o, 1);
        this.f3841q.putString(f3838n, str);
        return this;
    }
}
