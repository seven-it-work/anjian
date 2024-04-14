package com.goldcoast.sdk.domain;

import android.annotation.TargetApi;
import android.util.Pair;
import com.goldcoast.sdk.p127a.C1771d;
import com.goldcoast.sdk.p129c.C1783g;
import com.p018a.p019a.p020a.C0569a;
import com.p018a.p019a.p020a.C0570b;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.goldcoast.sdk.domain.j */
/* loaded from: classes.dex */
public final class RunnableC1795j implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1771d f7075a;

    /* renamed from: b */
    final /* synthetic */ EntryPoint f7076b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1795j(EntryPoint entryPoint, C1771d c1771d) {
        this.f7076b = entryPoint;
        this.f7075a = c1771d;
    }

    @Override // java.lang.Runnable
    @TargetApi(5)
    public final void run() {
        Pair pair;
        int i;
        int i2;
        this.f7076b.f7042D = true;
        pair = this.f7076b.f7044F;
        if (pair != null) {
            this.f7076b.f7044F = null;
        }
        EntryPoint.m8160f(this.f7076b);
        StringBuilder sb = new StringBuilder();
        sb.append("######\n");
        i = this.f7076b.f7049s;
        sb.append(String.format("In <<<<<< %d  >>>>>> \n", Integer.valueOf(i)));
        C1783g.m8120a();
        C1783g.m8123b(sb.toString());
        EntryPoint entryPoint = this.f7076b;
        i2 = this.f7076b.f7049s;
        entryPoint.m8152b(String.format("正在计算第  <%d>  个$$$方案 请等待...", Integer.valueOf(i2)), 2);
        this.f7076b.m8152b(String.format("key:%s\norder:%d name: %s", this.f7075a.m8070e(), Integer.valueOf(this.f7075a.m8069d()), this.f7075a.m8064a()), 2);
        StringBuilder sb2 = new StringBuilder();
        this.f7075a.m8067b(this.f7075a.m8066b().replace("\n", ""));
        try {
            C0569a m1327a = C0570b.m1327a("sh", String.format("%s %d %s\n", EntryPoint.m8134a(this.f7075a.m8064a(), this.f7075a.m8068c()), 2, this.f7075a.m8066b()));
            C1783g.m8120a();
            C1783g.m8122a(m1327a.m1326a());
            Thread.sleep(6000L);
        } catch (Exception e) {
            this.f7076b.m8152b(String.format("A9DDDF2A4F7D94594EC2EA98407A410E1 exception: %s", e.getMessage()), 2);
        }
        File file = new File(EntryPoint.extractDir.getAbsolutePath() + File.separator + this.f7075a.m8064a());
        if (file.exists() && file.delete()) {
            C1783g.m8120a();
            C1783g.m8122a("delete file");
        }
        this.f7076b.f7044F = new Pair("no", sb2.toString());
        this.f7076b.f7042D = false;
        EntryPoint.m8164h(this.f7076b);
    }
}
