package com.cyjh.elfin.p077e.p080c;

import android.os.AsyncTask;
import com.cyjh.elfin.base.AppContext;
import com.cyjh.elfin.p073a.C1225b;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* renamed from: com.cyjh.elfin.e.c.h */
/* loaded from: classes.dex */
public final class C1257h {

    /* renamed from: a */
    private static final Pattern f4679a = Pattern.compile("[\\w%+,./=_-]+");

    /* renamed from: com.cyjh.elfin.e.c.h$a */
    /* loaded from: classes.dex */
    public static class a implements FilenameFilter {

        /* renamed from: a */
        private String f4680a;

        private a(String str) {
            this.f4680a = str;
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.endsWith(this.f4680a);
        }
    }

    /* renamed from: com.cyjh.elfin.e.c.h$b */
    /* loaded from: classes.dex */
    public static class b extends AsyncTask<File[], ArrayList<HashMap<String, Integer>>, ArrayList<HashMap<String, Boolean>>> {

        /* renamed from: a */
        private a f4681a;

        /* renamed from: com.cyjh.elfin.e.c.h$b$a */
        /* loaded from: classes.dex */
        public interface a {
            /* renamed from: a */
            void m5711a();
        }

        /* renamed from: a */
        private static ArrayList<HashMap<String, Boolean>> m5707a(File[]... fileArr) {
            new ArrayList(fileArr[0].length);
            for (int i = 0; i < fileArr[0].length; i++) {
                C1257h.m5698a(fileArr[0][i], fileArr[1][i]);
            }
            return null;
        }

        /* renamed from: a */
        private void m5708a(a aVar) {
            this.f4681a = aVar;
        }

        /* renamed from: a */
        private void m5709a(ArrayList<HashMap<String, Boolean>> arrayList) {
            super.onPostExecute(arrayList);
        }

        /* renamed from: a */
        private void m5710a(ArrayList<HashMap<String, Integer>>... arrayListArr) {
            super.onProgressUpdate(arrayListArr);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ ArrayList<HashMap<String, Boolean>> doInBackground(File[][] fileArr) {
            File[][] fileArr2 = fileArr;
            new ArrayList(fileArr2[0].length);
            for (int i = 0; i < fileArr2[0].length; i++) {
                C1257h.m5698a(fileArr2[0][i], fileArr2[1][i]);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(ArrayList<HashMap<String, Boolean>> arrayList) {
            super.onPostExecute(arrayList);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onProgressUpdate(ArrayList<HashMap<String, Integer>>[] arrayListArr) {
            super.onProgressUpdate(arrayListArr);
        }
    }

    /* renamed from: a */
    private static File m5692a() {
        File file = new File(C1225b.m5336a(AppContext.m5350a()));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    private static String m5693a(long j) {
        StringBuilder sb;
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j < 1024) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j));
            str = "B";
        } else if (j < 1048576) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1024.0d));
            str = "KB";
        } else if (j < FileUtils.ONE_GB) {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1048576.0d));
            str = "MB";
        } else {
            sb = new StringBuilder();
            sb.append(decimalFormat.format(j / 1.073741824E9d));
            str = "G";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: a */
    private static String m5694a(File file) {
        int read;
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            do {
                read = bufferedReader.read();
                if (read != -1) {
                    stringBuffer.append((char) read);
                }
            } while (read != -1);
            bufferedReader.close();
            String stringBuffer2 = stringBuffer.toString();
            int indexOf = stringBuffer2.indexOf(IOUtils.LINE_SEPARATOR_WINDOWS);
            int indexOf2 = stringBuffer2.indexOf("\r");
            if (indexOf != -1) {
                str = IOUtils.LINE_SEPARATOR_WINDOWS;
            } else {
                if (indexOf2 == -1) {
                    return stringBuffer2;
                }
                str = "\r";
            }
            return stringBuffer2.replaceAll(str, "\n");
        } catch (IOException | OutOfMemoryError unused) {
            return null;
        }
    }

    /* renamed from: a */
    private static String m5695a(File file, int i, String str) throws IOException {
        String str2;
        String str3;
        int read;
        int read2;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            long length = file.length();
            if (i <= 0 && (length <= 0 || i != 0)) {
                if (i < 0) {
                    byte[] bArr = null;
                    byte[] bArr2 = null;
                    boolean z = false;
                    while (true) {
                        if (bArr != null) {
                            z = true;
                        }
                        if (bArr == null) {
                            bArr = new byte[-i];
                        }
                        read2 = bufferedInputStream.read(bArr);
                        if (read2 != bArr.length) {
                            break;
                        }
                        byte[] bArr3 = bArr2;
                        bArr2 = bArr;
                        bArr = bArr3;
                    }
                    if (bArr2 != null || read2 > 0) {
                        if (bArr2 == null) {
                            str3 = new String(bArr, 0, read2);
                            return str3;
                        }
                        if (read2 > 0) {
                            System.arraycopy(bArr2, read2, bArr2, 0, bArr2.length - read2);
                            System.arraycopy(bArr, 0, bArr2, bArr2.length - read2, read2);
                            z = true;
                        }
                        if (str != null && z) {
                            str2 = str + new String(bArr2);
                        }
                        str2 = new String(bArr2);
                    }
                    str2 = "";
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr4 = new byte[1024];
                    do {
                        read = bufferedInputStream.read(bArr4);
                        if (read > 0) {
                            byteArrayOutputStream.write(bArr4, 0, read);
                        }
                    } while (read == 1024);
                    str2 = byteArrayOutputStream.toString();
                }
                return str2;
            }
            if (length > 0 && (i == 0 || length < i)) {
                i = (int) length;
            }
            byte[] bArr5 = new byte[i + 1];
            int read3 = bufferedInputStream.read(bArr5);
            if (read3 <= 0) {
                str2 = "";
                return str2;
            }
            if (read3 <= i) {
                str3 = new String(bArr5, 0, read3);
                return str3;
            }
            if (str == null) {
                return new String(bArr5, 0, i);
            }
            str2 = new String(bArr5, 0, i) + str;
            return str2;
        } finally {
            bufferedInputStream.close();
            fileInputStream.close();
        }
    }

    /* renamed from: a */
    public static String m5696a(String str) {
        return m5706e(new File(m5692a(), str).getAbsolutePath(), "utf-8");
    }

    /* renamed from: a */
    public static void m5697a(String str, String str2) {
        try {
            File file = new File(m5692a(), str);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fileWriter = new FileWriter(file.getAbsolutePath());
            try {
                fileWriter.write(str2);
            } finally {
                fileWriter.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m5698a(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return m5699a(fileInputStream, file2);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static boolean m5699a(InputStream inputStream, File file) {
        try {
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.flush();
                try {
                    fileOutputStream.getFD().sync();
                } catch (IOException unused) {
                }
                fileOutputStream.close();
                return true;
            } catch (Throwable th) {
                fileOutputStream.flush();
                try {
                    fileOutputStream.getFD().sync();
                } catch (IOException unused2) {
                }
                fileOutputStream.close();
                throw th;
            }
        } catch (IOException unused3) {
            return false;
        }
    }

    /* renamed from: b */
    private static String m5700b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
            try {
                if (!file.isDirectory()) {
                    file.createNewFile();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file.getAbsolutePath();
    }

    /* renamed from: b */
    private static String m5701b(String str, String str2) {
        StringBuilder sb;
        if (str.endsWith(File.separator)) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
            sb.append(str);
            str = File.separator;
        }
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: b */
    private static boolean m5702b(File file) {
        return f4679a.matcher(file.getPath()).matches();
    }

    /* renamed from: c */
    private static String m5703c(String str) {
        return m5706e(str, "utf-8");
    }

    /* renamed from: c */
    private static void m5704c(String str, String str2) throws IOException {
        FileWriter fileWriter = new FileWriter(str);
        try {
            fileWriter.write(str2);
        } finally {
            fileWriter.close();
        }
    }

    /* renamed from: d */
    private static boolean m5705d(String str, String str2) {
        StringBuilder sb;
        if (str2 == null) {
            str2 = "";
        }
        if (str == null) {
            str = "";
        }
        if (str.lastIndexOf("/") == str.length() - 1) {
            sb = new StringBuilder();
        } else {
            sb = new StringBuilder();
            sb.append(str);
            str = "/";
        }
        sb.append(str);
        sb.append(str2);
        return new File(sb.toString()).exists();
    }

    /* renamed from: e */
    private static String m5706e(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(str);
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                stringBuffer.append(new String(bArr, 0, read, str2));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
