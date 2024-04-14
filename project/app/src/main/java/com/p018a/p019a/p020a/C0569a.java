package com.p018a.p019a.p020a;

import android.support.annotation.NonNull;
import java.util.List;

/* renamed from: com.a.a.a.a */
/* loaded from: classes.dex */
public final class C0569a {

    /* renamed from: a */
    @NonNull
    public final List<String> f1200a;

    /* renamed from: b */
    @NonNull
    public final List<String> f1201b;

    /* renamed from: c */
    public final int f1202c;

    public C0569a(@NonNull List<String> list, @NonNull List<String> list2, int i) {
        this.f1200a = list;
        this.f1201b = list2;
        this.f1202c = i;
    }

    /* renamed from: a */
    public final String m1326a() {
        List<String> list = this.f1200a;
        StringBuilder sb = new StringBuilder();
        if (list != null) {
            String str = "";
            for (String str2 : list) {
                sb.append(str);
                sb.append(str2);
                str = "\n";
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return m1326a();
    }
}
