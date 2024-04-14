package com.cyjh.mobileanjian.ipc.utils;

import org.apache.commons.io.FilenameUtils;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.g */
/* loaded from: classes.dex */
public final class C1653g {
    /* renamed from: a */
    private static String m7486a(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        int i2 = i >>> 8;
        stringBuffer.append(i2 & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        int i3 = i2 >>> 8;
        stringBuffer.append(i3 & 255);
        stringBuffer.append(FilenameUtils.EXTENSION_SEPARATOR);
        stringBuffer.append((i3 >>> 8) & 255);
        return stringBuffer.toString();
    }
}
