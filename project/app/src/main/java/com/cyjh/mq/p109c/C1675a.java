package com.cyjh.mq.p109c;

import android.net.LocalSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;

/* renamed from: com.cyjh.mq.c.a */
/* loaded from: classes.dex */
public class C1675a {

    /* renamed from: a */
    private static final int f6512a = 4096;

    /* renamed from: b */
    private Socket f6513b;

    /* renamed from: c */
    private LocalSocket f6514c;

    /* renamed from: d */
    private InputStream f6515d;

    /* renamed from: e */
    private OutputStream f6516e;

    public C1675a(LocalSocket localSocket) {
        this.f6513b = null;
        this.f6514c = null;
        this.f6515d = null;
        this.f6516e = null;
        this.f6514c = localSocket;
        try {
            this.f6515d = this.f6514c.getInputStream();
            this.f6516e = this.f6514c.getOutputStream();
        } catch (IOException e) {
            new StringBuilder("BaseSocketConnection(LocalSocket localSocket) e").append(e.toString());
            e.printStackTrace();
        }
    }

    public C1675a(Socket socket) {
        this.f6513b = null;
        this.f6514c = null;
        this.f6515d = null;
        this.f6516e = null;
        this.f6513b = socket;
        try {
            this.f6515d = this.f6513b.getInputStream();
            this.f6516e = this.f6513b.getOutputStream();
        } catch (IOException e) {
            new StringBuilder("BaseSocketConnection(Socket socket) e").append(e.toString());
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m7591b(byte[] bArr) {
        m7594a(ByteBuffer.wrap(bArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final int m7592a(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            try {
                i2 = this.f6515d.read(bArr, i, length - i);
                if (i2 < 0) {
                    return -1;
                }
                i += i2;
            } catch (IOException e) {
                e.printStackTrace();
                new StringBuilder("receiveData e").append(e.toString());
                return -1;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7593a() {
        try {
            if (this.f6513b != null) {
                this.f6513b.close();
            }
            if (this.f6514c != null) {
                this.f6514c.close();
            }
            if (this.f6515d != null) {
                this.f6515d.close();
            }
            if (this.f6516e != null) {
                this.f6516e.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m7594a(ByteBuffer byteBuffer) {
        try {
            byte[] bArr = new byte[4096];
            while (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() < 4096) {
                    bArr = new byte[byteBuffer.remaining()];
                }
                byteBuffer.get(bArr);
                this.f6516e.write(bArr);
            }
            this.f6516e.flush();
        } catch (IOException e) {
            e.printStackTrace();
            new StringBuilder("sendData e").append(e.toString());
        }
    }
}
