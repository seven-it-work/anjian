package com.bumptech.glide.manager;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.bumptech.glide.manager.k */
/* loaded from: classes.dex */
public final class C1042k implements Handler.Callback {

    /* renamed from: a */
    @VisibleForTesting
    static final String f3240a = "com.bumptech.glide.manager";

    /* renamed from: f */
    private static final String f3241f = "RMRetriever";

    /* renamed from: g */
    private static final int f3242g = 1;

    /* renamed from: h */
    private static final int f3243h = 2;

    /* renamed from: i */
    private static final String f3244i = "key";

    /* renamed from: n */
    private static final a f3245n = new a() { // from class: com.bumptech.glide.manager.k.1
        @Override // com.bumptech.glide.manager.C1042k.a
        @NonNull
        /* renamed from: a */
        public final C1047o mo2259a(@NonNull ComponentCallbacks2C0838f componentCallbacks2C0838f, @NonNull InterfaceC1039h interfaceC1039h, @NonNull InterfaceC1043l interfaceC1043l, @NonNull Context context) {
            return new C1047o(componentCallbacks2C0838f, interfaceC1039h, interfaceC1043l, context);
        }
    };

    /* renamed from: j */
    private volatile C1047o f3250j;

    /* renamed from: k */
    private final Handler f3251k;

    /* renamed from: l */
    private final a f3252l;

    /* renamed from: b */
    @VisibleForTesting
    final Map<FragmentManager, RequestManagerFragment> f3246b = new HashMap();

    /* renamed from: c */
    @VisibleForTesting
    final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> f3247c = new HashMap();

    /* renamed from: d */
    public final ArrayMap<View, Fragment> f3248d = new ArrayMap<>();

    /* renamed from: e */
    public final ArrayMap<View, android.app.Fragment> f3249e = new ArrayMap<>();

    /* renamed from: m */
    private final Bundle f3253m = new Bundle();

    /* renamed from: com.bumptech.glide.manager.k$a */
    /* loaded from: classes.dex */
    public interface a {
        @NonNull
        /* renamed from: a */
        C1047o mo2259a(@NonNull ComponentCallbacks2C0838f componentCallbacks2C0838f, @NonNull InterfaceC1039h interfaceC1039h, @NonNull InterfaceC1043l interfaceC1043l, @NonNull Context context);
    }

    public C1042k(@Nullable a aVar) {
        this.f3252l = aVar == null ? f3245n : aVar;
        this.f3251k = new Handler(Looper.getMainLooper(), this);
    }

    @Nullable
    @Deprecated
    /* renamed from: a */
    private android.app.Fragment m3127a(@NonNull View view, @NonNull Activity activity) {
        this.f3249e.clear();
        m3147a(activity.getFragmentManager(), this.f3249e);
        View findViewById = activity.findViewById(R.id.content);
        android.app.Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f3249e.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f3249e.clear();
        return fragment;
    }

    @Nullable
    /* renamed from: a */
    private Fragment m3128a(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f3248d.clear();
        m3132a(fragmentActivity.getSupportFragmentManager().getFragments(), this.f3248d);
        View findViewById = fragmentActivity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(findViewById) && (fragment = this.f3248d.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f3248d.clear();
        return fragment;
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    private C1047o m3129a(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment m3140a = m3140a(fragmentManager, fragment, z);
        C1047o c1047o = m3140a.f3215c;
        if (c1047o != null) {
            return c1047o;
        }
        C1047o mo2259a = this.f3252l.mo2259a(ComponentCallbacks2C0838f.m2307b(context), m3140a.f3213a, m3140a.f3214b, context);
        m3140a.f3215c = mo2259a;
        return mo2259a;
    }

    @NonNull
    /* renamed from: a */
    private C1047o m3130a(@NonNull Context context, @NonNull android.support.v4.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        SupportRequestManagerFragment m3141a = m3141a(fragmentManager, fragment, z);
        C1047o c1047o = m3141a.f3223c;
        if (c1047o != null) {
            return c1047o;
        }
        C1047o mo2259a = this.f3252l.mo2259a(ComponentCallbacks2C0838f.m2307b(context), m3141a.f3221a, m3141a.f3222b, context);
        m3141a.f3223c = mo2259a;
        return mo2259a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    private C1047o m3131a(@NonNull View view) {
        if (!C1086k.m3496d()) {
            C1084i.m3470a(view, "Argument must not be null");
            C1084i.m3470a(view.getContext(), "Unable to obtain a request manager for a view without a Context");
            Activity m3133b = m3133b(view.getContext());
            if (m3133b != null) {
                android.app.Fragment fragment = null;
                Fragment fragment2 = null;
                if (!(m3133b instanceof FragmentActivity)) {
                    this.f3249e.clear();
                    m3147a(m3133b.getFragmentManager(), this.f3249e);
                    View findViewById = m3133b.findViewById(R.id.content);
                    while (!view.equals(findViewById) && (fragment = this.f3249e.get(view)) == null && (view.getParent() instanceof View)) {
                        view = (View) view.getParent();
                    }
                    this.f3249e.clear();
                    return fragment == null ? m3142a(m3133b) : m3143a(fragment);
                }
                FragmentActivity fragmentActivity = (FragmentActivity) m3133b;
                this.f3248d.clear();
                m3132a(fragmentActivity.getSupportFragmentManager().getFragments(), this.f3248d);
                View findViewById2 = fragmentActivity.findViewById(R.id.content);
                while (!view.equals(findViewById2) && (fragment2 = this.f3248d.get(view)) == null && (view.getParent() instanceof View)) {
                    view = (View) view.getParent();
                }
                this.f3248d.clear();
                return fragment2 != null ? m3145a(fragment2) : m3142a(m3133b);
            }
        }
        return m3144a(view.getContext().getApplicationContext());
    }

    /* renamed from: a */
    public static void m3132a(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                m3132a(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    @Nullable
    /* renamed from: b */
    public static Activity m3133b(@NonNull Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    @NonNull
    /* renamed from: b */
    private SupportRequestManagerFragment m3134b(FragmentActivity fragmentActivity) {
        return m3141a(fragmentActivity.getSupportFragmentManager(), (Fragment) null, m3136b((Activity) fragmentActivity));
    }

    @Deprecated
    /* renamed from: b */
    private void m3135b(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            this.f3253m.putInt(f3244i, i);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f3253m, f3244i);
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                if (Build.VERSION.SDK_INT >= 17) {
                    m3147a(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m3136b(Activity activity) {
        return !activity.isFinishing();
    }

    @NonNull
    /* renamed from: c */
    private C1047o m3137c(@NonNull Context context) {
        if (this.f3250j == null) {
            synchronized (this) {
                if (this.f3250j == null) {
                    this.f3250j = this.f3252l.mo2259a(ComponentCallbacks2C0838f.m2307b(context.getApplicationContext()), new C1033b(), new C1038g(), context.getApplicationContext());
                }
            }
        }
        return this.f3250j;
    }

    @TargetApi(17)
    /* renamed from: c */
    private static void m3138c(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @NonNull
    @Deprecated
    /* renamed from: d */
    private RequestManagerFragment m3139d(Activity activity) {
        return m3140a(activity.getFragmentManager(), (android.app.Fragment) null, m3136b(activity));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final RequestManagerFragment m3140a(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag(f3240a);
        if (requestManagerFragment == null && (requestManagerFragment = this.f3246b.get(fragmentManager)) == null) {
            requestManagerFragment = new RequestManagerFragment();
            requestManagerFragment.f3216d = fragment;
            if (fragment != null && fragment.getActivity() != null) {
                requestManagerFragment.m3103a(fragment.getActivity());
            }
            if (z) {
                requestManagerFragment.f3213a.m3117a();
            }
            this.f3246b.put(fragmentManager, requestManagerFragment);
            fragmentManager.beginTransaction().add(requestManagerFragment, f3240a).commitAllowingStateLoss();
            this.f3251k.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return requestManagerFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: a */
    public final SupportRequestManagerFragment m3141a(@NonNull android.support.v4.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag(f3240a);
        if (supportRequestManagerFragment == null && (supportRequestManagerFragment = this.f3247c.get(fragmentManager)) == null) {
            supportRequestManagerFragment = new SupportRequestManagerFragment();
            supportRequestManagerFragment.f3224d = fragment;
            if (fragment != null && fragment.getActivity() != null) {
                supportRequestManagerFragment.m3116a(fragment.getActivity());
            }
            if (z) {
                supportRequestManagerFragment.f3221a.m3117a();
            }
            this.f3247c.put(fragmentManager, supportRequestManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestManagerFragment, f3240a).commitAllowingStateLoss();
            this.f3251k.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return supportRequestManagerFragment;
    }

    @NonNull
    /* renamed from: a */
    public final C1047o m3142a(@NonNull Activity activity) {
        if (C1086k.m3496d()) {
            return m3144a(activity.getApplicationContext());
        }
        m3138c(activity);
        return m3129a(activity, activity.getFragmentManager(), (android.app.Fragment) null, m3136b(activity));
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    /* renamed from: a */
    public final C1047o m3143a(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        }
        if (C1086k.m3496d() || Build.VERSION.SDK_INT < 17) {
            return m3144a(fragment.getActivity().getApplicationContext());
        }
        return m3129a(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    /* renamed from: a */
    public final C1047o m3144a(@NonNull Context context) {
        while (context != null) {
            if (C1086k.m3494c() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return m3146a((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return m3142a((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            return m3137c(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @NonNull
    /* renamed from: a */
    public final C1047o m3145a(@NonNull Fragment fragment) {
        C1084i.m3470a(fragment.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (C1086k.m3496d()) {
            return m3144a(fragment.getActivity().getApplicationContext());
        }
        return m3130a(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    /* renamed from: a */
    public final C1047o m3146a(@NonNull FragmentActivity fragmentActivity) {
        if (C1086k.m3496d()) {
            return m3144a(fragmentActivity.getApplicationContext());
        }
        m3138c((Activity) fragmentActivity);
        return m3130a(fragmentActivity, fragmentActivity.getSupportFragmentManager(), (Fragment) null, m3136b((Activity) fragmentActivity));
    }

    @TargetApi(26)
    @Deprecated
    /* renamed from: a */
    public final void m3147a(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    m3147a(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            this.f3253m.putInt(f3244i, i);
            android.app.Fragment fragment2 = null;
            try {
                fragment2 = fragmentManager.getFragment(this.f3253m, f3244i);
            } catch (Exception unused) {
            }
            if (fragment2 == null) {
                return;
            }
            if (fragment2.getView() != null) {
                arrayMap.put(fragment2.getView(), fragment2);
                if (Build.VERSION.SDK_INT >= 17) {
                    m3147a(fragment2.getChildFragmentManager(), arrayMap);
                }
            }
            i = i2;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Map map;
        Object remove;
        Object obj = null;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                map = this.f3246b;
                remove = map.remove(obj);
                break;
            case 2:
                obj = (android.support.v4.app.FragmentManager) message.obj;
                map = this.f3247c;
                remove = map.remove(obj);
                break;
            default:
                z = false;
                remove = null;
                break;
        }
        if (z && remove == null && Log.isLoggable(f3241f, 5)) {
            Log.w(f3241f, "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
