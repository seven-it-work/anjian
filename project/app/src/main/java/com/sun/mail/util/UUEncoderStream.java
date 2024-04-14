package com.sun.mail.util;

import com.cyjh.common.util.C1176s;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

/* loaded from: classes.dex */
public class UUEncoderStream extends FilterOutputStream {
    private byte[] buffer;
    private int bufsize;
    protected int mode;
    protected String name;
    private boolean wrotePrefix;

    public UUEncoderStream(OutputStream outputStream) {
        this(outputStream, "encoder.buf", 644);
    }

    public UUEncoderStream(OutputStream outputStream, String str) {
        this(outputStream, str, 644);
    }

    public UUEncoderStream(OutputStream outputStream, String str, int i) {
        super(outputStream);
        this.bufsize = 0;
        this.wrotePrefix = false;
        this.name = str;
        this.mode = i;
        this.buffer = new byte[45];
    }

    private void encode() throws IOException {
        byte b2;
        this.out.write((this.bufsize & 63) + 32);
        int i = 0;
        while (i < this.bufsize) {
            int i2 = i + 1;
            byte b3 = this.buffer[i];
            byte b4 = 1;
            if (i2 < this.bufsize) {
                int i3 = i2 + 1;
                b2 = this.buffer[i2];
                if (i3 < this.bufsize) {
                    b4 = this.buffer[i3];
                    i2 = i3 + 1;
                } else {
                    i2 = i3;
                }
            } else {
                b2 = 1;
            }
            int i4 = (b3 >>> 2) & 63;
            int i5 = ((b3 << 4) & 48) | ((b2 >>> 4) & 15);
            this.out.write(i4 + 32);
            this.out.write(i5 + 32);
            this.out.write((((b2 << 2) & 60) | ((b4 >>> 6) & 3)) + 32);
            this.out.write((b4 & 63) + 32);
            i = i2;
        }
        this.out.write(10);
    }

    private void writePrefix() throws IOException {
        if (this.wrotePrefix) {
            return;
        }
        PrintStream printStream = new PrintStream(this.out);
        printStream.println("begin " + this.mode + C1176s.a.f4108a + this.name);
        printStream.flush();
        this.wrotePrefix = true;
    }

    private void writeSuffix() throws IOException {
        PrintStream printStream = new PrintStream(this.out);
        printStream.println(" \nend");
        printStream.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (this.bufsize > 0) {
            writePrefix();
            encode();
        }
        writeSuffix();
        this.out.flush();
    }

    public void setNameMode(String str, int i) {
        this.name = str;
        this.mode = i;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.buffer;
        int i2 = this.bufsize;
        this.bufsize = i2 + 1;
        bArr[i2] = (byte) i;
        if (this.bufsize == 45) {
            writePrefix();
            encode();
            this.bufsize = 0;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(bArr[i + i3]);
        }
    }
}
