package com.cyjh.common.util.toast;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.AnimRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cyjh.common.util.toast.C1194q;
import com.cyjh.common.util.toast.C1195r;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.cyjh.common.util.toast.a */
/* loaded from: classes.dex */
public final class C1178a {
    private C1178a() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @Nullable
    /* renamed from: a */
    private static Activity m4544a(@Nullable Context context) {
        Activity activity;
        if (context == null) {
            return null;
        }
        if (context != null) {
            ArrayList arrayList = new ArrayList();
            while (context instanceof ContextWrapper) {
                if (!(context instanceof Activity)) {
                    Activity m4655c = m4655c(context);
                    if (m4655c == null) {
                        arrayList.add(context);
                        context = ((ContextWrapper) context).getBaseContext();
                        if (context == null || arrayList.contains(context)) {
                            break;
                        }
                    } else {
                        activity = m4655c;
                        break;
                    }
                } else {
                    activity = (Activity) context;
                    break;
                }
            }
        }
        activity = null;
        if (m4627a(activity)) {
            return activity;
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    private static Drawable m4545a(@NonNull ComponentName componentName) {
        try {
            return C1194q.m5135a().getPackageManager().getActivityIcon(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static Bundle m4546a(Activity activity, View[] viewArr) {
        int length;
        if (Build.VERSION.SDK_INT < 21 || viewArr == null || (length = viewArr.length) <= 0) {
            return null;
        }
        Pair[] pairArr = new Pair[length];
        for (int i = 0; i < length; i++) {
            pairArr[i] = Pair.create(viewArr[i], viewArr[i].getTransitionName());
        }
        return ActivityOptionsCompat.makeSceneTransitionAnimation(activity, pairArr).toBundle();
    }

    /* renamed from: a */
    private static Bundle m4547a(Context context, int i, int i2) {
        return ActivityOptionsCompat.makeCustomAnimation(context, i, i2).toBundle();
    }

    /* renamed from: a */
    private static Bundle m4548a(Fragment fragment, int i, int i2) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return ActivityOptionsCompat.makeCustomAnimation(activity, i, i2).toBundle();
    }

    /* renamed from: a */
    private static Bundle m4549a(Fragment fragment, View[] viewArr) {
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return m4546a(activity, viewArr);
    }

    /* renamed from: a */
    public static String m4550a(@NonNull String str) {
        if (C1196s.m5200b(str)) {
            return "";
        }
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 0);
        return (queryIntentActivities == null || queryIntentActivities.size() == 0) ? "" : queryIntentActivities.get(0).activityInfo.name;
    }

    /* renamed from: a */
    private static void m4551a() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        m4634a(intent, m4678k(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4552a(@AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            activity.finish();
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4553a(@NonNull Activity activity, @AnimRes int i, @AnimRes int i2) {
        activity.finish();
        activity.overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4554a(@NonNull Activity activity, @NonNull Intent intent) {
        m4634a(intent, activity, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4555a(@NonNull Activity activity, @NonNull Intent intent, int i) {
        m4633a(intent, activity, i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4556a(@NonNull Activity activity, @NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        m4634a(intent, activity, m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4557a(@NonNull Activity activity, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        m4633a(intent, activity, i, m4547a((Context) activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    /* renamed from: a */
    private static void m4558a(@NonNull Activity activity, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        m4633a(intent, activity, i, bundle);
    }

    /* renamed from: a */
    private static void m4559a(@NonNull Activity activity, @NonNull Intent intent, int i, View... viewArr) {
        m4633a(intent, activity, i, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4560a(@NonNull Activity activity, @NonNull Intent intent, @Nullable Bundle bundle) {
        m4634a(intent, activity, bundle);
    }

    /* renamed from: a */
    private static void m4561a(@NonNull Activity activity, @NonNull Intent intent, View... viewArr) {
        m4634a(intent, activity, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4562a(@Nullable Activity activity, @Nullable C1194q.a aVar) {
        C1195r.f4233a.m5174a(activity, aVar);
    }

    /* renamed from: a */
    private static void m4563a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        m4578a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4564a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        m4628a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4565a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        m4578a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4566a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m4628a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), i, m4547a((Context) activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    /* renamed from: a */
    private static void m4567a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        m4628a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), i, bundle);
    }

    /* renamed from: a */
    private static void m4568a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m4628a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), i, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4569a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        m4578a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), bundle);
    }

    /* renamed from: a */
    private static void m4570a(@NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        m4578a(activity, (Bundle) null, activity.getPackageName(), cls.getName(), m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4571a(@NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        m4578a(activity, (Bundle) null, str, str2, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4572a(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        m4578a(activity, (Bundle) null, str, str2, m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4573a(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        m4578a(activity, (Bundle) null, str, str2, bundle);
    }

    /* renamed from: a */
    private static void m4574a(@NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        m4578a(activity, (Bundle) null, str, str2, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4575a(@NonNull Activity activity, @NonNull Intent[] intentArr) {
        m4625a(intentArr, activity, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4576a(@NonNull Activity activity, @NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        m4625a(intentArr, activity, m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4577a(@NonNull Activity activity, @NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        m4625a(intentArr, activity, bundle);
    }

    /* renamed from: a */
    private static void m4578a(Context context, Bundle bundle, String str, String str2, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        m4634a(intent, context, bundle2);
    }

    /* renamed from: a */
    private static void m4579a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls) {
        m4578a(activity, bundle, activity.getPackageName(), cls.getName(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4580a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i) {
        m4628a(activity, bundle, activity.getPackageName(), cls.getName(), i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4581a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        m4578a(activity, bundle, activity.getPackageName(), cls.getName(), m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4582a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m4628a(activity, bundle, activity.getPackageName(), cls.getName(), i, m4547a((Context) activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    /* renamed from: a */
    private static void m4583a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        m4628a(activity, bundle, activity.getPackageName(), cls.getName(), i, bundle2);
    }

    /* renamed from: a */
    private static void m4584a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m4628a(activity, bundle, activity.getPackageName(), cls.getName(), i, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4585a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        m4578a(activity, bundle, activity.getPackageName(), cls.getName(), bundle2);
    }

    /* renamed from: a */
    private static void m4586a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull Class<? extends Activity> cls, View... viewArr) {
        m4578a(activity, bundle, activity.getPackageName(), cls.getName(), m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4587a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2) {
        m4578a(activity, bundle, str, str2, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4588a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i) {
        m4628a(activity, bundle, str, str2, i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4589a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        m4578a(activity, bundle, str, str2, m4547a((Context) activity, i, i2));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i, i2);
        }
    }

    /* renamed from: a */
    private static void m4590a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        m4628a(activity, bundle, str, str2, i, m4547a((Context) activity, i2, i3));
        if (Build.VERSION.SDK_INT < 16) {
            activity.overridePendingTransition(i2, i3);
        }
    }

    /* renamed from: a */
    private static void m4591a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        m4628a(activity, bundle, str, str2, i, bundle2);
    }

    /* renamed from: a */
    private static void m4592a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        m4628a(activity, bundle, str, str2, i, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4593a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        m4578a(activity, bundle, str, str2, bundle2);
    }

    /* renamed from: a */
    private static void m4594a(@NonNull Bundle bundle, @NonNull Activity activity, @NonNull String str, @NonNull String str2, View... viewArr) {
        m4578a(activity, bundle, str, str2, m4546a(activity, viewArr));
    }

    /* renamed from: a */
    private static void m4595a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        m4637a(fragment, bundle, C1194q.m5135a().getPackageName(), cls.getName(), i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4596a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m4637a(fragment, bundle, C1194q.m5135a().getPackageName(), cls.getName(), i, m4548a(fragment, i2, i3));
    }

    /* renamed from: a */
    private static void m4597a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle2) {
        m4637a(fragment, bundle, C1194q.m5135a().getPackageName(), cls.getName(), i, bundle2);
    }

    /* renamed from: a */
    private static void m4598a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m4637a(fragment, bundle, C1194q.m5135a().getPackageName(), cls.getName(), i, m4549a(fragment, viewArr));
    }

    /* renamed from: a */
    private static void m4599a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i) {
        m4637a(fragment, bundle, str, str2, i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4600a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @AnimRes int i2, @AnimRes int i3) {
        m4637a(fragment, bundle, str, str2, i, m4548a(fragment, i2, i3));
    }

    /* renamed from: a */
    private static void m4601a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, @Nullable Bundle bundle2) {
        m4637a(fragment, bundle, str, str2, i, bundle2);
    }

    /* renamed from: a */
    private static void m4602a(@NonNull Bundle bundle, @NonNull Fragment fragment, @NonNull String str, @NonNull String str2, int i, View... viewArr) {
        m4637a(fragment, bundle, str, str2, i, m4549a(fragment, viewArr));
    }

    /* renamed from: a */
    private static void m4603a(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls) {
        Context m4678k = m4678k();
        m4578a(m4678k, bundle, m4678k.getPackageName(), cls.getName(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4604a(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        m4578a(m4678k, bundle, m4678k.getPackageName(), cls.getName(), m4547a(m4678k, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(m4678k instanceof Activity)) {
            return;
        }
        ((Activity) m4678k).overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4605a(@NonNull Bundle bundle, @NonNull Class<? extends Activity> cls, @Nullable Bundle bundle2) {
        Context m4678k = m4678k();
        m4578a(m4678k, bundle, m4678k.getPackageName(), cls.getName(), bundle2);
    }

    /* renamed from: a */
    private static void m4606a(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2) {
        m4578a(m4678k(), bundle, str, str2, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4607a(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        m4578a(m4678k, bundle, str, str2, m4547a(m4678k, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(m4678k instanceof Activity)) {
            return;
        }
        ((Activity) m4678k).overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4608a(@NonNull Bundle bundle, @NonNull String str, @NonNull String str2, @Nullable Bundle bundle2) {
        m4578a(m4678k(), bundle, str, str2, bundle2);
    }

    /* renamed from: a */
    private static void m4609a(@NonNull Fragment fragment, @NonNull Intent intent, int i) {
        m4636a(intent, fragment, i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4610a(@NonNull Fragment fragment, @NonNull Intent intent, int i, @AnimRes int i2, @AnimRes int i3) {
        m4636a(intent, fragment, i, m4548a(fragment, i2, i3));
    }

    /* renamed from: a */
    private static void m4611a(@NonNull Fragment fragment, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        m4636a(intent, fragment, i, bundle);
    }

    /* renamed from: a */
    private static void m4612a(@NonNull Fragment fragment, @NonNull Intent intent, int i, View... viewArr) {
        m4636a(intent, fragment, i, m4549a(fragment, viewArr));
    }

    /* renamed from: a */
    private static void m4613a(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i) {
        m4637a(fragment, (Bundle) null, C1194q.m5135a().getPackageName(), cls.getName(), i, (Bundle) null);
    }

    /* renamed from: a */
    private static void m4614a(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @AnimRes int i2, @AnimRes int i3) {
        m4637a(fragment, (Bundle) null, C1194q.m5135a().getPackageName(), cls.getName(), i, m4548a(fragment, i2, i3));
    }

    /* renamed from: a */
    private static void m4615a(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, @Nullable Bundle bundle) {
        m4637a(fragment, (Bundle) null, C1194q.m5135a().getPackageName(), cls.getName(), i, bundle);
    }

    /* renamed from: a */
    private static void m4616a(@NonNull Fragment fragment, @NonNull Class<? extends Activity> cls, int i, View... viewArr) {
        m4637a(fragment, (Bundle) null, C1194q.m5135a().getPackageName(), cls.getName(), i, m4549a(fragment, viewArr));
    }

    /* renamed from: a */
    private static void m4617a(@Nullable C1194q.a aVar) {
        C1196s.m5185a(aVar);
    }

    /* renamed from: a */
    private static void m4618a(@NonNull Class<? extends Activity> cls) {
        Context m4678k = m4678k();
        m4578a(m4678k, (Bundle) null, m4678k.getPackageName(), cls.getName(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4619a(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        m4578a(m4678k, (Bundle) null, m4678k.getPackageName(), cls.getName(), m4547a(m4678k, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(m4678k instanceof Activity)) {
            return;
        }
        ((Activity) m4678k).overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4620a(@NonNull Class<? extends Activity> cls, @Nullable Bundle bundle) {
        Context m4678k = m4678k();
        m4578a(m4678k, (Bundle) null, m4678k.getPackageName(), cls.getName(), bundle);
    }

    /* renamed from: a */
    private static void m4621a(@NonNull String str, @NonNull String str2, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        m4578a(m4678k, (Bundle) null, str, str2, m4547a(m4678k, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(m4678k instanceof Activity)) {
            return;
        }
        ((Activity) m4678k).overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4622a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        m4578a(m4678k(), (Bundle) null, str, str2, bundle);
    }

    /* renamed from: a */
    private static void m4623a(@NonNull Intent[] intentArr) {
        m4625a(intentArr, m4678k(), (Bundle) null);
    }

    /* renamed from: a */
    private static void m4624a(@NonNull Intent[] intentArr, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        m4625a(intentArr, m4678k, m4547a(m4678k, i, i2));
        if (Build.VERSION.SDK_INT >= 16 || !(m4678k instanceof Activity)) {
            return;
        }
        ((Activity) m4678k).overridePendingTransition(i, i2);
    }

    /* renamed from: a */
    private static void m4625a(Intent[] intentArr, Context context, @Nullable Bundle bundle) {
        if (!(context instanceof Activity)) {
            for (Intent intent : intentArr) {
                intent.addFlags(268435456);
            }
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            context.startActivities(intentArr);
        } else {
            context.startActivities(intentArr, bundle);
        }
    }

    /* renamed from: a */
    private static void m4626a(@NonNull Intent[] intentArr, @Nullable Bundle bundle) {
        m4625a(intentArr, m4678k(), bundle);
    }

    /* renamed from: a */
    public static boolean m4627a(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        return Build.VERSION.SDK_INT < 17 || !activity.isDestroyed();
    }

    /* renamed from: a */
    private static boolean m4628a(Activity activity, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return m4633a(intent, activity, i, bundle2);
    }

    /* renamed from: a */
    private static boolean m4629a(@NonNull Activity activity, boolean z) {
        for (Activity activity2 : C1195r.f4233a.m5173a()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                m4666e(activity2);
                return true;
            }
            m4666e(activity2);
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m4630a(@NonNull Activity activity, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity2 : C1195r.f4233a.m5173a()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                m4553a(activity2, i, i2);
                return true;
            }
            m4553a(activity2, i, i2);
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m4631a(@NonNull Intent intent) {
        return m4634a(intent, m4678k(), (Bundle) null);
    }

    /* renamed from: a */
    private static boolean m4632a(@NonNull Intent intent, @AnimRes int i, @AnimRes int i2) {
        Context m4678k = m4678k();
        boolean m4634a = m4634a(intent, m4678k, m4547a(m4678k, i, i2));
        if (m4634a && Build.VERSION.SDK_INT < 16 && (m4678k instanceof Activity)) {
            ((Activity) m4678k).overridePendingTransition(i, i2);
        }
        return m4634a;
    }

    /* renamed from: a */
    private static boolean m4633a(Intent intent, Activity activity, int i, @Nullable Bundle bundle) {
        if (!m4652b(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            activity.startActivityForResult(intent, i);
            return true;
        }
        activity.startActivityForResult(intent, i, bundle);
        return true;
    }

    /* renamed from: a */
    private static boolean m4634a(Intent intent, Context context, Bundle bundle) {
        if (!m4652b(intent)) {
            Log.e("ActivityUtils", "intent is unavailable");
            return false;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (bundle == null || Build.VERSION.SDK_INT < 16) {
            context.startActivity(intent);
            return true;
        }
        context.startActivity(intent, bundle);
        return true;
    }

    /* renamed from: a */
    private static boolean m4635a(@NonNull Intent intent, @Nullable Bundle bundle) {
        return m4634a(intent, m4678k(), bundle);
    }

    /* renamed from: a */
    private static boolean m4636a(Intent intent, Fragment fragment, int i, @Nullable Bundle bundle) {
        String str;
        String str2;
        if (!m4652b(intent)) {
            str = "ActivityUtils";
            str2 = "intent is unavailable";
        } else {
            if (fragment.getActivity() != null) {
                if (bundle == null || Build.VERSION.SDK_INT < 16) {
                    fragment.startActivityForResult(intent, i);
                    return true;
                }
                fragment.startActivityForResult(intent, i, bundle);
                return true;
            }
            str = "ActivityUtils";
            str2 = "Fragment " + fragment + " not attached to Activity";
        }
        Log.e(str, str2);
        return false;
    }

    /* renamed from: a */
    private static boolean m4637a(Fragment fragment, Bundle bundle, String str, String str2, int i, @Nullable Bundle bundle2) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return m4636a(intent, fragment, i, bundle2);
    }

    /* renamed from: a */
    private static boolean m4638a(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                m4666e(activity);
                return true;
            }
            m4666e(activity);
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m4639a(@NonNull Class<? extends Activity> cls, boolean z, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                m4553a(activity, i, i2);
                return true;
            }
            m4553a(activity, i, i2);
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m4640a(@NonNull String str, @NonNull String str2) {
        Intent intent = new Intent();
        intent.setClassName(str, str2);
        PackageManager packageManager = C1194q.m5135a().getPackageManager();
        return (packageManager.resolveActivity(intent, 0) == null || intent.resolveActivity(packageManager) == null || packageManager.queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    @Nullable
    /* renamed from: b */
    private static Activity m4641b(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (context instanceof ContextWrapper) {
            if (!(context instanceof Activity)) {
                Activity m4655c = m4655c(context);
                if (m4655c == null) {
                    arrayList.add(context);
                    context = ((ContextWrapper) context).getBaseContext();
                    if (context == null || arrayList.contains(context)) {
                        break;
                    }
                } else {
                    return m4655c;
                }
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: b */
    private static Drawable m4642b(@NonNull ComponentName componentName) {
        try {
            return C1194q.m5135a().getPackageManager().getActivityLogo(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    private static void m4643b() {
        String packageName = C1194q.m5135a().getPackageName();
        String m4550a = m4550a(packageName);
        if (TextUtils.isEmpty(m4550a)) {
            return;
        }
        m4578a(m4678k(), (Bundle) null, packageName, m4550a, (Bundle) null);
    }

    /* renamed from: b */
    private static void m4644b(@AnimRes int i, @AnimRes int i2) {
        List<Activity> m5173a = C1195r.f4233a.m5173a();
        for (int i3 = 1; i3 < m5173a.size(); i3++) {
            m4553a(m5173a.get(i3), i, i2);
        }
    }

    /* renamed from: b */
    private static void m4645b(@Nullable Activity activity) {
        C1195r c1195r = C1195r.f4233a;
        if (activity != null) {
            C1192o.m4987a(new C1195r.AnonymousClass2(activity));
        }
    }

    /* renamed from: b */
    private static void m4646b(@Nullable Activity activity, @Nullable C1194q.a aVar) {
        C1195r.f4233a.m5175b(activity, aVar);
    }

    /* renamed from: b */
    private static void m4647b(@Nullable C1194q.a aVar) {
        C1196s.m5197b(aVar);
    }

    /* renamed from: b */
    private static void m4648b(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                activity.overridePendingTransition(i, i2);
            }
        }
    }

    /* renamed from: b */
    private static void m4649b(@NonNull String str) {
        String m4550a = m4550a(str);
        if (TextUtils.isEmpty(m4550a)) {
            return;
        }
        m4578a(m4678k(), (Bundle) null, str, m4550a, (Bundle) null);
    }

    /* renamed from: b */
    private static void m4650b(@NonNull String str, @NonNull String str2) {
        m4578a(m4678k(), (Bundle) null, str, str2, (Bundle) null);
    }

    /* renamed from: b */
    private static boolean m4651b(@NonNull Activity activity, boolean z) {
        for (Activity activity2 : C1195r.f4233a.m5173a()) {
            if (activity2.equals(activity)) {
                if (!z) {
                    return true;
                }
                m4666e(activity2);
                return true;
            }
            m4666e(activity2);
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m4652b(Intent intent) {
        return C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: b */
    private static boolean m4653b(@NonNull Class<? extends Activity> cls) {
        Iterator<Activity> it = C1195r.f4233a.m5173a().iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m4654b(@NonNull Class<? extends Activity> cls, boolean z) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                if (!z) {
                    return true;
                }
                m4666e(activity);
                return true;
            }
            m4666e(activity);
        }
        return false;
    }

    @Nullable
    /* renamed from: c */
    private static Activity m4655c(@Nullable Context context) {
        if (context != null && context.getClass().getName().equals("com.android.internal.policy.DecorContext")) {
            try {
                Field declaredField = context.getClass().getDeclaredField("mActivityContext");
                declaredField.setAccessible(true);
                return (Activity) ((WeakReference) declaredField.get(context)).get();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* renamed from: c */
    private static List<Activity> m4656c() {
        return C1195r.f4233a.m5173a();
    }

    /* renamed from: c */
    private static List<String> m4657c(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 0);
        int size = queryIntentActivities.size();
        if (size == 0) {
            return arrayList;
        }
        for (int i = 0; i < size; i++) {
            ResolveInfo resolveInfo = queryIntentActivities.get(i);
            if (resolveInfo.activityInfo.processName.equals(str)) {
                arrayList.add(resolveInfo.activityInfo.name);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private static void m4658c(@NonNull Class<? extends Activity> cls) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
        }
    }

    /* renamed from: c */
    private static void m4659c(@NonNull Class<? extends Activity> cls, @AnimRes int i, @AnimRes int i2) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (!activity.getClass().equals(cls)) {
                m4553a(activity, i, i2);
            }
        }
    }

    /* renamed from: c */
    private static boolean m4660c(@NonNull Activity activity) {
        Iterator<Activity> it = C1195r.f4233a.m5173a().iterator();
        while (it.hasNext()) {
            if (it.next().equals(activity)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    private static String m4661d() {
        return m4550a(C1194q.m5135a().getPackageName());
    }

    /* renamed from: d */
    private static void m4662d(@NonNull Activity activity) {
        m4666e(activity);
    }

    /* renamed from: d */
    private static void m4663d(@NonNull Class<? extends Activity> cls) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (activity.getClass().equals(cls)) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
        }
    }

    /* renamed from: d */
    private static boolean m4664d(Context context) {
        Activity activity;
        Activity activity2 = null;
        if (context != null) {
            if (context != null) {
                ArrayList arrayList = new ArrayList();
                while (context instanceof ContextWrapper) {
                    if (!(context instanceof Activity)) {
                        Activity m4655c = m4655c(context);
                        if (m4655c == null) {
                            arrayList.add(context);
                            context = ((ContextWrapper) context).getBaseContext();
                            if (context == null || arrayList.contains(context)) {
                                break;
                            }
                        } else {
                            activity = m4655c;
                            break;
                        }
                    } else {
                        activity = (Activity) context;
                        break;
                    }
                }
            }
            activity = null;
            if (m4627a(activity)) {
                activity2 = activity;
            }
        }
        return m4627a(activity2);
    }

    /* renamed from: e */
    private static List<String> m4665e() {
        String packageName = C1194q.m5135a().getPackageName();
        ArrayList arrayList = new ArrayList();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(packageName);
        List<ResolveInfo> queryIntentActivities = C1194q.m5135a().getPackageManager().queryIntentActivities(intent, 0);
        int size = queryIntentActivities.size();
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                ResolveInfo resolveInfo = queryIntentActivities.get(i);
                if (resolveInfo.activityInfo.processName.equals(packageName)) {
                    arrayList.add(resolveInfo.activityInfo.name);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private static void m4666e(@NonNull Activity activity) {
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    /* renamed from: e */
    private static void m4667e(@NonNull Class<? extends Activity> cls) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (!activity.getClass().equals(cls)) {
                m4666e(activity);
            }
        }
    }

    /* renamed from: f */
    private static Activity m4668f() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (m4627a(activity)) {
                return activity;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: f */
    private static Drawable m4669f(@NonNull Activity activity) {
        return m4545a(activity.getComponentName());
    }

    /* renamed from: f */
    private static void m4670f(@NonNull Class<? extends Activity> cls) {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            if (!activity.getClass().equals(cls)) {
                m4666e(activity);
            }
        }
    }

    @Nullable
    /* renamed from: g */
    private static Drawable m4671g(@NonNull Activity activity) {
        return m4642b(activity.getComponentName());
    }

    @Nullable
    /* renamed from: g */
    private static Drawable m4672g(@NonNull Class<? extends Activity> cls) {
        return m4545a(new ComponentName(C1194q.m5135a(), cls));
    }

    /* renamed from: g */
    private static void m4673g() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
    }

    @Nullable
    /* renamed from: h */
    private static Drawable m4674h(@NonNull Class<? extends Activity> cls) {
        return m4642b(new ComponentName(C1194q.m5135a(), cls));
    }

    /* renamed from: h */
    private static void m4675h() {
        for (Activity activity : C1195r.f4233a.m5173a()) {
            activity.finish();
            activity.overridePendingTransition(0, 0);
        }
    }

    /* renamed from: i */
    private static void m4676i() {
        List<Activity> m5173a = C1195r.f4233a.m5173a();
        for (int i = 1; i < m5173a.size(); i++) {
            m4666e(m5173a.get(i));
        }
    }

    /* renamed from: j */
    private static void m4677j() {
        List<Activity> m5173a = C1195r.f4233a.m5173a();
        for (int i = 1; i < m5173a.size(); i++) {
            m4666e(m5173a.get(i));
        }
    }

    /* renamed from: k */
    private static Context m4678k() {
        Activity activity;
        if (!C1196s.m5190a()) {
            return C1194q.m5135a();
        }
        Iterator<Activity> it = C1195r.f4233a.m5173a().iterator();
        while (true) {
            if (!it.hasNext()) {
                activity = null;
                break;
            }
            activity = it.next();
            if (m4627a(activity)) {
                break;
            }
        }
        return activity == null ? C1194q.m5135a() : activity;
    }
}
