package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface ImageHeaderParser {

    /* renamed from: a */
    public static final int f2422a = -1;

    /* loaded from: classes.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);

        private final boolean hasAlpha;

        ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public final boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    /* renamed from: a */
    int mo2375a(@NonNull InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) throws IOException;

    /* renamed from: a */
    int mo2376a(@NonNull ByteBuffer byteBuffer, @NonNull InterfaceC0872b interfaceC0872b) throws IOException;

    @NonNull
    /* renamed from: a */
    ImageType mo2377a(@NonNull InputStream inputStream) throws IOException;

    @NonNull
    /* renamed from: a */
    ImageType mo2378a(@NonNull ByteBuffer byteBuffer) throws IOException;
}
