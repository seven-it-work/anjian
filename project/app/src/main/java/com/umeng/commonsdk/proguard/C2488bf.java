package com.umeng.commonsdk.proguard;

import java.util.BitSet;

/* renamed from: com.umeng.commonsdk.proguard.bf */
/* loaded from: classes.dex */
public final class C2488bf extends C2475at {

    /* renamed from: com.umeng.commonsdk.proguard.bf$a */
    /* loaded from: classes.dex */
    public static class a implements InterfaceC2484bb {
        @Override // com.umeng.commonsdk.proguard.InterfaceC2484bb
        /* renamed from: a */
        public AbstractC2481az mo10825a(AbstractC2496bn abstractC2496bn) {
            return new C2488bf(abstractC2496bn);
        }
    }

    public C2488bf(AbstractC2496bn abstractC2496bn) {
        super(abstractC2496bn);
    }

    /* renamed from: a */
    public static BitSet m10858a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    /* renamed from: b */
    public static byte[] m10859b(BitSet bitSet, int i) {
        byte[] bArr = new byte[(int) Math.ceil(i / 8.0d)];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int length = (bArr.length - (i2 / 8)) - 1;
                bArr[length] = (byte) ((1 << (i2 % 8)) | bArr[length]);
            }
        }
        return bArr;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2481az
    /* renamed from: D */
    public final Class<? extends InterfaceC2490bh> mo10850D() {
        return AbstractC2493bk.class;
    }

    /* renamed from: a */
    public final void m10860a(BitSet bitSet, int i) throws C2462ag {
        for (byte b2 : m10859b(bitSet, i)) {
            mo10783a(b2);
        }
    }

    /* renamed from: b */
    public final BitSet m10861b(int i) throws C2462ag {
        int ceil = (int) Math.ceil(i / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = mo10819u();
        }
        return m10858a(bArr);
    }
}
