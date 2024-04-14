package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0930c;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import java.io.File;

/* renamed from: com.bumptech.glide.load.d.a.b */
/* loaded from: classes.dex */
public final class C0967b implements InterfaceC1027l<BitmapDrawable> {

    /* renamed from: a */
    private final InterfaceC0875e f3001a;

    /* renamed from: b */
    private final InterfaceC1027l<Bitmap> f3002b;

    public C0967b(InterfaceC0875e interfaceC0875e, InterfaceC1027l<Bitmap> interfaceC1027l) {
        this.f3001a = interfaceC0875e;
        this.f3002b = interfaceC1027l;
    }

    /* renamed from: a */
    private boolean m2860a(@NonNull InterfaceC0925u<BitmapDrawable> interfaceC0925u, @NonNull File file, @NonNull C1025j c1025j) {
        return this.f3002b.mo2770a(new C0971f(interfaceC0925u.mo2724b().getBitmap(), this.f3001a), file, c1025j);
    }

    @Override // com.bumptech.glide.load.InterfaceC1027l
    @NonNull
    /* renamed from: a */
    public final EnumC0930c mo2861a(@NonNull C1025j c1025j) {
        return this.f3002b.mo2861a(c1025j);
    }

    @Override // com.bumptech.glide.load.InterfaceC0961d
    /* renamed from: a */
    public final /* synthetic */ boolean mo2770a(@NonNull Object obj, @NonNull File file, @NonNull C1025j c1025j) {
        return this.f3002b.mo2770a(new C0971f(((BitmapDrawable) ((InterfaceC0925u) obj).mo2724b()).getBitmap(), this.f3001a), file, c1025j);
    }
}
