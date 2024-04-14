package com.didi.virtualapk.internal;

import android.annotation.TargetApi;
import android.content.ContentResolverWrapper;
import android.content.Context;
import android.content.IContentProvider;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Keep;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.delegate.RemoteContentProvider;

/* loaded from: classes.dex */
public class PluginContentResolver extends ContentResolverWrapper {
    private PluginManager mPluginManager;

    public PluginContentResolver(Context context) {
        super(context);
        this.mPluginManager = PluginManager.getInstance(context);
    }

    @Deprecated
    public static String getAuthority(Context context) {
        return RemoteContentProvider.getAuthority(context);
    }

    @Keep
    public static Bundle getBundleForCall(Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString(RemoteContentProvider.KEY_WRAPPER_URI, uri.toString());
        return bundle;
    }

    @Deprecated
    public static String getUri(Context context) {
        return RemoteContentProvider.getUri(context);
    }

    @Keep
    public static Uri wrapperUri(LoadedPlugin loadedPlugin, Uri uri) {
        String packageName = loadedPlugin.getPackageName();
        String encode = Uri.encode(uri.toString());
        StringBuilder sb = new StringBuilder(RemoteContentProvider.getUri(loadedPlugin.getHostContext()));
        sb.append("/?plugin=" + loadedPlugin.getLocation());
        sb.append("&pkg=" + packageName);
        sb.append("&uri=" + encode);
        return Uri.parse(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContentResolverWrapper
    public IContentProvider acquireExistingProvider(Context context, String str) {
        return this.mPluginManager.resolveContentProvider(str, 0) != null ? this.mPluginManager.getIContentProvider() : super.acquireExistingProvider(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContentResolverWrapper
    public IContentProvider acquireProvider(Context context, String str) {
        return this.mPluginManager.resolveContentProvider(str, 0) != null ? this.mPluginManager.getIContentProvider() : super.acquireProvider(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContentResolverWrapper
    @TargetApi(16)
    public IContentProvider acquireUnstableProvider(Context context, String str) {
        return this.mPluginManager.resolveContentProvider(str, 0) != null ? this.mPluginManager.getIContentProvider() : super.acquireUnstableProvider(context, str);
    }

    @Override // android.content.ContentResolverWrapper
    @TargetApi(20)
    public void appNotRespondingViaProvider(IContentProvider iContentProvider) {
    }

    @Override // android.content.ContentResolverWrapper
    public boolean releaseProvider(IContentProvider iContentProvider) {
        return true;
    }

    @Override // android.content.ContentResolverWrapper
    @TargetApi(16)
    public boolean releaseUnstableProvider(IContentProvider iContentProvider) {
        return true;
    }

    protected int resolveUserIdFromAuthority(String str) {
        return 0;
    }

    @Override // android.content.ContentResolverWrapper
    @TargetApi(16)
    public void unstableProviderDied(IContentProvider iContentProvider) {
    }
}
