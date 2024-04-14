package com.goldcoast.sdk.domain;

import android.os.ConditionVariable;
import com.goldcoast.sdk.p129c.C1783g;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.b */
/* loaded from: classes.dex */
public final class RunnableC1787b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ConditionVariable f7058a;

    /* renamed from: b */
    final /* synthetic */ EntryPoint f7059b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1787b(EntryPoint entryPoint, ConditionVariable conditionVariable) {
        this.f7059b = entryPoint;
        this.f7058a = conditionVariable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        char c2;
        String str;
        boolean z;
        EntryPoint.m8164h(this.f7059b);
        String str2 = "timeout";
        int i2 = 0;
        while (true) {
            i = EntryPoint.f7034j;
            if (i2 >= i) {
                break;
            }
            if (this.f7059b.getStatus()) {
                str2 = "ok";
                break;
            }
            z = this.f7059b.f7042D;
            if (!z) {
                str2 = "failed";
                break;
            }
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            C1783g.m8120a();
            C1783g.m8122a("timer: loop");
            i2++;
        }
        int hashCode = str2.hashCode();
        if (hashCode != -1281977283) {
            if (hashCode == 3548 && str2.equals("ok")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str2.equals("failed")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        switch (c2) {
            case 0:
                this.f7059b.m8152b("$$$ success", 0);
                break;
            case 1:
                C1783g.m8120a();
                str = "timer: $$$ failed";
                C1783g.m8122a(str);
                break;
            default:
                C1783g.m8120a();
                str = "timer: $$$ timeout";
                C1783g.m8122a(str);
                break;
        }
        this.f7058a.open();
    }
}
