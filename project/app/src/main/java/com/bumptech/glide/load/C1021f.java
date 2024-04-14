package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import com.bumptech.glide.load.p049d.p050a.C0987v;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: com.bumptech.glide.load.f */
/* loaded from: classes.dex */
public final class C1021f {

    /* renamed from: a */
    private static final int f3187a = 5242880;

    private C1021f() {
    }

    @NonNull
    /* renamed from: a */
    public static ImageHeaderParser.ImageType m3051a(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C0987v(inputStream, interfaceC0872b);
        }
        inputStream.mark(f3187a);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType mo2377a = list.get(i).mo2377a(inputStream);
                if (mo2377a != ImageHeaderParser.ImageType.UNKNOWN) {
                    return mo2377a;
                }
                inputStream.reset();
            } finally {
                inputStream.reset();
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @NonNull
    /* renamed from: a */
    private static ImageHeaderParser.ImageType m3052a(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType mo2378a = list.get(i).mo2378a(byteBuffer);
            if (mo2378a != ImageHeaderParser.ImageType.UNKNOWN) {
                return mo2378a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    /* renamed from: b */
    public static int m3053b(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull InterfaceC0872b interfaceC0872b) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C0987v(inputStream, interfaceC0872b);
        }
        inputStream.mark(f3187a);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                int mo2375a = list.get(i).mo2375a(inputStream, interfaceC0872b);
                if (mo2375a != -1) {
                    return mo2375a;
                }
                inputStream.reset();
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }
}
