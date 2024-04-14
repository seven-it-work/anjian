package com.cyjh.mobileanjian.ipc.uip;

import android.os.Handler;
import android.os.Process;
import com.google.protobuf.ByteString;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes.dex */
public class UipEventStub {

    /* renamed from: a */
    private static Handler f6331a;

    /* renamed from: b */
    private static ArrayBlockingQueue<ByteString> f6332b = new ArrayBlockingQueue<>(1);

    /* renamed from: c */
    private static ArrayBlockingQueue<ByteString> f6333c = new ArrayBlockingQueue<>(256);

    public static byte[] GetUiEvent() {
        if (!m7420a()) {
            return null;
        }
        try {
            return f6333c.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] SendUiRequest(byte[] bArr) {
        if (!m7420a()) {
            return null;
        }
        f6331a.obtainMessage(0, ByteString.copyFrom(bArr)).sendToTarget();
        try {
            return f6332b.take().toByteArray();
        } catch (InterruptedException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void UiRequestReturn(ByteString byteString) {
        try {
            f6332b.put(byteString);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private static boolean m7420a() {
        return (Process.myUid() == 0 || Process.myUid() == 2000) ? false : true;
    }

    public static void clear() {
        f6333c.clear();
    }

    public static void hasEvent(ByteString byteString) {
        try {
            if (f6333c.size() < 256) {
                f6333c.put(byteString);
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void registerHandler(Handler handler) {
        f6331a = handler;
    }
}
