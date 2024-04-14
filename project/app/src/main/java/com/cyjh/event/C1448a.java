package com.cyjh.event;

import com.google.protobuf.ByteString;

/* renamed from: com.cyjh.event.a */
/* loaded from: classes.dex */
public final class C1448a {

    /* renamed from: a */
    private static boolean f5572a;

    /* renamed from: b */
    private static ByteString f5573b;

    /* renamed from: a */
    private static void m6656a(ByteString byteString) {
        f5573b = byteString;
        f5572a = false;
    }

    /* renamed from: a */
    public static byte[] m6657a() {
        f5573b = null;
        f5572a = true;
        if (f5573b == null) {
            return null;
        }
        return f5573b.toByteArray();
    }
}
