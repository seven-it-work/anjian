package com.bumptech.glide.p038e;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.bumptech.glide.e.b */
/* loaded from: classes.dex */
public final class C0833b {

    /* renamed from: a */
    private final List<ImageHeaderParser> f2349a = new ArrayList();

    @NonNull
    /* renamed from: a */
    public final synchronized List<ImageHeaderParser> m2271a() {
        return this.f2349a;
    }

    /* renamed from: a */
    public final synchronized void m2272a(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f2349a.add(imageHeaderParser);
    }
}
