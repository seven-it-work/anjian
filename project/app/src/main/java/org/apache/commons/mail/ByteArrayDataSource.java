package org.apache.commons.mail;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import javax.activation.DataSource;

@Deprecated
/* loaded from: classes2.dex */
public class ByteArrayDataSource implements DataSource {
    public static final int BUFFER_SIZE = 512;
    private ByteArrayOutputStream baos;
    private String name = "";
    private final String type;

    public ByteArrayDataSource(InputStream inputStream, String str) throws IOException {
        this.type = str;
        byteArrayDataSource(inputStream);
    }

    public ByteArrayDataSource(String str, String str2) throws IOException {
        this.type = str2;
        try {
            try {
                this.baos = new ByteArrayOutputStream();
                this.baos.write(str.getBytes("iso-8859-1"));
                this.baos.flush();
                this.baos.close();
            } catch (UnsupportedEncodingException unused) {
                throw new IOException("The Character Encoding is not supported.");
            }
        } finally {
            if (this.baos != null) {
                this.baos.close();
            }
        }
    }

    public ByteArrayDataSource(byte[] bArr, String str) throws IOException {
        ByteArrayInputStream byteArrayInputStream;
        this.type = str;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byteArrayDataSource(byteArrayInputStream);
            byteArrayInputStream.close();
        } catch (Throwable th2) {
            th = th2;
            byteArrayInputStream2 = byteArrayInputStream;
            if (byteArrayInputStream2 != null) {
                byteArrayInputStream2.close();
            }
            throw th;
        }
    }

    private void byteArrayDataSource(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            byte[] bArr = new byte[512];
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                this.baos = new ByteArrayOutputStream();
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(this.baos);
                while (true) {
                    try {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            bufferedOutputStream2.write(bArr, 0, read);
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (this.baos != null) {
                            this.baos.close();
                        }
                        if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        throw th;
                    }
                }
                bufferedOutputStream2.flush();
                bufferedOutputStream2.close();
                bufferedInputStream.close();
                if (this.baos != null) {
                    this.baos.close();
                }
                bufferedOutputStream2.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return this.type == null ? OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE : this.type;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        if (this.baos == null) {
            throw new IOException("no data");
        }
        return new ByteArrayInputStream(this.baos.toByteArray());
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this.name;
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() {
        this.baos = new ByteArrayOutputStream();
        return this.baos;
    }

    public void setName(String str) {
        this.name = str;
    }
}
