package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.client.entity.UploadEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

/* loaded from: classes.dex */
public class MultipartEntity implements UploadEntity, HttpEntity {
    private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    private final String boundary;
    private CallBackInfo callBackInfo;
    private final Charset charset;
    private Header contentType;
    private volatile boolean dirty;
    private long length;
    private final HttpMultipart multipart;
    private String multipartSubtype;

    /* loaded from: classes.dex */
    public static class CallBackInfo {
        public static final CallBackInfo DEFAULT = new CallBackInfo();
        public RequestCallBackHandler callBackHandler = null;
        public long totalLength = 0;
        public long pos = 0;

        public boolean doCallBack(boolean z) {
            if (this.callBackHandler != null) {
                return this.callBackHandler.updateProgress(this.totalLength, this.pos, z);
            }
            return true;
        }
    }

    public MultipartEntity() {
        this(HttpMultipartMode.STRICT, null, null);
    }

    public MultipartEntity(HttpMultipartMode httpMultipartMode) {
        this(httpMultipartMode, null, null);
    }

    public MultipartEntity(HttpMultipartMode httpMultipartMode, String str, Charset charset) {
        this.callBackInfo = new CallBackInfo();
        this.multipartSubtype = "form-data";
        this.boundary = str == null ? generateBoundary() : str;
        httpMultipartMode = httpMultipartMode == null ? HttpMultipartMode.STRICT : httpMultipartMode;
        this.charset = charset == null ? MIME.DEFAULT_CHARSET : charset;
        this.multipart = new HttpMultipart(this.multipartSubtype, this.charset, this.boundary, httpMultipartMode);
        this.contentType = new BasicHeader("Content-Type", generateContentType(this.boundary, this.charset));
        this.dirty = true;
    }

    public void addPart(FormBodyPart formBodyPart) {
        this.multipart.addBodyPart(formBodyPart);
        this.dirty = true;
    }

    public void addPart(String str, ContentBody contentBody) {
        addPart(new FormBodyPart(str, contentBody));
    }

    public void addPart(String str, ContentBody contentBody, String str2) {
        addPart(new FormBodyPart(str, contentBody, str2));
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws IOException, UnsupportedOperationException {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    protected String generateBoundary() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        int nextInt = random.nextInt(11) + 30;
        for (int i = 0; i < nextInt; i++) {
            sb.append(MULTIPART_CHARS[random.nextInt(MULTIPART_CHARS.length)]);
        }
        return sb.toString();
    }

    protected String generateContentType(String str, Charset charset) {
        StringBuilder sb = new StringBuilder();
        sb.append("multipart/" + this.multipartSubtype + "; boundary=");
        sb.append(str);
        return sb.toString();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException, UnsupportedOperationException {
        throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentEncoding() {
        return null;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        if (this.dirty) {
            this.length = this.multipart.getTotalLength();
            this.dirty = false;
        }
        return this.length;
    }

    @Override // org.apache.http.HttpEntity
    public Header getContentType() {
        return this.contentType;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return !isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        Iterator<FormBodyPart> it = this.multipart.getBodyParts().iterator();
        while (it.hasNext()) {
            if (it.next().getBody().getContentLength() < 0) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return !isRepeatable();
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackInfo.callBackHandler = requestCallBackHandler;
    }

    public void setMultipartSubtype(String str) {
        this.multipartSubtype = str;
        this.multipart.setSubType(str);
        this.contentType = new BasicHeader("Content-Type", generateContentType(this.boundary, this.charset));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        this.callBackInfo.totalLength = getContentLength();
        this.multipart.writeTo(outputStream, this.callBackInfo);
    }
}
