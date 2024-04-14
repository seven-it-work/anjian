package com.cyjh.common.util;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
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

/* renamed from: com.cyjh.common.util.o */
/* loaded from: classes.dex */
public final class C1172o {

    /* renamed from: a */
    private static final Pattern f4086a = Pattern.compile("[\\w%+,./=_-]+");

    /* renamed from: com.cyjh.common.util.o$a */
    /* loaded from: classes.dex */
    public static class a implements FilenameFilter {

        /* renamed from: a */
        private String f4087a;

        public a(String str) {
            this.f4087a = str;
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.endsWith(this.f4087a);
        }
    }

    /* renamed from: com.cyjh.common.util.o$b */
    /* loaded from: classes.dex */
    public static class b extends AsyncTask<File[], ArrayList<HashMap<String, Integer>>, ArrayList<HashMap<String, Boolean>>> {

        /* renamed from: a */
        private a f4088a;

        /* renamed from: com.cyjh.common.util.o$b$a */
        /* loaded from: classes.dex */
        public interface a {
            /* renamed from: a */
            void m4496a();
        }

        /* renamed from: a */
        private static ArrayList<HashMap<String, Boolean>> m4492a(File[]... fileArr) {
            new ArrayList(fileArr[0].length);
            for (int i = 0; i < fileArr[0].length; i++) {
                C1172o.m4485a(fileArr[0][i], fileArr[1][i]);
            }
            return null;
        }

        /* renamed from: a */
        private void m4493a(a aVar) {
            this.f4088a = aVar;
        }

        /* renamed from: a */
        private void m4494a(ArrayList<HashMap<String, Boolean>> arrayList) {
            super.onPostExecute(arrayList);
        }

        /* renamed from: a */
        private void m4495a(ArrayList<HashMap<String, Integer>>... arrayListArr) {
            super.onProgressUpdate(arrayListArr);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ ArrayList<HashMap<String, Boolean>> doInBackground(File[][] fileArr) {
            File[][] fileArr2 = fileArr;
            new ArrayList(fileArr2[0].length);
            for (int i = 0; i < fileArr2[0].length; i++) {
                C1172o.m4485a(fileArr2[0][i], fileArr2[1][i]);
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
    private static File m4477a(Context context) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + context.getPackageName());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    public static String m4478a(long j) {
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
    public static String m4479a(Context context, String str) {
        return m4491d(new File(m4477a(context), str).getAbsolutePath(), "utf-8");
    }

    /* renamed from: a */
    private static String m4480a(File file) {
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
    public static String m4481a(File file, int i) throws IOException {
        int read;
        String byteArrayOutputStream;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            long length = file.length();
            if (length > 0) {
                if (length > 0) {
                    i = (int) length;
                }
                byte[] bArr = new byte[i + 1];
                int read2 = bufferedInputStream.read(bArr);
                if (read2 > 0) {
                    return read2 <= i ? new String(bArr, 0, read2) : new String(bArr, 0, i);
                }
                byteArrayOutputStream = "";
            } else {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                byte[] bArr2 = new byte[1024];
                do {
                    read = bufferedInputStream.read(bArr2);
                    if (read > 0) {
                        byteArrayOutputStream2.write(bArr2, 0, read);
                    }
                } while (read == 1024);
                byteArrayOutputStream = byteArrayOutputStream2.toString();
            }
            return byteArrayOutputStream;
        } finally {
            bufferedInputStream.close();
            fileInputStream.close();
        }
    }

    /* renamed from: a */
    private static String m4482a(String str) {
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

    /* renamed from: a */
    public static String m4483a(String str, String str2) {
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

    /* renamed from: a */
    public static void m4484a(Context context, String str, String str2) {
        try {
            File file = new File(m4477a(context), str);
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
    public static boolean m4485a(File file, File file2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return m4486a(fileInputStream, file2);
            } finally {
                fileInputStream.close();
            }
        } catch (IOException unused) {
            return false;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static boolean m4486a(InputStream inputStream, File file) {
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
    private static String m4487b(String str) {
        return m4491d(str, "utf-8");
    }

    /* renamed from: b */
    private static void m4488b(String str, String str2) throws IOException {
        FileWriter fileWriter = new FileWriter(str);
        try {
            fileWriter.write(str2);
        } finally {
            fileWriter.close();
        }
    }

    /* renamed from: b */
    private static boolean m4489b(File file) {
        return f4086a.matcher(file.getPath()).matches();
    }

    /* renamed from: c */
    private static boolean m4490c(String str, String str2) {
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

    /* renamed from: d */
    private static String m4491d(String str, String str2) {
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
