package javax.activation;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class FileDataSource implements DataSource {
    private File _file;
    private FileTypeMap typeMap;

    public FileDataSource(File file) {
        this._file = null;
        this.typeMap = null;
        this._file = file;
    }

    public FileDataSource(String str) {
        this(new File(str));
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        return (this.typeMap == null ? FileTypeMap.getDefaultFileTypeMap() : this.typeMap).getContentType(this._file);
    }

    public File getFile() {
        return this._file;
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this._file);
    }

    @Override // javax.activation.DataSource
    public String getName() {
        return this._file.getName();
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws IOException {
        return new FileOutputStream(this._file);
    }

    public void setFileTypeMap(FileTypeMap fileTypeMap) {
        this.typeMap = fileTypeMap;
    }
}
