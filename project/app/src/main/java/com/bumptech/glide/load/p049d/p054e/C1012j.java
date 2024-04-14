package com.bumptech.glide.load.p049d.p054e;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.C1021f;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.InterfaceC1026k;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p043a.InterfaceC0872b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: com.bumptech.glide.load.d.e.j */
/* loaded from: classes.dex */
public final class C1012j implements InterfaceC1026k<InputStream, C1005c> {

    /* renamed from: a */
    private static final String f3172a = "StreamGifDecoder";

    /* renamed from: b */
    private final List<ImageHeaderParser> f3173b;

    /* renamed from: c */
    private final InterfaceC1026k<ByteBuffer, C1005c> f3174c;

    /* renamed from: d */
    private final InterfaceC0872b f3175d;

    public C1012j(List<ImageHeaderParser> list, InterfaceC1026k<ByteBuffer, C1005c> interfaceC1026k, InterfaceC0872b interfaceC0872b) {
        this.f3173b = list;
        this.f3174c = interfaceC1026k;
        this.f3175d = interfaceC0872b;
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private InterfaceC0925u<C1005c> a2(@NonNull InputStream inputStream, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        byte[] m3043a = m3043a(inputStream);
        if (m3043a == null) {
            return null;
        }
        return this.f3174c.mo2847a(ByteBuffer.wrap(m3043a), i, i2, c1025j);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private boolean a2(@NonNull InputStream inputStream, @NonNull C1025j c1025j) throws IOException {
        return !((Boolean) c1025j.m3064a(C1011i.f3171b)).booleanValue() && C1021f.m3051a(this.f3173b, inputStream, this.f3175d) == ImageHeaderParser.ImageType.GIF;
    }

    /* renamed from: a */
    private static byte[] m3043a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            if (!Log.isLoggable(f3172a, 5)) {
                return null;
            }
            Log.w(f3172a, "Error reading data from stream", e);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u<C1005c> mo2847a(@NonNull InputStream inputStream, int i, int i2, @NonNull C1025j c1025j) throws IOException {
        byte[] m3043a = m3043a(inputStream);
        if (m3043a == null) {
            return null;
        }
        return this.f3174c.mo2847a(ByteBuffer.wrap(m3043a), i, i2, c1025j);
    }

    @Override // com.bumptech.glide.load.InterfaceC1026k
    /* renamed from: a */
    public final /* synthetic */ boolean mo2848a(@NonNull InputStream inputStream, @NonNull C1025j c1025j) throws IOException {
        return !((Boolean) c1025j.m3064a(C1011i.f3171b)).booleanValue() && C1021f.m3051a(this.f3173b, inputStream, this.f3175d) == ImageHeaderParser.ImageType.GIF;
    }
}
