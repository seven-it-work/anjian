package com.bumptech.glide.request.p056a;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.request.p056a.C1060k;

/* renamed from: com.bumptech.glide.request.a.h */
/* loaded from: classes.dex */
public final class C1057h<R> implements InterfaceC1056g<R> {

    /* renamed from: a */
    private final C1060k.a f3314a;

    /* renamed from: b */
    private InterfaceC1055f<R> f3315b;

    /* renamed from: com.bumptech.glide.request.a.h$a */
    /* loaded from: classes.dex */
    private static class a implements C1060k.a {

        /* renamed from: a */
        private final Animation f3316a;

        a(Animation animation) {
            this.f3316a = animation;
        }

        @Override // com.bumptech.glide.request.p056a.C1060k.a
        /* renamed from: a */
        public final Animation mo3269a(Context context) {
            return this.f3316a;
        }
    }

    /* renamed from: com.bumptech.glide.request.a.h$b */
    /* loaded from: classes.dex */
    private static class b implements C1060k.a {

        /* renamed from: a */
        private final int f3317a;

        b(int i) {
            this.f3317a = i;
        }

        @Override // com.bumptech.glide.request.p056a.C1060k.a
        /* renamed from: a */
        public final Animation mo3269a(Context context) {
            return AnimationUtils.loadAnimation(context, this.f3317a);
        }
    }

    public C1057h(int i) {
        this(new b(i));
    }

    private C1057h(Animation animation) {
        this(new a(animation));
    }

    private C1057h(C1060k.a aVar) {
        this.f3314a = aVar;
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1056g
    /* renamed from: a */
    public final InterfaceC1055f<R> mo3262a(EnumC0849a enumC0849a, boolean z) {
        if (enumC0849a == EnumC0849a.MEMORY_CACHE || !z) {
            return C1054e.m3268b();
        }
        if (this.f3315b == null) {
            this.f3315b = new C1060k(this.f3314a);
        }
        return this.f3315b;
    }
}
