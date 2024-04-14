package com.bumptech.glide;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.AbsListView;
import com.bumptech.glide.request.p056a.InterfaceC1055f;
import com.bumptech.glide.request.target.BaseTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.C1086k;
import java.util.List;
import java.util.Queue;

/* renamed from: com.bumptech.glide.i */
/* loaded from: classes.dex */
public final class C0845i<T> implements AbsListView.OnScrollListener {

    /* renamed from: a */
    private final int f2409a;

    /* renamed from: b */
    private final d f2410b;

    /* renamed from: c */
    private final C1047o f2411c;

    /* renamed from: d */
    private final a<T> f2412d;

    /* renamed from: e */
    private final b<T> f2413e;

    /* renamed from: f */
    private int f2414f;

    /* renamed from: g */
    private int f2415g;

    /* renamed from: i */
    private int f2417i;

    /* renamed from: h */
    private int f2416h = -1;

    /* renamed from: j */
    private boolean f2418j = true;

    /* renamed from: com.bumptech.glide.i$a */
    /* loaded from: classes.dex */
    public interface a<U> {
        @NonNull
        /* renamed from: a */
        List<U> m2362a();

        @Nullable
        /* renamed from: b */
        C1046n<?> m2363b();
    }

    /* renamed from: com.bumptech.glide.i$b */
    /* loaded from: classes.dex */
    public interface b<T> {
        @Nullable
        /* renamed from: a */
        int[] mo2364a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.i$c */
    /* loaded from: classes.dex */
    public static final class c extends BaseTarget<Object> {

        /* renamed from: a */
        int f2419a;

        /* renamed from: b */
        int f2420b;

        c() {
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
            sizeReadyCallback.onSizeReady(this.f2420b, this.f2419a);
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void onResourceReady(@NonNull Object obj, @Nullable InterfaceC1055f<? super Object> interfaceC1055f) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.i$d */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a */
        private final Queue<c> f2421a;

        d(int i) {
            this.f2421a = C1086k.m3484a(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f2421a.offer(new c());
            }
        }

        /* renamed from: a */
        public final c m2365a(int i, int i2) {
            c poll = this.f2421a.poll();
            this.f2421a.offer(poll);
            poll.f2420b = i;
            poll.f2419a = i2;
            return poll;
        }
    }

    private C0845i(@NonNull C1047o c1047o, @NonNull a<T> aVar, @NonNull b<T> bVar, int i) {
        this.f2411c = c1047o;
        this.f2412d = aVar;
        this.f2413e = bVar;
        this.f2409a = i;
        this.f2410b = new d(i + 1);
    }

    /* renamed from: a */
    private void m2357a() {
        for (int i = 0; i < this.f2409a; i++) {
            this.f2411c.m3214a((Target<?>) this.f2410b.m2365a(0, 0));
        }
    }

    /* renamed from: a */
    private void m2358a(int i, int i2) {
        int min;
        int i3;
        if (i < i2) {
            i3 = Math.max(this.f2414f, i);
            min = i2;
        } else {
            min = Math.min(this.f2415g, i);
            i3 = i2;
        }
        int min2 = Math.min(this.f2417i, min);
        int min3 = Math.min(this.f2417i, Math.max(0, i3));
        if (i < i2) {
            for (int i4 = min3; i4 < min2; i4++) {
                m2361a((List) this.f2412d.m2362a(), true);
            }
        } else {
            for (int i5 = min2 - 1; i5 >= min3; i5--) {
                m2361a((List) this.f2412d.m2362a(), false);
            }
        }
        this.f2415g = min3;
        this.f2414f = min2;
    }

    /* renamed from: a */
    private void m2359a(int i, boolean z) {
        int min;
        int i2;
        if (this.f2418j != z) {
            this.f2418j = z;
            for (int i3 = 0; i3 < this.f2409a; i3++) {
                this.f2411c.m3214a((Target<?>) this.f2410b.m2365a(0, 0));
            }
        }
        int i4 = (z ? this.f2409a : -this.f2409a) + i;
        if (i < i4) {
            i2 = Math.max(this.f2414f, i);
            min = i4;
        } else {
            min = Math.min(this.f2415g, i);
            i2 = i4;
        }
        int min2 = Math.min(this.f2417i, min);
        int min3 = Math.min(this.f2417i, Math.max(0, i2));
        if (i < i4) {
            for (int i5 = min3; i5 < min2; i5++) {
                m2361a((List) this.f2412d.m2362a(), true);
            }
        } else {
            for (int i6 = min2 - 1; i6 >= min3; i6--) {
                m2361a((List) this.f2412d.m2362a(), false);
            }
        }
        this.f2415g = min3;
        this.f2414f = min2;
    }

    /* renamed from: a */
    private void m2360a(@Nullable T t) {
        int[] mo2364a;
        C1046n<?> m2363b;
        if (t == null || (mo2364a = this.f2413e.mo2364a()) == null || (m2363b = this.f2412d.m2363b()) == null) {
            return;
        }
        m2363b.m3183a((C1046n<?>) this.f2410b.m2365a(mo2364a[0], mo2364a[1]));
    }

    /* renamed from: a */
    private void m2361a(List<T> list, boolean z) {
        int size = list.size();
        if (z) {
            for (int i = 0; i < size; i++) {
                m2360a(list.get(i));
            }
            return;
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            m2360a(list.get(i2));
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f2417i = i3;
        if (i > this.f2416h) {
            m2359a(i2 + i, true);
        } else if (i < this.f2416h) {
            m2359a(i, false);
        }
        this.f2416h = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
