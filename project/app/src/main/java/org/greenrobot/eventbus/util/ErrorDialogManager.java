package org.greenrobot.eventbus.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import org.greenrobot.eventbus.C2772c;

/* loaded from: classes2.dex */
public final class ErrorDialogManager {

    /* renamed from: a */
    public static AbstractC2786c<?> f10552a = null;

    /* renamed from: b */
    protected static final String f10553b = "de.greenrobot.eventbus.error_dialog";

    /* renamed from: c */
    protected static final String f10554c = "de.greenrobot.eventbus.error_dialog_manager";

    /* renamed from: d */
    public static final String f10555d = "de.greenrobot.eventbus.errordialog.title";

    /* renamed from: e */
    public static final String f10556e = "de.greenrobot.eventbus.errordialog.message";

    /* renamed from: f */
    public static final String f10557f = "de.greenrobot.eventbus.errordialog.finish_after_dialog";

    /* renamed from: g */
    public static final String f10558g = "de.greenrobot.eventbus.errordialog.icon_id";

    /* renamed from: h */
    public static final String f10559h = "de.greenrobot.eventbus.errordialog.event_type_on_close";

    @TargetApi(11)
    /* loaded from: classes2.dex */
    public static class HoneycombManagerFragment extends Fragment {

        /* renamed from: a */
        protected boolean f10560a;

        /* renamed from: b */
        protected Bundle f10561b;

        /* renamed from: c */
        private C2772c f10562c;

        /* renamed from: d */
        private Object f10563d;

        /* renamed from: a */
        public static void m12555a(Activity activity, Object obj, boolean z, Bundle bundle) {
            FragmentManager fragmentManager = activity.getFragmentManager();
            HoneycombManagerFragment honeycombManagerFragment = (HoneycombManagerFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f10554c);
            if (honeycombManagerFragment == null) {
                honeycombManagerFragment = new HoneycombManagerFragment();
                fragmentManager.beginTransaction().add(honeycombManagerFragment, ErrorDialogManager.f10554c).commit();
                fragmentManager.executePendingTransactions();
            }
            honeycombManagerFragment.f10560a = z;
            honeycombManagerFragment.f10561b = bundle;
            honeycombManagerFragment.f10563d = obj;
        }

        /* renamed from: a */
        private void m12556a(C2789f c2789f) {
            if (ErrorDialogManager.m12551a(this.f10563d, c2789f)) {
                ErrorDialogManager.m12550a(c2789f);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f10553b);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                DialogFragment dialogFragment2 = (DialogFragment) ErrorDialogManager.f10552a.m12583a(c2789f, this.f10560a, this.f10561b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.f10553b);
                }
            }
        }

        @Override // android.app.Fragment
        public void onPause() {
            this.f10562c.m12505b(this);
            super.onPause();
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            this.f10562c = ErrorDialogManager.f10552a.f10587a.m12579a();
            this.f10562c.m12503a(this);
        }
    }

    /* loaded from: classes2.dex */
    public static class SupportManagerFragment extends android.support.v4.app.Fragment {

        /* renamed from: a */
        protected boolean f10564a;

        /* renamed from: b */
        protected Bundle f10565b;

        /* renamed from: c */
        private C2772c f10566c;

        /* renamed from: d */
        private boolean f10567d;

        /* renamed from: e */
        private Object f10568e;

        /* renamed from: a */
        public static void m12557a(Activity activity, Object obj, boolean z, Bundle bundle) {
            android.support.v4.app.FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
            SupportManagerFragment supportManagerFragment = (SupportManagerFragment) supportFragmentManager.findFragmentByTag(ErrorDialogManager.f10554c);
            if (supportManagerFragment == null) {
                supportManagerFragment = new SupportManagerFragment();
                supportFragmentManager.beginTransaction().add(supportManagerFragment, ErrorDialogManager.f10554c).commit();
                supportFragmentManager.executePendingTransactions();
            }
            supportManagerFragment.f10564a = z;
            supportManagerFragment.f10565b = bundle;
            supportManagerFragment.f10568e = obj;
        }

        /* renamed from: a */
        private void m12558a(C2789f c2789f) {
            if (ErrorDialogManager.m12551a(this.f10568e, c2789f)) {
                ErrorDialogManager.m12550a(c2789f);
                android.support.v4.app.FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                android.support.v4.app.DialogFragment dialogFragment = (android.support.v4.app.DialogFragment) fragmentManager.findFragmentByTag(ErrorDialogManager.f10553b);
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                android.support.v4.app.DialogFragment dialogFragment2 = (android.support.v4.app.DialogFragment) ErrorDialogManager.f10552a.m12583a(c2789f, this.f10564a, this.f10565b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, ErrorDialogManager.f10553b);
                }
            }
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.f10566c = ErrorDialogManager.f10552a.f10587a.m12579a();
            this.f10566c.m12503a(this);
            this.f10567d = true;
        }

        @Override // android.support.v4.app.Fragment
        public void onPause() {
            this.f10566c.m12505b(this);
            super.onPause();
        }

        @Override // android.support.v4.app.Fragment
        public void onResume() {
            super.onResume();
            if (this.f10567d) {
                this.f10567d = false;
            } else {
                this.f10566c = ErrorDialogManager.f10552a.f10587a.m12579a();
                this.f10566c.m12503a(this);
            }
        }
    }

    /* renamed from: a */
    private static void m12547a(Activity activity) {
        m12552b(activity, false);
    }

    /* renamed from: a */
    private static void m12548a(Activity activity, Object obj, boolean z, Bundle bundle) {
        if (f10552a == null) {
            throw new RuntimeException("You must set the static factory field to configure error dialogs for your app.");
        }
        if (m12553b(activity)) {
            SupportManagerFragment.m12557a(activity, obj, z, bundle);
        } else {
            HoneycombManagerFragment.m12555a(activity, obj, z, bundle);
        }
    }

    /* renamed from: a */
    private static void m12549a(Activity activity, boolean z) {
        m12552b(activity, z);
    }

    /* renamed from: a */
    protected static void m12550a(C2789f c2789f) {
        if (f10552a.f10587a.f10583f) {
            String str = f10552a.f10587a.f10584g;
            if (str == null) {
                str = C2772c.f10468a;
            }
            Log.i(str, "Error dialog manager received exception", c2789f.f10589a);
        }
    }

    /* renamed from: a */
    static /* synthetic */ boolean m12551a(Object obj, C2789f c2789f) {
        Object obj2;
        return c2789f == null || (obj2 = c2789f.f10591c) == null || obj2.equals(obj);
    }

    /* renamed from: b */
    private static void m12552b(Activity activity, boolean z) {
        Class<?> cls = activity.getClass();
        if (f10552a == null) {
            throw new RuntimeException("You must set the static factory field to configure error dialogs for your app.");
        }
        if (m12553b(activity)) {
            SupportManagerFragment.m12557a(activity, cls, z, null);
        } else {
            HoneycombManagerFragment.m12555a(activity, cls, z, null);
        }
    }

    /* renamed from: b */
    private static boolean m12553b(Activity activity) {
        String name;
        Class<?> cls = activity.getClass();
        do {
            cls = cls.getSuperclass();
            if (cls == null) {
                throw new RuntimeException("Illegal activity type: " + activity.getClass());
            }
            name = cls.getName();
            if (name.equals("android.support.v4.app.FragmentActivity")) {
                return true;
            }
            if (name.startsWith("com.actionbarsherlock.app") && (name.endsWith(".SherlockActivity") || name.endsWith(".SherlockListActivity") || name.endsWith(".SherlockPreferenceActivity"))) {
                throw new RuntimeException("Please use SherlockFragmentActivity. Illegal activity: " + name);
            }
        } while (!name.equals("android.app.Activity"));
        if (Build.VERSION.SDK_INT < 11) {
            throw new RuntimeException("Illegal activity without fragment support. Either use Android 3.0+ or android.support.v4.app.FragmentActivity.");
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m12554b(Object obj, C2789f c2789f) {
        Object obj2;
        return c2789f == null || (obj2 = c2789f.f10591c) == null || obj2.equals(obj);
    }
}
