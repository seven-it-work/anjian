package com.bumptech.glide.p037d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* renamed from: com.bumptech.glide.d.e */
/* loaded from: classes.dex */
public final class C0829e {

    /* renamed from: a */
    private static final String f2343a = "ManifestParser";

    /* renamed from: b */
    private static final String f2344b = "GlideModule";

    /* renamed from: c */
    private final Context f2345c;

    public C0829e(Context context) {
        this.f2345c = context;
    }

    /* renamed from: a */
    private static InterfaceC0827c m2260a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object obj = null;
            try {
                obj = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                m2261a(cls, e);
            }
            if (obj instanceof InterfaceC0827c) {
                return (InterfaceC0827c) obj;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + obj);
        } catch (ClassNotFoundException e2) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e2);
        }
    }

    /* renamed from: a */
    private static void m2261a(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    /* renamed from: a */
    public final List<InterfaceC0827c> m2262a() {
        if (Log.isLoggable(f2343a, 3)) {
            Log.d(f2343a, "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f2345c.getPackageManager().getApplicationInfo(this.f2345c.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable(f2343a, 3)) {
                    Log.d(f2343a, "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable(f2343a, 2)) {
                Log.v(f2343a, "Got app info metadata: " + applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if (f2344b.equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(m2260a(str));
                    if (Log.isLoggable(f2343a, 3)) {
                        Log.d(f2343a, "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable(f2343a, 3)) {
                Log.d(f2343a, "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
