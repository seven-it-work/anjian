package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

/* loaded from: classes.dex */
abstract class DecompressingEntity extends HttpEntityWrapper implements UploadEntity {
    private RequestCallBackHandler callBackHandler;
    private InputStream content;
    private long uncompressedLength;
    private long uploadedSize;

    public DecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
        this.uploadedSize = 0L;
        this.callBackHandler = null;
        this.uncompressedLength = httpEntity.getContentLength();
    }

    private InputStream getDecompressingStream() throws IOException {
        InputStream inputStream = null;
        try {
            InputStream content = this.wrappedEntity.getContent();
            try {
                return decorate(content);
            } catch (IOException e) {
                e = e;
                inputStream = content;
                IOUtils.closeQuietly(inputStream);
                throw e;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    abstract InputStream decorate(InputStream inputStream) throws IOException;

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (!this.wrappedEntity.isStreaming()) {
            return getDecompressingStream();
        }
        if (this.content == null) {
            this.content = getDecompressingStream();
        }
        return this.content;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public long getContentLength() {
        return -1L;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        InputStream inputStream;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            inputStream = getContent();
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    outputStream.flush();
                    if (this.callBackHandler != null) {
                        this.callBackHandler.updateProgress(this.uncompressedLength, this.uploadedSize, true);
                    }
                    IOUtils.closeQuietly(inputStream);
                    return;
                }
                outputStream.write(bArr, 0, read);
                this.uploadedSize += read;
                if (this.callBackHandler != null && !this.callBackHandler.updateProgress(this.uncompressedLength, this.uploadedSize, false)) {
                    throw new InterruptedIOException("cancel");
                }
            }
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }
}
