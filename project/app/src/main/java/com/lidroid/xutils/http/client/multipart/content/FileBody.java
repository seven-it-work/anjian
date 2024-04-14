package com.lidroid.xutils.http.client.multipart.content;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class FileBody extends AbstractContentBody {
    private final String charset;
    private final File file;
    private final String filename;

    public FileBody(File file) {
        this(file, null, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE, null);
    }

    public FileBody(File file, String str) {
        this(file, null, str, null);
    }

    public FileBody(File file, String str, String str2) {
        this(file, null, str, str2);
    }

    public FileBody(File file, String str, String str2, String str3) {
        super(str2);
        if (file == null) {
            throw new IllegalArgumentException("File may not be null");
        }
        this.file = file;
        if (str != null) {
            this.filename = str;
        } else {
            this.filename = file.getName();
        }
        this.charset = str3;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getCharset() {
        return this.charset;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public long getContentLength() {
        return this.file.length();
    }

    public File getFile() {
        return this.file;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public String getFilename() {
        return this.filename;
    }

    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.file);
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_BINARY;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
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
            do {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    outputStream.flush();
                    IOUtils.closeQuietly(bufferedInputStream);
                    return;
                } else {
                    outputStream.write(bArr, 0, read);
                    this.callBackInfo.pos += read;
                }
            } while (this.callBackInfo.doCallBack(false));
            throw new InterruptedIOException("cancel");
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly(bufferedInputStream);
            throw th;
        }
    }
}
