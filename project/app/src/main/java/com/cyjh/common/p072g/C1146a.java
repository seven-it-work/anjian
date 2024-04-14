package com.cyjh.common.p072g;

import android.app.Activity;
import java.util.Iterator;
import java.util.Stack;

/* renamed from: com.cyjh.common.g.a */
/* loaded from: classes.dex */
public final class C1146a {

    /* renamed from: a */
    private static Stack<Activity> f4022a;

    /* renamed from: b */
    private static C1146a f4023b;

    private C1146a() {
    }

    /* renamed from: a */
    private static Activity m4236a(Class<?> cls) {
        Iterator<Activity> it = f4022a.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next.getClass().equals(cls)) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static C1146a m4237a() {
        if (f4023b == null) {
            f4023b = new C1146a();
        }
        return f4023b;
    }

    /* renamed from: a */
    public static void m4238a(Activity activity) {
        if (f4022a == null) {
            f4022a = new Stack<>();
        }
        f4022a.add(activity);
    }

    /* renamed from: b */
    public static void m4239b() {
        int size = f4022a.size();
        for (int i = 0; i < size; i++) {
            if (f4022a.get(i) != null && !f4022a.get(i).isFinishing()) {
                f4022a.get(i).finish();
            }
        }
        f4022a.clear();
    }

    /* renamed from: b */
    public static void m4240b(Activity activity) {
        if (activity != null) {
            f4022a.remove(activity);
            if (activity.isFinishing()) {
                return;
            }
            activity.finish();
        }
    }

    /* renamed from: b */
    private static void m4241b(Class<?> cls) {
        Iterator<Activity> it = f4022a.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (next.getClass().equals(cls)) {
                m4240b(next);
            }
        }
    }

    /* renamed from: c */
    private static Activity m4242c() {
        if (f4022a == null || f4022a.isEmpty()) {
            return null;
        }
        return f4022a.lastElement();
    }

    /* renamed from: c */
    private static void m4243c(Class<?> cls) {
        Iterator<Activity> it = f4022a.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (!next.getClass().equals(cls)) {
                m4240b(next);
            }
        }
    }

    /* renamed from: d */
    private static void m4244d() {
        m4240b(f4022a.lastElement());
    }
}
