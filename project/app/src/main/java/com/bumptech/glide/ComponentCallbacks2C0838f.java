package com.bumptech.glide;

import android.app.Activity;
import android.app.Fragment;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.EnumC0869b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.p040a.C0865k;
import com.bumptech.glide.load.p040a.InterfaceC0859e;
import com.bumptech.glide.load.p042b.C0870a;
import com.bumptech.glide.load.p042b.C0914j;
import com.bumptech.glide.load.p042b.p043a.C0876f;
import com.bumptech.glide.load.p042b.p043a.C0880j;
import com.bumptech.glide.load.p042b.p043a.C0881k;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p042b.p044b.C0895h;
import com.bumptech.glide.load.p042b.p044b.C0896i;
import com.bumptech.glide.load.p042b.p044b.C0899l;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.load.p042b.p045c.ExecutorServiceC0902a;
import com.bumptech.glide.load.p042b.p046d.C0906b;
import com.bumptech.glide.load.p042b.p046d.C0907c;
import com.bumptech.glide.load.p042b.p046d.C0908d;
import com.bumptech.glide.load.p042b.p046d.RunnableC0905a;
import com.bumptech.glide.load.p047c.C0931a;
import com.bumptech.glide.load.p047c.C0938b;
import com.bumptech.glide.load.p047c.C0939c;
import com.bumptech.glide.load.p047c.C0940d;
import com.bumptech.glide.load.p047c.C0941e;
import com.bumptech.glide.load.p047c.C0942f;
import com.bumptech.glide.load.p047c.C0943g;
import com.bumptech.glide.load.p047c.C0947k;
import com.bumptech.glide.load.p047c.C0955s;
import com.bumptech.glide.load.p047c.C0956t;
import com.bumptech.glide.load.p047c.C0957u;
import com.bumptech.glide.load.p047c.C0958v;
import com.bumptech.glide.load.p047c.C0959w;
import com.bumptech.glide.load.p047c.C0960x;
import com.bumptech.glide.load.p047c.p048a.C0933b;
import com.bumptech.glide.load.p047c.p048a.C0934c;
import com.bumptech.glide.load.p047c.p048a.C0935d;
import com.bumptech.glide.load.p047c.p048a.C0936e;
import com.bumptech.glide.load.p047c.p048a.C0937f;
import com.bumptech.glide.load.p049d.p050a.C0963a;
import com.bumptech.glide.load.p049d.p050a.C0964aa;
import com.bumptech.glide.load.p049d.p050a.C0966ac;
import com.bumptech.glide.load.p049d.p050a.C0967b;
import com.bumptech.glide.load.p049d.p050a.C0970e;
import com.bumptech.glide.load.p049d.p050a.C0974i;
import com.bumptech.glide.load.p049d.p050a.C0978m;
import com.bumptech.glide.load.p049d.p050a.C0980o;
import com.bumptech.glide.load.p049d.p050a.C0983r;
import com.bumptech.glide.load.p049d.p050a.C0988w;
import com.bumptech.glide.load.p049d.p050a.C0990y;
import com.bumptech.glide.load.p049d.p051b.C0993a;
import com.bumptech.glide.load.p049d.p052c.C0999e;
import com.bumptech.glide.load.p049d.p052c.C1000f;
import com.bumptech.glide.load.p049d.p053d.C1001a;
import com.bumptech.glide.load.p049d.p054e.C1003a;
import com.bumptech.glide.load.p049d.p054e.C1005c;
import com.bumptech.glide.load.p049d.p054e.C1006d;
import com.bumptech.glide.load.p049d.p054e.C1010h;
import com.bumptech.glide.load.p049d.p054e.C1012j;
import com.bumptech.glide.load.p049d.p055f.C1013a;
import com.bumptech.glide.load.p049d.p055f.C1014b;
import com.bumptech.glide.load.p049d.p055f.C1015c;
import com.bumptech.glide.load.p049d.p055f.C1016d;
import com.bumptech.glide.manager.C1037f;
import com.bumptech.glide.manager.C1042k;
import com.bumptech.glide.manager.InterfaceC1035d;
import com.bumptech.glide.p036c.InterfaceC0818b;
import com.bumptech.glide.p037d.C0829e;
import com.bumptech.glide.p037d.InterfaceC0827c;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.f */
/* loaded from: classes.dex */
public class ComponentCallbacks2C0838f implements ComponentCallbacks2 {

    /* renamed from: h */
    private static final String f2363h = "image_manager_disk_cache";

    /* renamed from: i */
    private static final String f2364i = "Glide";

    /* renamed from: j */
    private static volatile ComponentCallbacks2C0838f f2365j;

    /* renamed from: k */
    private static volatile boolean f2366k;

    /* renamed from: a */
    public final InterfaceC0875e f2367a;

    /* renamed from: b */
    public final C0844h f2368b;

    /* renamed from: c */
    public final C1029m f2369c;

    /* renamed from: d */
    public final InterfaceC0872b f2370d;

    /* renamed from: e */
    public final C1042k f2371e;

    /* renamed from: f */
    final InterfaceC1035d f2372f;

    /* renamed from: l */
    private final C0914j f2374l;

    /* renamed from: m */
    private final InterfaceC0897j f2375m;

    /* renamed from: n */
    private final C0906b f2376n;

    /* renamed from: g */
    final List<C1047o> f2373g = new ArrayList();

    /* renamed from: o */
    private EnumC0846j f2377o = EnumC0846j.NORMAL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentCallbacks2C0838f(@NonNull Context context, @NonNull C0914j c0914j, @NonNull InterfaceC0897j interfaceC0897j, @NonNull InterfaceC0875e interfaceC0875e, @NonNull InterfaceC0872b interfaceC0872b, @NonNull C1042k c1042k, @NonNull InterfaceC1035d interfaceC1035d, int i, @NonNull C1066g c1066g, @NonNull Map<Class<?>, AbstractC1048p<?, ?>> map) {
        this.f2374l = c0914j;
        this.f2367a = interfaceC0875e;
        this.f2370d = interfaceC0872b;
        this.f2375m = interfaceC0897j;
        this.f2371e = c1042k;
        this.f2372f = interfaceC1035d;
        this.f2376n = new C0906b(interfaceC0897j, interfaceC0875e, (EnumC0869b) c1066g.f3381p.m3064a(C0980o.f3054b));
        Resources resources = context.getResources();
        this.f2369c = new C1029m();
        if (Build.VERSION.SDK_INT >= 27) {
            this.f2369c.m3081a((ImageHeaderParser) new C0983r());
        }
        this.f2369c.m3081a((ImageHeaderParser) new C0978m());
        C0980o c0980o = new C0980o(this.f2369c.m3089a(), resources.getDisplayMetrics(), interfaceC0875e, interfaceC0872b);
        C1003a c1003a = new C1003a(context, this.f2369c.m3089a(), interfaceC0875e, interfaceC0872b);
        InterfaceC1026k<ParcelFileDescriptor, Bitmap> m2856b = C0966ac.m2856b(interfaceC0875e);
        C0974i c0974i = new C0974i(c0980o);
        C0990y c0990y = new C0990y(c0980o, interfaceC0872b);
        C0999e c0999e = new C0999e(context);
        C0955s.c cVar = new C0955s.c(resources);
        C0955s.d dVar = new C0955s.d(resources);
        C0955s.b bVar = new C0955s.b(resources);
        C0955s.a aVar = new C0955s.a(resources);
        C0970e c0970e = new C0970e(interfaceC0872b);
        C1013a c1013a = new C1013a();
        C1016d c1016d = new C1016d();
        ContentResolver contentResolver = context.getContentResolver();
        this.f2369c.m3083a(ByteBuffer.class, new C0939c()).m3083a(InputStream.class, new C0956t(interfaceC0872b)).m3088a(C1029m.f3198b, ByteBuffer.class, Bitmap.class, c0974i).m3088a(C1029m.f3198b, InputStream.class, Bitmap.class, c0990y).m3088a(C1029m.f3198b, ParcelFileDescriptor.class, Bitmap.class, m2856b).m3088a(C1029m.f3198b, AssetFileDescriptor.class, Bitmap.class, C0966ac.m2854a(interfaceC0875e)).m3085a(Bitmap.class, Bitmap.class, C0958v.a.m2844b()).m3088a(C1029m.f3198b, Bitmap.class, Bitmap.class, new C0964aa()).m3084a(Bitmap.class, (InterfaceC1027l) c0970e).m3088a(C1029m.f3199c, ByteBuffer.class, BitmapDrawable.class, new C0963a(resources, c0974i, (byte) 0)).m3088a(C1029m.f3199c, InputStream.class, BitmapDrawable.class, new C0963a(resources, c0990y, (byte) 0)).m3088a(C1029m.f3199c, ParcelFileDescriptor.class, BitmapDrawable.class, new C0963a(resources, m2856b, (byte) 0)).m3084a(BitmapDrawable.class, (InterfaceC1027l) new C0967b(interfaceC0875e, c0970e)).m3088a(C1029m.f3197a, InputStream.class, C1005c.class, new C1012j(this.f2369c.m3089a(), c1003a, interfaceC0872b)).m3088a(C1029m.f3197a, ByteBuffer.class, C1005c.class, c1003a).m3084a(C1005c.class, (InterfaceC1027l) new C1006d()).m3085a(InterfaceC0818b.class, InterfaceC0818b.class, C0958v.a.m2844b()).m3088a(C1029m.f3198b, InterfaceC0818b.class, Bitmap.class, new C1010h(interfaceC0875e)).m3087a(Uri.class, Drawable.class, c0999e).m3087a(Uri.class, Bitmap.class, new C0988w(c0999e, interfaceC0875e)).m3082a((InterfaceC0859e.a<?>) new C0993a.a()).m3085a(File.class, ByteBuffer.class, new C0940d.b()).m3085a(File.class, InputStream.class, new C0942f.e()).m3087a(File.class, File.class, new C1001a()).m3085a(File.class, ParcelFileDescriptor.class, new C0942f.b()).m3085a(File.class, File.class, C0958v.a.m2844b()).m3082a((InterfaceC0859e.a<?>) new C0865k.a(interfaceC0872b)).m3085a(Integer.TYPE, InputStream.class, cVar).m3085a(Integer.TYPE, ParcelFileDescriptor.class, bVar).m3085a(Integer.class, InputStream.class, cVar).m3085a(Integer.class, ParcelFileDescriptor.class, bVar).m3085a(Integer.class, Uri.class, dVar).m3085a(Integer.TYPE, AssetFileDescriptor.class, aVar).m3085a(Integer.class, AssetFileDescriptor.class, aVar).m3085a(Integer.TYPE, Uri.class, dVar).m3085a(String.class, InputStream.class, new C0941e.c()).m3085a(Uri.class, InputStream.class, new C0941e.c()).m3085a(String.class, InputStream.class, new C0957u.c()).m3085a(String.class, ParcelFileDescriptor.class, new C0957u.b()).m3085a(String.class, AssetFileDescriptor.class, new C0957u.a()).m3085a(Uri.class, InputStream.class, new C0934c.a()).m3085a(Uri.class, InputStream.class, new C0931a.c(context.getAssets())).m3085a(Uri.class, ParcelFileDescriptor.class, new C0931a.b(context.getAssets())).m3085a(Uri.class, InputStream.class, new C0935d.a(context)).m3085a(Uri.class, InputStream.class, new C0936e.a(context)).m3085a(Uri.class, InputStream.class, new C0959w.d(contentResolver)).m3085a(Uri.class, ParcelFileDescriptor.class, new C0959w.b(contentResolver)).m3085a(Uri.class, AssetFileDescriptor.class, new C0959w.a(contentResolver)).m3085a(Uri.class, InputStream.class, new C0960x.a()).m3085a(URL.class, InputStream.class, new C0937f.a()).m3085a(Uri.class, File.class, new C0947k.a(context)).m3085a(C0943g.class, InputStream.class, new C0933b.a()).m3085a(byte[].class, ByteBuffer.class, new C0938b.a()).m3085a(byte[].class, InputStream.class, new C0938b.d()).m3085a(Uri.class, Uri.class, C0958v.a.m2844b()).m3085a(Drawable.class, Drawable.class, C0958v.a.m2844b()).m3087a(Drawable.class, Drawable.class, new C1000f()).m3086a(Bitmap.class, BitmapDrawable.class, new C1014b(resources, (byte) 0)).m3086a(Bitmap.class, byte[].class, c1013a).m3086a(Drawable.class, byte[].class, new C1015c(interfaceC0875e, c1013a, c1016d)).m3086a(C1005c.class, byte[].class, c1016d);
        this.f2368b = new C0844h(context, interfaceC0872b, this.f2369c, new ImageViewTargetFactory(), c1066g, map, c0914j, i);
    }

    @NonNull
    /* renamed from: a */
    private EnumC0846j m2291a(@NonNull EnumC0846j enumC0846j) {
        C1086k.m3485a();
        this.f2375m.mo2553a(enumC0846j.getMultiplier());
        this.f2367a.mo2467a(enumC0846j.getMultiplier());
        EnumC0846j enumC0846j2 = this.f2377o;
        this.f2377o = enumC0846j;
        return enumC0846j2;
    }

    @NonNull
    /* renamed from: a */
    public static C1047o m2292a(@NonNull Activity activity) {
        return m2317f(activity).m3142a(activity);
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static C1047o m2293a(@NonNull Fragment fragment) {
        return m2317f(fragment.getActivity()).m3143a(fragment);
    }

    @NonNull
    /* renamed from: a */
    public static C1047o m2294a(@NonNull android.support.v4.app.Fragment fragment) {
        return m2317f(fragment.getActivity()).m3145a(fragment);
    }

    @NonNull
    /* renamed from: a */
    public static C1047o m2295a(@NonNull FragmentActivity fragmentActivity) {
        return m2317f(fragmentActivity).m3146a(fragmentActivity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: a */
    public static C1047o m2296a(@NonNull View view) {
        C1042k m2317f = m2317f(view.getContext());
        if (!C1086k.m3496d()) {
            C1084i.m3470a(view, "Argument must not be null");
            C1084i.m3470a(view.getContext(), "Unable to obtain a request manager for a view without a Context");
            Activity m3133b = C1042k.m3133b(view.getContext());
            if (m3133b != null) {
                Fragment fragment = null;
                android.support.v4.app.Fragment fragment2 = null;
                if (!(m3133b instanceof FragmentActivity)) {
                    m2317f.f3249e.clear();
                    m2317f.m3147a(m3133b.getFragmentManager(), m2317f.f3249e);
                    View findViewById = m3133b.findViewById(android.R.id.content);
                    while (!view.equals(findViewById) && (fragment = m2317f.f3249e.get(view)) == null && (view.getParent() instanceof View)) {
                        view = (View) view.getParent();
                    }
                    m2317f.f3249e.clear();
                    return fragment == null ? m2317f.m3142a(m3133b) : m2317f.m3143a(fragment);
                }
                FragmentActivity fragmentActivity = (FragmentActivity) m3133b;
                m2317f.f3248d.clear();
                C1042k.m3132a(fragmentActivity.getSupportFragmentManager().getFragments(), m2317f.f3248d);
                View findViewById2 = fragmentActivity.findViewById(android.R.id.content);
                while (!view.equals(findViewById2) && (fragment2 = m2317f.f3248d.get(view)) == null && (view.getParent() instanceof View)) {
                    view = (View) view.getParent();
                }
                m2317f.f3248d.clear();
                return fragment2 != null ? m2317f.m3145a(fragment2) : m2317f.m3142a(m3133b);
            }
        }
        return m2317f.m3144a(view.getContext().getApplicationContext());
    }

    @Nullable
    /* renamed from: a */
    public static File m2297a(@NonNull Context context) {
        return m2298a(context, "image_manager_disk_cache");
    }

    @Nullable
    /* renamed from: a */
    public static File m2298a(@NonNull Context context, @NonNull String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            if (Log.isLoggable(f2364i, 6)) {
                Log.e(f2364i, "default disk cache dir is null");
            }
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static synchronized void m2299a() {
        synchronized (ComponentCallbacks2C0838f.class) {
            if (f2365j != null) {
                f2365j.f2368b.getBaseContext().getApplicationContext().unregisterComponentCallbacks(f2365j);
                C0914j c0914j = f2365j.f2374l;
                C0914j.b bVar = c0914j.f2760d;
                C0914j.b.m2700a(bVar.f2770a);
                C0914j.b.m2700a(bVar.f2771b);
                C0914j.b.m2700a(bVar.f2772c);
                C0914j.b.m2700a(bVar.f2773d);
                c0914j.f2761e.m2702b();
                C0870a c0870a = c0914j.f2763g;
                c0870a.f2488f = true;
                if (c0870a.f2487e != null) {
                    c0870a.f2487e.interrupt();
                    try {
                        c0870a.f2487e.join(TimeUnit.SECONDS.toMillis(5L));
                        if (c0870a.f2487e.isAlive()) {
                            throw new RuntimeException("Failed to join in time");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
            f2365j = null;
        }
    }

    /* renamed from: a */
    private void m2300a(int i) {
        C1086k.m3485a();
        this.f2375m.mo2549a(i);
        this.f2367a.mo2468a(i);
        this.f2370d.mo2446a(i);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static synchronized void m2301a(@NonNull Context context, @NonNull C0843g c0843g) {
        synchronized (ComponentCallbacks2C0838f.class) {
            if (f2365j != null) {
                m2299a();
            }
            m2308b(context, c0843g);
        }
    }

    @VisibleForTesting
    @Deprecated
    /* renamed from: a */
    public static synchronized void m2302a(ComponentCallbacks2C0838f componentCallbacks2C0838f) {
        synchronized (ComponentCallbacks2C0838f.class) {
            if (f2365j != null) {
                m2299a();
            }
            f2365j = componentCallbacks2C0838f;
        }
    }

    /* renamed from: a */
    private void m2303a(C1047o c1047o) {
        synchronized (this.f2373g) {
            if (this.f2373g.contains(c1047o)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f2373g.add(c1047o);
        }
    }

    /* renamed from: a */
    private static void m2304a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: a */
    private void m2305a(@NonNull C0908d.a... aVarArr) {
        C0906b c0906b = this.f2376n;
        if (c0906b.f2669e != null) {
            c0906b.f2669e.f2657f = true;
        }
        C0908d[] c0908dArr = new C0908d[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            C0908d.a aVar = aVarArr[i];
            if (aVar.f2681c == null) {
                aVar.f2681c = c0906b.f2667c == EnumC0869b.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            }
            c0908dArr[i] = new C0908d(aVar.f2679a, aVar.f2680b, aVar.f2681c, aVar.f2682d);
        }
        long mo2554b = (c0906b.f2665a.mo2554b() - c0906b.f2665a.mo2552a()) + c0906b.f2666b.mo2465a();
        int i2 = 0;
        for (C0908d c0908d : c0908dArr) {
            i2 += c0908d.f2678e;
        }
        float f = ((float) mo2554b) / i2;
        HashMap hashMap = new HashMap();
        for (C0908d c0908d2 : c0908dArr) {
            hashMap.put(c0908d2, Integer.valueOf(Math.round(c0908d2.f2678e * f) / C1086k.m3475a(c0908d2.f2675b, c0908d2.f2676c, c0908d2.f2677d)));
        }
        c0906b.f2669e = new RunnableC0905a(c0906b.f2666b, c0906b.f2665a, new C0907c(hashMap));
        c0906b.f2668d.post(c0906b.f2669e);
    }

    @Nullable
    /* renamed from: b */
    private static AbstractC0812b m2306b() {
        try {
            return (AbstractC0812b) Class.forName("com.bumptech.glide.c").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            if (!Log.isLoggable(f2364i, 5)) {
                return null;
            }
            Log.w(f2364i, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            return null;
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            m2304a(e);
            return null;
        }
    }

    @NonNull
    /* renamed from: b */
    public static ComponentCallbacks2C0838f m2307b(@NonNull Context context) {
        if (f2365j == null) {
            synchronized (ComponentCallbacks2C0838f.class) {
                if (f2365j == null) {
                    if (f2366k) {
                        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
                    }
                    f2366k = true;
                    m2308b(context, new C0843g());
                    f2366k = false;
                }
            }
        }
        return f2365j;
    }

    /* renamed from: b */
    private static void m2308b(@NonNull Context context, @NonNull C0843g c0843g) {
        Context applicationContext = context.getApplicationContext();
        AbstractC0812b m2306b = m2306b();
        List<InterfaceC0827c> emptyList = Collections.emptyList();
        if (m2306b == null || m2306b.mo2197d()) {
            emptyList = new C0829e(applicationContext).m2262a();
        }
        List<InterfaceC0827c> list = emptyList;
        if (m2306b != null && !m2306b.mo2124a().isEmpty()) {
            Set<Class<?>> mo2124a = m2306b.mo2124a();
            Iterator<InterfaceC0827c> it = list.iterator();
            while (it.hasNext()) {
                InterfaceC0827c next = it.next();
                if (mo2124a.contains(next.getClass())) {
                    if (Log.isLoggable(f2364i, 3)) {
                        Log.d(f2364i, "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable(f2364i, 3)) {
            Iterator<InterfaceC0827c> it2 = list.iterator();
            while (it2.hasNext()) {
                Log.d(f2364i, "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        c0843g.f2397m = m2306b != null ? m2306b.mo2125b() : null;
        Iterator<InterfaceC0827c> it3 = list.iterator();
        while (it3.hasNext()) {
            it3.next().mo2195a(applicationContext, c0843g);
        }
        if (m2306b != null) {
            m2306b.mo2195a(applicationContext, c0843g);
        }
        if (c0843g.f2390f == null) {
            c0843g.f2390f = ExecutorServiceC0902a.m2584b();
        }
        if (c0843g.f2391g == null) {
            c0843g.f2391g = ExecutorServiceC0902a.m2579a();
        }
        if (c0843g.f2398n == null) {
            c0843g.f2398n = ExecutorServiceC0902a.m2587d();
        }
        if (c0843g.f2393i == null) {
            c0843g.f2393i = new C0899l.a(applicationContext).m2570a();
        }
        if (c0843g.f2394j == null) {
            c0843g.f2394j = new C1037f();
        }
        if (c0843g.f2387c == null) {
            int i = c0843g.f2393i.f2599b;
            if (i > 0) {
                c0843g.f2387c = new C0881k(i);
            } else {
                c0843g.f2387c = new C0876f();
            }
        }
        if (c0843g.f2388d == null) {
            c0843g.f2388d = new C0880j(c0843g.f2393i.f2601d);
        }
        if (c0843g.f2389e == null) {
            c0843g.f2389e = new C0896i(c0843g.f2393i.f2600c);
        }
        if (c0843g.f2392h == null) {
            c0843g.f2392h = new C0895h(applicationContext);
        }
        if (c0843g.f2386b == null) {
            c0843g.f2386b = new C0914j(c0843g.f2389e, c0843g.f2392h, c0843g.f2391g, c0843g.f2390f, ExecutorServiceC0902a.m2586c(), ExecutorServiceC0902a.m2587d(), c0843g.f2399o);
        }
        ComponentCallbacks2C0838f componentCallbacks2C0838f = new ComponentCallbacks2C0838f(applicationContext, c0843g.f2386b, c0843g.f2389e, c0843g.f2387c, c0843g.f2388d, new C1042k(c0843g.f2397m), c0843g.f2394j, c0843g.f2395k, c0843g.f2396l.mo3385n(), c0843g.f2385a);
        Iterator<InterfaceC0827c> it4 = list.iterator();
        while (it4.hasNext()) {
            it4.next();
        }
        applicationContext.registerComponentCallbacks(componentCallbacks2C0838f);
        f2365j = componentCallbacks2C0838f;
    }

    /* renamed from: b */
    private void m2309b(C1047o c1047o) {
        synchronized (this.f2373g) {
            if (!this.f2373g.contains(c1047o)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f2373g.remove(c1047o);
        }
    }

    @NonNull
    /* renamed from: c */
    private InterfaceC0875e m2310c() {
        return this.f2367a;
    }

    @NonNull
    /* renamed from: c */
    public static C1047o m2311c(@NonNull Context context) {
        return m2317f(context).m3144a(context);
    }

    @NonNull
    /* renamed from: d */
    private InterfaceC0872b m2312d() {
        return this.f2370d;
    }

    /* renamed from: d */
    private static void m2313d(@NonNull Context context) {
        if (f2366k) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f2366k = true;
        m2308b(context, new C0843g());
        f2366k = false;
    }

    @NonNull
    /* renamed from: e */
    private Context m2314e() {
        return this.f2368b.getBaseContext();
    }

    /* renamed from: e */
    private static void m2315e(@NonNull Context context) {
        m2308b(context, new C0843g());
    }

    /* renamed from: f */
    private InterfaceC1035d m2316f() {
        return this.f2372f;
    }

    @NonNull
    /* renamed from: f */
    private static C1042k m2317f(@Nullable Context context) {
        C1084i.m3470a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m2307b(context).f2371e;
    }

    @NonNull
    /* renamed from: g */
    private C0844h m2318g() {
        return this.f2368b;
    }

    /* renamed from: h */
    private void m2319h() {
        C1086k.m3485a();
        this.f2375m.mo2555c();
        this.f2367a.mo2471b();
        this.f2370d.mo2445a();
    }

    /* renamed from: i */
    private void m2320i() {
        C1086k.m3492b();
        this.f2374l.f2761e.mo2672a().mo2530a();
    }

    @NonNull
    /* renamed from: j */
    private C1042k m2321j() {
        return this.f2371e;
    }

    @NonNull
    /* renamed from: k */
    private C1029m m2322k() {
        return this.f2369c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m2323a(@NonNull Target<?> target) {
        synchronized (this.f2373g) {
            Iterator<C1047o> it = this.f2373g.iterator();
            while (it.hasNext()) {
                if (it.next().m3227b(target)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        C1086k.m3485a();
        this.f2375m.mo2555c();
        this.f2367a.mo2471b();
        this.f2370d.mo2445a();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        C1086k.m3485a();
        this.f2375m.mo2549a(i);
        this.f2367a.mo2468a(i);
        this.f2370d.mo2446a(i);
    }
}
