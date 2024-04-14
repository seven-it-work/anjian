package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.model.OSSResult;
import java.io.IOException;
import p003b.C0496ae;

/* loaded from: classes.dex */
public interface ResponseParser<T extends OSSResult> {
    T parse(C0496ae c0496ae) throws IOException;
}
