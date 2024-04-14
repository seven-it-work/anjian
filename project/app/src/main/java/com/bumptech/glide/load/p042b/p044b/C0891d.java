package com.bumptech.glide.load.p042b.p044b;

import com.bumptech.glide.load.p042b.p044b.InterfaceC0888a;
import java.io.File;

/* renamed from: com.bumptech.glide.load.b.b.d */
/* loaded from: classes.dex */
public class C0891d implements InterfaceC0888a.a {

    /* renamed from: c */
    private final long f2574c;

    /* renamed from: d */
    private final a f2575d;

    /* renamed from: com.bumptech.glide.load.b.b.d$a */
    /* loaded from: classes.dex */
    public interface a {
        /* renamed from: a */
        File mo2539a();
    }

    public C0891d(a aVar, long j) {
        this.f2574c = j;
        this.f2575d = aVar;
    }

    private C0891d(final String str, long j) {
        this(new a() { // from class: com.bumptech.glide.load.b.b.d.1
            @Override // com.bumptech.glide.load.p042b.p044b.C0891d.a
            /* renamed from: a */
            public final File mo2539a() {
                return new File(str);
            }
        }, j);
    }

    private C0891d(final String str, final String str2, long j) {
        this(new a() { // from class: com.bumptech.glide.load.b.b.d.2
            @Override // com.bumptech.glide.load.p042b.p044b.C0891d.a
            /* renamed from: a */
            public final File mo2539a() {
                return new File(str, str2);
            }
        }, j);
    }

    @Override // com.bumptech.glide.load.p042b.p044b.InterfaceC0888a.a
    /* renamed from: a */
    public final InterfaceC0888a mo2533a() {
        File mo2539a = this.f2575d.mo2539a();
        if (mo2539a == null) {
            return null;
        }
        if (mo2539a.mkdirs() || (mo2539a.exists() && mo2539a.isDirectory())) {
            return new C0892e(mo2539a, this.f2574c);
        }
        return null;
    }
}
