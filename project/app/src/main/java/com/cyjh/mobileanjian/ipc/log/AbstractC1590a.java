package com.cyjh.mobileanjian.ipc.log;

import android.content.Context;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.client.HttpRequest;

/* renamed from: com.cyjh.mobileanjian.ipc.log.a */
/* loaded from: classes.dex */
public abstract class AbstractC1590a {

    /* renamed from: a */
    protected static final String f5985a = "http://api4.mobileanjian.com/api";

    /* renamed from: b */
    protected Context f5986b;

    /* renamed from: c */
    protected String f5987c;

    public AbstractC1590a(Context context) {
        this.f5986b = context;
    }

    /* renamed from: a */
    protected abstract void mo7148a();

    /* renamed from: b */
    protected abstract String mo7149b();

    public void commit() {
        mo7148a();
        HttpUtils httpUtils = new HttpUtils();
        RequestParams requestParams = new RequestParams();
        requestParams.addQueryStringParameter("Data", mo7149b());
        httpUtils.send(HttpRequest.HttpMethod.GET, this.f5987c, requestParams, null);
    }
}
