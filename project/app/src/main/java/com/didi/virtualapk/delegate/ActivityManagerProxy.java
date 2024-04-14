package com.didi.virtualapk.delegate;

import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.utils.PluginUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ActivityManagerProxy implements InvocationHandler {
    public static final int INTENT_SENDER_ACTIVITY = 2;
    public static final int INTENT_SENDER_ACTIVITY_RESULT = 3;
    public static final int INTENT_SENDER_BROADCAST = 1;
    public static final int INTENT_SENDER_SERVICE = 4;
    private static final String TAG = "VA.IActivityManagerProxy";
    private IActivityManager mActivityManager;
    private PluginManager mPluginManager;

    public ActivityManagerProxy(PluginManager pluginManager, IActivityManager iActivityManager) {
        this.mPluginManager = pluginManager;
        this.mActivityManager = iActivityManager;
    }

    protected Object bindService(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent intent = (Intent) objArr[2];
        ResolveInfo resolveService = this.mPluginManager.resolveService(intent, 0);
        if (resolveService == null || resolveService.serviceInfo == null) {
            return method.invoke(this.mActivityManager, objArr);
        }
        Bundle bundle = new Bundle();
        PluginUtil.putBinder(bundle, "sc", (IBinder) objArr[4]);
        startDelegateServiceForTarget(intent, resolveService.serviceInfo, bundle, 3);
        this.mPluginManager.getComponentsHandler().remberIServiceConnection((IBinder) objArr[4], intent);
        return 1;
    }

    protected void getIntentSender(Method method, Object[] objArr) {
        ResolveInfo resolveService;
        objArr[1] = this.mPluginManager.getHostContext().getPackageName();
        Intent intent = ((Intent[]) objArr[5])[0];
        int intValue = ((Integer) objArr[0]).intValue();
        if (intValue == 2) {
            this.mPluginManager.getComponentsHandler().transformIntentToExplicitAsNeeded(intent);
            this.mPluginManager.getComponentsHandler().markIntentIfNeeded(intent);
        } else {
            if (intValue != 4 || (resolveService = this.mPluginManager.resolveService(intent, 0)) == null || resolveService.serviceInfo == null) {
                return;
            }
            ((Intent[]) objArr[5])[0] = wrapperTargetIntent(intent, resolveService.serviceInfo, null, 1);
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String str;
        String str2;
        IBinder service;
        try {
            if ("startService".equals(method.getName())) {
                try {
                    return startService(obj, method, objArr);
                } catch (Throwable th) {
                    th = th;
                    str = TAG;
                    str2 = "Start service error";
                }
            } else if ("stopService".equals(method.getName())) {
                try {
                    return stopService(obj, method, objArr);
                } catch (Throwable th2) {
                    th = th2;
                    str = TAG;
                    str2 = "Stop Service error";
                }
            } else {
                if (!"stopServiceToken".equals(method.getName())) {
                    try {
                    } catch (Throwable th3) {
                        Log.w(TAG, th3);
                    }
                    if ("bindService".equals(method.getName())) {
                        return bindService(obj, method, objArr);
                    }
                    if ("unbindService".equals(method.getName())) {
                        return unbindService(obj, method, objArr);
                    }
                    if ("getIntentSender".equals(method.getName())) {
                        getIntentSender(method, objArr);
                    } else if ("overridePendingTransition".equals(method.getName())) {
                        overridePendingTransition(method, objArr);
                    }
                    return method.invoke(this.mActivityManager, objArr);
                }
                try {
                    return stopServiceToken(obj, method, objArr);
                } catch (Throwable th4) {
                    th = th4;
                    str = TAG;
                    str2 = "Stop service token error";
                }
            }
            return method.invoke(this.mActivityManager, objArr);
        } catch (Throwable th5) {
            Throwable cause = th5.getCause();
            if (cause != null && (cause instanceof DeadObjectException) && (service = ServiceManager.getService("activity")) != null) {
                this.mActivityManager = ActivityManagerNative.asInterface(service);
            }
            Throwable th6 = th5;
            while (!(th6 instanceof RemoteException)) {
                th6 = th6.getCause();
                if (th6 == null) {
                    if (cause != null) {
                        throw cause;
                    }
                    throw th5;
                }
            }
            throw th6;
        }
        Log.e(str, str2, th);
    }

    protected void overridePendingTransition(Method method, Object[] objArr) {
        objArr[1] = this.mPluginManager.getHostContext().getPackageName();
    }

    protected ComponentName startDelegateServiceForTarget(Intent intent, ServiceInfo serviceInfo, Bundle bundle, int i) {
        return this.mPluginManager.getHostContext().startService(wrapperTargetIntent(intent, serviceInfo, bundle, i));
    }

    protected Object startService(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent intent = (Intent) objArr[1];
        ResolveInfo resolveService = this.mPluginManager.resolveService(intent, 0);
        return (resolveService == null || resolveService.serviceInfo == null) ? method.invoke(this.mActivityManager, objArr) : startDelegateServiceForTarget(intent, resolveService.serviceInfo, null, 1);
    }

    protected Object stopService(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent intent = (Intent) objArr[1];
        ResolveInfo resolveService = this.mPluginManager.resolveService(intent, 0);
        if (resolveService == null || resolveService.serviceInfo == null) {
            return method.invoke(this.mActivityManager, objArr);
        }
        startDelegateServiceForTarget(intent, resolveService.serviceInfo, null, 2);
        return 1;
    }

    protected Object stopServiceToken(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent component = new Intent().setComponent((ComponentName) objArr[0]);
        ResolveInfo resolveService = this.mPluginManager.resolveService(component, 0);
        if (resolveService == null || resolveService.serviceInfo == null) {
            return method.invoke(this.mActivityManager, objArr);
        }
        startDelegateServiceForTarget(component, resolveService.serviceInfo, null, 2);
        return true;
    }

    protected Object unbindService(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent forgetIServiceConnection = this.mPluginManager.getComponentsHandler().forgetIServiceConnection((IBinder) objArr[0]);
        if (forgetIServiceConnection == null) {
            return method.invoke(this.mActivityManager, objArr);
        }
        startDelegateServiceForTarget(forgetIServiceConnection, this.mPluginManager.resolveService(forgetIServiceConnection, 0).serviceInfo, null, 4);
        return true;
    }

    protected Intent wrapperTargetIntent(Intent intent, ServiceInfo serviceInfo, Bundle bundle, int i) {
        intent.setComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
        String location = this.mPluginManager.getLoadedPlugin(intent.getComponent()).getLocation();
        Class cls = PluginUtil.isLocalService(serviceInfo) ? LocalService.class : RemoteService.class;
        Intent intent2 = new Intent();
        intent2.setClass(this.mPluginManager.getHostContext(), cls);
        intent2.putExtra(LocalService.EXTRA_TARGET, intent);
        intent2.putExtra(LocalService.EXTRA_COMMAND, i);
        intent2.putExtra(LocalService.EXTRA_PLUGIN_LOCATION, location);
        if (bundle != null) {
            intent2.putExtras(bundle);
        }
        return intent2;
    }
}
