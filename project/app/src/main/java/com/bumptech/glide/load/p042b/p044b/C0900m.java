package com.bumptech.glide.load.p042b.p044b;

import android.support.annotation.NonNull;
import android.support.v4.util.Pools;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.util.C1081f;
import com.bumptech.glide.util.C1084i;
import com.bumptech.glide.util.C1086k;
import com.bumptech.glide.util.p057a.AbstractC1076c;
import com.bumptech.glide.util.p057a.C1074a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.bumptech.glide.load.b.b.m */
/* loaded from: classes.dex */
public final class C0900m {

    /* renamed from: a */
    private final C1081f<InterfaceC1022g, String> f2617a = new C1081f<>(1000);

    /* renamed from: b */
    private final Pools.Pool<a> f2618b = C1074a.m3425a(10, new C1074a.a<a>() { // from class: com.bumptech.glide.load.b.b.m.1
        /* renamed from: b */
        private static a m2575b() {
            try {
                return new a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.a
        /* renamed from: a */
        public final /* synthetic */ a mo2576a() {
            return m2575b();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.b.b.m$a */
    /* loaded from: classes.dex */
    public static final class a implements C1074a.c {

        /* renamed from: a */
        final MessageDigest f2620a;

        /* renamed from: b */
        private final AbstractC1076c f2621b = new AbstractC1076c.b();

        a(MessageDigest messageDigest) {
            this.f2620a = messageDigest;
        }

        @Override // com.bumptech.glide.util.p057a.C1074a.c
        @NonNull
        /* renamed from: g_ */
        public final AbstractC1076c mo2577g_() {
            return this.f2621b;
        }
    }

    /* renamed from: b */
    private String m2573b(InterfaceC1022g interfaceC1022g) {
        a aVar = (a) C1084i.m3470a(this.f2618b.acquire(), "Argument must not be null");
        try {
            interfaceC1022g.mo2330a(aVar.f2620a);
            return C1086k.m3481a(aVar.f2620a.digest());
        } finally {
            this.f2618b.release(aVar);
        }
    }

    /* renamed from: a */
    public final String m2574a(InterfaceC1022g interfaceC1022g) {
        String m3461b;
        synchronized (this.f2617a) {
            m3461b = this.f2617a.m3461b(interfaceC1022g);
        }
        if (m3461b == null) {
            m3461b = m2573b(interfaceC1022g);
        }
        synchronized (this.f2617a) {
            this.f2617a.m3462b(interfaceC1022g, m3461b);
        }
        return m3461b;
    }
}
