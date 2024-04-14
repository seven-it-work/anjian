package com.bumptech.glide.request.p056a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* renamed from: com.bumptech.glide.request.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC1050a<R> implements InterfaceC1056g<R> {

    /* renamed from: a */
    private final InterfaceC1056g<Drawable> f3301a;

    /* renamed from: com.bumptech.glide.request.a.a$a */
    /* loaded from: classes.dex */
    private final class a implements InterfaceC1055f<R> {

        /* renamed from: b */
        private final InterfaceC1055f<Drawable> f3303b;

        a(InterfaceC1055f<Drawable> interfaceC1055f) {
            this.f3303b = interfaceC1055f;
        }

        @Override // com.bumptech.glide.request.p056a.InterfaceC1055f
        /* renamed from: a */
        public final boolean mo3263a(R r, InterfaceC1055f.a aVar) {
            return this.f3303b.mo3263a(new BitmapDrawable(aVar.getView().getResources(), AbstractC1050a.this.mo3261a(r)), aVar);
        }
    }

    public AbstractC1050a(InterfaceC1056g<Drawable> interfaceC1056g) {
        this.f3301a = interfaceC1056g;
    }

    /* renamed from: a */
    protected abstract Bitmap mo3261a(R r);

    @Override // com.bumptech.glide.request.p056a.InterfaceC1056g
    /* renamed from: a */
    public final InterfaceC1055f<R> mo3262a(EnumC0849a enumC0849a, boolean z) {
        return new a(this.f3301a.mo3262a(enumC0849a, z));
    }
}
