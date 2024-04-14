package com.google.p130a;

import com.google.p130a.p131a.C1801c;
import com.google.p130a.p137c.C1852b;
import com.google.p130a.p140d.C1875b;
import com.google.p130a.p149g.C1935ab;
import com.google.p130a.p149g.C1936b;
import com.google.p130a.p149g.C1938d;
import com.google.p130a.p149g.C1940f;
import com.google.p130a.p149g.C1942h;
import com.google.p130a.p149g.C1944j;
import com.google.p130a.p149g.C1946l;
import com.google.p130a.p149g.C1949o;
import com.google.p130a.p149g.C1955u;
import com.google.p130a.p153h.C1987d;
import com.google.p130a.p158i.C2000b;
import java.util.Map;

/* renamed from: com.google.a.l */
/* loaded from: classes.dex */
public final class C2015l implements InterfaceC2025v {
    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8207a(String str, EnumC1796a enumC1796a, int i, int i2) throws C2026w {
        return mo8208a(str, enumC1796a, i, i2, null);
    }

    @Override // com.google.p130a.InterfaceC2025v
    /* renamed from: a */
    public final C1852b mo8208a(String str, EnumC1796a enumC1796a, int i, int i2, Map<EnumC1903g, ?> map) throws C2026w {
        InterfaceC2025v c1946l;
        switch (enumC1796a) {
            case EAN_8:
                c1946l = new C1946l();
                break;
            case UPC_E:
                c1946l = new C1935ab();
                break;
            case EAN_13:
                c1946l = new C1944j();
                break;
            case UPC_A:
                c1946l = new C1955u();
                break;
            case QR_CODE:
                c1946l = new C2000b();
                break;
            case CODE_39:
                c1946l = new C1940f();
                break;
            case CODE_93:
                c1946l = new C1942h();
                break;
            case CODE_128:
                c1946l = new C1938d();
                break;
            case ITF:
                c1946l = new C1949o();
                break;
            case PDF_417:
                c1946l = new C1987d();
                break;
            case CODABAR:
                c1946l = new C1936b();
                break;
            case DATA_MATRIX:
                c1946l = new C1875b();
                break;
            case AZTEC:
                c1946l = new C1801c();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(enumC1796a)));
        }
        return c1946l.mo8208a(str, enumC1796a, i, i2, map);
    }
}
