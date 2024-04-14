package com.cyjh.mobileanjian.ipc.utils;

import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import java.util.HashMap;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.l */
/* loaded from: classes.dex */
public final class C1658l {

    /* renamed from: a */
    private static final HashMap<String, Ipc.FundType> f6404a = new HashMap<String, Ipc.FundType>() { // from class: com.cyjh.mobileanjian.ipc.utils.l.1
        {
            put("void", Ipc.FundType.VOID);
            put("boolean", Ipc.FundType.BOOLEAN);
            put("int", Ipc.FundType.INT);
            put("long", Ipc.FundType.LONG);
            put("float", Ipc.FundType.FLOAT);
            put("double", Ipc.FundType.DOUBLE);
            put("String", Ipc.FundType.STRING);
        }
    };

    /* renamed from: a */
    public static Ipc.FundType m7513a(String str) {
        return C1662p.m7517a(str) ? Ipc.FundType.VOID : f6404a.get(str);
    }
}
