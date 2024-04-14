package javax.activation;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes.dex */
public class URLDataSource implements DataSource {
    private URL url;
    private URLConnection url_conn = null;

    public URLDataSource(URL url) {
        this.url = null;
        this.url = url;
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        try {
            if (this.url_conn == null) {
                this.url_conn = this.url.openConnection();
            }
        } catch (IOException unused) {
        }
        String contentType = this.url_conn != null ? this.url_conn.getContentType() : null;
        return contentType == null ? OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE : contentType;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        return this.url.openStream();
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this.url.getFile();
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        this.url_conn = this.url.openConnection();
        if (this.url_conn == null) {
            return null;
        }
        this.url_conn.setDoOutput(true);
        return this.url_conn.getOutputStream();
    }

    public URL getURL() {
        return this.url;
    }
}
