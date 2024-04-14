package com.sun.mail.iap;

import com.sun.mail.util.ASCIIUtility;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Vector;

/* loaded from: classes.dex */
public class Argument {
    protected Vector items = new Vector(1);

    private void astring(byte[] bArr, Protocol protocol) throws IOException, ProtocolException {
        int i;
        DataOutputStream dataOutputStream = (DataOutputStream) protocol.getOutputStream();
        int length = bArr.length;
        if (length > 1024) {
            literal(bArr, protocol);
            return;
        }
        boolean z = length == 0;
        boolean z2 = false;
        for (byte b2 : bArr) {
            if (b2 == 0 || b2 == 13 || b2 == 10 || (i = b2 & 255) > 127) {
                literal(bArr, protocol);
                return;
            }
            if (b2 == 42 || b2 == 37 || b2 == 40 || b2 == 41 || b2 == 123 || b2 == 34 || b2 == 92 || i <= 32) {
                if (b2 == 34 || b2 == 92) {
                    z = true;
                    z2 = true;
                } else {
                    z = true;
                }
            }
        }
        if (z) {
            dataOutputStream.write(34);
        }
        if (z2) {
            for (byte b3 : bArr) {
                if (b3 == 34 || b3 == 92) {
                    dataOutputStream.write(92);
                }
                dataOutputStream.write(b3);
            }
        } else {
            dataOutputStream.write(bArr);
        }
        if (z) {
            dataOutputStream.write(34);
        }
    }

    private void literal(Literal literal, Protocol protocol) throws IOException, ProtocolException {
        literal.writeTo(startLiteral(protocol, literal.size()));
    }

    private void literal(ByteArrayOutputStream byteArrayOutputStream, Protocol protocol) throws IOException, ProtocolException {
        byteArrayOutputStream.writeTo(startLiteral(protocol, byteArrayOutputStream.size()));
    }

    private void literal(byte[] bArr, Protocol protocol) throws IOException, ProtocolException {
        startLiteral(protocol, bArr.length).write(bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r5.isTagged() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
    
        throw new com.sun.mail.iap.LiteralException(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0024, code lost:
    
        if (r1 == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        r5 = r4.readResponse();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002e, code lost:
    
        if (r5.isContinuation() != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.io.OutputStream startLiteral(com.sun.mail.iap.Protocol r4, int r5) throws java.io.IOException, com.sun.mail.iap.ProtocolException {
        /*
            r3 = this;
            java.io.OutputStream r0 = r4.getOutputStream()
            java.io.DataOutputStream r0 = (java.io.DataOutputStream) r0
            boolean r1 = r4.supportsNonSyncLiterals()
            r2 = 123(0x7b, float:1.72E-43)
            r0.write(r2)
            java.lang.String r5 = java.lang.Integer.toString(r5)
            r0.writeBytes(r5)
            if (r1 == 0) goto L1e
            java.lang.String r5 = "+}\r\n"
        L1a:
            r0.writeBytes(r5)
            goto L21
        L1e:
            java.lang.String r5 = "}\r\n"
            goto L1a
        L21:
            r0.flush()
            if (r1 != 0) goto L3c
        L26:
            com.sun.mail.iap.Response r5 = r4.readResponse()
            boolean r1 = r5.isContinuation()
            if (r1 != 0) goto L3c
            boolean r1 = r5.isTagged()
            if (r1 == 0) goto L26
            com.sun.mail.iap.LiteralException r4 = new com.sun.mail.iap.LiteralException
            r4.<init>(r5)
            throw r4
        L3c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.iap.Argument.startLiteral(com.sun.mail.iap.Protocol, int):java.io.OutputStream");
    }

    public void append(Argument argument) {
        this.items.ensureCapacity(this.items.size() + argument.items.size());
        for (int i = 0; i < argument.items.size(); i++) {
            this.items.addElement(argument.items.elementAt(i));
        }
    }

    public void write(Protocol protocol) throws IOException, ProtocolException {
        String obj;
        int size = this.items != null ? this.items.size() : 0;
        DataOutputStream dataOutputStream = (DataOutputStream) protocol.getOutputStream();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                dataOutputStream.write(32);
            }
            Object elementAt = this.items.elementAt(i);
            if (elementAt instanceof Atom) {
                obj = ((Atom) elementAt).string;
            } else if (elementAt instanceof Number) {
                obj = ((Number) elementAt).toString();
            } else {
                if (elementAt instanceof AString) {
                    astring(((AString) elementAt).bytes, protocol);
                } else if (elementAt instanceof byte[]) {
                    literal((byte[]) elementAt, protocol);
                } else if (elementAt instanceof ByteArrayOutputStream) {
                    literal((ByteArrayOutputStream) elementAt, protocol);
                } else if (elementAt instanceof Literal) {
                    literal((Literal) elementAt, protocol);
                } else if (elementAt instanceof Argument) {
                    dataOutputStream.write(40);
                    ((Argument) elementAt).write(protocol);
                    dataOutputStream.write(41);
                }
            }
            dataOutputStream.writeBytes(obj);
        }
    }

    public void writeArgument(Argument argument) {
        this.items.addElement(argument);
    }

    public void writeAtom(String str) {
        this.items.addElement(new Atom(str));
    }

    public void writeBytes(Literal literal) {
        this.items.addElement(literal);
    }

    public void writeBytes(ByteArrayOutputStream byteArrayOutputStream) {
        this.items.addElement(byteArrayOutputStream);
    }

    public void writeBytes(byte[] bArr) {
        this.items.addElement(bArr);
    }

    public void writeNumber(int i) {
        this.items.addElement(new Integer(i));
    }

    public void writeNumber(long j) {
        this.items.addElement(new Long(j));
    }

    public void writeString(String str) {
        this.items.addElement(new AString(ASCIIUtility.getBytes(str)));
    }

    public void writeString(String str, String str2) throws UnsupportedEncodingException {
        if (str2 == null) {
            writeString(str);
        } else {
            this.items.addElement(new AString(str.getBytes(str2)));
        }
    }
}
