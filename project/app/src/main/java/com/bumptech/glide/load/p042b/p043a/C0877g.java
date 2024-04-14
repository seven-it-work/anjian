package com.bumptech.glide.load.p042b.p043a;

/* renamed from: com.bumptech.glide.load.b.a.g */
/* loaded from: classes.dex */
public final class C0877g implements InterfaceC0871a<byte[]> {

    /* renamed from: a */
    private static final String f2505a = "ByteArrayPool";

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static int a2(byte[] bArr) {
        return bArr.length;
    }

    /* renamed from: b */
    private static byte[] m2472b(int i) {
        return new byte[i];
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0871a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ int mo2438a(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0871a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ byte[] mo2439a(int i) {
        return new byte[i];
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0871a
    /* renamed from: a */
    public final String mo2440a() {
        return f2505a;
    }

    @Override // com.bumptech.glide.load.p042b.p043a.InterfaceC0871a
    /* renamed from: b */
    public final int mo2441b() {
        return 1;
    }
}
