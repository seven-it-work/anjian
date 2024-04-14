package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class UUDecoderStream extends FilterInputStream {
    private byte[] buffer;
    private int bufsize;
    private boolean gotEnd;
    private boolean gotPrefix;
    private int index;
    private LineInputStream lin;
    private int mode;
    private String name;

    public UUDecoderStream(InputStream inputStream) {
        super(inputStream);
        this.bufsize = 0;
        this.index = 0;
        this.gotPrefix = false;
        this.gotEnd = false;
        this.lin = new LineInputStream(inputStream);
        this.buffer = new byte[45];
    }

    private boolean decode() throws IOException {
        String readLine;
        if (this.gotEnd) {
            return false;
        }
        this.bufsize = 0;
        do {
            readLine = this.lin.readLine();
            if (readLine == null) {
                throw new IOException("Missing End");
            }
            if (readLine.regionMatches(true, 0, "end", 0, 3)) {
                this.gotEnd = true;
                return false;
            }
        } while (readLine.length() == 0);
        char charAt = readLine.charAt(0);
        if (charAt < ' ') {
            throw new IOException("Buffer format error");
        }
        int i = (charAt - ' ') & 63;
        if (i == 0) {
            String readLine2 = this.lin.readLine();
            if (readLine2 == null || !readLine2.regionMatches(true, 0, "end", 0, 3)) {
                throw new IOException("Missing End");
            }
            this.gotEnd = true;
            return false;
        }
        if (readLine.length() < (((i * 8) + 5) / 6) + 1) {
            throw new IOException("Short buffer error");
        }
        int i2 = 1;
        while (this.bufsize < i) {
            int i3 = i2 + 1;
            byte charAt2 = (byte) ((readLine.charAt(i2) - ' ') & 63);
            int i4 = i3 + 1;
            byte charAt3 = (byte) ((readLine.charAt(i3) - ' ') & 63);
            byte[] bArr = this.buffer;
            int i5 = this.bufsize;
            this.bufsize = i5 + 1;
            bArr[i5] = (byte) (((charAt2 << 2) & 252) | ((charAt3 >>> 4) & 3));
            if (this.bufsize < i) {
                i2 = i4 + 1;
                byte charAt4 = (byte) ((readLine.charAt(i4) - ' ') & 63);
                byte[] bArr2 = this.buffer;
                int i6 = this.bufsize;
                this.bufsize = i6 + 1;
                bArr2[i6] = (byte) (((charAt3 << 4) & 240) | ((charAt4 >>> 2) & 15));
                charAt3 = charAt4;
            } else {
                i2 = i4;
            }
            if (this.bufsize < i) {
                int i7 = i2 + 1;
                byte charAt5 = (byte) ((readLine.charAt(i2) - ' ') & 63);
                byte[] bArr3 = this.buffer;
                int i8 = this.bufsize;
                this.bufsize = i8 + 1;
                bArr3[i8] = (byte) ((charAt5 & 63) | ((charAt3 << 6) & 192));
                i2 = i7;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
    
        throw new java.io.IOException("UUDecoder error: " + r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void readPrefix() throws java.io.IOException {
        /*
            r7 = this;
            boolean r0 = r7.gotPrefix
            if (r0 == 0) goto L5
            return
        L5:
            com.sun.mail.util.LineInputStream r0 = r7.lin
            java.lang.String r0 = r0.readLine()
            if (r0 != 0) goto L15
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "UUDecoder error: No Begin"
            r0.<init>(r1)
            throw r0
        L15:
            r2 = 1
            r3 = 0
            java.lang.String r4 = "begin"
            r5 = 0
            r6 = 5
            r1 = r0
            boolean r1 = r1.regionMatches(r2, r3, r4, r5, r6)
            if (r1 == 0) goto L5
            r1 = 6
            r2 = 9
            java.lang.String r1 = r0.substring(r1, r2)     // Catch: java.lang.NumberFormatException -> L3b
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L3b
            r7.mode = r1     // Catch: java.lang.NumberFormatException -> L3b
            r1 = 10
            java.lang.String r0 = r0.substring(r1)
            r7.name = r0
            r0 = 1
            r7.gotPrefix = r0
            return
        L3b:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "UUDecoder error: "
            r2.<init>(r3)
            java.lang.String r0 = r0.toString()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.UUDecoderStream.readPrefix():void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return ((this.in.available() * 3) / 4) + (this.bufsize - this.index);
    }

    public int getMode() throws IOException {
        readPrefix();
        return this.mode;
    }

    public String getName() throws IOException {
        readPrefix();
        return this.name;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.index >= this.bufsize) {
            readPrefix();
            if (!decode()) {
                return -1;
            }
            this.index = 0;
        }
        byte[] bArr = this.buffer;
        int i = this.index;
        this.index = i + 1;
        return bArr[i] & 255;
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
