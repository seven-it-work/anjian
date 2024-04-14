package com.cyjh.common.util.toast;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.Lifecycle;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import android.view.Window;
import com.cyjh.common.util.toast.C1194q;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.cyjh.common.util.toast.r */
/* loaded from: classes.dex */
public final class C1195r implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    static final C1195r f4233a = new C1195r();

    /* renamed from: d */
    static final Activity f4234d = new Activity();

    /* renamed from: b */
    final LinkedList<Activity> f4235b = new LinkedList<>();

    /* renamed from: c */
    final List<C1194q.d> f4236c = new CopyOnWriteArrayList();

    /* renamed from: f */
    private final Map<Activity, List<C1194q.a>> f4238f = new ConcurrentHashMap();

    /* renamed from: g */
    private int f4239g = 0;

    /* renamed from: h */
    private int f4240h = 0;

    /* renamed from: e */
    boolean f4237e = false;

    /* renamed from: com.cyjh.common.util.toast.r$2, reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass2 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Activity f4244a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AnonymousClass2(Activity activity) {
            this.f4244a = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C1195r.this.f4238f.remove(this.f4244a);
        }
    }

    C1195r() {
    }

    /* renamed from: a */
    private void m5149a(Activity activity) {
        if (activity == null) {
            return;
        }
        C1192o.m4987a(new AnonymousClass2(activity));
    }

    /* renamed from: a */
    private void m5150a(Activity activity, Lifecycle.Event event) {
        m5151a(activity, event, this.f4238f.get(activity));
        m5151a(activity, event, this.f4238f.get(f4234d));
    }

    /* renamed from: a */
    private void m5151a(Activity activity, Lifecycle.Event event, List<C1194q.a> list) {
        if (list == null) {
            return;
        }
        for (C1194q.a aVar : list) {
            if (event.equals(Lifecycle.Event.ON_CREATE)) {
                aVar.mo5134a(activity);
            } else if (!event.equals(Lifecycle.Event.ON_START) && !event.equals(Lifecycle.Event.ON_RESUME) && !event.equals(Lifecycle.Event.ON_PAUSE) && !event.equals(Lifecycle.Event.ON_STOP)) {
                event.equals(Lifecycle.Event.ON_DESTROY);
            }
        }
        if (event.equals(Lifecycle.Event.ON_DESTROY)) {
            this.f4238f.remove(activity);
        }
    }

    /* renamed from: a */
    private void m5152a(final Activity activity, boolean z) {
        try {
            if (z) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(-123, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
                return;
            }
            final Object tag = activity.getWindow().getDecorView().getTag(-123);
            if (tag instanceof Integer) {
                C1192o.m4988a(new Runnable() { // from class: com.cyjh.common.util.toast.r.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            Window window2 = activity.getWindow();
                            if (window2 != null) {
                                window2.setSoftInputMode(((Integer) tag).intValue());
                            }
                        } catch (Exception unused) {
                        }
                    }
                }, 100L);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    private void m5153a(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: a */
    private void m5154a(C1194q.a aVar) {
        m5174a(f4234d, aVar);
    }

    /* renamed from: a */
    private void m5155a(C1194q.d dVar) {
        this.f4236c.add(dVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m5156a(C1195r c1195r, Activity activity, C1194q.a aVar) {
        List<C1194q.a> list = c1195r.f4238f.get(activity);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            c1195r.f4238f.put(activity, list);
        } else if (list.contains(aVar)) {
            return;
        }
        list.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Application m5157b() {
        Object invoke;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object m5169g = m5169g();
            if (m5169g == null || (invoke = cls.getMethod("getApplication", new Class[0]).invoke(m5169g, new Object[0])) == null) {
                return null;
            }
            return (Application) invoke;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private void m5158b(Activity activity) {
        if (this.f4235b.contains(activity)) {
            if (this.f4235b.getFirst().equals(activity)) {
                return;
            } else {
                this.f4235b.remove(activity);
            }
        }
        this.f4235b.addFirst(activity);
    }

    /* renamed from: b */
    private void m5159b(Application application) {
        this.f4235b.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }

    /* renamed from: b */
    private void m5160b(C1194q.a aVar) {
        m5175b(f4234d, aVar);
    }

    /* renamed from: b */
    private void m5161b(C1194q.d dVar) {
        this.f4236c.remove(dVar);
    }

    /* renamed from: b */
    static /* synthetic */ void m5162b(C1195r c1195r, Activity activity, C1194q.a aVar) {
        List<C1194q.a> list = c1195r.f4238f.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(aVar);
    }

    /* renamed from: c */
    private Activity m5163c() {
        for (Activity activity : m5173a()) {
            if (C1178a.m4627a(activity)) {
                return activity;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m5164c(Activity activity, C1194q.a aVar) {
        List<C1194q.a> list = this.f4238f.get(activity);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            this.f4238f.put(activity, list);
        } else if (list.contains(aVar)) {
            return;
        }
        list.add(aVar);
    }

    /* renamed from: d */
    private void m5165d(Activity activity, C1194q.a aVar) {
        List<C1194q.a> list = this.f4238f.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(aVar);
    }

    /* renamed from: d */
    private boolean m5166d() {
        return !this.f4237e;
    }

    /* renamed from: e */
    private void m5167e() {
        if (this.f4236c.isEmpty()) {
            return;
        }
        Iterator<C1194q.d> it = this.f4236c.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: f */
    private static List<Activity> m5168f() {
        Object m5169g;
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            m5169g = m5169g();
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e.getMessage());
        }
        if (m5169g == null) {
            return linkedList;
        }
        Field declaredField = m5169g.getClass().getDeclaredField("mActivities");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(m5169g);
        if (!(obj instanceof Map)) {
            return linkedList;
        }
        for (Object obj2 : ((Map) obj).values()) {
            Class<?> cls = obj2.getClass();
            Field declaredField2 = cls.getDeclaredField("activity");
            declaredField2.setAccessible(true);
            Activity activity2 = (Activity) declaredField2.get(obj2);
            if (activity == null) {
                Field declaredField3 = cls.getDeclaredField("paused");
                declaredField3.setAccessible(true);
                if (!declaredField3.getBoolean(obj2)) {
                    activity = activity2;
                }
            }
            linkedList.addFirst(activity2);
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    /* renamed from: g */
    private static Object m5169g() {
        Object m5170h = m5170h();
        return m5170h != null ? m5170h : m5171i();
    }

    /* renamed from: h */
    private static Object m5170h() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: i */
    private static Object m5171i() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: j */
    private static void m5172j() {
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                    declaredField.set(null, Float.valueOf(1.0f));
                    Log.i("UtilsActivityLifecycle", "setAnimatorsEnabled: Animators are enabled now!");
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final List<Activity> m5173a() {
        if (!this.f4235b.isEmpty()) {
            return new LinkedList(this.f4235b);
        }
        this.f4235b.addAll(m5168f());
        return new LinkedList(this.f4235b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5174a(final Activity activity, final C1194q.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        C1192o.m4987a(new Runnable() { // from class: com.cyjh.common.util.toast.r.1
            @Override // java.lang.Runnable
            public final void run() {
                C1195r.m5156a(C1195r.this, activity, aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m5175b(final Activity activity, final C1194q.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        C1192o.m4987a(new Runnable() { // from class: com.cyjh.common.util.toast.r.3
            @Override // java.lang.Runnable
            public final void run() {
                C1195r.m5162b(C1195r.this, activity, aVar);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
        Locale locale;
        if (this.f4235b.size() == 0) {
            m5167e();
        }
        String string = C1188k.m4887a("Utils").f4149a.getString("KEY_LOCALE", "");
        if (!TextUtils.isEmpty(string)) {
            if ("VALUE_FOLLOW_SYSTEM".equals(string)) {
                Configuration configuration = Resources.getSystem().getConfiguration();
                locale = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
            } else {
                Locale m4869a = C1185h.m4869a(string);
                if (m4869a == null) {
                    Log.e("LanguageUtils", "The string of " + string + " is not in the correct format.");
                    C1188k.m4887a("Utils").f4149a.edit().remove("KEY_LOCALE").apply();
                }
                locale = m4869a;
            }
            if (locale != null) {
                C1185h.m4871a(activity, locale);
                C1185h.m4871a(C1194q.m5135a(), locale);
            }
        }
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                    declaredField.set(null, Float.valueOf(1.0f));
                    Log.i("UtilsActivityLifecycle", "setAnimatorsEnabled: Animators are enabled now!");
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchFieldException e2) {
                e2.printStackTrace();
            }
        }
        m5158b(activity);
        m5150a(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
        this.f4235b.remove(activity);
        C1184g.m4847a(activity);
        m5150a(activity, Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
        m5150a(activity, Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        m5158b(activity);
        if (this.f4237e) {
            this.f4237e = false;
            m5167e();
        }
        m5152a(activity, false);
        m5150a(activity, Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
        if (!this.f4237e) {
            m5158b(activity);
        }
        if (this.f4240h < 0) {
            this.f4240h++;
        } else {
            this.f4239g++;
        }
        m5150a(activity, Lifecycle.Event.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.f4240h--;
        } else {
            this.f4239g--;
            if (this.f4239g <= 0) {
                this.f4237e = true;
                m5167e();
            }
        }
        m5152a(activity, true);
        m5150a(activity, Lifecycle.Event.ON_STOP);
    }
}
