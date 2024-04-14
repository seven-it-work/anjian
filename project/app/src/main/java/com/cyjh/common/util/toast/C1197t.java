package com.cyjh.common.util.toast;

import android.os.Build;
import android.support.annotation.LayoutRes;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.cyjh.common.util.toast.t */
/* loaded from: classes.dex */
public final class C1197t {
    /* renamed from: a */
    private static View m5216a(@LayoutRes int i) {
        return ((LayoutInflater) C1194q.m5135a().getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    /* renamed from: a */
    private static void m5217a(View view) {
        view.setFocusable(false);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup == null) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setFocusable(false);
            if (childAt instanceof ViewGroup) {
                m5217a(childAt);
            }
        }
    }

    /* renamed from: a */
    private static void m5218a(View view, boolean z) {
        m5219a(view, z, null);
    }

    /* renamed from: a */
    private static void m5219a(View view, boolean z, View... viewArr) {
        if (view == null) {
            return;
        }
        if (viewArr != null) {
            for (View view2 : viewArr) {
                if (view == view2) {
                    return;
                }
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m5219a(viewGroup.getChildAt(i), z, viewArr);
            }
        }
        view.setEnabled(z);
    }

    /* renamed from: a */
    private static void m5220a(Runnable runnable) {
        C1192o.m4987a(runnable);
    }

    /* renamed from: a */
    private static void m5221a(Runnable runnable, long j) {
        C1192o.m4988a(runnable, j);
    }

    /* renamed from: a */
    private static boolean m5222a() {
        if (Build.VERSION.SDK_INT >= 17) {
            if (TextUtils.getLayoutDirectionFromLocale(Build.VERSION.SDK_INT >= 24 ? C1194q.m5135a().getResources().getConfiguration().getLocales().get(0) : C1194q.m5135a().getResources().getConfiguration().locale) == 1) {
                return true;
            }
        }
        return false;
    }
}
