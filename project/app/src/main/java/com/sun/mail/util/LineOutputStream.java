package com.sun.mail.util;

import com.umeng.commonsdk.proguard.C2489bg;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import javax.mail.MessagingException;

/* loaded from: classes.dex */
public class LineOutputStream extends FilterOutputStream {
    private static byte[] newline;

    static {
        newline = r0;
        byte[] bArr = {C2489bg.f9368k};
        newline[1] = 10;
    }

    public LineOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void writeln() throws MessagingException {
        try {
            this.out.write(newline);
        } catch (Exception e) {
            throw new MessagingException("IOException", e);
        }
    }

    public void writeln(String str) throws MessagingException {
        try {
            this.out.write(ASCIIUtility.getBytes(str));
            this.out.write(newline);
        } catch (Exception e) {
            throw new MessagingException("IOException", e);
        }
    }
}
