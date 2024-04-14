package org.p202a;

import java.util.Arrays;
import java.util.Iterator;
import org.p202a.p204b.C2736a;
import org.p202a.p204b.C2739d;

/* renamed from: org.a.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2716a implements InterfaceC2744g {
    /* renamed from: a */
    private <T> InterfaceC2744g m12291a(String str, String str2, String str3, Iterator<T> it) {
        return m12293b(str, str2, str3, new C2739d(it));
    }

    /* renamed from: b */
    private static String m12292b(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception unused) {
            return obj.getClass().getName() + "@" + Integer.toHexString(obj.hashCode());
        }
    }

    /* renamed from: b */
    private InterfaceC2744g m12293b(String str, String str2, String str3, Iterator<? extends InterfaceC2750m> it) {
        mo12303b(str);
        boolean z = false;
        while (it.hasNext()) {
            if (z) {
                mo12303b(str2);
            }
            mo12300a(it.next());
            z = true;
        }
        mo12303b(str3);
        return this;
    }

    /* renamed from: b */
    private void m12294b(char c2) {
        String str;
        if (c2 == '\r') {
            str = "\\r";
        } else if (c2 != '\"') {
            switch (c2) {
                case '\t':
                    str = "\\t";
                    break;
                case '\n':
                    str = "\\n";
                    break;
                default:
                    mo12301a(c2);
                    return;
            }
        } else {
            str = "\\\"";
        }
        mo12303b(str);
    }

    /* renamed from: c */
    private void m12295c(String str) {
        mo12301a('\"');
        for (int i = 0; i < str.length(); i++) {
            m12294b(str.charAt(i));
        }
        mo12301a('\"');
    }

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: a */
    public final InterfaceC2744g mo12296a(Object obj) {
        String str;
        if (obj != null) {
            if (obj instanceof String) {
                String str2 = (String) obj;
                mo12301a('\"');
                for (int i = 0; i < str2.length(); i++) {
                    m12294b(str2.charAt(i));
                }
            } else if (obj instanceof Character) {
                mo12301a('\"');
                m12294b(((Character) obj).charValue());
            } else if (obj instanceof Short) {
                mo12301a('<');
                mo12303b(m12292b(obj));
                str = "s>";
            } else if (obj instanceof Long) {
                mo12301a('<');
                mo12303b(m12292b(obj));
                str = "L>";
            } else {
                if (!(obj instanceof Float)) {
                    if (obj.getClass().isArray()) {
                        m12291a("[", ", ", "]", new C2736a(obj));
                        return this;
                    }
                    mo12301a('<');
                    mo12303b(m12292b(obj));
                    mo12301a('>');
                    return this;
                }
                mo12301a('<');
                mo12303b(m12292b(obj));
                str = "F>";
            }
            mo12301a('\"');
            return this;
        }
        str = "null";
        mo12303b(str);
        return this;
    }

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: a */
    public final InterfaceC2744g mo12297a(String str) {
        mo12303b(str);
        return this;
    }

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: a */
    public final <T> InterfaceC2744g mo12298a(String str, String str2, String str3, Iterable<T> iterable) {
        return m12291a(str, str2, str3, iterable.iterator());
    }

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: a */
    public final <T> InterfaceC2744g mo12299a(String str, String str2, String str3, T... tArr) {
        return m12291a(str, str2, str3, Arrays.asList(tArr).iterator());
    }

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: a */
    public final InterfaceC2744g mo12300a(InterfaceC2750m interfaceC2750m) {
        interfaceC2750m.describeTo(this);
        return this;
    }

    /* renamed from: a */
    protected abstract void mo12301a(char c2);

    @Override // org.p202a.InterfaceC2744g
    /* renamed from: b */
    public final InterfaceC2744g mo12302b(String str, String str2, String str3, Iterable<? extends InterfaceC2750m> iterable) {
        return m12293b(str, str2, str3, iterable.iterator());
    }

    /* renamed from: b */
    protected void mo12303b(String str) {
        for (int i = 0; i < str.length(); i++) {
            mo12301a(str.charAt(i));
        }
    }
}
