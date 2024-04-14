package com.google.protobuf;

import android.support.v7.widget.ActivityChooserView;
import com.google.protobuf.MessageLite;
import com.umeng.commonsdk.proguard.C2489bg;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class CodedInputStream {
    private static final int BUFFER_SIZE = 4096;
    private static final int DEFAULT_RECURSION_LIMIT = 64;
    private static final int DEFAULT_SIZE_LIMIT = 67108864;
    private final byte[] buffer;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int currentLimit;
    private final InputStream input;
    private int lastTag;
    private int recursionDepth;
    private int recursionLimit;
    private int sizeLimit;
    private int totalBytesRetired;

    private CodedInputStream(InputStream inputStream) {
        this.currentLimit = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.recursionLimit = 64;
        this.sizeLimit = DEFAULT_SIZE_LIMIT;
        this.buffer = new byte[4096];
        this.bufferSize = 0;
        this.bufferPos = 0;
        this.totalBytesRetired = 0;
        this.input = inputStream;
    }

    private CodedInputStream(byte[] bArr, int i, int i2) {
        this.currentLimit = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.recursionLimit = 64;
        this.sizeLimit = DEFAULT_SIZE_LIMIT;
        this.buffer = bArr;
        this.bufferSize = i2 + i;
        this.bufferPos = i;
        this.totalBytesRetired = -i;
        this.input = null;
    }

    public static int decodeZigZag32(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long decodeZigZag64(long j) {
        return (j >>> 1) ^ (-(j & 1));
    }

    public static CodedInputStream newInstance(InputStream inputStream) {
        return new CodedInputStream(inputStream);
    }

    public static CodedInputStream newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedInputStream newInstance(byte[] bArr, int i, int i2) {
        CodedInputStream codedInputStream = new CodedInputStream(bArr, i, i2);
        try {
            codedInputStream.pushLimit(i2);
            return codedInputStream;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int readRawVarint32(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & 127;
        int i3 = 7;
        while (i3 < 32) {
            int read = inputStream.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i2 |= (read & 127) << i3;
            if ((read & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    static int readRawVarint32(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        return readRawVarint32(read, inputStream);
    }

    private void recomputeBufferSizeAfterLimit() {
        this.bufferSize += this.bufferSizeAfterLimit;
        int i = this.totalBytesRetired + this.bufferSize;
        if (i <= this.currentLimit) {
            this.bufferSizeAfterLimit = 0;
        } else {
            this.bufferSizeAfterLimit = i - this.currentLimit;
            this.bufferSize -= this.bufferSizeAfterLimit;
        }
    }

    private boolean refillBuffer(boolean z) throws IOException {
        if (this.bufferPos < this.bufferSize) {
            throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
        }
        if (this.totalBytesRetired + this.bufferSize == this.currentLimit) {
            if (z) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            return false;
        }
        this.totalBytesRetired += this.bufferSize;
        this.bufferPos = 0;
        this.bufferSize = this.input == null ? -1 : this.input.read(this.buffer);
        if (this.bufferSize == 0 || this.bufferSize < -1) {
            throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.bufferSize + "\nThe InputStream implementation is buggy.");
        }
        if (this.bufferSize == -1) {
            this.bufferSize = 0;
            if (z) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            return false;
        }
        recomputeBufferSizeAfterLimit();
        int i = this.totalBytesRetired + this.bufferSize + this.bufferSizeAfterLimit;
        if (i > this.sizeLimit || i < 0) {
            throw InvalidProtocolBufferException.sizeLimitExceeded();
        }
        return true;
    }

    public final void checkLastTagWas(int i) throws InvalidProtocolBufferException {
        if (this.lastTag != i) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    public final int getBytesUntilLimit() {
        if (this.currentLimit == Integer.MAX_VALUE) {
            return -1;
        }
        return this.currentLimit - (this.totalBytesRetired + this.bufferPos);
    }

    public final int getTotalBytesRead() {
        return this.totalBytesRetired + this.bufferPos;
    }

    public final boolean isAtEnd() throws IOException {
        return this.bufferPos == this.bufferSize && !refillBuffer(false);
    }

    public final void popLimit(int i) {
        this.currentLimit = i;
        recomputeBufferSizeAfterLimit();
    }

    public final int pushLimit(int i) throws InvalidProtocolBufferException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = i + this.totalBytesRetired + this.bufferPos;
        int i3 = this.currentLimit;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.currentLimit = i2;
        recomputeBufferSizeAfterLimit();
        return i3;
    }

    public final boolean readBool() throws IOException {
        return readRawVarint32() != 0;
    }

    public final ByteString readBytes() throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (readRawVarint32 == 0) {
            return ByteString.EMPTY;
        }
        if (readRawVarint32 > this.bufferSize - this.bufferPos || readRawVarint32 <= 0) {
            return ByteString.copyFrom(readRawBytes(readRawVarint32));
        }
        ByteString copyFrom = ByteString.copyFrom(this.buffer, this.bufferPos, readRawVarint32);
        this.bufferPos += readRawVarint32;
        return copyFrom;
    }

    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    public final int readEnum() throws IOException {
        return readRawVarint32();
    }

    public final int readFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public final long readFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    public final <T extends MessageLite> T readGroup(int i, Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        this.recursionDepth++;
        T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
        checkLastTagWas(WireFormat.makeTag(i, 4));
        this.recursionDepth--;
        return parsePartialFrom;
    }

    public final void readGroup(int i, MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        this.recursionDepth++;
        builder.mergeFrom(this, extensionRegistryLite);
        checkLastTagWas(WireFormat.makeTag(i, 4));
        this.recursionDepth--;
    }

    public final int readInt32() throws IOException {
        return readRawVarint32();
    }

    public final long readInt64() throws IOException {
        return readRawVarint64();
    }

    public final <T extends MessageLite> T readMessage(Parser<T> parser, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int pushLimit = pushLimit(readRawVarint32);
        this.recursionDepth++;
        T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistryLite);
        checkLastTagWas(0);
        this.recursionDepth--;
        popLimit(pushLimit);
        return parsePartialFrom;
    }

    public final void readMessage(MessageLite.Builder builder, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth >= this.recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int pushLimit = pushLimit(readRawVarint32);
        this.recursionDepth++;
        builder.mergeFrom(this, extensionRegistryLite);
        checkLastTagWas(0);
        this.recursionDepth--;
        popLimit(pushLimit);
    }

    public final byte readRawByte() throws IOException {
        if (this.bufferPos == this.bufferSize) {
            refillBuffer(true);
        }
        byte[] bArr = this.buffer;
        int i = this.bufferPos;
        this.bufferPos = i + 1;
        return bArr[i];
    }

    public final byte[] readRawBytes(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (this.totalBytesRetired + this.bufferPos + i > this.currentLimit) {
            skipRawBytes((this.currentLimit - this.totalBytesRetired) - this.bufferPos);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i <= this.bufferSize - this.bufferPos) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.buffer, this.bufferPos, bArr, 0, i);
            this.bufferPos += i;
            return bArr;
        }
        if (i >= 4096) {
            int i2 = this.bufferPos;
            int i3 = this.bufferSize;
            this.totalBytesRetired += this.bufferSize;
            this.bufferPos = 0;
            this.bufferSize = 0;
            int i4 = i3 - i2;
            int i5 = i - i4;
            ArrayList<byte[]> arrayList = new ArrayList();
            while (i5 > 0) {
                byte[] bArr2 = new byte[Math.min(i5, 4096)];
                int i6 = 0;
                while (i6 < bArr2.length) {
                    int read = this.input == null ? -1 : this.input.read(bArr2, i6, bArr2.length - i6);
                    if (read == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.totalBytesRetired += read;
                    i6 += read;
                }
                i5 -= bArr2.length;
                arrayList.add(bArr2);
            }
            byte[] bArr3 = new byte[i];
            System.arraycopy(this.buffer, i2, bArr3, 0, i4);
            for (byte[] bArr4 : arrayList) {
                System.arraycopy(bArr4, 0, bArr3, i4, bArr4.length);
                i4 += bArr4.length;
            }
            return bArr3;
        }
        byte[] bArr5 = new byte[i];
        int i7 = this.bufferSize - this.bufferPos;
        System.arraycopy(this.buffer, this.bufferPos, bArr5, 0, i7);
        this.bufferPos = this.bufferSize;
        while (true) {
            refillBuffer(true);
            int i8 = i - i7;
            if (i8 <= this.bufferSize) {
                System.arraycopy(this.buffer, 0, bArr5, i7, i8);
                this.bufferPos = i8;
                return bArr5;
            }
            System.arraycopy(this.buffer, 0, bArr5, i7, this.bufferSize);
            i7 += this.bufferSize;
            this.bufferPos = this.bufferSize;
        }
    }

    public final int readRawLittleEndian32() throws IOException {
        return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24);
    }

    public final long readRawLittleEndian64() throws IOException {
        return (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24) | ((readRawByte() & 255) << 32) | ((readRawByte() & 255) << 40) | ((readRawByte() & 255) << 48) | ((readRawByte() & 255) << 56);
    }

    public final int readRawVarint32() throws IOException {
        int i;
        byte readRawByte = readRawByte();
        if (readRawByte >= 0) {
            return readRawByte;
        }
        int i2 = readRawByte & Byte.MAX_VALUE;
        byte readRawByte2 = readRawByte();
        if (readRawByte2 >= 0) {
            i = readRawByte2 << 7;
        } else {
            i2 |= (readRawByte2 & Byte.MAX_VALUE) << 7;
            byte readRawByte3 = readRawByte();
            if (readRawByte3 >= 0) {
                i = readRawByte3 << C2489bg.f9369l;
            } else {
                i2 |= (readRawByte3 & Byte.MAX_VALUE) << 14;
                byte readRawByte4 = readRawByte();
                if (readRawByte4 < 0) {
                    int i3 = i2 | ((readRawByte4 & Byte.MAX_VALUE) << 21);
                    byte readRawByte5 = readRawByte();
                    int i4 = i3 | (readRawByte5 << 28);
                    if (readRawByte5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (readRawByte() >= 0) {
                            return i4;
                        }
                    }
                    throw InvalidProtocolBufferException.malformedVarint();
                }
                i = readRawByte4 << 21;
            }
        }
        return i2 | i;
    }

    public final long readRawVarint64() throws IOException {
        int i = 0;
        long j = 0;
        while (i < 64) {
            long j2 = j | ((r3 & Byte.MAX_VALUE) << i);
            if ((readRawByte() & 128) == 0) {
                return j2;
            }
            i += 7;
            j = j2;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public final int readSFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public final long readSFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public final int readSInt32() throws IOException {
        return decodeZigZag32(readRawVarint32());
    }

    public final long readSInt64() throws IOException {
        return decodeZigZag64(readRawVarint64());
    }

    public final String readString() throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (readRawVarint32 > this.bufferSize - this.bufferPos || readRawVarint32 <= 0) {
            return new String(readRawBytes(readRawVarint32), "UTF-8");
        }
        String str = new String(this.buffer, this.bufferPos, readRawVarint32, "UTF-8");
        this.bufferPos += readRawVarint32;
        return str;
    }

    public final int readTag() throws IOException {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        this.lastTag = readRawVarint32();
        if (WireFormat.getTagFieldNumber(this.lastTag) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        return this.lastTag;
    }

    public final int readUInt32() throws IOException {
        return readRawVarint32();
    }

    public final long readUInt64() throws IOException {
        return readRawVarint64();
    }

    @Deprecated
    public final void readUnknownGroup(int i, MessageLite.Builder builder) throws IOException {
        readGroup(i, builder, (ExtensionRegistryLite) null);
    }

    public final void resetSizeCounter() {
        this.totalBytesRetired = -this.bufferPos;
    }

    public final int setRecursionLimit(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Recursion limit cannot be negative: " + i);
        }
        int i2 = this.recursionLimit;
        this.recursionLimit = i;
        return i2;
    }

    public final int setSizeLimit(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Size limit cannot be negative: " + i);
        }
        int i2 = this.sizeLimit;
        this.sizeLimit = i;
        return i2;
    }

    public final boolean skipField(int i) throws IOException {
        switch (WireFormat.getTagWireType(i)) {
            case 0:
                readInt32();
                return true;
            case 1:
                readRawLittleEndian64();
                return true;
            case 2:
                skipRawBytes(readRawVarint32());
                return true;
            case 3:
                skipMessage();
                checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                readRawLittleEndian32();
                return true;
            default:
                throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    public final void skipMessage() throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
        } while (skipField(readTag));
    }

    public final void skipRawBytes(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (this.totalBytesRetired + this.bufferPos + i > this.currentLimit) {
            skipRawBytes((this.currentLimit - this.totalBytesRetired) - this.bufferPos);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i <= this.bufferSize - this.bufferPos) {
            this.bufferPos += i;
            return;
        }
        int i2 = this.bufferSize - this.bufferPos;
        this.bufferPos = this.bufferSize;
        while (true) {
            refillBuffer(true);
            int i3 = i - i2;
            if (i3 <= this.bufferSize) {
                this.bufferPos = i3;
                return;
            } else {
                i2 += this.bufferSize;
                this.bufferPos = this.bufferSize;
            }
        }
    }
}
