package com.bumptech.glide.load.p042b.p044b;

import android.content.Context;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.p042b.p044b.C0891d;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import java.io.File;

/* renamed from: com.bumptech.glide.load.b.b.g */
/* loaded from: classes.dex */
public final class C0894g extends C0891d {
    private C0894g(Context context) {
        this(context, InterfaceC0888a.a.f2567b, 262144000L);
    }

    private C0894g(Context context, long j) {
        this(context, InterfaceC0888a.a.f2567b, j);
    }

    private C0894g(final Context context, final String str, long j) {
        super(new C0891d.a() { // from class: com.bumptech.glide.load.b.b.g.1
            @Nullable
            /* renamed from: b */
            private File m2544b() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }

            @Override // com.bumptech.glide.load.p042b.p044b.C0891d.a
            /* renamed from: a */
            public final File mo2539a() {
                File externalCacheDir;
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    cacheDir = null;
                } else if (str != null) {
                    cacheDir = new File(cacheDir, str);
                }
                return ((cacheDir == null || !cacheDir.exists()) && (externalCacheDir = context.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? str != null ? new File(externalCacheDir, str) : externalCacheDir : cacheDir;
            }
        }, j);
    }
}
