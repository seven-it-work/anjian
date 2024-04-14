package com.goldcoast.sdk.domain;

import android.text.TextUtils;
import com.goldcoast.sdk.p129c.C1784h;
import org.json.JSONArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.i */
/* loaded from: classes.dex */
public final class RunnableC1794i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EntryPoint f7074a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1794i(EntryPoint entryPoint) {
        this.f7074a = entryPoint;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1784h.m8124a();
        String m8125a = C1784h.m8125a("refer");
        if (TextUtils.isEmpty(m8125a)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(m8125a);
            if (jSONArray.length() > 0) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.f7074a.m8142a(jSONArray.get(i).toString(), i, 2);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
