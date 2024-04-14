package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* renamed from: com.android.volley.toolbox.d */
/* loaded from: classes.dex */
public final class C0613d {

    /* renamed from: a */
    protected static final Comparator<byte[]> f1324a = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.d.1
        /* renamed from: a */
        private static int m1440a(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }

        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b */
    private List<byte[]> f1325b = new LinkedList();

    /* renamed from: c */
    private List<byte[]> f1326c = new ArrayList(64);

    /* renamed from: d */
    private int f1327d = 0;

    /* renamed from: e */
    private final int f1328e;

    public C0613d(int i) {
        this.f1328e = i;
    }

    /* renamed from: a */
    private synchronized void m1437a() {
        while (this.f1327d > this.f1328e) {
            byte[] remove = this.f1325b.remove(0);
            this.f1326c.remove(remove);
            this.f1327d -= remove.length;
        }
    }

    /* renamed from: a */
    public final synchronized void m1438a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f1328e) {
                this.f1325b.add(bArr);
                int binarySearch = Collections.binarySearch(this.f1326c, bArr, f1324a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f1326c.add(binarySearch, bArr);
                this.f1327d += bArr.length;
                m1437a();
            }
        }
    }

    /* renamed from: a */
    public final synchronized byte[] m1439a(int i) {
        for (int i2 = 0; i2 < this.f1326c.size(); i2++) {
            byte[] bArr = this.f1326c.get(i2);
            if (bArr.length >= i) {
                this.f1327d -= bArr.length;
                this.f1326c.remove(i2);
                this.f1325b.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
