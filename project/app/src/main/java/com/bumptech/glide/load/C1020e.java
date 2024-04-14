package com.bumptech.glide.load;

import android.support.annotation.Nullable;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.e */
/* loaded from: classes.dex */
public final class C1020e extends IOException {
    public static final int UNKNOWN = -1;
    private static final long serialVersionUID = 1;
    private final int statusCode;

    public C1020e(int i) {
        this("Http request failed with status code: " + i, i);
    }

    public C1020e(String str) {
        this(str, -1);
    }

    public C1020e(String str, int i) {
        this(str, i, null);
    }

    public C1020e(String str, int i, @Nullable Throwable th) {
        super(str, th);
        this.statusCode = i;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }
}
