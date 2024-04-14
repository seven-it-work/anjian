package com.elfin.engin.p123a;

import android.content.Context;
import com.cyjh.common.p071f.InterfaceC1142a;

/* renamed from: com.elfin.engin.a.c */
/* loaded from: classes.dex */
public final class C1743c implements InterfaceC1741a {

    /* renamed from: a */
    private InterfaceC1741a f6877a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.elfin.engin.a.c$a */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a */
        private static final C1743c f6878a = new C1743c(0);

        private a() {
        }

        /* renamed from: a */
        public static /* synthetic */ C1743c m7973a() {
            return f6878a;
        }
    }

    private C1743c() {
        try {
            this.f6877a = (InterfaceC1741a) Class.forName("com.cyjh.root.c").newInstance();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    /* synthetic */ C1743c(byte b2) {
        this();
    }

    /* renamed from: e */
    private static C1743c m7972e() {
        return a.f6878a;
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7755a() {
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7756a(Context context) {
        this.f6877a.mo7756a(context);
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: a */
    public final void mo7757a(InterfaceC1142a<String> interfaceC1142a) {
        this.f6877a.mo7757a(interfaceC1142a);
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: b */
    public final Context mo7758b() {
        return this.f6877a.mo7758b();
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: c */
    public final InterfaceC1742b mo7759c() {
        return this.f6877a.mo7759c();
    }

    @Override // com.elfin.engin.p123a.InterfaceC1741a
    /* renamed from: d */
    public final void mo7760d() {
    }
}
