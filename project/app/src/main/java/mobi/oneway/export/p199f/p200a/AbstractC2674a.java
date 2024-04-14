package mobi.oneway.export.p199f.p200a;

import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.p193b.p195b.InterfaceC2653d;
import mobi.oneway.export.p199f.C2673a;
import mobi.oneway.export.p199f.C2685e;

/* renamed from: mobi.oneway.export.f.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2674a {

    /* renamed from: a */
    protected int f10297a;

    /* renamed from: b */
    protected String f10298b;

    /* renamed from: c */
    protected String f10299c;

    /* renamed from: d */
    protected C2685e f10300d;

    /* renamed from: e */
    protected InterfaceC2653d f10301e;

    public AbstractC2674a(C2673a c2673a) {
        this.f10297a = c2673a.m12071a();
        this.f10298b = c2673a.m12092f();
        this.f10299c = c2673a.m12093g();
        this.f10300d = new C2685e(mo12100c(), c2673a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public String m12094a() {
        return this.f10298b;
    }

    /* renamed from: a */
    public void m12095a(InterfaceC2653d interfaceC2653d) {
        this.f10301e = interfaceC2653d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m12096a(EventType eventType) {
        this.f10300d.m12136a(eventType, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m12097a(OnewaySdkError onewaySdkError, String str) {
        this.f10300d.m12137a(EventType.adFail, onewaySdkError, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public String m12098b() {
        return this.f10299c;
    }

    /* renamed from: b */
    public void m12099b(OnewaySdkError onewaySdkError, String str) {
        if (this.f10301e != null) {
            this.f10301e.mo11947a(this.f10298b, onewaySdkError, str);
        }
    }

    /* renamed from: c */
    protected abstract AdType mo12100c();
}
