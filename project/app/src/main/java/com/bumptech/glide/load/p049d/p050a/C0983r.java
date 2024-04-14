package com.bumptech.glide.load.p049d.p050a;

import android.media.ExifInterface;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.util.C1073a;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@RequiresApi(27)
/* renamed from: com.bumptech.glide.load.d.a.r */
/* loaded from: classes.dex */
public final class C0983r implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo2375a(@NonNull InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt("Orientation", 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo2376a(@NonNull ByteBuffer byteBuffer, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        return mo2375a(C1073a.m3422b(byteBuffer), interfaceC0872b);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo2377a(@NonNull InputStream inputStream) throws IOException {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo2378a(@NonNull ByteBuffer byteBuffer) throws IOException {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
