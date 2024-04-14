package com.bumptech.glide.load.p047c;

import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import com.bumptech.glide.load.p047c.InterfaceC0950n;
import com.bumptech.glide.p039f.C0842d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.c.f */
/* loaded from: classes.dex */
public final class C0942f<Data> implements InterfaceC0950n<File, Data> {

    /* renamed from: a */
    private static final String f2905a = "FileLoader";

    /* renamed from: b */
    private final d<Data> f2906b;

    /* renamed from: com.bumptech.glide.load.c.f$a */
    /* loaded from: classes.dex */
    public static class a<Data> implements InterfaceC0951o<File, Data> {

        /* renamed from: a */
        private final d<Data> f2907a;

        public a(d<Data> dVar) {
            this.f2907a = dVar;
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        @NonNull
        /* renamed from: a */
        public final InterfaceC0950n<File, Data> mo2759a(@NonNull C0954r c0954r) {
            return new C0942f(this.f2907a);
        }

        @Override // com.bumptech.glide.load.p047c.InterfaceC0951o
        /* renamed from: a */
        public final void mo2760a() {
        }
    }

    /* renamed from: com.bumptech.glide.load.c.f$b */
    /* loaded from: classes.dex */
    public static class b extends a<ParcelFileDescriptor> {
        public b() {
            super(new d<ParcelFileDescriptor>() { // from class: com.bumptech.glide.load.c.f.b.1
                /* renamed from: a, reason: avoid collision after fix types in other method */
                private static void a2(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                /* renamed from: b */
                private static ParcelFileDescriptor m2777b(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final Class<ParcelFileDescriptor> mo2778a() {
                    return ParcelFileDescriptor.class;
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final /* synthetic */ ParcelFileDescriptor mo2779a(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final /* synthetic */ void mo2780a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }
            });
        }
    }

    /* renamed from: com.bumptech.glide.load.c.f$c */
    /* loaded from: classes.dex */
    private static final class c<Data> implements InterfaceC0858d<Data> {

        /* renamed from: a */
        private final File f2908a;

        /* renamed from: b */
        private final d<Data> f2909b;

        /* renamed from: c */
        private Data f2910c;

        c(File file, d<Data> dVar) {
            this.f2908a = file;
            this.f2909b = dVar;
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        @NonNull
        /* renamed from: a */
        public final Class<Data> mo2380a() {
            return this.f2909b.mo2778a();
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: a */
        public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super Data> aVar) {
            try {
                this.f2910c = this.f2909b.mo2779a(this.f2908a);
                aVar.mo2410a((InterfaceC0858d.a<? super Data>) this.f2910c);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable(C0942f.f2905a, 3)) {
                    Log.d(C0942f.f2905a, "Failed to open file", e);
                }
                aVar.mo2409a((Exception) e);
            }
        }

        @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
        /* renamed from: b */
        public final void mo2396b() {
            if (this.f2910c != null) {
                try {
                    this.f2909b.mo2780a((d<Data>) this.f2910c);
                } catch (IOException unused) {
                }
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

    /* renamed from: com.bumptech.glide.load.c.f$d */
    /* loaded from: classes.dex */
    public interface d<Data> {
        /* renamed from: a */
        Class<Data> mo2778a();

        /* renamed from: a */
        Data mo2779a(File file) throws FileNotFoundException;

        /* renamed from: a */
        void mo2780a(Data data) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.c.f$e */
    /* loaded from: classes.dex */
    public static class e extends a<InputStream> {
        public e() {
            super(new d<InputStream>() { // from class: com.bumptech.glide.load.c.f.e.1
                /* renamed from: a, reason: avoid collision after fix types in other method */
                private static void a2(InputStream inputStream) throws IOException {
                    inputStream.close();
                }

                /* renamed from: b */
                private static InputStream m2781b(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final Class<InputStream> mo2778a() {
                    return InputStream.class;
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final /* synthetic */ InputStream mo2779a(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }

                @Override // com.bumptech.glide.load.p047c.C0942f.d
                /* renamed from: a */
                public final /* synthetic */ void mo2780a(InputStream inputStream) throws IOException {
                    inputStream.close();
                }
            });
        }
    }

    public C0942f(d<Data> dVar) {
        this.f2906b = dVar;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0950n.a<Data> a2(@NonNull File file) {
        return new InterfaceC0950n.a<>(new C0842d(file), new c(file, this.f2906b));
    }

    /* renamed from: a */
    private static boolean m2776a() {
        return true;
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0950n.a mo2750a(@NonNull File file, int i, int i2, @NonNull C1025j c1025j) {
        File file2 = file;
        return new InterfaceC0950n.a(new C0842d(file2), new c(file2, this.f2906b));
    }

    @Override // com.bumptech.glide.load.p047c.InterfaceC0950n
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2751a(@NonNull File file) {
        return true;
    }
}
