package com.didi.virtualapk.internal;

import android.app.Activity;
import android.app.ActivityThread;
import android.app.Application;
import android.os.Bundle;
import com.didi.virtualapk.utils.Reflector;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ActivityLifecycleCallbacksProxy implements Application.ActivityLifecycleCallbacks {
    final ArrayList<Application.ActivityLifecycleCallbacks> mActivityLifecycleCallbacks = (ArrayList) Reflector.QuietReflector.with((Object) ActivityThread.currentApplication()).field("mActivityLifecycleCallbacks").get();

    Object[] collectActivityLifecycleCallbacks() {
        Object[] array;
        if (this.mActivityLifecycleCallbacks == null) {
            return null;
        }
        synchronized (this.mActivityLifecycleCallbacks) {
            array = this.mActivityLifecycleCallbacks.size() > 0 ? this.mActivityLifecycleCallbacks.toArray() : null;
        }
        return array;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityCreated(activity, bundle);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityDestroyed(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityPaused(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityResumed(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivitySaveInstanceState(activity, bundle);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityStarted(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Object[] collectActivityLifecycleCallbacks = collectActivityLifecycleCallbacks();
        if (collectActivityLifecycleCallbacks != null) {
            for (Object obj : collectActivityLifecycleCallbacks) {
                ((Application.ActivityLifecycleCallbacks) obj).onActivityStopped(activity);
            }
        }
    }
}
