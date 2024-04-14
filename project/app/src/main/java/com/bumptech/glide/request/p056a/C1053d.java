package com.bumptech.glide.request.p056a;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* renamed from: com.bumptech.glide.request.a.d */
/* loaded from: classes.dex */
public final class C1053d implements InterfaceC1055f<Drawable> {

    /* renamed from: a */
    private final int f3310a;

    /* renamed from: b */
    private final boolean f3311b;

    public C1053d(int i, boolean z) {
        this.f3310a = i;
        this.f3311b = z;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private boolean a2(Drawable drawable, InterfaceC1055f.a aVar) {
        Drawable currentDrawable = aVar.getCurrentDrawable();
        if (currentDrawable == null) {
            currentDrawable = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f3311b);
        transitionDrawable.startTransition(this.f3310a);
        aVar.setDrawable(transitionDrawable);
        return true;
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1055f
    /* renamed from: a */
    public final /* synthetic */ boolean mo3263a(Drawable drawable, InterfaceC1055f.a aVar) {
        Drawable drawable2 = drawable;
        Drawable currentDrawable = aVar.getCurrentDrawable();
        if (currentDrawable == null) {
            currentDrawable = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{currentDrawable, drawable2});
        transitionDrawable.setCrossFadeEnabled(this.f3311b);
        transitionDrawable.startTransition(this.f3310a);
        aVar.setDrawable(transitionDrawable);
        return true;
    }
}
