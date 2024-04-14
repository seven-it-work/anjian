package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class SupportRequestManagerFragment extends Fragment {

    /* renamed from: e */
    private static final String f3220e = "SupportRMFragment";

    /* renamed from: a */
    final C1032a f3221a;

    /* renamed from: b */
    final InterfaceC1043l f3222b;

    /* renamed from: c */
    @Nullable
    C1047o f3223c;

    /* renamed from: d */
    @Nullable
    Fragment f3224d;

    /* renamed from: f */
    private final Set<SupportRequestManagerFragment> f3225f;

    /* renamed from: g */
    @Nullable
    private SupportRequestManagerFragment f3226g;

    /* renamed from: com.bumptech.glide.manager.SupportRequestManagerFragment$a */
    /* loaded from: classes.dex */
    private class C1031a implements InterfaceC1043l {
        C1031a() {
        }

        @Override // com.bumptech.glide.manager.InterfaceC1043l
        @NonNull
        /* renamed from: a */
        public final Set<C1047o> mo3104a() {
            Set<SupportRequestManagerFragment> m3115a = SupportRequestManagerFragment.this.m3115a();
            HashSet hashSet = new HashSet(m3115a.size());
            for (SupportRequestManagerFragment supportRequestManagerFragment : m3115a) {
                if (supportRequestManagerFragment.f3223c != null) {
                    hashSet.add(supportRequestManagerFragment.f3223c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new C1032a());
    }

    @VisibleForTesting
    @SuppressLint({"ValidFragment"})
    private SupportRequestManagerFragment(@NonNull C1032a c1032a) {
        this.f3222b = new C1031a();
        this.f3225f = new HashSet();
        this.f3221a = c1032a;
    }

    /* renamed from: a */
    private void m3105a(@Nullable Fragment fragment) {
        this.f3224d = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m3116a(fragment.getActivity());
    }

    /* renamed from: a */
    private void m3106a(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f3225f.add(supportRequestManagerFragment);
    }

    /* renamed from: a */
    private void m3107a(@Nullable C1047o c1047o) {
        this.f3223c = c1047o;
    }

    @NonNull
    /* renamed from: b */
    private C1032a m3108b() {
        return this.f3221a;
    }

    /* renamed from: b */
    private void m3109b(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f3225f.remove(supportRequestManagerFragment);
    }

    /* renamed from: b */
    private boolean m3110b(@NonNull Fragment fragment) {
        Fragment m3113e = m3113e();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(m3113e)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    @Nullable
    /* renamed from: c */
    private C1047o m3111c() {
        return this.f3223c;
    }

    @NonNull
    /* renamed from: d */
    private InterfaceC1043l m3112d() {
        return this.f3222b;
    }

    @Nullable
    /* renamed from: e */
    private Fragment m3113e() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f3224d;
    }

    /* renamed from: f */
    private void m3114f() {
        if (this.f3226g != null) {
            this.f3226g.f3225f.remove(this);
            this.f3226g = null;
        }
    }

    @NonNull
    /* renamed from: a */
    final Set<SupportRequestManagerFragment> m3115a() {
        if (this.f3226g == null) {
            return Collections.emptySet();
        }
        if (equals(this.f3226g)) {
            return Collections.unmodifiableSet(this.f3225f);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment supportRequestManagerFragment : this.f3226g.m3115a()) {
            if (m3110b(supportRequestManagerFragment.m3113e())) {
                hashSet.add(supportRequestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3116a(@NonNull FragmentActivity fragmentActivity) {
        m3114f();
        this.f3226g = ComponentCallbacks2C0838f.m2307b(fragmentActivity).f2371e.m3141a(fragmentActivity.getSupportFragmentManager(), (Fragment) null, C1042k.m3136b((Activity) fragmentActivity));
        if (equals(this.f3226g)) {
            return;
        }
        this.f3226g.f3225f.add(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            m3116a(getActivity());
        } catch (IllegalStateException e) {
            if (Log.isLoggable(f3220e, 5)) {
                Log.w(f3220e, "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f3221a.m3121c();
        m3114f();
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f3224d = null;
        m3114f();
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.f3221a.m3117a();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.f3221a.m3119b();
    }

    @Override // android.support.v4.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m3113e() + "}";
    }
}
