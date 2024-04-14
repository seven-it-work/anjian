package com.cyjh.root;

import android.content.Context;
import com.cyjh.common.p071f.InterfaceC1142a;
import com.elfin.engin.p123a.InterfaceC1741a;
import com.elfin.engin.p123a.InterfaceC1742b;

/* renamed from: com.cyjh.root.c */
/* loaded from: classes.dex */
public class C1701c implements InterfaceC1741a {

    /* renamed from: a */
    private Context f6664a;

    /* renamed from: b */
    private C1700b f6665b = new C1700b();

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7755a() {
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7756a(Context context) {
        this.f6664a = context;
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7757a(InterfaceC1142a<String> interfaceC1142a) {
        interfaceC1142a.mo4231a("success");
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: b */
    public final Context mo7758b() {
        return this.f6664a;
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: c */
    public final InterfaceC1742b mo7759c() {
        return this.f6665b;
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: d */
    public final void mo7760d() {
    }
}
