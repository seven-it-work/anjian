package com.bumptech.glide.load.p049d.p054e;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.EnumC0930c;
import com.bumptech.glide.load.InterfaceC1027l;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.util.C1073a;
import java.io.File;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.d.e.d */
/* loaded from: classes.dex */
public final class C1006d implements InterfaceC1027l<C1005c> {

    /* renamed from: a */
    private static final String f3144a = "GifEncoder";

    /* renamed from: a */
    private static boolean m3013a(@NonNull InterfaceC0925u<C1005c> interfaceC0925u, @NonNull File file) {
        try {
            C1073a.m3419a(interfaceC0925u.mo2724b().m3011b(), file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable(f3144a, 5)) {
                return false;
            }
            Log.w(f3144a, "Failed to encode GIF drawable data", e);
            return false;
        }
    }

    @Override // com.bumptech.glide.load.InterfaceC1027l
    @NonNull
    /* renamed from: a */
    public final EnumC0930c mo2861a(@NonNull C1025j c1025j) {
        return EnumC0930c.SOURCE;
    }

    @Override // com.bumptech.glide.load.InterfaceC0961d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo2770a(@NonNull Object obj, @NonNull File file, @NonNull C1025j c1025j) {
        return m3013a((InterfaceC0925u) obj, file);
    }
}
