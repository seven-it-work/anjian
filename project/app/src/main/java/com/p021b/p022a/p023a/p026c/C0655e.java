package com.p021b.p022a.p023a.p026c;

import com.p021b.p022a.p023a.C0650c;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* renamed from: com.b.a.a.c.e */
/* loaded from: classes.dex */
final class C0655e extends ThreadLocal<DateFormat> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ DateFormat initialValue() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setLenient(false);
        simpleDateFormat.setTimeZone(C0650c.f1504f);
        return simpleDateFormat;
    }
}
