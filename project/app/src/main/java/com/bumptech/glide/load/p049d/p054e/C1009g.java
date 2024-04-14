package com.bumptech.glide.load.p049d.p054e;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.C1046n;
import com.bumptech.glide.C1047o;
import com.bumptech.glide.ComponentCallbacks2C0838f;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.InterfaceC1028m;
import com.bumptech.glide.load.p042b.AbstractC0913i;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.p036c.InterfaceC0818b;
import com.bumptech.glide.p039f.C0842d;
import com.bumptech.glide.request.C1066g;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.d.e.g */
/* loaded from: classes.dex */
public final class C1009g {

    /* renamed from: a */
    final InterfaceC0818b f3146a;

    /* renamed from: b */
    final List<b> f3147b;

    /* renamed from: c */
    final C1047o f3148c;

    /* renamed from: d */
    boolean f3149d;

    /* renamed from: e */
    boolean f3150e;

    /* renamed from: f */
    a f3151f;

    /* renamed from: g */
    boolean f3152g;

    /* renamed from: h */
    a f3153h;

    /* renamed from: i */
    Bitmap f3154i;

    /* renamed from: j */
    InterfaceC1028m<Bitmap> f3155j;

    /* renamed from: k */
    a f3156k;

    /* renamed from: l */
    private final Handler f3157l;

    /* renamed from: m */
    private final InterfaceC0875e f3158m;

    /* renamed from: n */
    private boolean f3159n;

    /* renamed from: o */
    private C1046n<Bitmap> f3160o;

    /* renamed from: p */
    @Nullable
    private d f3161p;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.e.g$a */
    /* loaded from: classes.dex */
    public static class a extends SimpleTarget<Bitmap> {

        /* renamed from: a */
        final int f3162a;

        /* renamed from: b */
        Bitmap f3163b;

        /* renamed from: c */
        private final Handler f3164c;

        /* renamed from: d */
        private final long f3165d;

        a(Handler handler, int i, long j) {
            this.f3164c = handler;
            this.f3162a = i;
            this.f3165d = j;
        }

        /* renamed from: a */
        private Bitmap m3038a() {
            return this.f3163b;
        }

        /* renamed from: a */
        private void m3039a(@NonNull Bitmap bitmap) {
            this.f3163b = bitmap;
            this.f3164c.sendMessageAtTime(this.f3164c.obtainMessage(1, this), this.f3165d);
        }

        @Override // com.bumptech.glide.request.target.Target
        public final /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f interfaceC1055f) {
            this.f3163b = (Bitmap) obj;
            this.f3164c.sendMessageAtTime(this.f3164c.obtainMessage(1, this), this.f3165d);
        }
    }

    /* renamed from: com.bumptech.glide.load.d.e.g$b */
    /* loaded from: classes.dex */
    public interface b {
        /* renamed from: c */
        void mo3012c();
    }

    /* renamed from: com.bumptech.glide.load.d.e.g$c */
    /* loaded from: classes.dex */
    private class c implements Handler.Callback {

        /* renamed from: a */
        static final int f3166a = 1;

        /* renamed from: b */
        static final int f3167b = 2;

        c() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what == 1) {
                C1009g.this.m3033a((a) message.obj);
                return true;
            }
            if (message.what != 2) {
                return false;
            }
            C1009g.this.f3148c.m3214a((Target<?>) message.obj);
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.d.e.g$d */
    /* loaded from: classes.dex */
    interface d {
        /* renamed from: a */
        void m3040a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1009g(ComponentCallbacks2C0838f componentCallbacks2C0838f, InterfaceC0818b interfaceC0818b, int i, int i2, InterfaceC1028m<Bitmap> interfaceC1028m, Bitmap bitmap) {
        this(componentCallbacks2C0838f.f2367a, ComponentCallbacks2C0838f.m2311c(componentCallbacks2C0838f.f2368b.getBaseContext()), interfaceC0818b, ComponentCallbacks2C0838f.m2311c(componentCallbacks2C0838f.f2368b.getBaseContext()).mo3211a().mo3180a(C1066g.m3304a(AbstractC0913i.f2751b).mo3365b(true).mo3372d(true).mo3343a(i, i2)), interfaceC1028m, bitmap);
    }

    private C1009g(InterfaceC0875e interfaceC0875e, C1047o c1047o, InterfaceC0818b interfaceC0818b, C1046n<Bitmap> c1046n, InterfaceC1028m<Bitmap> interfaceC1028m, Bitmap bitmap) {
        this.f3147b = new ArrayList();
        this.f3148c = c1047o;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.f3158m = interfaceC0875e;
        this.f3157l = handler;
        this.f3160o = c1046n;
        this.f3146a = interfaceC0818b;
        m3034a(interfaceC1028m, bitmap);
    }

    /* renamed from: a */
    private static C1046n<Bitmap> m3014a(C1047o c1047o, int i, int i2) {
        return c1047o.mo3211a().mo3180a(C1066g.m3304a(AbstractC0913i.f2751b).mo3365b(true).mo3372d(true).mo3343a(i, i2));
    }

    /* renamed from: a */
    private void m3015a(b bVar) {
        if (this.f3152g) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f3147b.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = this.f3147b.isEmpty();
        this.f3147b.add(bVar);
        if (!isEmpty || this.f3149d) {
            return;
        }
        this.f3149d = true;
        this.f3152g = false;
        m3036c();
    }

    @VisibleForTesting
    /* renamed from: a */
    private void m3016a(@Nullable d dVar) {
        this.f3161p = dVar;
    }

    /* renamed from: b */
    private void m3017b(b bVar) {
        this.f3147b.remove(bVar);
        if (this.f3147b.isEmpty()) {
            this.f3149d = false;
        }
    }

    /* renamed from: e */
    private InterfaceC1028m<Bitmap> m3018e() {
        return this.f3155j;
    }

    /* renamed from: f */
    private Bitmap m3019f() {
        return this.f3154i;
    }

    /* renamed from: g */
    private int m3020g() {
        return m3035b().getWidth();
    }

    /* renamed from: h */
    private int m3021h() {
        return m3035b().getHeight();
    }

    /* renamed from: i */
    private int m3022i() {
        return this.f3146a.mo2217m() + C1086k.m3475a(m3035b().getWidth(), m3035b().getHeight(), m3035b().getConfig());
    }

    /* renamed from: j */
    private int m3023j() {
        if (this.f3151f != null) {
            return this.f3151f.f3162a;
        }
        return -1;
    }

    /* renamed from: k */
    private int m3024k() {
        return C1086k.m3475a(m3035b().getWidth(), m3035b().getHeight(), m3035b().getConfig());
    }

    /* renamed from: l */
    private ByteBuffer m3025l() {
        return this.f3146a.mo2207c().asReadOnlyBuffer();
    }

    /* renamed from: m */
    private int m3026m() {
        return this.f3146a.mo2216l();
    }

    /* renamed from: n */
    private void m3027n() {
        if (this.f3149d) {
            return;
        }
        this.f3149d = true;
        this.f3152g = false;
        m3036c();
    }

    /* renamed from: o */
    private void m3028o() {
        this.f3149d = false;
    }

    /* renamed from: p */
    private void m3029p() {
        this.f3147b.clear();
        m3037d();
        this.f3149d = false;
        if (this.f3151f != null) {
            this.f3148c.m3214a((Target<?>) this.f3151f);
            this.f3151f = null;
        }
        if (this.f3153h != null) {
            this.f3148c.m3214a((Target<?>) this.f3153h);
            this.f3153h = null;
        }
        if (this.f3156k != null) {
            this.f3148c.m3214a((Target<?>) this.f3156k);
            this.f3156k = null;
        }
        this.f3146a.mo2219o();
        this.f3152g = true;
    }

    /* renamed from: q */
    private void m3030q() {
        C1084i.m3473a(!this.f3149d, "Can't restart a running animation");
        this.f3150e = true;
        if (this.f3156k != null) {
            this.f3148c.m3214a((Target<?>) this.f3156k);
            this.f3156k = null;
        }
    }

    /* renamed from: r */
    private static InterfaceC1022g m3031r() {
        return new C0842d(Double.valueOf(Math.random()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m3032a() {
        return this.f3146a.mo2211g();
    }

    @VisibleForTesting
    /* renamed from: a */
    final void m3033a(a aVar) {
        this.f3159n = false;
        if (this.f3152g) {
            this.f3157l.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f3149d) {
            this.f3156k = aVar;
            return;
        }
        if (aVar.f3163b != null) {
            m3037d();
            a aVar2 = this.f3151f;
            this.f3151f = aVar;
            for (int size = this.f3147b.size() - 1; size >= 0; size--) {
                this.f3147b.get(size).mo3012c();
            }
            if (aVar2 != null) {
                this.f3157l.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        m3036c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3034a(InterfaceC1028m<Bitmap> interfaceC1028m, Bitmap bitmap) {
        this.f3155j = (InterfaceC1028m) C1084i.m3470a(interfaceC1028m, "Argument must not be null");
        this.f3154i = (Bitmap) C1084i.m3470a(bitmap, "Argument must not be null");
        this.f3160o = this.f3160o.mo3180a(new C1066g().mo3352a(interfaceC1028m));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Bitmap m3035b() {
        return this.f3151f != null ? this.f3151f.f3163b : this.f3154i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m3036c() {
        if (!this.f3149d || this.f3159n) {
            return;
        }
        if (this.f3150e) {
            C1084i.m3473a(this.f3156k == null, "Pending target must be null when starting from the first frame");
            this.f3146a.mo2213i();
            this.f3150e = false;
        }
        if (this.f3156k != null) {
            a aVar = this.f3156k;
            this.f3156k = null;
            m3033a(aVar);
        } else {
            this.f3159n = true;
            long uptimeMillis = SystemClock.uptimeMillis() + this.f3146a.mo2210f();
            this.f3146a.mo2209e();
            this.f3153h = new a(this.f3157l, this.f3146a.mo2212h(), uptimeMillis);
            this.f3160o.mo3180a(C1066g.m3307a(new C0842d(Double.valueOf(Math.random())))).mo2371a(this.f3146a).m3183a((C1046n<Bitmap>) this.f3153h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m3037d() {
        if (this.f3154i != null) {
            this.f3158m.mo2469a(this.f3154i);
            this.f3154i = null;
        }
    }
}
