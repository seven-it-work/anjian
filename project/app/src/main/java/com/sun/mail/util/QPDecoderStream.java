package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
public class QPDecoderStream extends FilterInputStream {

    /* renamed from: ba */
    protected byte[] f8857ba;
    protected int spaces;

    public QPDecoderStream(InputStream inputStream) {
        super(new PushbackInputStream(inputStream, 2));
        this.f8857ba = new byte[2];
        this.spaces = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        if (this.spaces > 0) {
            this.spaces--;
            return 32;
        }
        int read2 = this.in.read();
        if (read2 == 32) {
            while (true) {
                read = this.in.read();
                if (read != 32) {
                    break;
                }
                this.spaces++;
            }
            if (read == 13 || read == 10 || read == -1) {
                this.spaces = 0;
                return read;
            }
            ((PushbackInputStream) this.in).unread(read);
            return 32;
        }
        if (read2 == 61) {
            int read3 = this.in.read();
            if (read3 == 10) {
                return read();
            }
            if (read3 == 13) {
                int read4 = this.in.read();
                if (read4 != 10) {
                    ((PushbackInputStream) this.in).unread(read4);
                }
                return read();
            }
            if (read3 == -1) {
                return -1;
            }
            this.f8857ba[0] = (byte) read3;
            this.f8857ba[1] = (byte) this.in.read();
            try {
                return ASCIIUtility.parseInt(this.f8857ba, 0, 2, 16);
            } catch (NumberFormatException unused) {
                ((PushbackInputStream) this.in).unread(this.f8857ba);
            }
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        while (i3 < i2) {
            int read = read();
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            }
            bArr[i + i3] = (byte) read;
            i3++;
        }
        return i3;
    }
}
