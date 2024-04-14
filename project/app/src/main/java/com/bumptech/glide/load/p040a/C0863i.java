package com.bumptech.glide.load.p040a;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.a.i */
/* loaded from: classes.dex */
public final class C0863i extends AbstractC0866l<ParcelFileDescriptor> {
    public C0863i(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    /* renamed from: b */
    private static ParcelFileDescriptor m2418b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<ParcelFileDescriptor> mo2380a() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    protected final /* synthetic */ ParcelFileDescriptor mo2381a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    protected final /* synthetic */ void mo2382a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
