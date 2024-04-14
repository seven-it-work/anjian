package com.bumptech.glide.load.p040a;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.a.m */
/* loaded from: classes.dex */
public final class C0867m extends AbstractC0856b<InputStream> {
    public C0867m(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* renamed from: b */
    private static InputStream m2425b(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<InputStream> mo2380a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0856b
    /* renamed from: a */
    protected final /* synthetic */ InputStream mo2404a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0856b
    /* renamed from: a */
    protected final /* synthetic */ void mo2405a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
