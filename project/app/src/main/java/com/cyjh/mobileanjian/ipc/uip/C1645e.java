package com.cyjh.mobileanjian.ipc.uip;

import android.R;
import android.content.Context;
import android.widget.ArrayAdapter;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.uip.e */
/* loaded from: classes.dex */
public final class C1645e extends ArrayAdapter<String> {

    /* renamed from: a */
    List<String> f6387a;

    public C1645e(Context context, List<String> list) {
        super(context, (int) R.layout.simple_spinner_item, list);
        this.f6387a = list;
    }

    /* renamed from: a */
    private List<String> m7460a() {
        return this.f6387a;
    }
}
