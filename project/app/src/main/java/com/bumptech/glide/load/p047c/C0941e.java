package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.util.Base64;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.e */
/* loaded from: classes.dex */
public final class C0941e<Model, Data> implements InterfaceC0950n<Model, Data> {

    /* renamed from: a */
    private static final String f2897a = "data:image";

    /* renamed from: b */
    private static final String f2898b = ";base64";

    /* renamed from: c */
    private final a<Data> f2899c;

    /* renamed from: com.bumptech.glide.load.c.e$a */
    /* loaded from: classes.dex */
    public interface a<Data> {
        /* renamed from: a */
        Class<Data> mo2772a();

        /* renamed from: a */
        Data mo2773a(String str) throws IllegalArgumentException;

        /* renamed from: a */
        void mo2774a(Data data) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.c.e$b */
    /* loaded from: classes.dex */
    private static final class b<Data> implements InterfaceC0858d<Data> {

        /* renamed from: a */
        private final String f2900a;

        /* renamed from: b */
        private final a<Data> f2901b;

        /* renamed from: c */
        private Data f2902c;

        b(String str, a<Data> aVar) {
            this.f2900a = str;
            this.f2901b = aVar;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<Data> mo2380a() {
            return this.f2901b.mo2772a();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super Data> aVar) {
            try {
                this.f2902c = this.f2901b.mo2773a(this.f2900a);
                aVar.mo2410a((InterfaceC0858d.a<? super Data>) this.f2902c);
            } catch (IllegalArgumentException e) {
                aVar.mo2409a((Exception) e);
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: b */
        public final void mo2396b() {
            try {
                this.f2901b.mo2774a((a<Data>) this.f2902c);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: c */
        public final void mo2397c() {
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: d */
        public final EnumC0849a mo2398d() {
            return EnumC0849a.LOCAL;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.e$c */
    /* loaded from: classes.dex */
    public static final class c<Model> implements InterfaceC0951o<Model, InputStream> {

        /* renamed from: a */
        private final a<InputStream> f2903a = new a<InputStream>() { // from class: com.bumptech.glide.load.c.e.c.1
            /* renamed from: a, reason: avoid collision after fix types in other method */
            private static void a2(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            /* renamed from: b */
            private static InputStream m2775b(String str) {
                if (!str.startsWith(C0941e.f2897a)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, indexOf).endsWith(C0941e.f2898b)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }

            @Override // com.bumptech.glide.load.p047c.C0941e.a
            /* renamed from: a */
            public final Class<InputStream> mo2772a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.p047c.C0941e.a
            /* renamed from: a */
            public final /* synthetic */ InputStream mo2773a(String str) throws IllegalArgumentException {
                if (!str.startsWith(C0941e.f2897a)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, indexOf).endsWith(C0941e.f2898b)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }

            @Override // com.bumptech.glide.load.p047c.C0941e.a
            /* renamed from: a */
            public final /* synthetic */ void mo2774a(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        };

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<Model, InputStream> mo2759a(@NonNull C0954r c0954r) {
            return new C0941e(this.f2903a);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    public C0941e(a<Data> aVar) {
        this.f2899c = aVar;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final InterfaceC0950n.a<Data> mo2750a(@NonNull Model model, int i, int i2, @NonNull C1025j c1025j) {
        return new InterfaceC0950n.a<>(new C0842d(model), new b(model.toString(), this.f2899c));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final boolean mo2751a(@NonNull Model model) {
        return model.toString().startsWith(f2897a);
    }
}
