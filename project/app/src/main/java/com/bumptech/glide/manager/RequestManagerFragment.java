package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public class RequestManagerFragment extends Fragment {

    /* renamed from: e */
    private static final String f3212e = "RMFragment";

    /* renamed from: a */
    final C1032a f3213a;

    /* renamed from: b */
    final InterfaceC1043l f3214b;

    /* renamed from: c */
    @Nullable
    C1047o f3215c;

    /* renamed from: d */
    @Nullable
    Fragment f3216d;

    /* renamed from: f */
    private final Set<RequestManagerFragment> f3217f;

    /* renamed from: g */
    @Nullable
    private RequestManagerFragment f3218g;

    /* renamed from: com.bumptech.glide.manager.RequestManagerFragment$a */
    /* loaded from: classes.dex */
    private class C1030a implements InterfaceC1043l {
        C1030a() {
        }

        @Override // com.bumptech.glide.manager.InterfaceC1043l
        @NonNull
        /* renamed from: a */
        public final Set<C1047o> mo3104a() {
            Set<RequestManagerFragment> m3102a = RequestManagerFragment.this.m3102a();
            HashSet hashSet = new HashSet(m3102a.size());
            for (RequestManagerFragment requestManagerFragment : m3102a) {
                if (requestManagerFragment.f3215c != null) {
                    hashSet.add(requestManagerFragment.f3215c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new C1032a());
    }

    @VisibleForTesting
    @SuppressLint({"ValidFragment"})
    private RequestManagerFragment(@NonNull C1032a c1032a) {
        this.f3214b = new C1030a();
        this.f3217f = new HashSet();
        this.f3213a = c1032a;
    }

    /* renamed from: a */
    private void m3092a(@Nullable Fragment fragment) {
        this.f3216d = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m3103a(fragment.getActivity());
    }

    /* renamed from: a */
    private void m3093a(RequestManagerFragment requestManagerFragment) {
        this.f3217f.add(requestManagerFragment);
    }

    /* renamed from: a */
    private void m3094a(@Nullable C1047o c1047o) {
        this.f3215c = c1047o;
    }

    @NonNull
    /* renamed from: b */
    private C1032a m3095b() {
        return this.f3213a;
    }

    /* renamed from: b */
    private void m3096b(RequestManagerFragment requestManagerFragment) {
        this.f3217f.remove(requestManagerFragment);
    }

    @TargetApi(17)
    /* renamed from: b */
    private boolean m3097b(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    @Nullable
    /* renamed from: c */
    private C1047o m3098c() {
        return this.f3215c;
    }

    @NonNull
    /* renamed from: d */
    private InterfaceC1043l m3099d() {
        return this.f3214b;
    }

    @TargetApi(17)
    @Nullable
    /* renamed from: e */
    private Fragment m3100e() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.f3216d;
    }

    /* renamed from: f */
    private void m3101f() {
        if (this.f3218g != null) {
            this.f3218g.f3217f.remove(this);
            this.f3218g = null;
        }
    }

    @NonNull
    @TargetApi(17)
    /* renamed from: a */
    final Set<RequestManagerFragment> m3102a() {
        if (equals(this.f3218g)) {
            return Collections.unmodifiableSet(this.f3217f);
        }
        if (this.f3218g == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.f3218g.m3102a()) {
            if (m3097b(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3103a(@NonNull Activity activity) {
        m3101f();
        this.f3218g = ComponentCallbacks2C0838f.m2307b(activity).f2371e.m3140a(activity.getFragmentManager(), (Fragment) null, C1042k.m3136b(activity));
        if (equals(this.f3218g)) {
            return;
        }
        this.f3218g.f3217f.add(this);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m3103a(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable(f3212e, 5)) {
                Log.w(f3212e, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f3213a.m3121c();
        m3101f();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m3101f();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f3213a.m3117a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f3213a.m3119b();
    }

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f3216d;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
