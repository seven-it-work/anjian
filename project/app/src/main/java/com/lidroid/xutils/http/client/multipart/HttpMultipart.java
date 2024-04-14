package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.apache.http.util.ByteArrayBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HttpMultipart {

    /* renamed from: $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode */
    private static /* synthetic */ int[] f8838xffc7e4ec;
    private final String boundary;
    private final Charset charset;
    private final HttpMultipartMode mode;
    private final List<FormBodyPart> parts;
    private String subType;
    private static final ByteArrayBuffer FIELD_SEP = encode(MIME.DEFAULT_CHARSET, ": ");
    private static final ByteArrayBuffer CR_LF = encode(MIME.DEFAULT_CHARSET, IOUtils.LINE_SEPARATOR_WINDOWS);
    private static final ByteArrayBuffer TWO_DASHES = encode(MIME.DEFAULT_CHARSET, "--");

    /* renamed from: $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode */
    static /* synthetic */ int[] m10365xffc7e4ec() {
        int[] iArr = f8838xffc7e4ec;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[HttpMultipartMode.valuesCustom().length];
        try {
            iArr2[HttpMultipartMode.BROWSER_COMPATIBLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[HttpMultipartMode.STRICT.ordinal()] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        f8838xffc7e4ec = iArr2;
        return iArr2;
    }

    public HttpMultipart(String str, String str2) {
        this(str, null, str2);
    }

    public HttpMultipart(String str, Charset charset, String str2) {
        this(str, charset, str2, HttpMultipartMode.STRICT);
    }

    public HttpMultipart(String str, Charset charset, String str2, HttpMultipartMode httpMultipartMode) {
        if (str == null) {
            throw new IllegalArgumentException("Multipart subtype may not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Multipart boundary may not be null");
        }
        this.subType = str;
        this.charset = charset == null ? MIME.DEFAULT_CHARSET : charset;
        this.boundary = str2;
        this.parts = new ArrayList();
        this.mode = httpMultipartMode;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x00b7. Please report as an issue. */
    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo, boolean z) throws IOException {
        callBackInfo.pos = 0L;
        ByteArrayBuffer encode = encode(this.charset, getBoundary());
        for (FormBodyPart formBodyPart : this.parts) {
            if (!callBackInfo.doCallBack(true)) {
                throw new InterruptedIOException("cancel");
            }
            writeBytes(TWO_DASHES, outputStream);
            callBackInfo.pos += TWO_DASHES.length();
            writeBytes(encode, outputStream);
            callBackInfo.pos += encode.length();
            writeBytes(CR_LF, outputStream);
            callBackInfo.pos += CR_LF.length();
            MinimalFieldHeader header = formBodyPart.getHeader();
            switch (m10365xffc7e4ec()[httpMultipartMode.ordinal()]) {
                case 1:
                    Iterator<MinimalField> it = header.iterator();
                    while (it.hasNext()) {
                        writeField(it.next(), outputStream);
                        long j = callBackInfo.pos;
                        Charset charset = MIME.DEFAULT_CHARSET;
                        callBackInfo.pos = j + encode(charset, String.valueOf(r4.getName()) + r4.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
                    }
                    break;
                case 2:
                    writeField(header.getField("Content-Disposition"), this.charset, outputStream);
                    long j2 = callBackInfo.pos;
                    Charset charset2 = this.charset;
                    callBackInfo.pos = j2 + encode(charset2, String.valueOf(r4.getName()) + r4.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
                    if (formBodyPart.getBody().getFilename() != null) {
                        writeField(header.getField("Content-Type"), this.charset, outputStream);
                        long j3 = callBackInfo.pos;
                        Charset charset3 = this.charset;
                        callBackInfo.pos = j3 + encode(charset3, String.valueOf(r3.getName()) + r3.getBody()).length() + FIELD_SEP.length() + CR_LF.length();
                        break;
                    }
                    break;
            }
            writeBytes(CR_LF, outputStream);
            callBackInfo.pos += CR_LF.length();
            if (z) {
                ContentBody body = formBodyPart.getBody();
                body.setCallBackInfo(callBackInfo);
                body.writeTo(outputStream);
            }
            writeBytes(CR_LF, outputStream);
            callBackInfo.pos += CR_LF.length();
        }
        writeBytes(TWO_DASHES, outputStream);
        callBackInfo.pos += TWO_DASHES.length();
        writeBytes(encode, outputStream);
        callBackInfo.pos += encode.length();
        writeBytes(TWO_DASHES, outputStream);
        callBackInfo.pos += TWO_DASHES.length();
        writeBytes(CR_LF, outputStream);
        callBackInfo.pos += CR_LF.length();
        callBackInfo.doCallBack(true);
    }

    private void doWriteTo(HttpMultipartMode httpMultipartMode, OutputStream outputStream, boolean z) throws IOException {
        doWriteTo(httpMultipartMode, outputStream, MultipartEntity.CallBackInfo.DEFAULT, z);
    }

    private static ByteArrayBuffer encode(Charset charset, String str) {
        ByteBuffer encode = charset.encode(CharBuffer.wrap(str));
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(encode.remaining());
        byteArrayBuffer.append(encode.array(), encode.position(), encode.remaining());
        return byteArrayBuffer;
    }

    private static void writeBytes(String str, OutputStream outputStream) throws IOException {
        writeBytes(encode(MIME.DEFAULT_CHARSET, str), outputStream);
    }

    private static void writeBytes(String str, Charset charset, OutputStream outputStream) throws IOException {
        writeBytes(encode(charset, str), outputStream);
    }

    private static void writeBytes(ByteArrayBuffer byteArrayBuffer, OutputStream outputStream) throws IOException {
        outputStream.write(byteArrayBuffer.buffer(), 0, byteArrayBuffer.length());
        outputStream.flush();
    }

    private static void writeField(MinimalField minimalField, OutputStream outputStream) throws IOException {
        writeBytes(minimalField.getName(), outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), outputStream);
        writeBytes(CR_LF, outputStream);
    }

    private static void writeField(MinimalField minimalField, Charset charset, OutputStream outputStream) throws IOException {
        writeBytes(minimalField.getName(), charset, outputStream);
        writeBytes(FIELD_SEP, outputStream);
        writeBytes(minimalField.getBody(), charset, outputStream);
        writeBytes(CR_LF, outputStream);
    }

    public void addBodyPart(FormBodyPart formBodyPart) {
        if (formBodyPart == null) {
            return;
        }
        this.parts.add(formBodyPart);
    }

    public List<FormBodyPart> getBodyParts() {
        return this.parts;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public HttpMultipartMode getMode() {
        return this.mode;
    }

    public String getSubType() {
        return this.subType;
    }

    public long getTotalLength() {
        Iterator<FormBodyPart> it = this.parts.iterator();
        long j = 0;
        while (it.hasNext()) {
            long contentLength = it.next().getBody().getContentLength();
            if (contentLength < 0) {
                return -1L;
            }
            j += contentLength;
        }
        try {
            doWriteTo(this.mode, new ByteArrayOutputStream(), false);
            return j + r0.toByteArray().length;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    public void setSubType(String str) {
        this.subType = str;
    }

    public void writeTo(OutputStream outputStream, MultipartEntity.CallBackInfo callBackInfo) throws IOException {
        doWriteTo(this.mode, outputStream, callBackInfo, true);
    }
}
