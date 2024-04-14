package org.apache.harmony.awt.datatransfer;

import com.github.kevinsawicki.http.HttpRequest;
import java.awt.Image;
import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.SystemFlavorMap;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.image.BufferedImage;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferInt;
import java.awt.image.DataBufferUShort;
import java.awt.image.DirectColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.Reader;
import java.io.StringReader;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import org.apache.harmony.awt.internal.nls.Messages;

/* loaded from: classes2.dex */
public final class DataProxy implements Transferable {
    private final DataProvider data;
    private final SystemFlavorMap flavorMap = SystemFlavorMap.getDefaultFlavorMap();
    public static final Class[] unicodeTextClasses = {String.class, Reader.class, CharBuffer.class, char[].class};
    public static final Class[] charsetTextClasses = {byte[].class, ByteBuffer.class, InputStream.class};

    public DataProxy(DataProvider dataProvider) {
        this.data = dataProvider;
    }

    private BufferedImage createBufferedImage(RawBitmap rawBitmap) {
        int[] iArr;
        DirectColorModel directColorModel;
        DataBufferInt dataBufferUShort;
        WritableRaster writableRaster;
        int[] iArr2;
        if (rawBitmap == null || rawBitmap.buffer == null || rawBitmap.width <= 0 || rawBitmap.height <= 0) {
            return null;
        }
        if (rawBitmap.bits != 32 || !(rawBitmap.buffer instanceof int[])) {
            if (rawBitmap.bits == 24 && (rawBitmap.buffer instanceof byte[])) {
                int[] iArr3 = {8, 8, 8};
                if (isRGB(rawBitmap)) {
                    iArr2 = new int[]{0, 1, 2};
                } else {
                    if (!isBGR(rawBitmap)) {
                        return null;
                    }
                    iArr2 = new int[]{2, 1};
                }
                int[] iArr4 = iArr2;
                byte[] bArr = (byte[]) rawBitmap.buffer;
                directColorModel = new ComponentColorModel(ColorSpace.getInstance(1000), iArr3, false, false, 1, 0);
                writableRaster = Raster.createInterleavedRaster(new DataBufferByte(bArr, bArr.length), rawBitmap.width, rawBitmap.height, rawBitmap.stride, 3, iArr4, (Point) null);
            } else if ((rawBitmap.bits == 16 || rawBitmap.bits == 15) && (rawBitmap.buffer instanceof short[])) {
                iArr = new int[]{rawBitmap.rMask, rawBitmap.gMask, rawBitmap.bMask};
                short[] sArr = (short[]) rawBitmap.buffer;
                directColorModel = new DirectColorModel(rawBitmap.bits, rawBitmap.rMask, rawBitmap.gMask, rawBitmap.bMask);
                dataBufferUShort = new DataBufferUShort(sArr, sArr.length);
            } else {
                writableRaster = null;
                directColorModel = null;
            }
            if (directColorModel != null || writableRaster == null) {
                return null;
            }
            return new BufferedImage(directColorModel, writableRaster, false, (Hashtable) null);
        }
        if (!isRGB(rawBitmap) && !isBGR(rawBitmap)) {
            return null;
        }
        iArr = new int[]{rawBitmap.rMask, rawBitmap.gMask, rawBitmap.bMask};
        int[] iArr5 = (int[]) rawBitmap.buffer;
        directColorModel = new DirectColorModel(24, rawBitmap.rMask, rawBitmap.gMask, rawBitmap.bMask);
        dataBufferUShort = new DataBufferInt(iArr5, iArr5.length);
        writableRaster = Raster.createPackedRaster(dataBufferUShort, rawBitmap.width, rawBitmap.height, rawBitmap.stride, iArr, (Point) null);
        if (directColorModel != null) {
            return null;
        }
        return null;
    }

    private String getCharset(DataFlavor dataFlavor) {
        return dataFlavor.getParameter(HttpRequest.PARAM_CHARSET);
    }

    private Object getFileList(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        if (!this.data.isNativeFormatAvailable("application/x-java-file-list")) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        String[] fileList = this.data.getFileList();
        if (fileList == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        return Arrays.asList(fileList);
    }

    private Object getHTML(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        if (!this.data.isNativeFormatAvailable("text/html")) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        String html = this.data.getHTML();
        if (html == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        return getTextRepresentation(html, dataFlavor);
    }

    private Image getImage(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        if (!this.data.isNativeFormatAvailable("image/x-java-image")) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        RawBitmap rawBitmap = this.data.getRawBitmap();
        if (rawBitmap == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        return createBufferedImage(rawBitmap);
    }

    private Object getPlainText(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        if (!this.data.isNativeFormatAvailable("text/plain")) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        String text = this.data.getText();
        if (text == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        return getTextRepresentation(text, dataFlavor);
    }

    private Object getSerializedObject(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        String encodeDataFlavor = SystemFlavorMap.encodeDataFlavor(dataFlavor);
        if (encodeDataFlavor == null || !this.data.isNativeFormatAvailable(encodeDataFlavor)) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        byte[] serializedObject = this.data.getSerializedObject(dataFlavor.getRepresentationClass());
        if (serializedObject == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        try {
            return new ObjectInputStream(new ByteArrayInputStream(serializedObject)).readObject();
        } catch (ClassNotFoundException e) {
            throw new IOException(e.getMessage());
        }
    }

    private Object getTextRepresentation(String str, DataFlavor dataFlavor) throws UnsupportedFlavorException, IOException {
        if (dataFlavor.getRepresentationClass() == String.class) {
            return str;
        }
        if (dataFlavor.isRepresentationClassReader()) {
            return new StringReader(str);
        }
        if (dataFlavor.isRepresentationClassCharBuffer()) {
            return CharBuffer.wrap(str);
        }
        if (dataFlavor.getRepresentationClass() == char[].class) {
            char[] cArr = new char[str.length()];
            str.getChars(0, str.length(), cArr, 0);
            return cArr;
        }
        String charset = getCharset(dataFlavor);
        if (dataFlavor.getRepresentationClass() == byte[].class) {
            return str.getBytes(charset);
        }
        if (dataFlavor.isRepresentationClassByteBuffer()) {
            return ByteBuffer.wrap(str.getBytes(charset));
        }
        if (dataFlavor.isRepresentationClassInputStream()) {
            return new ByteArrayInputStream(str.getBytes(charset));
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    private Object getURL(DataFlavor dataFlavor) throws IOException, UnsupportedFlavorException {
        if (!this.data.isNativeFormatAvailable("application/x-java-url")) {
            throw new UnsupportedFlavorException(dataFlavor);
        }
        String url = this.data.getURL();
        if (url == null) {
            throw new IOException(Messages.getString("awt.4F"));
        }
        URL url2 = new URL(url);
        if (dataFlavor.getRepresentationClass().isAssignableFrom(URL.class)) {
            return url2;
        }
        if (dataFlavor.isFlavorTextType()) {
            return getTextRepresentation(url2.toString(), dataFlavor);
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    private boolean isBGR(RawBitmap rawBitmap) {
        return rawBitmap.rMask == 255 && rawBitmap.gMask == 65280 && rawBitmap.bMask == 16711680;
    }

    private boolean isRGB(RawBitmap rawBitmap) {
        return rawBitmap.rMask == 16711680 && rawBitmap.gMask == 65280 && rawBitmap.bMask == 255;
    }

    public final DataProvider getDataProvider() {
        return this.data;
    }

    public final Object getTransferData(DataFlavor dataFlavor) throws UnsupportedFlavorException, IOException {
        String str = String.valueOf(dataFlavor.getPrimaryType()) + "/" + dataFlavor.getSubType();
        if (dataFlavor.isFlavorTextType()) {
            return str.equalsIgnoreCase("text/html") ? getHTML(dataFlavor) : str.equalsIgnoreCase(DataProvider.TYPE_URILIST) ? getURL(dataFlavor) : getPlainText(dataFlavor);
        }
        if (dataFlavor.isFlavorJavaFileListType()) {
            return getFileList(dataFlavor);
        }
        if (dataFlavor.isFlavorSerializedObjectType()) {
            return getSerializedObject(dataFlavor);
        }
        if (dataFlavor.equals(DataProvider.urlFlavor)) {
            return getURL(dataFlavor);
        }
        if (str.equalsIgnoreCase("image/x-java-image") && Image.class.isAssignableFrom(dataFlavor.getRepresentationClass())) {
            return getImage(dataFlavor);
        }
        throw new UnsupportedFlavorException(dataFlavor);
    }

    public final DataFlavor[] getTransferDataFlavors() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.data.getNativeFormats()) {
            for (DataFlavor dataFlavor : this.flavorMap.getFlavorsForNative(str)) {
                if (!arrayList.contains(dataFlavor)) {
                    arrayList.add(dataFlavor);
                }
            }
        }
        return (DataFlavor[]) arrayList.toArray(new DataFlavor[arrayList.size()]);
    }

    public final boolean isDataFlavorSupported(DataFlavor dataFlavor) {
        for (DataFlavor dataFlavor2 : getTransferDataFlavors()) {
            if (dataFlavor2.equals(dataFlavor)) {
                return true;
            }
        }
        return false;
    }
}
