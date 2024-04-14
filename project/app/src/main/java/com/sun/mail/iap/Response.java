package com.sun.mail.iap;

import com.sun.mail.util.ASCIIUtility;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Vector;

/* loaded from: classes.dex */
public class Response {
    public static final int BAD = 12;
    public static final int BYE = 16;
    public static final int CONTINUATION = 1;

    /* renamed from: NO */
    public static final int f8843NO = 8;

    /* renamed from: OK */
    public static final int f8844OK = 4;
    public static final int SYNTHETIC = 32;
    public static final int TAGGED = 2;
    public static final int TAG_MASK = 3;
    public static final int TYPE_MASK = 28;
    public static final int UNTAGGED = 3;
    private static final int increment = 100;
    protected byte[] buffer;
    protected int index;
    protected int pindex;
    protected int size;
    protected String tag;
    protected int type;

    public Response(Protocol protocol) throws IOException, ProtocolException {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        this.buffer = protocol.getInputStream().readResponse(protocol.getResponseBuffer()).getBytes();
        this.size = r3.getCount() - 2;
        parse();
    }

    public Response(Response response) {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        this.index = response.index;
        this.size = response.size;
        this.buffer = response.buffer;
        this.type = response.type;
        this.tag = response.tag;
    }

    public Response(String str) {
        this.buffer = null;
        this.type = 0;
        this.tag = null;
        this.buffer = ASCIIUtility.getBytes(str);
        this.size = this.buffer.length;
        parse();
    }

    public static Response byeResponse(Exception exc) {
        Response response = new Response(("* BYE JavaMail Exception: " + exc.toString()).replace('\r', ' ').replace('\n', ' '));
        response.type = response.type | 32;
        return response;
    }

    private void parse() {
        int i;
        this.index = 0;
        if (this.buffer[this.index] == 43) {
            this.type |= 1;
            this.index++;
            return;
        }
        if (this.buffer[this.index] == 42) {
            this.type |= 3;
            this.index++;
        } else {
            this.type |= 2;
            this.tag = readAtom();
        }
        int i2 = this.index;
        String readAtom = readAtom();
        if (readAtom == null) {
            readAtom = "";
        }
        if (readAtom.equalsIgnoreCase("OK")) {
            i = this.type | 4;
        } else if (readAtom.equalsIgnoreCase("NO")) {
            i = this.type | 8;
        } else if (readAtom.equalsIgnoreCase("BAD")) {
            i = this.type | 12;
        } else {
            if (!readAtom.equalsIgnoreCase("BYE")) {
                this.index = i2;
                this.pindex = this.index;
            }
            i = this.type | 16;
        }
        this.type = i;
        this.pindex = this.index;
    }

    private Object parseString(boolean z, boolean z2) {
        skipSpaces();
        byte b2 = this.buffer[this.index];
        if (b2 == 34) {
            this.index++;
            int i = this.index;
            int i2 = this.index;
            while (true) {
                byte b3 = this.buffer[this.index];
                if (b3 == 34) {
                    break;
                }
                if (b3 == 92) {
                    this.index++;
                }
                if (this.index != i2) {
                    this.buffer[i2] = this.buffer[this.index];
                }
                i2++;
                this.index++;
            }
            this.index++;
            return z2 ? ASCIIUtility.toString(this.buffer, i, i2) : new ByteArray(this.buffer, i, i2 - i);
        }
        if (b2 != 123) {
            if (z) {
                return z2 ? readAtom() : new ByteArray(this.buffer, this.index, this.index);
            }
            if (b2 != 78 && b2 != 110) {
                return null;
            }
            this.index += 3;
            return null;
        }
        int i3 = this.index + 1;
        this.index = i3;
        while (this.buffer[this.index] != 125) {
            this.index++;
        }
        try {
            int parseInt = ASCIIUtility.parseInt(this.buffer, i3, this.index);
            int i4 = this.index + 3;
            int i5 = i4 + parseInt;
            this.index = i5;
            return z2 ? ASCIIUtility.toString(this.buffer, i4, i5) : new ByteArray(this.buffer, i4, parseInt);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public String getRest() {
        skipSpaces();
        return ASCIIUtility.toString(this.buffer, this.index, this.size);
    }

    public String getTag() {
        return this.tag;
    }

    public int getType() {
        return this.type;
    }

    public boolean isBAD() {
        return (this.type & 28) == 12;
    }

    public boolean isBYE() {
        return (this.type & 28) == 16;
    }

    public boolean isContinuation() {
        return (this.type & 3) == 1;
    }

    public boolean isNO() {
        return (this.type & 28) == 8;
    }

    public boolean isOK() {
        return (this.type & 28) == 4;
    }

    public boolean isSynthetic() {
        return (this.type & 32) == 32;
    }

    public boolean isTagged() {
        return (this.type & 3) == 2;
    }

    public boolean isUnTagged() {
        return (this.type & 3) == 3;
    }

    public byte peekByte() {
        if (this.index < this.size) {
            return this.buffer[this.index];
        }
        return (byte) 0;
    }

    public String readAtom() {
        return readAtom((char) 0);
    }

    public String readAtom(char c2) {
        byte b2;
        skipSpaces();
        if (this.index >= this.size) {
            return null;
        }
        int i = this.index;
        while (this.index < this.size && (b2 = this.buffer[this.index]) > 32 && b2 != 40 && b2 != 41 && b2 != 37 && b2 != 42 && b2 != 34 && b2 != 92 && b2 != Byte.MAX_VALUE && (c2 == 0 || b2 != c2)) {
            this.index++;
        }
        return ASCIIUtility.toString(this.buffer, i, this.index);
    }

    public String readAtomString() {
        return (String) parseString(true, true);
    }

    public byte readByte() {
        if (this.index >= this.size) {
            return (byte) 0;
        }
        byte[] bArr = this.buffer;
        int i = this.index;
        this.index = i + 1;
        return bArr[i];
    }

    public ByteArray readByteArray() {
        if (!isContinuation()) {
            return (ByteArray) parseString(false, false);
        }
        skipSpaces();
        return new ByteArray(this.buffer, this.index, this.size - this.index);
    }

    public ByteArrayInputStream readBytes() {
        ByteArray readByteArray = readByteArray();
        if (readByteArray != null) {
            return readByteArray.toByteArrayInputStream();
        }
        return null;
    }

    public long readLong() {
        skipSpaces();
        int i = this.index;
        while (this.index < this.size && Character.isDigit((char) this.buffer[this.index])) {
            this.index++;
        }
        if (this.index <= i) {
            return -1L;
        }
        try {
            return ASCIIUtility.parseLong(this.buffer, i, this.index);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public int readNumber() {
        skipSpaces();
        int i = this.index;
        while (this.index < this.size && Character.isDigit((char) this.buffer[this.index])) {
            this.index++;
        }
        if (this.index <= i) {
            return -1;
        }
        try {
            return ASCIIUtility.parseInt(this.buffer, i, this.index);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public String readString() {
        return (String) parseString(false, true);
    }

    public String readString(char c2) {
        skipSpaces();
        if (this.index >= this.size) {
            return null;
        }
        int i = this.index;
        while (this.index < this.size && this.buffer[this.index] != c2) {
            this.index++;
        }
        return ASCIIUtility.toString(this.buffer, i, this.index);
    }

    public String[] readStringList() {
        byte[] bArr;
        int i;
        skipSpaces();
        if (this.buffer[this.index] != 40) {
            return null;
        }
        this.index++;
        Vector vector = new Vector();
        do {
            vector.addElement(readString());
            bArr = this.buffer;
            i = this.index;
            this.index = i + 1;
        } while (bArr[i] != 41);
        int size = vector.size();
        if (size <= 0) {
            return null;
        }
        String[] strArr = new String[size];
        vector.copyInto(strArr);
        return strArr;
    }

    public void reset() {
        this.index = this.pindex;
    }

    public void skip(int i) {
        this.index += i;
    }

    public void skipSpaces() {
        while (this.index < this.size && this.buffer[this.index] == 32) {
            this.index++;
        }
    }

    public void skipToken() {
        while (this.index < this.size && this.buffer[this.index] != 32) {
            this.index++;
        }
    }

    public String toString() {
        return ASCIIUtility.toString(this.buffer, 0, this.size);
    }
}
