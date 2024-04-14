package org.greenrobot.eventbus.util;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.greenrobot.eventbus.C2772c;

/* renamed from: org.greenrobot.eventbus.util.d */
/* loaded from: classes2.dex */
public final class C2787d {

    /* renamed from: a */
    public final Map<Class<? extends Throwable>, Integer> f10588a = new HashMap();

    /* renamed from: a */
    private C2787d m12586a(Class<? extends Throwable> cls, int i) {
        this.f10588a.put(cls, Integer.valueOf(i));
        return this;
    }

    /* renamed from: b */
    private Integer m12587b(Throwable th) {
        Class<?> cls = th.getClass();
        Integer num = this.f10588a.get(cls);
        if (num == null) {
            Class<? extends Throwable> cls2 = null;
            for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.f10588a.entrySet()) {
                Class<? extends Throwable> key = entry.getKey();
                if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                    num = entry.getValue();
                    cls2 = key;
                }
            }
        }
        return num;
    }

    /* renamed from: a */
    public final Integer m12588a(Throwable th) {
        Throwable th2 = th;
        int i = 20;
        do {
            Class<?> cls = th2.getClass();
            Integer num = this.f10588a.get(cls);
            if (num == null) {
                Class<? extends Throwable> cls2 = null;
                for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.f10588a.entrySet()) {
                    Class<? extends Throwable> key = entry.getKey();
                    if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                        num = entry.getValue();
                        cls2 = key;
                    }
                }
            }
            if (num != null) {
                return num;
            }
            th2 = th2.getCause();
            i--;
            if (i <= 0 || th2 == th) {
                break;
            }
        } while (th2 != null);
        Log.d(C2772c.f10468a, "No specific message ressource ID found for " + th);
        return null;
    }
}
