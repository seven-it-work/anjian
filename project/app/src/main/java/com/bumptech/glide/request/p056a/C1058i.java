package com.bumptech.glide.request.p056a;

import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.request.p056a.C1059j;

/* renamed from: com.bumptech.glide.request.a.i */
/* loaded from: classes.dex */
public final class C1058i<R> implements InterfaceC1056g<R> {

    /* renamed from: a */
    private final C1059j.a f3318a;

    /* renamed from: b */
    private C1059j<R> f3319b;

    public C1058i(C1059j.a aVar) {
        this.f3318a = aVar;
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1056g
    /* renamed from: a */
    public final InterfaceC1055f<R> mo3262a(EnumC0849a enumC0849a, boolean z) {
        if (enumC0849a == EnumC0849a.MEMORY_CACHE || !z) {
            return C1054e.m3268b();
        }
        if (this.f3319b == null) {
            this.f3319b = new C1059j<>(this.f3318a);
        }
        return this.f3319b;
    }
}
