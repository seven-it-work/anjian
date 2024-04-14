package com.bumptech.glide.request.p056a;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import com.bumptech.glide.request.p056a.InterfaceC1055f;

/* renamed from: com.bumptech.glide.request.a.k */
/* loaded from: classes.dex */
public final class C1060k<R> implements InterfaceC1055f<R> {

    /* renamed from: a */
    private final a f3321a;

    /* renamed from: com.bumptech.glide.request.a.k$a */
    /* loaded from: classes.dex */
    interface a {
        /* renamed from: a */
        Animation mo3269a(Context context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1060k(a aVar) {
        this.f3321a = aVar;
    }

    @Override // com.bumptech.glide.request.p056a.InterfaceC1055f
    /* renamed from: a */
    public final boolean mo3263a(R r, InterfaceC1055f.a aVar) {
        View view = aVar.getView();
        if (view == null) {
            return false;
        }
        view.clearAnimation();
        view.startAnimation(this.f3321a.mo3269a(view.getContext()));
        return false;
    }
}
