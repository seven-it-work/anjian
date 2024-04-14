package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.CheckResult;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.manager.C1044m;
import com.bumptech.glide.p039f.C0839a;
import com.bumptech.glide.request.C1049a;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.C1068i;
import com.bumptech.glide.request.C1069j;
import com.bumptech.glide.request.InterfaceC1062c;
import com.bumptech.glide.request.InterfaceC1063d;
import com.bumptech.glide.request.InterfaceC1065f;
import com.bumptech.glide.request.InterfaceFutureC1061b;
import com.bumptech.glide.request.RunnableC1064e;
import com.bumptech.glide.request.target.PreloadTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.n */
/* loaded from: classes.dex */
public class C1046n<TranscodeType> implements InterfaceC0847k<C1046n<TranscodeType>>, Cloneable {

    /* renamed from: a */
    protected static final C1066g f3259a = new C1066g().mo3360b(AbstractC0913i.f2752c).mo3348a(EnumC0848l.LOW).mo3372d(true);

    /* renamed from: b */
    @NonNull
    protected C1066g f3260b;

    /* renamed from: c */
    private final Context f3261c;

    /* renamed from: d */
    private final C1047o f3262d;

    /* renamed from: e */
    private final Class<TranscodeType> f3263e;

    /* renamed from: f */
    private final C1066g f3264f;

    /* renamed from: g */
    private final ComponentCallbacks2C0838f f3265g;

    /* renamed from: h */
    private final C0844h f3266h;

    /* renamed from: i */
    @NonNull
    private AbstractC1048p<?, ? super TranscodeType> f3267i;

    /* renamed from: j */
    @Nullable
    private Object f3268j;

    /* renamed from: k */
    @Nullable
    private List<InterfaceC1065f<TranscodeType>> f3269k;

    /* renamed from: l */
    @Nullable
    private C1046n<TranscodeType> f3270l;

    /* renamed from: m */
    @Nullable
    private C1046n<TranscodeType> f3271m;

    /* renamed from: n */
    @Nullable
    private Float f3272n;

    /* renamed from: o */
    private boolean f3273o;

    /* renamed from: p */
    private boolean f3274p;

    /* renamed from: q */
    private boolean f3275q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.n$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3278a;

        static {
            try {
                f3279b[EnumC0848l.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3279b[EnumC0848l.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3279b[EnumC0848l.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3279b[EnumC0848l.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f3278a = new int[ImageView.ScaleType.values().length];
            try {
                f3278a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3278a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3278a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3278a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3278a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3278a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3278a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3278a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1046n(ComponentCallbacks2C0838f componentCallbacks2C0838f, C1047o c1047o, Class<TranscodeType> cls, Context context) {
        this.f3273o = true;
        this.f3265g = componentCallbacks2C0838f;
        this.f3262d = c1047o;
        this.f3263e = cls;
        this.f3264f = c1047o.f3288f;
        this.f3261c = context;
        this.f3267i = c1047o.m3226b((Class) cls);
        this.f3260b = this.f3264f;
        this.f3266h = componentCallbacks2C0838f.f2368b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1046n(Class<TranscodeType> cls, C1046n<?> c1046n) {
        this(c1046n.f3265g, c1046n.f3262d, cls, c1046n.f3261c);
        this.f3268j = c1046n.f3268j;
        this.f3274p = c1046n.f3274p;
        this.f3260b = c1046n.f3260b;
    }

    @NonNull
    /* renamed from: a */
    private EnumC0848l m3162a(@NonNull EnumC0848l enumC0848l) {
        switch (enumC0848l) {
            case LOW:
                return EnumC0848l.NORMAL;
            case NORMAL:
                return EnumC0848l.HIGH;
            case HIGH:
            case IMMEDIATE:
                return EnumC0848l.IMMEDIATE;
            default:
                throw new IllegalArgumentException("unknown priority: " + this.f3260b.f3368c);
        }
    }

    @Deprecated
    /* renamed from: a */
    private InterfaceFutureC1061b<TranscodeType> m3163a(int i, int i2) {
        return m3168b(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private InterfaceC1062c m3164a(Target<TranscodeType> target, @Nullable InterfaceC1065f<TranscodeType> interfaceC1065f, @Nullable InterfaceC1063d interfaceC1063d, AbstractC1048p<?, ? super TranscodeType> abstractC1048p, EnumC0848l enumC0848l, int i, int i2, C1066g c1066g) {
        InterfaceC1063d interfaceC1063d2;
        InterfaceC1063d interfaceC1063d3;
        InterfaceC1062c interfaceC1062c;
        if (this.f3271m != null) {
            interfaceC1063d3 = new C1049a(interfaceC1063d);
            interfaceC1063d2 = interfaceC1063d3;
        } else {
            interfaceC1063d2 = null;
            interfaceC1063d3 = interfaceC1063d;
        }
        if (this.f3270l != null) {
            if (this.f3275q) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            AbstractC1048p<?, ? super TranscodeType> abstractC1048p2 = this.f3270l.f3273o ? abstractC1048p : this.f3270l.f3267i;
            EnumC0848l m3162a = this.f3270l.f3260b.m3378g(8) ? this.f3270l.f3260b.f3368c : m3162a(enumC0848l);
            int i3 = this.f3270l.f3260b.f3375j;
            int i4 = this.f3270l.f3260b.f3374i;
            if (C1086k.m3486a(i, i2) && !this.f3270l.f3260b.m3387p()) {
                i3 = c1066g.f3375j;
                i4 = c1066g.f3374i;
            }
            C1069j c1069j = new C1069j(interfaceC1063d3);
            InterfaceC1062c m3165a = m3165a(target, interfaceC1065f, c1066g, c1069j, abstractC1048p, enumC0848l, i, i2);
            this.f3275q = true;
            InterfaceC1062c m3164a = this.f3270l.m3164a(target, interfaceC1065f, c1069j, abstractC1048p2, m3162a, i3, i4, this.f3270l.f3260b);
            this.f3275q = false;
            c1069j.m3416a(m3165a, m3164a);
            interfaceC1062c = c1069j;
        } else if (this.f3272n != null) {
            C1069j c1069j2 = new C1069j(interfaceC1063d3);
            c1069j2.m3416a(m3165a(target, interfaceC1065f, c1066g, c1069j2, abstractC1048p, enumC0848l, i, i2), m3165a(target, interfaceC1065f, c1066g.clone().mo3341a(this.f3272n.floatValue()), c1069j2, abstractC1048p, m3162a(enumC0848l), i, i2));
            interfaceC1062c = c1069j2;
        } else {
            interfaceC1062c = m3165a(target, interfaceC1065f, c1066g, interfaceC1063d3, abstractC1048p, enumC0848l, i, i2);
        }
        InterfaceC1062c interfaceC1062c2 = interfaceC1062c;
        if (interfaceC1063d2 == null) {
            return interfaceC1062c2;
        }
        int i5 = this.f3271m.f3260b.f3375j;
        int i6 = this.f3271m.f3260b.f3374i;
        if (C1086k.m3486a(i, i2) && !this.f3271m.f3260b.m3387p()) {
            i5 = c1066g.f3375j;
            i6 = c1066g.f3374i;
        }
        C1049a c1049a = interfaceC1063d2;
        InterfaceC1062c m3164a2 = this.f3271m.m3164a(target, interfaceC1065f, interfaceC1063d2, this.f3271m.f3267i, this.f3271m.f3260b.f3368c, i5, i6, this.f3271m.f3260b);
        c1049a.f3298a = interfaceC1062c2;
        c1049a.f3299b = m3164a2;
        return c1049a;
    }

    /* renamed from: a */
    private InterfaceC1062c m3165a(Target<TranscodeType> target, InterfaceC1065f<TranscodeType> interfaceC1065f, C1066g c1066g, InterfaceC1063d interfaceC1063d, AbstractC1048p<?, ? super TranscodeType> abstractC1048p, EnumC0848l enumC0848l, int i, int i2) {
        return C1068i.m3392a(this.f3261c, this.f3266h, this.f3268j, this.f3263e, c1066g, i, i2, enumC0848l, target, interfaceC1065f, this.f3269k, interfaceC1063d, this.f3266h.f2407h, abstractC1048p.f3297a);
    }

    /* renamed from: a */
    private <Y extends Target<TranscodeType>> Y m3166a(@NonNull Y y, @Nullable InterfaceC1065f<TranscodeType> interfaceC1065f, @NonNull C1066g c1066g) {
        C1086k.m3485a();
        C1084i.m3470a(y, "Argument must not be null");
        if (!this.f3274p) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        C1066g mo3386o = c1066g.mo3386o();
        InterfaceC1062c m3164a = m3164a(y, interfaceC1065f, (InterfaceC1063d) null, this.f3267i, mo3386o.f3368c, mo3386o.f3375j, mo3386o.f3374i, mo3386o);
        InterfaceC1062c request = y.getRequest();
        if (m3164a.mo3247a(request)) {
            if (!(!mo3386o.f3373h && request.mo3252d())) {
                m3164a.mo3259h();
                if (!((InterfaceC1062c) C1084i.m3470a(request, "Argument must not be null")).mo3250c()) {
                    request.mo3246a();
                }
                return y;
            }
        }
        this.f3262d.m3214a((Target<?>) y);
        y.setRequest(m3164a);
        C1047o c1047o = this.f3262d;
        c1047o.f3287e.f3258a.add(y);
        C1044m c1044m = c1047o.f3286d;
        c1044m.f3255a.add(m3164a);
        if (!c1044m.f3257c) {
            m3164a.mo3246a();
            return y;
        }
        m3164a.mo3248b();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        c1044m.f3256b.add(m3164a);
        return y;
    }

    /* renamed from: a */
    private static boolean m3167a(C1066g c1066g, InterfaceC1062c interfaceC1062c) {
        return !c1066g.f3373h && interfaceC1062c.mo3252d();
    }

    @NonNull
    /* renamed from: b */
    private InterfaceFutureC1061b<TranscodeType> m3168b(int i, int i2) {
        final RunnableC1064e runnableC1064e = new RunnableC1064e(this.f3266h.f2401b, i, i2);
        if (C1086k.m3496d()) {
            this.f3266h.f2401b.post(new Runnable() { // from class: com.bumptech.glide.n.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (runnableC1064e.isCancelled()) {
                        return;
                    }
                    C1046n.this.m3184a((C1046n) runnableC1064e, (InterfaceC1065f) runnableC1064e);
                }
            });
            return runnableC1064e;
        }
        m3184a((C1046n<TranscodeType>) runnableC1064e, runnableC1064e);
        return runnableC1064e;
    }

    /* renamed from: b */
    private InterfaceC1062c m3169b(Target<TranscodeType> target, InterfaceC1065f<TranscodeType> interfaceC1065f, @Nullable InterfaceC1063d interfaceC1063d, AbstractC1048p<?, ? super TranscodeType> abstractC1048p, EnumC0848l enumC0848l, int i, int i2, C1066g c1066g) {
        if (this.f3270l == null) {
            if (this.f3272n == null) {
                return m3165a(target, interfaceC1065f, c1066g, interfaceC1063d, abstractC1048p, enumC0848l, i, i2);
            }
            C1069j c1069j = new C1069j(interfaceC1063d);
            c1069j.m3416a(m3165a(target, interfaceC1065f, c1066g, c1069j, abstractC1048p, enumC0848l, i, i2), m3165a(target, interfaceC1065f, c1066g.clone().mo3341a(this.f3272n.floatValue()), c1069j, abstractC1048p, m3162a(enumC0848l), i, i2));
            return c1069j;
        }
        if (this.f3275q) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        AbstractC1048p<?, ? super TranscodeType> abstractC1048p2 = this.f3270l.f3273o ? abstractC1048p : this.f3270l.f3267i;
        EnumC0848l m3162a = this.f3270l.f3260b.m3378g(8) ? this.f3270l.f3260b.f3368c : m3162a(enumC0848l);
        int i3 = this.f3270l.f3260b.f3375j;
        int i4 = this.f3270l.f3260b.f3374i;
        if (C1086k.m3486a(i, i2) && !this.f3270l.f3260b.m3387p()) {
            i3 = c1066g.f3375j;
            i4 = c1066g.f3374i;
        }
        C1069j c1069j2 = new C1069j(interfaceC1063d);
        InterfaceC1062c m3165a = m3165a(target, interfaceC1065f, c1066g, c1069j2, abstractC1048p, enumC0848l, i, i2);
        this.f3275q = true;
        InterfaceC1062c m3164a = this.f3270l.m3164a(target, interfaceC1065f, c1069j2, abstractC1048p2, m3162a, i3, i4, this.f3270l.f3260b);
        this.f3275q = false;
        c1069j2.m3416a(m3165a, m3164a);
        return c1069j2;
    }

    /* renamed from: b */
    private InterfaceC1062c m3170b(Target<TranscodeType> target, @Nullable InterfaceC1065f<TranscodeType> interfaceC1065f, C1066g c1066g) {
        return m3164a(target, interfaceC1065f, (InterfaceC1063d) null, this.f3267i, c1066g.f3368c, c1066g.f3375j, c1066g.f3374i, c1066g);
    }

    @CheckResult
    @Deprecated
    /* renamed from: b */
    private <Y extends Target<File>> Y m3171b(@NonNull Y y) {
        return (Y) mo3199d().m3184a((C1046n<File>) y, (InterfaceC1065f<File>) null);
    }

    @NonNull
    /* renamed from: c */
    private C1046n<TranscodeType> m3172c(@Nullable Object obj) {
        this.f3268j = obj;
        this.f3274p = true;
        return this;
    }

    @CheckResult
    @Deprecated
    /* renamed from: c */
    private InterfaceFutureC1061b<File> m3173c(int i, int i2) {
        return mo3199d().m3168b(i, i2);
    }

    @NonNull
    /* renamed from: e */
    private InterfaceFutureC1061b<TranscodeType> m3174e() {
        return m3168b(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    /* renamed from: f */
    private Target<TranscodeType> m3175f() {
        return m3184a((C1046n<TranscodeType>) PreloadTarget.obtain(this.f3262d, Integer.MIN_VALUE, Integer.MIN_VALUE), (InterfaceC1065f) null);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3176a(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f3272n = Float.valueOf(f);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3177a(@Nullable C1046n<TranscodeType> c1046n) {
        this.f3271m = c1046n;
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3178a(@NonNull AbstractC1048p<?, ? super TranscodeType> abstractC1048p) {
        this.f3267i = (AbstractC1048p) C1084i.m3470a(abstractC1048p, "Argument must not be null");
        this.f3273o = false;
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3179a(@Nullable InterfaceC1065f<TranscodeType> interfaceC1065f) {
        this.f3269k = null;
        return mo3191b((InterfaceC1065f) interfaceC1065f);
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3180a(@NonNull C1066g c1066g) {
        C1084i.m3470a(c1066g, "Argument must not be null");
        this.f3260b = m3182a().mo3353a(c1066g);
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: a */
    public C1046n<TranscodeType> mo3181a(@Nullable C1046n<TranscodeType>... c1046nArr) {
        C1046n<TranscodeType> c1046n = null;
        if (c1046nArr == null || c1046nArr.length == 0) {
            return mo3190b((C1046n) null);
        }
        for (int length = c1046nArr.length - 1; length >= 0; length--) {
            C1046n<TranscodeType> c1046n2 = c1046nArr[length];
            if (c1046n2 != null) {
                c1046n = c1046n == null ? c1046n2 : c1046n2.mo3190b((C1046n) c1046n);
            }
        }
        return mo3190b((C1046n) c1046n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    /* renamed from: a */
    public final C1066g m3182a() {
        return this.f3264f == this.f3260b ? this.f3260b.clone() : this.f3260b;
    }

    @NonNull
    /* renamed from: a */
    public final <Y extends Target<TranscodeType>> Y m3183a(@NonNull Y y) {
        return (Y) m3184a((C1046n<TranscodeType>) y, (InterfaceC1065f) null);
    }

    @NonNull
    /* renamed from: a */
    final <Y extends Target<TranscodeType>> Y m3184a(@NonNull Y y, @Nullable InterfaceC1065f<TranscodeType> interfaceC1065f) {
        return (Y) m3166a(y, interfaceC1065f, m3182a());
    }

    @NonNull
    /* renamed from: a */
    public final ViewTarget<ImageView, TranscodeType> m3185a(@NonNull ImageView imageView) {
        C1086k.m3485a();
        C1084i.m3470a(imageView, "Argument must not be null");
        C1066g c1066g = this.f3260b;
        if (!c1066g.m3378g(2048) && c1066g.f3378m && imageView.getScaleType() != null) {
            switch (AnonymousClass2.f3278a[imageView.getScaleType().ordinal()]) {
                case 1:
                    c1066g = c1066g.clone().mo3370d();
                    break;
                case 2:
                case 6:
                    c1066g = c1066g.clone().mo3379h();
                    break;
                case 3:
                case 4:
                case 5:
                    c1066g = c1066g.clone().mo3375f();
                    break;
            }
        }
        C0844h c0844h = this.f3266h;
        return (ViewTarget) m3166a(c0844h.f2404e.buildTarget(imageView, this.f3263e), null, c1066g);
    }

    @Override // 
    @CheckResult
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> clone() {
        try {
            C1046n<TranscodeType> c1046n = (C1046n) super.clone();
            c1046n.f3260b = c1046n.f3260b.clone();
            c1046n.f3267i = (AbstractC1048p<?, ? super TranscodeType>) c1046n.f3267i.clone();
            return c1046n;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2366a(@Nullable Bitmap bitmap) {
        return m3172c(bitmap).mo3180a(C1066g.m3304a(AbstractC0913i.f2751b));
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2367a(@Nullable Drawable drawable) {
        return m3172c(drawable).mo3180a(C1066g.m3304a(AbstractC0913i.f2751b));
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2368a(@Nullable Uri uri) {
        return m3172c(uri);
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1046n<TranscodeType> mo3190b(@Nullable C1046n<TranscodeType> c1046n) {
        this.f3270l = c1046n;
        return this;
    }

    @CheckResult
    @NonNull
    /* renamed from: b */
    public C1046n<TranscodeType> mo3191b(@Nullable InterfaceC1065f<TranscodeType> interfaceC1065f) {
        if (interfaceC1065f != null) {
            if (this.f3269k == null) {
                this.f3269k = new ArrayList();
            }
            this.f3269k.add(interfaceC1065f);
        }
        return this;
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2369a(@Nullable File file) {
        return m3172c(file);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2370a(@RawRes @DrawableRes @Nullable Integer num) {
        return m3172c(num).mo3180a(C1066g.m3307a(C0839a.m2324a(this.f3261c)));
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2371a(@Nullable Object obj) {
        return m3172c(obj);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2372a(@Nullable String str) {
        return m3172c(str);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @Deprecated
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2373a(@Nullable URL url) {
        return m3172c(url);
    }

    @Override // com.bumptech.glide.InterfaceC0847k
    @CheckResult
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public C1046n<TranscodeType> mo2374a(@Nullable byte[] bArr) {
        C1046n<TranscodeType> m3172c = m3172c(bArr);
        if (!m3172c.f3260b.m3378g(4)) {
            m3172c = m3172c.mo3180a(C1066g.m3304a(AbstractC0913i.f2751b));
        }
        return !m3172c.f3260b.m3378g(256) ? m3172c.mo3180a(C1066g.m3303a()) : m3172c;
    }

    @NonNull
    /* renamed from: c */
    public final Target<TranscodeType> m3198c() {
        return m3184a((C1046n<TranscodeType>) PreloadTarget.obtain(this.f3262d, Integer.MIN_VALUE, Integer.MIN_VALUE), (InterfaceC1065f) null);
    }

    @CheckResult
    @NonNull
    /* renamed from: d */
    protected C1046n<File> mo3199d() {
        return new C1046n(File.class, this).mo3180a(f3259a);
    }
}
