package javax.activation;

import java.io.IOException;
import java.io.OutputStream;
import myjava.awt.datatransfer.DataFlavor;
import myjava.awt.datatransfer.UnsupportedFlavorException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DataSourceDataContentHandler implements DataContentHandler {
    private DataContentHandler dch;

    /* renamed from: ds */
    private DataSource f10029ds;
    private DataFlavor[] transferFlavors = null;

    public DataSourceDataContentHandler(DataContentHandler dataContentHandler, DataSource dataSource) {
        this.f10029ds = null;
        this.dch = null;
        this.f10029ds = dataSource;
        this.dch = dataContentHandler;
    }

    @Override // javax.activation.DataContentHandler
    public Object getContent(DataSource dataSource) throws IOException {
        return this.dch != null ? this.dch.getContent(dataSource) : dataSource.getInputStream();
    }

    @Override // javax.activation.DataContentHandler
    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws UnsupportedFlavorException, IOException {
        if (this.dch != null) {
            return this.dch.getTransferData(dataFlavor, dataSource);
        }
        if (dataFlavor.equals(getTransferDataFlavors()[0])) {
            return dataSource.getInputStream();
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    @Override // javax.activation.DataContentHandler
    public DataFlavor[] getTransferDataFlavors() {
        if (this.transferFlavors == null) {
            if (this.dch != null) {
                this.transferFlavors = this.dch.getTransferDataFlavors();
            } else {
                this.transferFlavors = new DataFlavor[1];
                this.transferFlavors[0] = new ActivationDataFlavor(this.f10029ds.getContentType(), this.f10029ds.getContentType());
            }
        }
        return this.transferFlavors;
    }

    @Override // javax.activation.DataContentHandler
    public void writeTo(Object obj, String str, OutputStream outputStream) throws IOException {
        if (this.dch != null) {
            this.dch.writeTo(obj, str, outputStream);
        } else {
            throw new UnsupportedDataTypeException("no DCH for content type " + this.f10029ds.getContentType());
        }
    }
}
