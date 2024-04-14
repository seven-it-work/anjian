package org.apache.commons.io;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.output.NullOutputStream;

/* loaded from: classes2.dex */
public class FileUtils {
    public static final File[] EMPTY_FILE_ARRAY;
    private static final long FILE_COPY_BUFFER_SIZE = 31457280;
    public static final long ONE_EB = 1152921504606846976L;
    public static final BigInteger ONE_EB_BI;
    public static final long ONE_GB = 1073741824;
    public static final BigInteger ONE_GB_BI;
    public static final long ONE_KB = 1024;
    public static final BigInteger ONE_KB_BI;
    public static final long ONE_MB = 1048576;
    public static final BigInteger ONE_MB_BI;
    public static final long ONE_PB = 1125899906842624L;
    public static final BigInteger ONE_PB_BI;
    public static final long ONE_TB = 1099511627776L;
    public static final BigInteger ONE_TB_BI;
    public static final BigInteger ONE_YB;
    public static final BigInteger ONE_ZB;

    static {
        BigInteger valueOf = BigInteger.valueOf(1024L);
        ONE_KB_BI = valueOf;
        ONE_MB_BI = valueOf.multiply(valueOf);
        ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
        ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
        ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
        ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
        ONE_ZB = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(ONE_EB));
        ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
        EMPTY_FILE_ARRAY = new File[0];
    }

    public static String byteCountToDisplaySize(long j) {
        return byteCountToDisplaySize(BigInteger.valueOf(j));
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static String byteCountToDisplaySize(BigInteger bigInteger) {
        StringBuilder sb;
        String str;
        if (bigInteger.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_EB_BI)));
            str = " EB";
        } else if (bigInteger.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_PB_BI)));
            str = " PB";
        } else if (bigInteger.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_TB_BI)));
            str = " TB";
        } else if (bigInteger.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_GB_BI)));
            str = " GB";
        } else if (bigInteger.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_MB_BI)));
            str = " MB";
        } else if (bigInteger.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0) {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger.divide(ONE_KB_BI)));
            str = " KB";
        } else {
            sb = new StringBuilder();
            sb.append(String.valueOf(bigInteger));
            str = " bytes";
        }
        sb.append(str);
        return sb.toString();
    }

    private static void checkDirectory(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        }
        if (file.isDirectory()) {
            return;
        }
        throw new IllegalArgumentException(file + " is not a directory");
    }

    private static void checkFileRequirements(File file, File file2) throws FileNotFoundException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (file.exists()) {
            return;
        }
        throw new FileNotFoundException("Source '" + file + "' does not exist");
    }

    public static Checksum checksum(File file, Checksum checksum) throws IOException {
        CheckedInputStream checkedInputStream;
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Checksums can't be computed on directories");
        }
        CheckedInputStream checkedInputStream2 = null;
        try {
            checkedInputStream = new CheckedInputStream(new FileInputStream(file), checksum);
        } catch (Throwable th) {
            th = th;
        }
        try {
            IOUtils.copy(checkedInputStream, new NullOutputStream());
            IOUtils.closeQuietly((InputStream) checkedInputStream);
            return checksum;
        } catch (Throwable th2) {
            th = th2;
            checkedInputStream2 = checkedInputStream;
            IOUtils.closeQuietly((InputStream) checkedInputStream2);
            throw th;
        }
    }

    public static long checksumCRC32(File file) throws IOException {
        CRC32 crc32 = new CRC32();
        checksum(file, crc32);
        return crc32.getValue();
    }

    public static void cleanDirectory(File file) throws IOException {
        IOException e = null;
        for (File file2 : verifiedListFiles(file)) {
            try {
                forceDelete(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    private static void cleanDirectoryOnExit(File file) throws IOException {
        IOException e = null;
        for (File file2 : verifiedListFiles(file)) {
            try {
                forceDeleteOnExit(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public static boolean contentEquals(File file, File file2) throws IOException {
        FileInputStream fileInputStream;
        boolean exists = file.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        }
        if (file.length() != file2.length()) {
            return false;
        }
        if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                FileInputStream fileInputStream3 = new FileInputStream(file2);
                try {
                    boolean contentEquals = IOUtils.contentEquals(fileInputStream, fileInputStream3);
                    IOUtils.closeQuietly((InputStream) fileInputStream);
                    IOUtils.closeQuietly((InputStream) fileInputStream3);
                    return contentEquals;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream3;
                    IOUtils.closeQuietly((InputStream) fileInputStream);
                    IOUtils.closeQuietly((InputStream) fileInputStream2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static boolean contentEqualsIgnoreEOL(File file, File file2, String str) throws IOException {
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        boolean exists = file.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        }
        if (file.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        }
        InputStreamReader inputStreamReader3 = null;
        try {
            if (str == null) {
                InputStreamReader inputStreamReader4 = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
                try {
                    inputStreamReader2 = new InputStreamReader(new FileInputStream(file2), Charset.defaultCharset());
                    inputStreamReader3 = inputStreamReader4;
                } catch (Throwable th) {
                    th = th;
                    inputStreamReader = null;
                    inputStreamReader3 = inputStreamReader4;
                    IOUtils.closeQuietly((Reader) inputStreamReader3);
                    IOUtils.closeQuietly((Reader) inputStreamReader);
                    throw th;
                }
            } else {
                InputStreamReader inputStreamReader5 = new InputStreamReader(new FileInputStream(file), str);
                try {
                    inputStreamReader2 = new InputStreamReader(new FileInputStream(file2), str);
                    inputStreamReader3 = inputStreamReader5;
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamReader = null;
                    inputStreamReader3 = inputStreamReader5;
                    IOUtils.closeQuietly((Reader) inputStreamReader3);
                    IOUtils.closeQuietly((Reader) inputStreamReader);
                    throw th;
                }
            }
            try {
                boolean contentEqualsIgnoreEOL = IOUtils.contentEqualsIgnoreEOL(inputStreamReader3, inputStreamReader2);
                IOUtils.closeQuietly((Reader) inputStreamReader3);
                IOUtils.closeQuietly((Reader) inputStreamReader2);
                return contentEqualsIgnoreEOL;
            } catch (Throwable th3) {
                inputStreamReader = inputStreamReader2;
                th = th3;
                IOUtils.closeQuietly((Reader) inputStreamReader3);
                IOUtils.closeQuietly((Reader) inputStreamReader);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader = inputStreamReader3;
        }
    }

    public static File[] convertFileCollectionToFileArray(Collection<File> collection) {
        return (File[]) collection.toArray(new File[collection.size()]);
    }

    public static void copyDirectory(File file, File file2) throws IOException {
        copyDirectory(file, file2, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter) throws IOException {
        copyDirectory(file, file2, fileFilter, true);
    }

    public static void copyDirectory(File file, File file2, FileFilter fileFilter, boolean z) throws IOException {
        checkFileRequirements(file, file2);
        if (!file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is not a directory");
        }
        if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
        ArrayList arrayList = null;
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
            if (listFiles != null && listFiles.length > 0) {
                arrayList = new ArrayList(listFiles.length);
                for (File file3 : listFiles) {
                    arrayList.add(new File(file2, file3.getName()).getCanonicalPath());
                }
            }
        }
        doCopyDirectory(file, file2, fileFilter, z, arrayList);
    }

    public static void copyDirectory(File file, File file2, boolean z) throws IOException {
        copyDirectory(file, file2, null, z);
    }

    public static void copyDirectoryToDirectory(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file.exists() && !file.isDirectory()) {
            throw new IllegalArgumentException("Source '" + file2 + "' is not a directory");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file2.exists() || file2.isDirectory()) {
            copyDirectory(file, new File(file2, file.getName()), true);
            return;
        }
        throw new IllegalArgumentException("Destination '" + file2 + "' is not a directory");
    }

    public static long copyFile(File file, OutputStream outputStream) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return IOUtils.copyLarge(fileInputStream, outputStream);
        } finally {
            fileInputStream.close();
        }
    }

    public static void copyFile(File file, File file2) throws IOException {
        copyFile(file, file2, true);
    }

    public static void copyFile(File file, File file2, boolean z) throws IOException {
        checkFileRequirements(file, file2);
        if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' exists but is a directory");
        }
        if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
            throw new IOException("Destination '" + parentFile + "' directory cannot be created");
        }
        if (!file2.exists() || file2.canWrite()) {
            doCopyFile(file, file2, z);
            return;
        }
        throw new IOException("Destination '" + file2 + "' exists but is read-only");
    }

    public static void copyFileToDirectory(File file, File file2) throws IOException {
        copyFileToDirectory(file, file2, true);
    }

    public static void copyFileToDirectory(File file, File file2, boolean z) throws IOException {
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file2.exists() || file2.isDirectory()) {
            copyFile(file, new File(file2, file.getName()), z);
            return;
        }
        throw new IllegalArgumentException("Destination '" + file2 + "' is not a directory");
    }

    public static void copyInputStreamToFile(InputStream inputStream, File file) throws IOException {
        try {
            copyToFile(inputStream, file);
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    public static void copyToFile(InputStream inputStream, File file) throws IOException {
        FileOutputStream openOutputStream = openOutputStream(file);
        try {
            IOUtils.copy(inputStream, openOutputStream);
            openOutputStream.close();
        } finally {
            IOUtils.closeQuietly((OutputStream) openOutputStream);
        }
    }

    public static void copyURLToFile(URL url, File file) throws IOException {
        copyInputStreamToFile(url.openStream(), file);
    }

    public static void copyURLToFile(URL url, File file, int i, int i2) throws IOException {
        URLConnection openConnection = url.openConnection();
        openConnection.setConnectTimeout(i);
        openConnection.setReadTimeout(i2);
        copyInputStreamToFile(openConnection.getInputStream(), file);
    }

    static String decodeUrl(String str) {
        int i;
        if (str == null || str.indexOf(37) < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        ByteBuffer allocate = ByteBuffer.allocate(length);
        int i2 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == '%') {
                while (true) {
                    i = i2 + 3;
                    try {
                        try {
                            allocate.put((byte) Integer.parseInt(str.substring(i2 + 1, i), 16));
                            if (i >= length) {
                                break;
                            }
                            try {
                                if (str.charAt(i) != '%') {
                                    break;
                                }
                                i2 = i;
                            } catch (RuntimeException unused) {
                                i2 = i;
                                if (allocate.position() > 0) {
                                    allocate.flip();
                                    sb.append(Charsets.UTF_8.decode(allocate).toString());
                                    allocate.clear();
                                }
                                sb.append(str.charAt(i2));
                                i2++;
                            }
                        } finally {
                            if (allocate.position() > 0) {
                                allocate.flip();
                                sb.append(Charsets.UTF_8.decode(allocate).toString());
                                allocate.clear();
                            }
                        }
                    } catch (RuntimeException unused2) {
                    }
                }
                i2 = i;
            }
            sb.append(str.charAt(i2));
            i2++;
        }
        return sb.toString();
    }

    public static void deleteDirectory(File file) throws IOException {
        if (file.exists()) {
            if (!isSymlink(file)) {
                cleanDirectory(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + ".");
        }
    }

    private static void deleteDirectoryOnExit(File file) throws IOException {
        if (file.exists()) {
            file.deleteOnExit();
            if (isSymlink(file)) {
                return;
            }
            cleanDirectoryOnExit(file);
        }
    }

    public static boolean deleteQuietly(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                cleanDirectory(file);
            }
        } catch (Exception unused) {
        }
        try {
            return file.delete();
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean directoryContains(File file, File file2) throws IOException {
        if (file == null) {
            throw new IllegalArgumentException("Directory must not be null");
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("Not a directory: " + file);
        }
        if (file2 != null && file.exists() && file2.exists()) {
            return FilenameUtils.directoryContains(file.getCanonicalPath(), file2.getCanonicalPath());
        }
        return false;
    }

    private static void doCopyDirectory(File file, File file2, FileFilter fileFilter, boolean z, List<String> list) throws IOException {
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        if (listFiles == null) {
            throw new IOException("Failed to list contents of " + file);
        }
        if (file2.exists()) {
            if (!file2.isDirectory()) {
                throw new IOException("Destination '" + file2 + "' exists but is not a directory");
            }
        } else if (!file2.mkdirs() && !file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' directory cannot be created");
        }
        if (!file2.canWrite()) {
            throw new IOException("Destination '" + file2 + "' cannot be written to");
        }
        for (File file3 : listFiles) {
            File file4 = new File(file2, file3.getName());
            if (list == null || !list.contains(file3.getCanonicalPath())) {
                if (file3.isDirectory()) {
                    doCopyDirectory(file3, file4, fileFilter, z, list);
                } else {
                    doCopyFile(file3, file4, z);
                }
            }
        }
        if (z) {
            file2.setLastModified(file.lastModified());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void doCopyFile(File file, File file2, boolean z) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        FileChannel fileChannel;
        FileChannel fileChannel2;
        FileChannel fileChannel3;
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileChannel fileChannel4 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            fileChannel = null;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                FileChannel channel = fileInputStream.getChannel();
                try {
                    FileChannel channel2 = fileOutputStream.getChannel();
                    try {
                        long size = channel.size();
                        long j = 0;
                        while (true) {
                            if (j >= size) {
                                fileChannel2 = channel;
                                break;
                            }
                            long j2 = size - j;
                            fileChannel2 = channel;
                            try {
                                long transferFrom = channel2.transferFrom(channel, j, j2 > FILE_COPY_BUFFER_SIZE ? 31457280L : j2);
                                if (transferFrom == 0) {
                                    break;
                                }
                                j += transferFrom;
                                channel = fileChannel2;
                            } catch (Throwable th3) {
                                th = th3;
                                th = th;
                                fileChannel4 = channel2;
                                fileChannel3 = fileOutputStream;
                                IOUtils.closeQuietly(fileChannel4, fileChannel3, fileChannel2, fileInputStream);
                                throw th;
                            }
                        }
                        IOUtils.closeQuietly(channel2, fileOutputStream, fileChannel2, fileInputStream);
                        long length = file.length();
                        long length2 = file2.length();
                        if (length == length2) {
                            if (z) {
                                file2.setLastModified(file.lastModified());
                                return;
                            }
                            return;
                        }
                        throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
                    } catch (Throwable th4) {
                        th = th4;
                        fileChannel2 = channel;
                    }
                } catch (Throwable th5) {
                    fileChannel2 = channel;
                    th = th5;
                    fileChannel3 = fileOutputStream;
                }
            } catch (Throwable th6) {
                th = th6;
                fileChannel2 = null;
                fileChannel3 = fileOutputStream;
            }
        } catch (Throwable th7) {
            th = th7;
            fileChannel = null;
            fileChannel2 = fileChannel;
            fileChannel3 = fileChannel;
            IOUtils.closeQuietly(fileChannel4, fileChannel3, fileChannel2, fileInputStream);
            throw th;
        }
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (exists) {
            throw new IOException("Unable to delete file: " + file);
        }
        throw new FileNotFoundException("File does not exist: " + file);
    }

    public static void forceDeleteOnExit(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    public static void forceMkdir(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            throw new IOException("File " + file + " exists and is not a directory. Unable to create directory.");
        }
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create directory " + file);
    }

    public static void forceMkdirParent(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return;
        }
        forceMkdir(parentFile);
    }

    public static File getFile(File file, String... strArr) {
        if (file == null) {
            throw new NullPointerException("directory must not be null");
        }
        if (strArr == null) {
            throw new NullPointerException("names must not be null");
        }
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            File file2 = new File(file, strArr[i]);
            i++;
            file = file2;
        }
        return file;
    }

    public static File getFile(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("names must not be null");
        }
        File file = null;
        for (String str : strArr) {
            file = file == null ? new File(str) : new File(file, str);
        }
        return file;
    }

    public static File getTempDirectory() {
        return new File(getTempDirectoryPath());
    }

    public static String getTempDirectoryPath() {
        return System.getProperty("java.io.tmpdir");
    }

    public static File getUserDirectory() {
        return new File(getUserDirectoryPath());
    }

    public static String getUserDirectoryPath() {
        return System.getProperty("user.home");
    }

    private static void innerListFiles(Collection<File> collection, File file, IOFileFilter iOFileFilter, boolean z) {
        File[] listFiles = file.listFiles((FileFilter) iOFileFilter);
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    if (z) {
                        collection.add(file2);
                    }
                    innerListFiles(collection, file2, iOFileFilter, z);
                } else {
                    collection.add(file2);
                }
            }
        }
    }

    private static boolean isBrokenSymlink(File file) throws IOException {
        final File canonicalFile;
        File parentFile;
        File[] listFiles;
        return (file.exists() || (parentFile = (canonicalFile = file.getCanonicalFile()).getParentFile()) == null || !parentFile.exists() || (listFiles = parentFile.listFiles(new FileFilter() { // from class: org.apache.commons.io.FileUtils.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.equals(canonicalFile);
            }
        })) == null || listFiles.length <= 0) ? false : true;
    }

    public static boolean isFileNewer(File file, long j) {
        if (file == null) {
            throw new IllegalArgumentException("No specified file");
        }
        return file.exists() && file.lastModified() > j;
    }

    public static boolean isFileNewer(File file, File file2) {
        if (file2 == null) {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (file2.exists()) {
            return isFileNewer(file, file2.lastModified());
        }
        throw new IllegalArgumentException("The reference file '" + file2 + "' doesn't exist");
    }

    public static boolean isFileNewer(File file, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("No specified date");
        }
        return isFileNewer(file, date.getTime());
    }

    public static boolean isFileOlder(File file, long j) {
        if (file == null) {
            throw new IllegalArgumentException("No specified file");
        }
        return file.exists() && file.lastModified() < j;
    }

    public static boolean isFileOlder(File file, File file2) {
        if (file2 == null) {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (file2.exists()) {
            return isFileOlder(file, file2.lastModified());
        }
        throw new IllegalArgumentException("The reference file '" + file2 + "' doesn't exist");
    }

    public static boolean isFileOlder(File file, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("No specified date");
        }
        return isFileOlder(file, date.getTime());
    }

    public static boolean isSymlink(File file) throws IOException {
        if (Java7Support.isAtLeastJava7()) {
            return Java7Support.isSymLink(file);
        }
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (FilenameUtils.isSystemWindows()) {
            return false;
        }
        File file2 = file.getParent() == null ? file : new File(file.getParentFile().getCanonicalFile(), file.getName());
        if (file2.getCanonicalFile().equals(file2.getAbsoluteFile())) {
            return isBrokenSymlink(file);
        }
        return true;
    }

    public static Iterator<File> iterateFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFiles(file, iOFileFilter, iOFileFilter2).iterator();
    }

    public static Iterator<File> iterateFiles(File file, String[] strArr, boolean z) {
        return listFiles(file, strArr, z).iterator();
    }

    public static Iterator<File> iterateFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        return listFilesAndDirs(file, iOFileFilter, iOFileFilter2).iterator();
    }

    public static LineIterator lineIterator(File file) throws IOException {
        return lineIterator(file, null);
    }

    public static LineIterator lineIterator(File file, String str) throws IOException {
        FileInputStream fileInputStream;
        try {
            fileInputStream = openInputStream(file);
            try {
                return IOUtils.lineIterator(fileInputStream, str);
            } catch (IOException e) {
                e = e;
                IOUtils.closeQuietly((InputStream) fileInputStream);
                throw e;
            } catch (RuntimeException e2) {
                e = e2;
                IOUtils.closeQuietly((InputStream) fileInputStream);
                throw e;
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
        } catch (RuntimeException e4) {
            e = e4;
            fileInputStream = null;
        }
    }

    public static Collection<File> listFiles(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        validateListFilesParameters(file, iOFileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(iOFileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(iOFileFilter2);
        LinkedList linkedList = new LinkedList();
        innerListFiles(linkedList, file, FileFilterUtils.m12430or(upEffectiveFileFilter, upEffectiveDirFilter), false);
        return linkedList;
    }

    public static Collection<File> listFiles(File file, String[] strArr, boolean z) {
        return listFiles(file, strArr == null ? TrueFileFilter.INSTANCE : new SuffixFileFilter(toSuffixes(strArr)), z ? TrueFileFilter.INSTANCE : FalseFileFilter.INSTANCE);
    }

    public static Collection<File> listFilesAndDirs(File file, IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2) {
        validateListFilesParameters(file, iOFileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(iOFileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(iOFileFilter2);
        LinkedList linkedList = new LinkedList();
        if (file.isDirectory()) {
            linkedList.add(file);
        }
        innerListFiles(linkedList, file, FileFilterUtils.m12430or(upEffectiveFileFilter, upEffectiveDirFilter), true);
        return linkedList;
    }

    public static void moveDirectory(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        }
        if (!file.isDirectory()) {
            throw new IOException("Source '" + file + "' is not a directory");
        }
        if (file2.exists()) {
            throw new FileExistsException("Destination '" + file2 + "' already exists");
        }
        if (file.renameTo(file2)) {
            return;
        }
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath() + File.separator)) {
            throw new IOException("Cannot move directory: " + file + " to a subdirectory of itself: " + file2);
        }
        copyDirectory(file, file2);
        deleteDirectory(file);
        if (file.exists()) {
            throw new IOException("Failed to delete original directory '" + file + "' after copy to '" + file2 + "'");
        }
    }

    public static void moveDirectoryToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!file2.exists() && z) {
            file2.mkdirs();
        }
        if (!file2.exists()) {
            throw new FileNotFoundException("Destination directory '" + file2 + "' does not exist [createDestDir=" + z + "]");
        }
        if (file2.isDirectory()) {
            moveDirectory(file, new File(file2, file.getName()));
            return;
        }
        throw new IOException("Destination '" + file2 + "' is not a directory");
    }

    public static void moveFile(File file, File file2) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("Source '" + file + "' is a directory");
        }
        if (file2.exists()) {
            throw new FileExistsException("Destination '" + file2 + "' already exists");
        }
        if (file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' is a directory");
        }
        if (file.renameTo(file2)) {
            return;
        }
        copyFile(file, file2);
        if (file.delete()) {
            return;
        }
        deleteQuietly(file2);
        throw new IOException("Failed to delete original file '" + file + "' after copy to '" + file2 + "'");
    }

    public static void moveFileToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!file2.exists() && z) {
            file2.mkdirs();
        }
        if (!file2.exists()) {
            throw new FileNotFoundException("Destination directory '" + file2 + "' does not exist [createDestDir=" + z + "]");
        }
        if (file2.isDirectory()) {
            moveFile(file, new File(file2, file.getName()));
            return;
        }
        throw new IOException("Destination '" + file2 + "' is not a directory");
    }

    public static void moveToDirectory(File file, File file2, boolean z) throws IOException {
        if (file == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (file2 == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            moveDirectoryToDirectory(file, file2, z);
        } else {
            moveFileToDirectory(file, file2, z);
        }
    }

    public static FileInputStream openInputStream(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    public static FileOutputStream openOutputStream(File file) throws IOException {
        return openOutputStream(file, false);
    }

    public static FileOutputStream openOutputStream(File file, boolean z) throws IOException {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                throw new IOException("Directory '" + parentFile + "' could not be created");
            }
        } else {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canWrite()) {
                throw new IOException("File '" + file + "' cannot be written to");
            }
        }
        return new FileOutputStream(file, z);
    }

    public static byte[] readFileToByteArray(File file) throws IOException {
        FileInputStream fileInputStream;
        try {
            fileInputStream = openInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            byte[] byteArray = IOUtils.toByteArray(fileInputStream);
            IOUtils.closeQuietly((InputStream) fileInputStream);
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((InputStream) fileInputStream);
            throw th;
        }
    }

    @Deprecated
    public static String readFileToString(File file) throws IOException {
        return readFileToString(file, Charset.defaultCharset());
    }

    public static String readFileToString(File file, String str) throws IOException {
        return readFileToString(file, Charsets.toCharset(str));
    }

    public static String readFileToString(File file, Charset charset) throws IOException {
        FileInputStream fileInputStream;
        try {
            fileInputStream = openInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            String iOUtils = IOUtils.toString(fileInputStream, Charsets.toCharset(charset));
            IOUtils.closeQuietly((InputStream) fileInputStream);
            return iOUtils;
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((InputStream) fileInputStream);
            throw th;
        }
    }

    @Deprecated
    public static List<String> readLines(File file) throws IOException {
        return readLines(file, Charset.defaultCharset());
    }

    public static List<String> readLines(File file, String str) throws IOException {
        return readLines(file, Charsets.toCharset(str));
    }

    public static List<String> readLines(File file, Charset charset) throws IOException {
        FileInputStream fileInputStream;
        try {
            fileInputStream = openInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            List<String> readLines = IOUtils.readLines(fileInputStream, Charsets.toCharset(charset));
            IOUtils.closeQuietly((InputStream) fileInputStream);
            return readLines;
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((InputStream) fileInputStream);
            throw th;
        }
    }

    private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter iOFileFilter) {
        return iOFileFilter == null ? FalseFileFilter.INSTANCE : FileFilterUtils.and(iOFileFilter, DirectoryFileFilter.INSTANCE);
    }

    private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter iOFileFilter) {
        return FileFilterUtils.and(iOFileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE));
    }

    public static long sizeOf(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectory0(file) : file.length();
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    private static long sizeOf0(File file) {
        return file.isDirectory() ? sizeOfDirectory0(file) : file.length();
    }

    public static BigInteger sizeOfAsBigInteger(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectoryBig0(file) : BigInteger.valueOf(file.length());
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    private static BigInteger sizeOfBig0(File file) {
        return file.isDirectory() ? sizeOfDirectoryBig0(file) : BigInteger.valueOf(file.length());
    }

    public static long sizeOfDirectory(File file) {
        checkDirectory(file);
        return sizeOfDirectory0(file);
    }

    private static long sizeOfDirectory0(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0L;
        }
        long j = 0;
        for (File file2 : listFiles) {
            try {
                if (isSymlink(file2)) {
                    continue;
                } else {
                    long sizeOf0 = j + sizeOf0(file2);
                    if (sizeOf0 < 0) {
                        return sizeOf0;
                    }
                    j = sizeOf0;
                }
            } catch (IOException unused) {
            }
        }
        return j;
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(File file) {
        checkDirectory(file);
        return sizeOfDirectoryBig0(file);
    }

    private static BigInteger sizeOfDirectoryBig0(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return BigInteger.ZERO;
        }
        BigInteger bigInteger = BigInteger.ZERO;
        for (File file2 : listFiles) {
            try {
                if (!isSymlink(file2)) {
                    bigInteger = bigInteger.add(sizeOfBig0(file2));
                }
            } catch (IOException unused) {
            }
        }
        return bigInteger;
    }

    public static File toFile(URL url) {
        if (url == null || !"file".equalsIgnoreCase(url.getProtocol())) {
            return null;
        }
        return new File(decodeUrl(url.getFile().replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)));
    }

    public static File[] toFiles(URL[] urlArr) {
        if (urlArr == null || urlArr.length == 0) {
            return EMPTY_FILE_ARRAY;
        }
        File[] fileArr = new File[urlArr.length];
        for (int i = 0; i < urlArr.length; i++) {
            URL url = urlArr[i];
            if (url != null) {
                if (!url.getProtocol().equals("file")) {
                    throw new IllegalArgumentException("URL could not be converted to a File: " + url);
                }
                fileArr[i] = toFile(url);
            }
        }
        return fileArr;
    }

    private static String[] toSuffixes(String[] strArr) {
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = "." + strArr[i];
        }
        return strArr2;
    }

    public static URL[] toURLs(File[] fileArr) throws IOException {
        URL[] urlArr = new URL[fileArr.length];
        for (int i = 0; i < urlArr.length; i++) {
            urlArr[i] = fileArr[i].toURI().toURL();
        }
        return urlArr;
    }

    public static void touch(File file) throws IOException {
        if (!file.exists()) {
            IOUtils.closeQuietly((OutputStream) openOutputStream(file));
        }
        if (file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        throw new IOException("Unable to set the last modification time for " + file);
    }

    private static void validateListFilesParameters(File file, IOFileFilter iOFileFilter) {
        if (file.isDirectory()) {
            if (iOFileFilter == null) {
                throw new NullPointerException("Parameter 'fileFilter' is null");
            }
        } else {
            throw new IllegalArgumentException("Parameter 'directory' is not a directory: " + file);
        }
    }

    private static File[] verifiedListFiles(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            return listFiles;
        }
        throw new IOException("Failed to list contents of " + file);
    }

    public static boolean waitFor(File file, int i) {
        long currentTimeMillis = System.currentTimeMillis() + (i * 1000);
        boolean z = false;
        while (!file.exists()) {
            try {
                long currentTimeMillis2 = currentTimeMillis - System.currentTimeMillis();
                if (currentTimeMillis2 < 0) {
                    return false;
                }
                try {
                    Thread.sleep(Math.min(100L, currentTimeMillis2));
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Exception unused2) {
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return true;
    }

    @Deprecated
    public static void write(File file, CharSequence charSequence) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), false);
    }

    public static void write(File file, CharSequence charSequence, String str) throws IOException {
        write(file, charSequence, str, false);
    }

    public static void write(File file, CharSequence charSequence, String str, boolean z) throws IOException {
        write(file, charSequence, Charsets.toCharset(str), z);
    }

    public static void write(File file, CharSequence charSequence, Charset charset) throws IOException {
        write(file, charSequence, charset, false);
    }

    public static void write(File file, CharSequence charSequence, Charset charset, boolean z) throws IOException {
        writeStringToFile(file, charSequence == null ? null : charSequence.toString(), charset, z);
    }

    @Deprecated
    public static void write(File file, CharSequence charSequence, boolean z) throws IOException {
        write(file, charSequence, Charset.defaultCharset(), z);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr) throws IOException {
        writeByteArrayToFile(file, bArr, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, int i, int i2) throws IOException {
        writeByteArrayToFile(file, bArr, i, i2, false);
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, int i, int i2, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = openOutputStream(file, z);
            try {
                fileOutputStream.write(bArr, i, i2);
                fileOutputStream.close();
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    public static void writeByteArrayToFile(File file, byte[] bArr, boolean z) throws IOException {
        writeByteArrayToFile(file, bArr, 0, bArr.length, z);
    }

    public static void writeLines(File file, String str, Collection<?> collection) throws IOException {
        writeLines(file, str, collection, null, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2) throws IOException {
        writeLines(file, str, collection, str2, false);
    }

    public static void writeLines(File file, String str, Collection<?> collection, String str2, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = openOutputStream(file, z);
        } catch (Throwable th) {
            th = th;
            fileOutputStream = null;
        }
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            IOUtils.writeLines(collection, str2, bufferedOutputStream, str);
            bufferedOutputStream.flush();
            fileOutputStream.close();
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            throw th;
        }
    }

    public static void writeLines(File file, String str, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, str, collection, null, z);
    }

    public static void writeLines(File file, Collection<?> collection) throws IOException {
        writeLines(file, null, collection, null, false);
    }

    public static void writeLines(File file, Collection<?> collection, String str) throws IOException {
        writeLines(file, null, collection, str, false);
    }

    public static void writeLines(File file, Collection<?> collection, String str, boolean z) throws IOException {
        writeLines(file, null, collection, str, z);
    }

    public static void writeLines(File file, Collection<?> collection, boolean z) throws IOException {
        writeLines(file, null, collection, null, z);
    }

    @Deprecated
    public static void writeStringToFile(File file, String str) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), false);
    }

    public static void writeStringToFile(File file, String str, String str2) throws IOException {
        writeStringToFile(file, str, str2, false);
    }

    public static void writeStringToFile(File file, String str, String str2, boolean z) throws IOException {
        writeStringToFile(file, str, Charsets.toCharset(str2), z);
    }

    public static void writeStringToFile(File file, String str, Charset charset) throws IOException {
        writeStringToFile(file, str, charset, false);
    }

    public static void writeStringToFile(File file, String str, Charset charset, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = openOutputStream(file, z);
            try {
                IOUtils.write(str, (OutputStream) fileOutputStream, charset);
                fileOutputStream.close();
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    @Deprecated
    public static void writeStringToFile(File file, String str, boolean z) throws IOException {
        writeStringToFile(file, str, Charset.defaultCharset(), z);
    }
}
