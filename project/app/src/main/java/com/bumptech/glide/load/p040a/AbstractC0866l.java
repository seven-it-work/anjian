package com.bumptech.glide.load.p040a;

import android.content.ContentResolver;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.EnumC0848l;
import com.bumptech.glide.load.EnumC0849a;
import com.bumptech.glide.load.p040a.InterfaceC0858d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.a.l */
/* loaded from: classes.dex */
public abstract class AbstractC0866l<T> implements InterfaceC0858d<T> {

    /* renamed from: a */
    private static final String f2472a = "LocalUriFetcher";

    /* renamed from: b */
    private final Uri f2473b;

    /* renamed from: c */
    private final ContentResolver f2474c;

    /* renamed from: d */
    private T f2475d;

    public AbstractC0866l(ContentResolver contentResolver, Uri uri) {
        this.f2474c = contentResolver;
        this.f2473b = uri;
    }

    /* renamed from: a */
    protected abstract T mo2381a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: a */
    public final void mo2395a(@NonNull EnumC0848l enumC0848l, @NonNull InterfaceC0858d.a<? super T> aVar) {
        try {
            this.f2475d = mo2381a(this.f2473b, this.f2474c);
            aVar.mo2410a((InterfaceC0858d.a<? super T>) this.f2475d);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(f2472a, 3)) {
                Log.d(f2472a, "Failed to open Uri", e);
            }
            aVar.mo2409a((Exception) e);
        }
    }

    /* renamed from: a */
    protected abstract void mo2382a(T t) throws IOException;

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    /* renamed from: b */
    public final void mo2396b() {
        if (this.f2475d != null) {
            try {
                mo2382a(this.f2475d);
            } catch (IOException unused) {
            }
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
