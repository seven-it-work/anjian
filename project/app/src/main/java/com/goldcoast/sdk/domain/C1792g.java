package com.goldcoast.sdk.domain;

import android.os.ConditionVariable;
import android.text.TextUtils;
import com.p021b.p022a.C0746as;
import com.p021b.p022a.InterfaceC0758h;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.goldcoast.sdk.domain.g */
/* loaded from: classes.dex */
final class C1792g implements InterfaceC0758h {

    /* renamed from: a */
    final /* synthetic */ List f7066a;

    /* renamed from: b */
    final /* synthetic */ ConditionVariable f7067b;

    /* renamed from: c */
    final /* synthetic */ EntryPoint f7068c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1792g(EntryPoint entryPoint, List list, ConditionVariable conditionVariable) {
        this.f7068c = entryPoint;
        this.f7066a = list;
        this.f7067b = conditionVariable;
    }

    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1958a(C0746as c0746as) {
        int i;
        String m1940d = c0746as.m1919e().m1940d();
        if (!TextUtils.isEmpty(m1940d)) {
            try {
                EntryPoint.m8139a(this.f7068c, m1940d, this.f7066a);
            } catch (Exception e) {
                int i2 = 3;
                String format = String.format("Exception:\n %s\n", e.getMessage());
                i = this.f7068c.f7048r;
                if (i == 4) {
                    format = String.format("Exception:\n %s\n$$$ failed", e.getMessage());
                    i2 = 1;
                }
                this.f7068c.m8152b(format, i2);
            }
        }
        this.f7067b.open();
    }

    @Override // com.p021b.p022a.InterfaceC0758h
    /* renamed from: a */
    public final void mo1959a(IOException iOException) {
        int i;
        EntryPoint entryPoint;
        String stackString;
        int i2;
        new HashMap().put("stack", this.f7068c.getStackString(iOException));
        i = this.f7068c.f7048r;
        if (i == 4) {
            entryPoint = this.f7068c;
            stackString = this.f7068c.getStackString(iOException) + "\n$$$ failed\n";
            i2 = 1;
        } else {
            entryPoint = this.f7068c;
            stackString = this.f7068c.getStackString(iOException);
            i2 = 3;
        }
        entryPoint.m8152b(stackString, i2);
        this.f7067b.open();
    }
}
