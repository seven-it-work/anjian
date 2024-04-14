package com.p058c.p059a;

import android.content.Context;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1097c;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.http.HttpRequest;

/* renamed from: com.c.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC1089a {

    /* renamed from: a */
    private LinkedHashSet<AbstractRunnableC1095a<?, ?>> f3469a;

    /* renamed from: a */
    public String mo3498a(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final synchronized void m3499a(int i, String str) {
        if (this.f3469a != null) {
            Iterator<AbstractRunnableC1095a<?, ?>> it = this.f3469a.iterator();
            while (it.hasNext()) {
                it.next().m3847a(i, str);
            }
            this.f3469a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final synchronized void m3500a(Context context) {
        if (this.f3469a != null) {
            Iterator<AbstractRunnableC1095a<?, ?>> it = this.f3469a.iterator();
            while (it.hasNext()) {
                it.next().mo3849a(context);
            }
            this.f3469a = null;
        }
    }

    /* renamed from: a */
    public final synchronized void m3501a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a) {
        if (this.f3469a != null) {
            this.f3469a.add(abstractRunnableC1095a);
            return;
        }
        this.f3469a = new LinkedHashSet<>();
        this.f3469a.add(abstractRunnableC1095a);
        mo3507b();
    }

    /* renamed from: a */
    public void mo3502a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpURLConnection httpURLConnection) {
    }

    /* renamed from: a */
    public void mo3503a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpRequest httpRequest) {
    }

    /* renamed from: a */
    public abstract boolean mo3504a();

    /* renamed from: a */
    public abstract boolean mo3505a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, C1097c c1097c);

    /* renamed from: b */
    public String mo3506b(String str) {
        return str;
    }

    /* renamed from: b */
    protected abstract void mo3507b();

    /* renamed from: b */
    public abstract boolean mo3508b(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a);

    /* renamed from: c */
    public void mo3509c() {
    }
}
