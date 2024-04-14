package bin.mt.signature;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.umeng.analytics.pro.C2428c;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.lsposed.hiddenapibypass.HiddenApiBypass;

/* loaded from: classes3.dex */
public class KillerApplication extends Application {
    public static final String URL = "https://github.com/L-JINBIN/ApkSignatureKillerEx";

    static {
        killPM("com.hjol", "MIIEITCCAwmgAwIBAgIET0ouDjANBgkqhkiG9w0BAQsFADCBvzELMAkGA1UEBhMCQ04xDzANBgNV\nBAgMBuS4iua1tzESMBAGA1UEBwwJ6Ze16KGM5Yy6MS0wKwYDVQQKDCTkuIrmtbfmiLTmgJ3ova/k\nu7bmioDmnK/mnInpmZDlhazlj7gxLTArBgNVBAsMJOS4iua1t+aItOaAnei9r+S7tuaKgOacr+ac\niemZkOWFrOWPuDEtMCsGA1UEAwwk5LiK5rW35oi05oCd6L2v5Lu25oqA5pyv5pyJ6ZmQ5YWs5Y+4\nMCAXDTE3MDEwMzA4NTAxNFoYDzIxMTYxMjEwMDg1MDE0WjCBvzELMAkGA1UEBhMCQ04xDzANBgNV\nBAgMBuS4iua1tzESMBAGA1UEBwwJ6Ze16KGM5Yy6MS0wKwYDVQQKDCTkuIrmtbfmiLTmgJ3ova/k\nu7bmioDmnK/mnInpmZDlhazlj7gxLTArBgNVBAsMJOS4iua1t+aItOaAnei9r+S7tuaKgOacr+ac\niemZkOWFrOWPuDEtMCsGA1UEAwwk5LiK5rW35oi05oCd6L2v5Lu25oqA5pyv5pyJ6ZmQ5YWs5Y+4\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsi1SmzWMua12FadUkpHol09L5mMjIp9x\n/XD5d8cHoW6LXNWu/O6VJBHWwlUhgXK8AoXAbSuiFKMc4UWhUWdDae9opVzY9AOVLNOi/6Q8I9gC\nksLUW7Splvn5nq3R1Dsl+D/A+8p2aa1T5s89GQdIjrdLSeZircsTQAxHNXR2O3jAX7CCkiJ73+WY\nNjaRKI6m9HtxrnJTRn4CKBJh04jRvuZNeW7Tpx+5OxBynJOqBsHlUg4+88kj7xeWOlMv6MagLaUE\nPnQKod5AmF6MXVeP42Xwtai16gaFAgQSpzLug6qwfR7Z6qkCdva2AFVTgNzqVP/8D5j2hyADrKAG\nDR5aQQIDAQABoyEwHzAdBgNVHQ4EFgQUkostOCkI30in3NcKgI+b7toZ08IwDQYJKoZIhvcNAQEL\nBQADggEBAALEU0zloyHPnfK3a4pFD9BJQ4lTe00MHY0vMMMiKtlEQeJeKGAB92yFll70EKrf7zXm\nFU7l+7gNKi225eOX79Y9+LU1GJrHCkyzpsw/3NQ/hAKzEBna57aSP+EPJ7BdB1/2haflsZbhfD92\nqMtZH3fEPljvWqIq4aGcUK8New5rtVwqN0+rCktjO7219f0opn425k/P3T2XOujw1OZ1i6tC8ing\n6WooD+WE8phX1MFn6RYtIlxknvHCZLdcN1rEICxlbmQDQcVXjnjZFFVVo/X43zdLFZ13AewEs9EN\nlzzi/PwZw0j9F1+oSlwukOh3aarifuaZZLNsncqeLzCYGIQ=\n");
        killOpen("com.hjol");
    }

    private static Field findField(Class<?> cls, String str) throws NoSuchFieldException {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e) {
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls.equals(Object.class)) {
                    break;
                }
                try {
                    Field declaredField2 = cls.getDeclaredField(str);
                    declaredField2.setAccessible(true);
                    return declaredField2;
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e;
        }
    }

    private static String getApkPath(String str) {
        String str2;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
            do {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        return null;
                    }
                    str2 = readLine.split("\\s+")[r1.length - 1];
                } finally {
                }
            } while (!isApkPath(str, str2));
            bufferedReader.close();
            return str2;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static File getDataFile(String str) {
        String name = Environment.getExternalStorageDirectory().getName();
        if (name.matches("\\d+")) {
            File file = new File("/data/user/" + name + "/" + str);
            if (file.canWrite()) {
                return file;
            }
        }
        return new File(C2428c.f9003a + str);
    }

    private static native void hookApkPath(String str, String str2);

    private static boolean isApkPath(String str, String str2) {
        if (str2.startsWith("/") && str2.endsWith(".apk")) {
            String[] split = str2.substring(1).split("/", 6);
            int length = split.length;
            if (length == 4 || length == 5) {
                if (split[0].equals("data") && split[1].equals("app") && split[length - 1].equals("base.apk")) {
                    return split[length - 2].startsWith(str);
                }
                if (split[0].equals("mnt") && split[1].equals("asec") && split[length - 1].equals("pkg.apk")) {
                    return split[length - 2].startsWith(str);
                }
            } else if (length == 3) {
                if (split[0].equals("data") && split[1].equals("app")) {
                    return split[2].startsWith(str);
                }
            } else if (length == 6 && split[0].equals("mnt") && split[1].equals("expand") && split[3].equals("app") && split[5].equals("base.apk")) {
                return split[4].endsWith(str);
            }
        }
        return false;
    }

    private static void killOpen(String str) {
        try {
            System.loadLibrary("SignatureKiller");
            String apkPath = getApkPath(str);
            if (apkPath == null) {
                System.err.println("Get apk path failed");
                return;
            }
            File file = new File(apkPath);
            File file2 = new File(getDataFile(str), "origin.apk");
            try {
                ZipFile zipFile = new ZipFile(file);
                try {
                    ZipEntry entry = zipFile.getEntry("assets/SignatureKiller/origin.apk");
                    if (entry == null) {
                        System.err.println("Entry not found: assets/SignatureKiller/origin.apk");
                        zipFile.close();
                        return;
                    }
                    if (!file2.exists() || file2.length() != entry.getSize()) {
                        InputStream inputStream = zipFile.getInputStream(entry);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] bArr = new byte[102400];
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    } else {
                                        fileOutputStream.write(bArr, 0, read);
                                    }
                                }
                                fileOutputStream.close();
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } finally {
                            }
                        } finally {
                        }
                    }
                    zipFile.close();
                    hookApkPath(file.getAbsolutePath(), file2.getAbsolutePath());
                } finally {
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable unused) {
            System.err.println("Load SignatureKiller library failed");
        }
    }

    private static void killPM(final String str, String str2) {
        final Signature signature = new Signature(Base64.decode(str2, 0));
        final Parcelable.Creator creator = PackageInfo.CREATOR;
        try {
            findField(PackageInfo.class, "CREATOR").set(null, new Parcelable.Creator<PackageInfo>() { // from class: bin.mt.signature.KillerApplication.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public PackageInfo createFromParcel(Parcel parcel) {
                    Signature[] apkContentsSigners;
                    PackageInfo packageInfo = (PackageInfo) creator.createFromParcel(parcel);
                    if (packageInfo.packageName.equals(str)) {
                        if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                            packageInfo.signatures[0] = signature;
                        }
                        if (Build.VERSION.SDK_INT >= 28 && packageInfo.signingInfo != null && (apkContentsSigners = packageInfo.signingInfo.getApkContentsSigners()) != null && apkContentsSigners.length > 0) {
                            apkContentsSigners[0] = signature;
                        }
                    }
                    return packageInfo;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public PackageInfo[] newArray(int i) {
                    return (PackageInfo[]) creator.newArray(i);
                }
            });
            if (Build.VERSION.SDK_INT >= 28) {
                HiddenApiBypass.addHiddenApiExemptions("Landroid/os/Parcel;", "Landroid/content/pm", "Landroid/app");
            }
            try {
                Object obj = findField(PackageManager.class, "sPackageInfoCache").get(null);
                obj.getClass().getMethod("clear", new Class[0]).invoke(obj, new Object[0]);
            } catch (Throwable unused) {
            }
            try {
                ((Map) findField(Parcel.class, "mCreators").get(null)).clear();
            } catch (Throwable unused2) {
            }
            try {
                ((Map) findField(Parcel.class, "sPairedCreators").get(null)).clear();
            } catch (Throwable unused3) {
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
