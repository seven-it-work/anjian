package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LiteralByteString extends ByteString {
    protected final byte[] bytes;
    private int hash = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class LiteralByteIterator implements ByteString.ByteIterator {
        private final int limit;
        private int position;

        private LiteralByteIterator() {
            this.position = 0;
            this.limit = LiteralByteString.this.size();
        }

        /* synthetic */ LiteralByteIterator(LiteralByteString literalByteString, LiteralByteIterator literalByteIterator) {
            this();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.position < this.limit;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // com.google.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            try {
                byte[] bArr = LiteralByteString.this.bytes;
                int i = this.position;
                this.position = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new NoSuchElementException(e.getMessage());
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiteralByteString(byte[] bArr) {
        this.bytes = bArr;
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(asReadOnlyByteBuffer());
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i) {
        return this.bytes[i];
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.bytes, i, bArr, i2, i3);
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof LiteralByteString) {
            return equalsRange((LiteralByteString) obj, 0, size());
        }
        if (obj instanceof RopeByteString) {
            return obj.equals(this);
        }
        throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + obj.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean equalsRange(LiteralByteString literalByteString, int i, int i2) {
        if (i2 > literalByteString.size()) {
            throw new IllegalArgumentException("Length too large: " + i2 + size());
        }
        if (i + i2 > literalByteString.size()) {
            throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + literalByteString.size());
        }
        byte[] bArr = this.bytes;
        byte[] bArr2 = literalByteString.bytes;
        int offsetIntoBytes = getOffsetIntoBytes() + i2;
        int offsetIntoBytes2 = getOffsetIntoBytes();
        int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i;
        while (offsetIntoBytes2 < offsetIntoBytes) {
            if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                return false;
            }
            offsetIntoBytes2++;
            offsetIntoBytes3++;
        }
        return true;
    }

    protected int getOffsetIntoBytes() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return 0;
    }

    @Override // com.google.protobuf.ByteString
    public int hashCode() {
        int i = this.hash;
        if (i == 0) {
            int size = size();
            i = partialHash(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.hash = i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return true;
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        int offsetIntoBytes = getOffsetIntoBytes();
        return Utf8.isValidUtf8(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new LiteralByteIterator(this, null);
    }

    @Override // com.google.protobuf.ByteString
    public CodedInputStream newCodedInput() {
        return CodedInputStream.newInstance(this.bytes, getOffsetIntoBytes(), size());
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialHash(int i, int i2, int i3) {
        byte[] bArr = this.bytes;
        int offsetIntoBytes = getOffsetIntoBytes() + i2;
        int i4 = i3 + offsetIntoBytes;
        while (offsetIntoBytes < i4) {
            i = (i * 31) + bArr[offsetIntoBytes];
            offsetIntoBytes++;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i, int i2, int i3) {
        int offsetIntoBytes = getOffsetIntoBytes() + i2;
        return Utf8.partialIsValidUtf8(i, this.bytes, offsetIntoBytes, i3 + offsetIntoBytes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int peekCachedHashCode() {
        return this.hash;
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.bytes.length;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 > size()) {
            throw new IndexOutOfBoundsException("End index: " + i2 + " > " + size());
        }
        int i3 = i2 - i;
        if (i3 >= 0) {
            return i3 == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, getOffsetIntoBytes() + i, i3);
        }
        throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
    }

    @Override // com.google.protobuf.ByteString
    public String toString(String str) throws UnsupportedEncodingException {
        return new String(this.bytes, getOffsetIntoBytes(), size(), str);
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }
}
