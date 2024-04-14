package com.bumptech.glide.load.p040a;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.a.a */
/* loaded from: classes.dex */
public final class C0850a extends AbstractC0866l<AssetFileDescriptor> {
    public C0850a(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    /* renamed from: b */
    private static AssetFileDescriptor m2379b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<AssetFileDescriptor> mo2380a() {
        return AssetFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    protected final /* synthetic */ AssetFileDescriptor mo2381a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    protected final /* synthetic */ void mo2382a(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }
}
