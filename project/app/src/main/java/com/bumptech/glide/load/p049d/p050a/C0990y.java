package com.bumptech.glide.load.p049d.p050a;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0875e;
import com.bumptech.glide.load.p049d.p050a.C0980o;
import com.bumptech.glide.util.C1078c;
import com.bumptech.glide.util.C1082g;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.d.a.y */
/* loaded from: classes.dex */
public final class C0990y implements InterfaceC1026k<InputStream, Bitmap> {

    /* renamed from: a */
    private final C0980o f3096a;

    /* renamed from: b */
    private final InterfaceC0872b f3097b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.d.a.y$a */
    /* loaded from: classes.dex */
    public static class a implements C0980o.a {

        /* renamed from: a */
        private final C0987v f3098a;

        /* renamed from: b */
        private final C1078c f3099b;

        a(C0987v c0987v, C1078c c1078c) {
            this.f3098a = c0987v;
            this.f3099b = c1078c;
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0980o.a
        /* renamed from: a */
        public final void mo2924a() {
            this.f3098a.m2939a();
        }

        @Override // com.bumptech.glide.load.p049d.p050a.C0980o.a
        /* renamed from: a */
        public final void mo2925a(InterfaceC0875e interfaceC0875e, Bitmap bitmap) throws IOException {
            IOException iOException = this.f3099b.f3448a;
            if (iOException != null) {
                if (bitmap == null) {
                    throw iOException;
                }
                interfaceC0875e.mo2469a(bitmap);
                throw iOException;
            }
        }
    }

    public C0990y(C0980o c0980o, InterfaceC0872b interfaceC0872b) {
        this.f3096a = c0980o;
        this.f3097b = interfaceC0872b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public InterfaceC0925u<Bitmap> mo2847a(@NonNull InputStream inputStream, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        C0987v c0987v;
        boolean z;
        if (inputStream instanceof C0987v) {
            c0987v = (C0987v) inputStream;
            z = false;
        } else {
            c0987v = new C0987v(inputStream, this.f3097b);
            z = true;
        }
        C1078c m3447a = C1078c.m3447a(c0987v);
        try {
            return this.f3096a.m2923a(new C1082g(m3447a), i, i2, c1025j, new a(c0987v, m3447a));
        } finally {
            m3447a.m3451a();
            if (z) {
                c0987v.m2940b();
            }
        }
    }

    /* renamed from: a */
    private static boolean m2943a() {
        return C0980o.m2911a();
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2848a(@NonNull InputStream inputStream, @NonNull C1025j c1025j) throws IOException {
        return C0980o.m2911a();
    }
}
