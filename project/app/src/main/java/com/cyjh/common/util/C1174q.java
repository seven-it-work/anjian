package com.cyjh.common.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.bumptech.glide.C1046n;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p042b.C0920p;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.InterfaceC1065f;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.cyjh.common.C1130R;
import com.cyjh.common.p071f.InterfaceC1143b;
import java.io.File;

/* renamed from: com.cyjh.common.util.q */
/* loaded from: classes.dex */
public final class C1174q {
    private C1174q() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static C1066g m4505a() {
        return new C1066g().mo3342a(C1130R.drawable.bg_normal_pic).mo3367c(C1130R.drawable.bg_normal_pic).mo3348a(EnumC0848l.NORMAL);
    }

    /* renamed from: a */
    private static void m4506a(Context context, int i, ImageView imageView) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2370a(Integer.valueOf(i)).mo3180a(m4505a()).m3185a(imageView);
        }
    }

    /* renamed from: a */
    private static void m4507a(Context context, int i, ImageView imageView, C1066g c1066g) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2370a(Integer.valueOf(i)).mo3180a(c1066g).m3185a(imageView);
        }
    }

    /* renamed from: a */
    private static void m4508a(Context context, File file, ImageView imageView) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2369a(file).mo3180a(m4505a()).m3185a(imageView);
        }
    }

    /* renamed from: a */
    private static void m4509a(Context context, String str, ImageView imageView) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo3215b().mo2372a(str).m3185a(imageView);
        }
    }

    /* renamed from: a */
    private static void m4510a(Context context, String str, ImageView imageView, InterfaceC1028m interfaceC1028m) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2372a(str).mo3180a(new C1066g().mo3342a(C1130R.drawable.bg_normal_pic).mo3367c(C1130R.drawable.bg_normal_pic).mo3348a(EnumC0848l.NORMAL).mo3352a((InterfaceC1028m<Bitmap>) interfaceC1028m)).m3185a(imageView);
        }
    }

    /* renamed from: a */
    public static void m4511a(Context context, String str, ImageView imageView, C1066g c1066g) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo3215b().mo2372a(str).mo3180a(c1066g).m3185a(imageView);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: a */
    private static void m4512a(Context context, String str, final InterfaceC1065f<File> interfaceC1065f) {
        if (m4515a(context)) {
            C1046n<File> mo3231d = ComponentCallbacks2C0838f.m2311c(context).mo3231d();
            mo3231d.mo2372a(str);
            mo3231d.mo3179a(new InterfaceC1065f<File>() { // from class: com.cyjh.common.util.q.2
                /* renamed from: a, reason: avoid collision after fix types in other method */
                private boolean a2(File file, Object obj, Target<File> target, EnumC0849a enumC0849a, boolean z) {
                    if (InterfaceC1065f.this != null) {
                        return InterfaceC1065f.this.mo3274a(file, obj, target, enumC0849a, z);
                    }
                    return false;
                }

                @Override // com.bumptech.glide.request.InterfaceC1065f
                /* renamed from: a */
                public final boolean mo3273a(@Nullable C0920p c0920p, Object obj, Target<File> target, boolean z) {
                    if (InterfaceC1065f.this != null) {
                        return InterfaceC1065f.this.mo3273a(c0920p, obj, target, z);
                    }
                    return false;
                }

                @Override // com.bumptech.glide.request.InterfaceC1065f
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ boolean mo3274a(File file, Object obj, Target<File> target, EnumC0849a enumC0849a, boolean z) {
                    File file2 = file;
                    if (InterfaceC1065f.this != null) {
                        return InterfaceC1065f.this.mo3274a(file2, obj, target, enumC0849a, z);
                    }
                    return false;
                }
            });
            mo3231d.m3198c();
        }
    }

    /* renamed from: a */
    private static void m4513a(Context context, String str, C1066g c1066g, final InterfaceC1143b interfaceC1143b) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo3211a().mo2372a(str).mo3180a(c1066g).m3183a((C1046n<Bitmap>) new SimpleTarget<Bitmap>() { // from class: com.cyjh.common.util.q.1
                /* renamed from: a */
                private static void m4520a() {
                }

                @Override // com.bumptech.glide.request.target.Target
                public final /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f interfaceC1055f) {
                }
            });
        }
    }

    /* renamed from: a */
    private static void m4514a(Context context, byte[] bArr, ImageView imageView) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2374a(bArr).mo3180a(new C1066g().mo3342a(C1130R.drawable.bg_normal_pic).mo3367c(C1130R.drawable.bg_normal_pic).mo3348a(EnumC0848l.HIGH).mo3360b(AbstractC0913i.f2750a)).m3185a(imageView);
        }
    }

    /* renamed from: a */
    public static boolean m4515a(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return Build.VERSION.SDK_INT >= 17 ? (activity.isDestroyed() || activity.isFinishing()) ? false : true : !activity.isFinishing();
    }

    /* renamed from: b */
    private static C1066g m4516b() {
        return new C1066g().mo3373e().mo3342a(C1130R.drawable.bg_normal_pic).mo3367c(C1130R.drawable.bg_normal_pic).mo3348a(EnumC0848l.NORMAL);
    }

    /* renamed from: b */
    private static void m4517b(Context context, String str, ImageView imageView) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2372a(str).mo3180a(m4505a()).m3185a(imageView);
        }
    }

    /* renamed from: b */
    public static void m4518b(Context context, String str, ImageView imageView, C1066g c1066g) {
        if (m4515a(context)) {
            ComponentCallbacks2C0838f.m2311c(context).mo2372a(str).mo3180a(c1066g).m3185a(imageView);
        }
    }

    /* renamed from: c */
    private static void m4519c(Context context, String str, ImageView imageView) {
        if (str.endsWith(".gif")) {
            C1066g m4505a = m4505a();
            m4505a.mo3360b(AbstractC0913i.f2752c);
            m4511a(context, str, imageView, m4505a);
        } else {
            C1066g m4505a2 = m4505a();
            m4505a2.mo3360b(AbstractC0913i.f2751b);
            m4518b(context, str, imageView, m4505a2);
        }
    }
}
