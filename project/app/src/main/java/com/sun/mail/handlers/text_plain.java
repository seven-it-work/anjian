package com.sun.mail.handlers;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import javax.activation.ActivationDataFlavor;
import javax.activation.DataContentHandler;
import javax.activation.DataSource;
import javax.mail.internet.ContentType;
import javax.mail.internet.MimeUtility;
import myjava.awt.datatransfer.DataFlavor;

/* loaded from: classes.dex */
public class text_plain implements DataContentHandler {
    private static ActivationDataFlavor myDF = new ActivationDataFlavor(String.class, "text/plain", "Text String");

    private String getCharset(String str) {
        try {
            String parameter = new ContentType(str).getParameter(HttpRequest.PARAM_CHARSET);
            if (parameter == null) {
                parameter = "us-ascii";
            }
            return MimeUtility.javaCharset(parameter);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        String str;
        try {
            str = getCharset(dataSource.getContentType());
        } catch (IllegalArgumentException unused) {
            str = null;
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(dataSource.getInputStream(), str);
            try {
                char[] cArr = new char[1024];
                int i = 0;
                while (true) {
                    int read = inputStreamReader.read(cArr, i, cArr.length - i);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                    if (i >= cArr.length) {
                        int length = cArr.length;
                        char[] cArr2 = new char[length < 262144 ? length + length : length + 262144];
                        System.arraycopy(cArr, 0, cArr2, 0, i);
                        cArr = cArr2;
                    }
                }
                return new String(cArr, 0, i);
            } finally {
                try {
                    inputStreamReader.close();
                } catch (IOException unused2) {
                }
            }
        } catch (IllegalArgumentException unused3) {
            throw new UnsupportedEncodingException(str);
        }
    }

    protected ActivationDataFlavor getDF() {
        return myDF;
    }

    @Override // javax.activation.DataContentHandler
    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws IOException {
        if (getDF().equals(dataFlavor)) {
            return getContent(dataSource);
        }
        return null;
    }

    @Override // javax.activation.DataContentHandler
    public DataFlavor[] getTransferDataFlavors() {
        return new DataFlavor[]{getDF()};
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        String str2;
        if (!(obj instanceof String)) {
            throw new IOException("\"" + getDF().getMimeType() + "\" DataContentHandler requires String object, was given object of type " + obj.getClass().toString());
        }
        try {
            str2 = getCharset(str);
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str2);
                String str3 = (String) obj;
                outputStreamWriter.write(str3, 0, str3.length());
                outputStreamWriter.flush();
            } catch (IllegalArgumentException unused) {
                throw new UnsupportedEncodingException(str2);
            }
        } catch (IllegalArgumentException unused2) {
            str2 = null;
        }
    }
}
