package com.didi.virtualapk.delegate;

import android.content.Context;
import android.content.IContentProvider;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.PluginContentResolver;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/* loaded from: classes.dex */
public class IContentProviderProxy implements InvocationHandler {
    private static final String TAG = "VA.IContentProviderProxy";
    private IContentProvider mBase;
    private Context mContext;

    private IContentProviderProxy(Context context, IContentProvider iContentProvider) {
        this.mBase = iContentProvider;
        this.mContext = context;
    }

    private Bundle getBundleParameter(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        for (int i = 0; i < objArr.length; i++) {
            if (objArr[i] instanceof Bundle) {
                return (Bundle) objArr[i];
            }
        }
        return null;
    }

    public static IContentProvider newInstance(Context context, IContentProvider iContentProvider) {
        return (IContentProvider) Proxy.newProxyInstance(iContentProvider.getClass().getClassLoader(), new Class[]{IContentProvider.class}, new IContentProviderProxy(context, iContentProvider));
    }

    private void wrapperUri(Method method, Object[] objArr) {
        Uri uri;
        int i;
        PluginManager pluginManager;
        ProviderInfo resolveContentProvider;
        String string;
        Bundle bundle = null;
        if (objArr != null) {
            i = 0;
            while (i < objArr.length) {
                if (objArr[i] instanceof Uri) {
                    uri = (Uri) objArr[i];
                    break;
                }
                i++;
            }
        }
        uri = null;
        i = 0;
        if (method.getName().equals(NotificationCompat.CATEGORY_CALL) && (bundle = getBundleParameter(objArr)) != null && (string = bundle.getString(RemoteContentProvider.KEY_WRAPPER_URI)) != null) {
            uri = Uri.parse(string);
        }
        if (uri == null || (resolveContentProvider = (pluginManager = PluginManager.getInstance(this.mContext)).resolveContentProvider(uri.getAuthority(), 0)) == null) {
            return;
        }
        Uri wrapperUri = PluginContentResolver.wrapperUri(pluginManager.getLoadedPlugin(resolveContentProvider.packageName), uri);
        if (method.getName().equals(NotificationCompat.CATEGORY_CALL)) {
            bundle.putString(RemoteContentProvider.KEY_WRAPPER_URI, wrapperUri.toString());
        } else {
            objArr[i] = wrapperUri;
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        Log.v(TAG, method.toGenericString() + " : " + Arrays.toString(objArr));
        wrapperUri(method, objArr);
        try {
            return method.invoke(this.mBase, objArr);
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }
}
