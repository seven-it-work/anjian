package com.goldcoast.sdk.domain;

import android.os.ConditionVariable;
import android.text.TextUtils;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.InterfaceC0758h;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.e */
/* loaded from: classes.dex */
public final class C1790e implements InterfaceC0758h {

    /* renamed from: a */
    final /* synthetic */ ConditionVariable f7062a;

    /* renamed from: b */
    final /* synthetic */ boolean[] f7063b;

    /* renamed from: c */
    final /* synthetic */ EntryPoint f7064c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1790e(EntryPoint entryPoint, ConditionVariable conditionVariable, boolean[] zArr) {
        this.f7064c = entryPoint;
        this.f7062a = conditionVariable;
        this.f7063b = zArr;
    }

    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1958a(C0746as c0746as) {
        int i;
        String m1940d = c0746as.m1919e().m1940d();
        if (!TextUtils.isEmpty(m1940d)) {
            try {
                EntryPoint.m8137a(this.f7064c, m1940d);
            } catch (Exception e) {
                int i2 = 3;
                String format = String.format("Exception:\n %s\n", e.getMessage());
                i = this.f7064c.f7048r;
                if (i == 4) {
                    format = String.format("Exception:\n %s\n$$$ failed", e.getMessage());
                    i2 = 1;
                }
                this.f7064c.m8152b(format, i2);
            }
        }
        this.f7062a.open();
    }

    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1959a(IOException iOException) {
        int i;
        EntryPoint entryPoint;
        String stackString;
        new HashMap().put("stack", this.f7064c.getStackString(iOException));
        int i2 = 1;
        this.f7063b[0] = true;
        i = this.f7064c.f7048r;
        if (i == 4) {
            entryPoint = this.f7064c;
            stackString = this.f7064c.getStackString(iOException) + "\n$$$ failed\n";
        } else {
            entryPoint = this.f7064c;
            stackString = this.f7064c.getStackString(iOException);
            i2 = 3;
        }
        entryPoint.m8152b(stackString, i2);
        this.f7062a.open();
    }
}
