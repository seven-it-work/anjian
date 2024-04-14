package com.bumptech.glide.load.p049d.p052c;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.InterfaceC0921q;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p049d.p054e.C1005c;
import com.bumptech.glide.util.C1084i;

/* renamed from: com.bumptech.glide.load.d.c.b */
/* loaded from: classes.dex */
public abstract class AbstractC0996b<T extends Drawable> implements InterfaceC0921q, InterfaceC0925u<T> {

    /* renamed from: a */
    protected final T f3112a;

    public AbstractC0996b(T t) {
        this.f3112a = (T) C1084i.m3470a(t, "Argument must not be null");
    }

    @NonNull
    /* renamed from: f */
    private T m2970f() {
        Drawable.ConstantState constantState = this.f3112a.getConstantState();
        return constantState == null ? this.f3112a : (T) constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0925u
    @NonNull
    /* renamed from: b */
    public final /* synthetic */ Object mo2724b() {
        Drawable.ConstantState constantState = this.f3112a.getConstantState();
        return constantState == null ? this.f3112a : constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.p042b.InterfaceC0921q
    /* renamed from: e */
    public void mo2730e() {
        if (this.f3112a instanceof BitmapDrawable) {
            ((BitmapDrawable) this.f3112a).getBitmap().prepareToDraw();
        } else if (this.f3112a instanceof C1005c) {
            ((C1005c) this.f3112a).m3010a().prepareToDraw();
        }
    }
}
