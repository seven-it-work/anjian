package com.bumptech.glide.load.p047c;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.util.C1073a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.bumptech.glide.load.c.c */
/* loaded from: classes.dex */
public final class C0939c implements InterfaceC0961d<ByteBuffer> {

    /* renamed from: a */
    private static final String f2894a = "ByteBufferEncoder";

    /* renamed from: a */
    private static boolean m2769a(@NonNull ByteBuffer byteBuffer, @NonNull File file) {
        try {
            C1073a.m3419a(byteBuffer, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable(f2894a, 3)) {
                return false;
            }
            Log.d(f2894a, "Failed to write data", e);
            return false;
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC0961d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2770a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull C1025j c1025j) {
        return m2769a(byteBuffer, file);
    }
}
