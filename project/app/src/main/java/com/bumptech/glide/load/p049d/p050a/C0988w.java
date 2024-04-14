package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p052c.C0999e;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.a.w */
/* loaded from: classes.dex */
public final class C0988w implements InterfaceC1026k<Uri, Bitmap> {

    /* renamed from: a */
    private final C0999e f3091a;

    /* renamed from: b */
    private final InterfaceC0875e f3092b;

    public C0988w(C0999e c0999e, InterfaceC0875e interfaceC0875e) {
        this.f3091a = c0999e;
        this.f3092b = interfaceC0875e;
    }

    @Nullable
    /* renamed from: a */
    private InterfaceC0925u<Bitmap> m2941a(@NonNull Uri uri, int i, int i2) {
        InterfaceC0925u<Drawable> m2984a = this.f3091a.m2984a(uri);
        if (m2984a == null) {
            return null;
        }
        return C0981p.m2926a(this.f3092b, m2984a.mo2724b(), i, i2);
    }

    /* renamed from: a */
    private static boolean m2942a(@NonNull Uri uri) {
        return "android.resource".equals(uri.getScheme());
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<Bitmap> mo2847a(@NonNull Uri uri, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        InterfaceC0925u<Drawable> m2984a = this.f3091a.m2984a(uri);
        if (m2984a == null) {
            return null;
        }
        return C0981p.m2926a(this.f3092b, m2984a.mo2724b(), i, i2);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ boolean mo2848a(@NonNull Uri uri, @NonNull C1025j c1025j) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }
}
