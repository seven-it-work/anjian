package com.p021b.p022a.p023a.p028e;

/* renamed from: com.b.a.a.e.b */
/* loaded from: classes.dex */
public enum EnumC0686b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);


    /* renamed from: g */
    public final int f1617g;

    EnumC0686b(int i) {
        this.f1617g = i;
    }

    /* renamed from: a */
    public static EnumC0686b m1727a(int i) {
        for (EnumC0686b enumC0686b : values()) {
            if (enumC0686b.f1617g == i) {
                return enumC0686b;
            }
        }
        return null;
    }
}
