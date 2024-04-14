package com.iflytek.voiceads.param;

import android.text.TextUtils;
import java.util.HashMap;

/* renamed from: com.iflytek.voiceads.param.f */
/* loaded from: assets/AdDex.4.0.1.dex */
public class C2295f {

    /* renamed from: a */
    HashMap<String, Object> f8619a = new HashMap<>();

    /* renamed from: a */
    public Object m10088a(String str) {
        return this.f8619a.get(str);
    }

    /* renamed from: a */
    public void m10089a(String str, Object obj) {
        m10090a(str, obj, true);
    }

    /* renamed from: a */
    public void m10090a(String str, Object obj, boolean z) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        if (z || !this.f8619a.containsKey(str)) {
            this.f8619a.put(str, obj);
        }
    }
}
