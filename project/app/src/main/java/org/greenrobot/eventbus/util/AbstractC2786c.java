package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import android.util.Log;
import org.greenrobot.eventbus.C2772c;
import org.greenrobot.eventbus.util.ErrorDialogFragments;

/* renamed from: org.greenrobot.eventbus.util.c */
/* loaded from: classes2.dex */
public abstract class AbstractC2786c<T> {

    /* renamed from: a */
    protected final C2785b f10587a;

    @TargetApi(11)
    /* renamed from: org.greenrobot.eventbus.util.c$a */
    /* loaded from: classes2.dex */
    public static class a extends AbstractC2786c<Fragment> {
        private a(C2785b c2785b) {
            super(c2785b);
        }

        /* renamed from: b */
        private static Fragment m12584b(Bundle bundle) {
            ErrorDialogFragments.Honeycomb honeycomb = new ErrorDialogFragments.Honeycomb();
            honeycomb.setArguments(bundle);
            return honeycomb;
        }

        @Override // org.greenrobot.eventbus.util.AbstractC2786c
        /* renamed from: a */
        protected final /* synthetic */ Fragment mo12582a(Bundle bundle) {
            ErrorDialogFragments.Honeycomb honeycomb = new ErrorDialogFragments.Honeycomb();
            honeycomb.setArguments(bundle);
            return honeycomb;
        }
    }

    /* renamed from: org.greenrobot.eventbus.util.c$b */
    /* loaded from: classes2.dex */
    public static class b extends AbstractC2786c<android.support.v4.app.Fragment> {
        private b(C2785b c2785b) {
            super(c2785b);
        }

        /* renamed from: b */
        private static android.support.v4.app.Fragment m12585b(Bundle bundle) {
            ErrorDialogFragments.Support support = new ErrorDialogFragments.Support();
            support.setArguments(bundle);
            return support;
        }

        @Override // org.greenrobot.eventbus.util.AbstractC2786c
        /* renamed from: a */
        protected final /* synthetic */ android.support.v4.app.Fragment mo12582a(Bundle bundle) {
            ErrorDialogFragments.Support support = new ErrorDialogFragments.Support();
            support.setArguments(bundle);
            return support;
        }
    }

    protected AbstractC2786c(C2785b c2785b) {
        this.f10587a = c2785b;
    }

    /* renamed from: a */
    private String m12580a() {
        return this.f10587a.f10578a.getString(this.f10587a.f10579b);
    }

    /* renamed from: a */
    private String m12581a(C2789f c2789f) {
        int i;
        C2785b c2785b = this.f10587a;
        Throwable th = c2789f.f10589a;
        Integer m12588a = c2785b.f10581d.m12588a(th);
        if (m12588a != null) {
            i = m12588a.intValue();
        } else {
            Log.d(C2772c.f10468a, "No specific message ressource ID found for " + th);
            i = c2785b.f10580c;
        }
        return this.f10587a.f10578a.getString(i);
    }

    /* renamed from: a */
    protected abstract T mo12582a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final T m12583a(C2789f c2789f, boolean z, Bundle bundle) {
        int i;
        if (c2789f.m12592b()) {
            return null;
        }
        Bundle bundle2 = bundle != null ? (Bundle) bundle.clone() : new Bundle();
        if (!bundle2.containsKey(ErrorDialogManager.f10555d)) {
            bundle2.putString(ErrorDialogManager.f10555d, this.f10587a.f10578a.getString(this.f10587a.f10579b));
        }
        if (!bundle2.containsKey(ErrorDialogManager.f10556e)) {
            C2785b c2785b = this.f10587a;
            Throwable th = c2789f.f10589a;
            Integer m12588a = c2785b.f10581d.m12588a(th);
            if (m12588a != null) {
                i = m12588a.intValue();
            } else {
                Log.d(C2772c.f10468a, "No specific message ressource ID found for " + th);
                i = c2785b.f10580c;
            }
            bundle2.putString(ErrorDialogManager.f10556e, this.f10587a.f10578a.getString(i));
        }
        if (!bundle2.containsKey(ErrorDialogManager.f10557f)) {
            bundle2.putBoolean(ErrorDialogManager.f10557f, z);
        }
        if (!bundle2.containsKey(ErrorDialogManager.f10559h) && this.f10587a.f10586i != null) {
            bundle2.putSerializable(ErrorDialogManager.f10559h, this.f10587a.f10586i);
        }
        if (!bundle2.containsKey(ErrorDialogManager.f10558g) && this.f10587a.f10585h != 0) {
            bundle2.putInt(ErrorDialogManager.f10558g, this.f10587a.f10585h);
        }
        return mo12582a(bundle2);
    }
}
