package com.bumptech.glide.load.p042b.p044b;

import android.content.Context;
import com.bumptech.glide.load.p042b.p044b.C0891d;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import java.io.File;

@Deprecated
/* renamed from: com.bumptech.glide.load.b.b.f */
/* loaded from: classes.dex */
public final class C0893f extends C0891d {
    private C0893f(Context context) {
        this(context, InterfaceC0888a.a.f2567b, InterfaceC0888a.a.f2566a);
    }

    private C0893f(Context context, int i) {
        this(context, InterfaceC0888a.a.f2567b, i);
    }

    private C0893f(final Context context, final String str, int i) {
        super(new C0891d.a() { // from class: com.bumptech.glide.load.b.b.f.1
            @Override // com.bumptech.glide.load.p042b.p044b.C0891d.a
            /* renamed from: a */
            public final File mo2539a() {
                File externalCacheDir = context.getExternalCacheDir();
                if (externalCacheDir == null) {
                    return null;
                }
                return str != null ? new File(externalCacheDir, str) : externalCacheDir;
            }
        }, i);
    }
}
