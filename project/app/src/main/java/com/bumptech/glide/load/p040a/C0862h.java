package com.bumptech.glide.load.p040a;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.a.h */
/* loaded from: classes.dex */
public final class C0862h extends AbstractC0856b<ParcelFileDescriptor> {
    public C0862h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    /* renamed from: b */
    private static ParcelFileDescriptor m2417b(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<ParcelFileDescriptor> mo2380a() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0856b
    /* renamed from: a */
    protected final /* synthetic */ ParcelFileDescriptor mo2404a(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0856b
    /* renamed from: a */
    protected final /* synthetic */ void mo2405a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
