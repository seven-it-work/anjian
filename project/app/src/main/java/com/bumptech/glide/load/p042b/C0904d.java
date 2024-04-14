package com.bumptech.glide.load.p042b;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.C1025j;
import com.bumptech.glide.load.InterfaceC0961d;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import java.io.File;

/* renamed from: com.bumptech.glide.load.b.d */
/* loaded from: classes.dex */
final class C0904d<DataType> implements InterfaceC0888a.b {

    /* renamed from: a */
    private final InterfaceC0961d<DataType> f2648a;

    /* renamed from: b */
    private final DataType f2649b;

    /* renamed from: c */
    private final C1025j f2650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0904d(InterfaceC0961d<DataType> interfaceC0961d, DataType datatype, C1025j c1025j) {
        this.f2648a = interfaceC0961d;
        this.f2649b = datatype;
        this.f2650c = c1025j;
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a.b
    /* renamed from: a */
    public final boolean mo2534a(@NonNull File file) {
        return this.f2648a.mo2770a(this.f2649b, file, this.f2650c);
    }
}
