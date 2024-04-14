package com.p021b.p022a.p023a.p024a;

import com.p021b.p022a.C0742ao;
import com.p021b.p022a.C0746as;

/* renamed from: com.b.a.a.a.d */
/* loaded from: classes.dex */
public final class C0635d {

    /* renamed from: a */
    public final C0742ao f1418a;

    /* renamed from: b */
    public final C0746as f1419b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0635d(C0742ao c0742ao, C0746as c0746as) {
        this.f1418a = c0742ao;
        this.f1419b = c0746as;
    }

    /* renamed from: a */
    public static boolean m1546a(C0746as c0746as, C0742ao c0742ao) {
        switch (c0746as.m1916b()) {
            case 200:
            case SET_BOTTON_VALUE:
            case SET_RADIO_GROUP_VALUE:
            case 300:
            case SET_ENABLED_VALUE:
            case 308:
            case GET_TEXT_VALUE:
            case GET_BACKCOLOR_VALUE:
            case GET_FW_VISIBLE_VALUE:
            case 414:
            case SET_WINDOW_GRAVITY_VALUE:
                break;
            case SET_VISIBLE_VALUE:
            case 307:
                if (c0746as.m1915a("Expires") == null && c0746as.m1921g().m1950c() == -1 && !c0746as.m1921g().m1952e() && !c0746as.m1921g().m1951d()) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return (c0746as.m1921g().m1949b() || c0742ao.m1900f().m1949b()) ? false : true;
    }
}
