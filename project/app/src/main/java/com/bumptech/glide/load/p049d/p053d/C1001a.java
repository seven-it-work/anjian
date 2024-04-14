package com.bumptech.glide.load.p049d.p053d;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import java.io.File;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.d.a */
/* loaded from: classes.dex */
public final class C1001a implements InterfaceC1026k<File, File> {
    /* renamed from: a */
    private static InterfaceC0925u<File> m2987a(@NonNull File file) {
        return new C1002b(file);
    }

    /* renamed from: a */
    private static boolean m2988a() {
        return true;
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<File> mo2847a(@NonNull File file, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        return new C1002b(file);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2848a(@NonNull File file, @NonNull C1025j c1025j) throws IOException {
        return true;
    }
}
