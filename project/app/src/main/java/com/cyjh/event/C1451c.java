package com.cyjh.event;

import com.google.protobuf.ByteString;
import java.util.concurrent.ArrayBlockingQueue;

/* renamed from: com.cyjh.event.c */
/* loaded from: classes.dex */
public final class C1451c {

    /* renamed from: a */
    private static ArrayBlockingQueue<ByteString> f5594a = new ArrayBlockingQueue<>(16);

    /* renamed from: b */
    private static ArrayBlockingQueue<ByteString> f5595b = new ArrayBlockingQueue<>(1024);

    /* renamed from: c */
    private static ArrayBlockingQueue<ByteString> f5596c = new ArrayBlockingQueue<>(1024);

    /* renamed from: a */
    public static void m6686a(ByteString byteString) {
        try {
            f5594a.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static byte[] m6687a() {
        try {
            return f5594a.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static void m6688b(ByteString byteString) {
        try {
            f5595b.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static byte[] m6689b() {
        try {
            return f5595b.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static void m6690c() {
        f5595b.clear();
        f5596c.clear();
    }

    /* renamed from: c */
    private static void m6691c(ByteString byteString) {
        try {
            f5596c.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static ByteString m6692d() {
        try {
            return f5596c.take();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: e */
    public static void m6693e() {
        try {
            f5596c.put(ByteString.copyFrom("floatEventThreadExit".getBytes()));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    private static void m6694f() {
        f5596c.clear();
    }
}
