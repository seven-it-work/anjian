package com.bumptech.glide.load.p042b.p044b;

import android.content.Context;
import com.bumptech.glide.load.p042b.p044b.C0891d;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import java.io.File;

/* renamed from: com.bumptech.glide.load.b.b.h */
/* loaded from: classes.dex */
public final class C0895h extends C0891d {
    public C0895h(Context context) {
        this(context, InterfaceC0888a.a.f2567b, 262144000L);
    }

    public C0895h(Context context, byte b2) {
        this(context, InterfaceC0888a.a.f2567b, 104857600L);
    }

    private C0895h(final Context context, final String str, long j) {
        super(new C0891d.a() { // from class: com.bumptech.glide.load.b.b.h.1
            @Override // com.bumptech.glide.load.p042b.p044b.C0891d.a
            /* renamed from: a */
            public final File mo2539a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, j);
    }
}
