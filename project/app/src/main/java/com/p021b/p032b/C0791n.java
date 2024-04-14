package com.p021b.p032b;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* renamed from: com.b.b.n */
/* loaded from: classes.dex */
public final class C0791n {

    /* renamed from: a */
    static final Logger f2161a = Logger.getLogger(C0791n.class.getName());

    private C0791n() {
    }

    /* renamed from: a */
    public static InterfaceC0784g m2101a(InterfaceC0800w interfaceC0800w) {
        return new C0795r(interfaceC0800w);
    }

    /* renamed from: a */
    public static InterfaceC0785h m2102a(InterfaceC0801x interfaceC0801x) {
        return new C0796s(interfaceC0801x);
    }

    /* renamed from: a */
    public static InterfaceC0800w m2103a(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        C0777a m2106c = m2106c(socket);
        OutputStream outputStream = socket.getOutputStream();
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        return new C0779b(m2106c, new C0792o(m2106c, outputStream));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m2104a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    /* renamed from: b */
    public static InterfaceC0801x m2105b(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        C0777a m2106c = m2106c(socket);
        InputStream inputStream = socket.getInputStream();
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        return new C0780c(m2106c, new C0793p(m2106c, inputStream));
    }

    /* renamed from: c */
    private static C0777a m2106c(Socket socket) {
        return new C0794q(socket);
    }
}
