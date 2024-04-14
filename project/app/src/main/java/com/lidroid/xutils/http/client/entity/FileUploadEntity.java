package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;

/* loaded from: classes.dex */
public class FileUploadEntity extends FileEntity implements UploadEntity {
    private RequestCallBackHandler callBackHandler;
    private long fileSize;
    private long uploadedSize;

    public FileUploadEntity(File file, String str) {
        super(file, str);
        this.uploadedSize = 0L;
        this.callBackHandler = null;
        this.fileSize = file.length();
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    @Override // org.apache.http.entity.FileEntity, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(this.file));
        } catch (Throwable th) {
            th = th;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    outputStream.flush();
                    if (this.callBackHandler != null) {
                        this.callBackHandler.updateProgress(this.fileSize, this.uploadedSize, true);
                    }
                    IOUtils.closeQuietly(bufferedInputStream);
                    return;
                }
                outputStream.write(bArr, 0, read);
                this.uploadedSize += read;
                if (this.callBackHandler != null && !this.callBackHandler.updateProgress(this.fileSize, this.uploadedSize, false)) {
                    throw new InterruptedIOException("cancel");
                }
            }
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly(bufferedInputStream);
            throw th;
        }
    }
}
