package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.model.OSSResult;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.Map;
import p003b.C0496ae;
import p003b.C0523u;

/* loaded from: classes.dex */
public abstract class AbstractResponseParser<T extends OSSResult> implements ResponseParser {
    private Map<String, String> parseResponseHeader(C0496ae c0496ae) {
        HashMap hashMap = new HashMap();
        C0523u m624c = c0496ae.m624c();
        for (int i = 0; i < m624c.m850a(); i++) {
            hashMap.put(m624c.m851a(i), m624c.m854b(i));
        }
        return hashMap;
    }

    public static void safeCloseResponse(C0496ae c0496ae) {
        try {
            c0496ae.m625d().close();
        } catch (Exception unused) {
        }
    }

    public boolean needCloseResponse() {
        return true;
    }

    @Override // com.alibaba.sdk.android.oss.internal.ResponseParser
    public T parse(C0496ae c0496ae) throws IOException {
        try {
            try {
                T t = (T) ((Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]).newInstance();
                if (t != null) {
                    t.setRequestId(c0496ae.m622a(OSSHeaders.OSS_HEADER_REQUEST_ID));
                    t.setStatusCode(c0496ae.m621a());
                    t.setResponseHeader(parseResponseHeader(c0496ae));
                    t = parseData(c0496ae, t);
                }
                return t;
            } catch (Exception e) {
                IOException iOException = new IOException(e.getMessage(), e);
                e.printStackTrace();
                OSSLog.logThrowable2Local(e);
                throw iOException;
            }
        } finally {
            if (needCloseResponse()) {
                safeCloseResponse(c0496ae);
            }
        }
    }

    abstract T parseData(C0496ae c0496ae, T t) throws Exception;
}
