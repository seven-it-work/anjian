package com.cyjh.common.util.toast;

import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import com.cyjh.elfin.p073a.C1225b;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.common.util.toast.b */
/* loaded from: classes.dex */
public final class C1179b {

    /* renamed from: a */
    private static List<Field> f4128a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.common.util.toast.b$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            C1179b.m4684a(Resources.getSystem(), Resources.getSystem().getDisplayMetrics().xdpi);
        }
    }

    private C1179b() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    private static int m4679a(float f) {
        return (int) (((f * C1194q.m5135a().getResources().getDisplayMetrics().xdpi) / 72.0f) + 0.5d);
    }

    /* renamed from: a */
    private static int m4680a(@NonNull Resources resources) {
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", C1225b.f4510b);
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @NonNull
    /* renamed from: a */
    private static Resources m4681a(@NonNull Resources resources, int i) {
        m4684a(resources, (resources.getDisplayMetrics().widthPixels * 72.0f) / i);
        return resources;
    }

    /* renamed from: a */
    private static DisplayMetrics m4682a(Resources resources, Field field) {
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: a */
    private static Runnable m4683a() {
        return new AnonymousClass1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4684a(@NonNull Resources resources, float f) {
        resources.getDisplayMetrics().xdpi = f;
        C1194q.m5135a().getResources().getDisplayMetrics().xdpi = f;
        if (f4128a != null) {
            m4692c(resources, f);
            return;
        }
        f4128a = new ArrayList();
        Class<?> cls = resources.getClass();
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields == null || declaredFields.length <= 0) {
                return;
            }
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics m4682a = m4682a(resources, field);
                    if (m4682a != null) {
                        f4128a.add(field);
                        m4682a.xdpi = f;
                    }
                }
            }
            cls = cls.getSuperclass();
        } while (cls != null);
    }

    /* renamed from: b */
    private static int m4685b(float f) {
        return (int) (((f * 72.0f) / C1194q.m5135a().getResources().getDisplayMetrics().xdpi) + 0.5d);
    }

    @NonNull
    /* renamed from: b */
    private static Resources m4686b(@NonNull Resources resources) {
        m4684a(resources, Resources.getSystem().getDisplayMetrics().density * 72.0f);
        return resources;
    }

    @NonNull
    /* renamed from: b */
    private static Resources m4687b(@NonNull Resources resources, int i) {
        m4684a(resources, ((resources.getDisplayMetrics().heightPixels + 0) * 72.0f) / i);
        return resources;
    }

    /* renamed from: b */
    private static void m4688b() {
        m4684a(Resources.getSystem(), Resources.getSystem().getDisplayMetrics().xdpi);
    }

    /* renamed from: b */
    private static void m4689b(Resources resources, float f) {
        if (f4128a != null) {
            m4692c(resources, f);
            return;
        }
        f4128a = new ArrayList();
        Class<?> cls = resources.getClass();
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            if (declaredFields == null || declaredFields.length <= 0) {
                return;
            }
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics m4682a = m4682a(resources, field);
                    if (m4682a != null) {
                        f4128a.add(field);
                        m4682a.xdpi = f;
                    }
                }
            }
            cls = cls.getSuperclass();
        } while (cls != null);
    }

    @NonNull
    /* renamed from: c */
    private static Resources m4690c(@NonNull Resources resources, int i) {
        m4684a(resources, ((resources.getDisplayMetrics().heightPixels + 0) * 72.0f) / i);
        return resources;
    }

    /* renamed from: c */
    private static void m4692c(Resources resources, float f) {
        Iterator<Field> it = f4128a.iterator();
        while (it.hasNext()) {
            try {
                DisplayMetrics displayMetrics = (DisplayMetrics) it.next().get(resources);
                if (displayMetrics != null) {
                    displayMetrics.xdpi = f;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
