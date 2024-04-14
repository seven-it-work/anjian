package com.p058c.p059a;

import android.net.Uri;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1097c;
import com.p058c.p062d.C1105a;
import java.net.HttpURLConnection;
import org.apache.http.HttpRequest;

/* renamed from: com.c.a.b */
/* loaded from: classes.dex */
public final class C1090b extends AbstractC1089a {

    /* renamed from: a */
    private String f3470a;

    /* renamed from: b */
    private String f3471b;

    private C1090b(String str, String str2) {
        this.f3470a = str;
        this.f3471b = str2;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final void mo3502a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpURLConnection httpURLConnection) {
        byte[] bytes = (String.valueOf(this.f3470a) + ":" + this.f3471b).getBytes();
        StringBuilder sb = new StringBuilder("Basic ");
        sb.append(new String(C1105a.m4054a(bytes, bytes.length)));
        String sb2 = sb.toString();
        httpURLConnection.setRequestProperty(HttpHeaders.HOST, Uri.parse(abstractRunnableC1095a.f3566c).getHost());
        httpURLConnection.setRequestProperty("Authorization", sb2);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final void mo3503a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpRequest httpRequest) {
        byte[] bytes = (String.valueOf(this.f3470a) + ":" + this.f3471b).getBytes();
        StringBuilder sb = new StringBuilder("Basic ");
        sb.append(new String(C1105a.m4054a(bytes, bytes.length)));
        String sb2 = sb.toString();
        httpRequest.addHeader(HttpHeaders.HOST, Uri.parse(abstractRunnableC1095a.f3566c).getHost());
        httpRequest.addHeader("Authorization", sb2);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3504a() {
        return true;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3505a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, C1097c c1097c) {
        return false;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    protected final void mo3507b() {
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final boolean mo3508b(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a) {
        return false;
    }
}
