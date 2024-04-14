package com.bumptech.glide.load.p040a;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.a.b */
/* loaded from: classes.dex */
public abstract class AbstractC0856b<T> implements InterfaceC0858d<T> {

    /* renamed from: a */
    private static final String f2442a = "AssetPathFetcher";

    /* renamed from: b */
    private final String f2443b;

    /* renamed from: c */
    private final AssetManager f2444c;

    /* renamed from: d */
    private T f2445d;

    public AbstractC0856b(AssetManager assetManager, String str) {
        this.f2444c = assetManager;
        this.f2443b = str;
    }

    /* renamed from: a */
    protected abstract T mo2404a(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: a */
    public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super T> aVar) {
        try {
            this.f2445d = mo2404a(this.f2444c, this.f2443b);
            aVar.mo2410a((InterfaceC0858d.a<? super T>) this.f2445d);
        } catch (IOException e) {
            if (Log.isLoggable(f2442a, 3)) {
                Log.d(f2442a, "Failed to load data from asset manager", e);
            }
            aVar.mo2409a((Exception) e);
        }
    }

    /* renamed from: a */
    protected abstract void mo2405a(T t) throws IOException;

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: b */
    public final void mo2396b() {
        if (this.f2445d == null) {
            return;
        }
        try {
            mo2405a(this.f2445d);
        } catch (IOException unused) {
        }
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: c */
    public final void mo2397c() {
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: d */
    public final EnumC0849a mo2398d() {
        return EnumC0849a.LOCAL;
    }
}
