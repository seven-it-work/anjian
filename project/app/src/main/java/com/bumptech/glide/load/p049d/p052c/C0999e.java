package com.bumptech.glide.load.p049d.p052c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import java.io.IOException;
import java.util.List;

/* renamed from: com.bumptech.glide.load.d.c.e */
/* loaded from: classes.dex */
public final class C0999e implements InterfaceC1026k<Uri, Drawable> {

    /* renamed from: a */
    private static final int f3113a = 2;

    /* renamed from: b */
    private static final int f3114b = 0;

    /* renamed from: c */
    private static final int f3115c = 1;

    /* renamed from: d */
    private static final int f3116d = 1;

    /* renamed from: e */
    private static final int f3117e = 0;

    /* renamed from: f */
    private final Context f3118f;

    public C0999e(Context context) {
        this.f3118f = context.getApplicationContext();
    }

    @NonNull
    /* renamed from: a */
    private Context m2981a(Uri uri, String str) {
        try {
            return this.f3118f.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e);
        }
    }

    /* renamed from: b */
    private static boolean m2982b(@NonNull Uri uri) {
        return uri.getScheme().equals("android.resource");
    }

    @DrawableRes
    /* renamed from: c */
    private int m2983c(Uri uri) {
        Integer valueOf;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            String authority = uri.getAuthority();
            valueOf = Integer.valueOf(this.f3118f.getResources().getIdentifier(pathSegments.get(1), pathSegments.get(0), authority));
        } else {
            if (pathSegments.size() == 1) {
                try {
                    valueOf = Integer.valueOf(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                }
            }
            valueOf = null;
        }
        if (valueOf == null) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
        }
        if (valueOf.intValue() != 0) {
            return valueOf.intValue();
        }
        throw new IllegalArgumentException("Failed to obtain resource id for: " + uri);
    }

    @Nullable
    /* renamed from: a */
    public final InterfaceC0925u<Drawable> m2984a(@NonNull Uri uri) {
        int m2983c = m2983c(uri);
        String authority = uri.getAuthority();
        return C0998d.m2980a(C0995a.m2966a(this.f3118f, authority.equals(this.f3118f.getPackageName()) ? this.f3118f : m2981a(uri, authority), m2983c));
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    @Nullable
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC0925u<Drawable> mo2847a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return m2984a(uri);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ boolean mo2848a(@NonNull Uri uri, @NonNull C1025j c1025j) throws IOException {
        return uri.getScheme().equals("android.resource");
    }
}
