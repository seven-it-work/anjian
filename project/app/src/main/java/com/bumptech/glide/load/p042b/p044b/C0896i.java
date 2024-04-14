package com.bumptech.glide.load.p042b.p044b;

import android.annotation.SuppressLint;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.InterfaceC1022g;
import com.bumptech.glide.load.p042b.InterfaceC0925u;
import com.bumptech.glide.load.p042b.p044b.InterfaceC0897j;
import com.bumptech.glide.util.C1081f;

/* renamed from: com.bumptech.glide.load.b.b.i */
/* loaded from: classes.dex */
public final class C0896i extends C1081f<InterfaceC1022g, InterfaceC0925u<?>> implements InterfaceC0897j {

    /* renamed from: a */
    private InterfaceC0897j.a f2594a;

    public C0896i(long j) {
        super(j);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private void a2(@Nullable InterfaceC0925u<?> interfaceC0925u) {
        if (this.f2594a == null || interfaceC0925u == null) {
            return;
        }
        this.f2594a.mo2556b(interfaceC0925u);
    }

    /* renamed from: b */
    private int m2545b(@Nullable InterfaceC0925u<?> interfaceC0925u) {
        return interfaceC0925u == null ? super.mo2546a((C0896i) null) : interfaceC0925u.mo2725c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.C1081f
    /* renamed from: a */
    public final /* synthetic */ int mo2546a(@Nullable InterfaceC0925u<?> interfaceC0925u) {
        InterfaceC0925u<?> interfaceC0925u2 = interfaceC0925u;
        return interfaceC0925u2 == null ? super.mo2546a((C0896i) null) : interfaceC0925u2.mo2725c();
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0897j
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u mo2547a(@NonNull InterfaceC1022g interfaceC1022g) {
        return (InterfaceC0925u) super.m3463c(interfaceC1022g);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0897j
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ InterfaceC0925u mo2548a(@NonNull InterfaceC1022g interfaceC1022g, @Nullable InterfaceC0925u interfaceC0925u) {
        return (InterfaceC0925u) super.m3462b(interfaceC1022g, interfaceC0925u);
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0897j
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public final void mo2549a(int i) {
        if (i >= 40) {
            m3464c();
        } else if (i >= 20 || i == 15) {
            m3459a(m3460b() / 2);
        }
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0897j
    /* renamed from: a */
    public final void mo2550a(@NonNull InterfaceC0897j.a aVar) {
        this.f2594a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.C1081f
    /* renamed from: a */
    public final /* synthetic */ void mo2551a(@NonNull InterfaceC1022g interfaceC1022g, @Nullable InterfaceC0925u<?> interfaceC0925u) {
        InterfaceC0925u<?> interfaceC0925u2 = interfaceC0925u;
        if (this.f2594a == null || interfaceC0925u2 == null) {
            return;
        }
        this.f2594a.mo2556b(interfaceC0925u2);
    }
}
