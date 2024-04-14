package p017c;

import java.util.AbstractList;
import java.util.RandomAccess;

/* renamed from: c.q */
/* loaded from: classes.dex */
public final class C0549q extends AbstractList<C0538f> implements RandomAccess {

    /* renamed from: a */
    final C0538f[] f1126a;

    private C0549q(C0538f[] c0538fArr) {
        this.f1126a = c0538fArr;
    }

    /* renamed from: a */
    private C0538f m1232a(int i) {
        return this.f1126a[i];
    }

    /* renamed from: a */
    private static C0549q m1233a(C0538f... c0538fArr) {
        return new C0549q((C0538f[]) c0538fArr.clone());
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f1126a[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f1126a.length;
    }
}
