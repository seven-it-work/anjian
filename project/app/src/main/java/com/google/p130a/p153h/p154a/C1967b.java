package com.google.p130a.p153h.p154a;

import com.google.p130a.p153h.C1962a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.google.a.h.a.b */
/* loaded from: classes.dex */
final class C1967b {

    /* renamed from: a */
    final Map<Integer, Integer> f7662a = new HashMap();

    /* renamed from: b */
    private Integer m8928b(int i) {
        return this.f7662a.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8929a(int i) {
        Integer num = this.f7662a.get(Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.f7662a.put(Integer.valueOf(i), Integer.valueOf(num.intValue() + 1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int[] m8930a() {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (Map.Entry<Integer, Integer> entry : this.f7662a.entrySet()) {
            if (entry.getValue().intValue() > i) {
                i = entry.getValue().intValue();
                arrayList.clear();
            } else if (entry.getValue().intValue() == i) {
            }
            arrayList.add(entry.getKey());
        }
        return C1962a.m8897a(arrayList);
    }
}
