package com.didi.virtualapk.internal.utils;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.Constants;
import com.didi.virtualapk.internal.LoadedPlugin;
import com.didi.virtualapk.utils.Reflector;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public class PluginUtil {
    public static final String TAG = "VA.NativeLib";

    public static void copyNativeLib(File file, Context context, PackageInfo packageInfo, File file2) throws Exception {
        String str;
        StringBuilder sb;
        long currentTimeMillis = System.currentTimeMillis();
        ZipFile zipFile = new ZipFile(file.getAbsolutePath());
        try {
            if (Build.VERSION.SDK_INT < 21) {
                if (findAndCopyNativeLib(zipFile, context, Build.CPU_ABI, packageInfo, file2)) {
                    zipFile.close();
                    str = TAG;
                    sb = new StringBuilder("Done! +");
                    sb.append(System.currentTimeMillis() - currentTimeMillis);
                    sb.append("ms");
                    Log.d(str, sb.toString());
                }
                findAndCopyNativeLib(zipFile, context, "armeabi", packageInfo, file2);
                zipFile.close();
                str = TAG;
                sb = new StringBuilder("Done! +");
                sb.append(System.currentTimeMillis() - currentTimeMillis);
                sb.append("ms");
                Log.d(str, sb.toString());
            }
            for (String str2 : Build.SUPPORTED_ABIS) {
                if (findAndCopyNativeLib(zipFile, context, str2, packageInfo, file2)) {
                    zipFile.close();
                    str = TAG;
                    sb = new StringBuilder("Done! +");
                    break;
                }
            }
            findAndCopyNativeLib(zipFile, context, "armeabi", packageInfo, file2);
            zipFile.close();
            str = TAG;
            sb = new StringBuilder("Done! +");
            sb.append(System.currentTimeMillis() - currentTimeMillis);
            sb.append("ms");
            Log.d(str, sb.toString());
        } catch (Throwable th) {
            zipFile.close();
            Log.d(TAG, "Done! +" + (System.currentTimeMillis() - currentTimeMillis) + "ms");
            throw th;
        }
    }

    private static void copySo(byte[] bArr, InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read <= 0) {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                outputStream.close();
                bufferedInputStream.close();
                inputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, read);
        }
    }

    private static boolean findAndCopyNativeLib(ZipFile zipFile, Context context, String str, PackageInfo packageInfo, File file) throws Exception {
        Log.d(TAG, "Try to copy plugin's cup arch: " + str);
        String str2 = "lib/" + str + "/";
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        byte[] bArr = null;
        boolean z = false;
        boolean z2 = false;
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            if (name.charAt(0) >= 'l') {
                if (name.charAt(0) > 'l') {
                    break;
                }
                if (z || name.startsWith("lib/")) {
                    if (name.endsWith(".so") && name.startsWith(str2)) {
                        if (bArr == null) {
                            Log.d(TAG, "Found plugin's cup arch dir: " + str);
                            bArr = new byte[8192];
                            z2 = true;
                        }
                        String substring = name.substring(name.lastIndexOf(47) + 1);
                        Log.d(TAG, "verify so " + substring);
                        File file2 = new File(file, substring);
                        String str3 = packageInfo.packageName + "_" + substring;
                        if (file2.exists() && Settings.getSoVersion(context, str3) == packageInfo.versionCode) {
                            Log.d(TAG, "skip existing so : " + nextElement.getName());
                        } else {
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            Log.d(TAG, "copy so " + nextElement.getName() + " of " + str);
                            copySo(bArr, zipFile.getInputStream(nextElement), fileOutputStream);
                            Settings.setSoVersion(context, str3, packageInfo.versionCode);
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            return z2;
        }
        Log.d(TAG, "Fast skip all!");
        return true;
    }

    public static IBinder getBinder(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : (IBinder) Reflector.QuietReflector.with((Object) bundle).method("getIBinder", String.class).call(str);
    }

    public static ComponentName getComponent(Intent intent) {
        String str = null;
        if (intent == null) {
            return null;
        }
        if (!isIntentFromPlugin(intent)) {
            return intent.getComponent();
        }
        String str2 = null;
        for (String str3 : intent.getCategories()) {
            if (str3.startsWith(Constants.CATEGORY_PREFIX_TARGET_PACKAGE)) {
                str = str3.substring(27);
            } else if (str3.startsWith(Constants.CATEGORY_PREFIX_TARGET_ACTIVITY)) {
                str2 = str3.substring(28);
            }
        }
        return new ComponentName(str, str2);
    }

    public static int getTheme(Context context, ComponentName componentName) {
        ActivityInfo activityInfo;
        LoadedPlugin loadedPlugin = PluginManager.getInstance(context).getLoadedPlugin(componentName);
        if (loadedPlugin == null || (activityInfo = loadedPlugin.getActivityInfo(componentName)) == null) {
            return 0;
        }
        if (activityInfo.theme != 0) {
            return activityInfo.theme;
        }
        ApplicationInfo applicationInfo = activityInfo.applicationInfo;
        return (applicationInfo == null || applicationInfo.theme == 0) ? selectDefaultTheme(0, Build.VERSION.SDK_INT) : applicationInfo.theme;
    }

    public static int getTheme(Context context, Intent intent) {
        return getTheme(context, getComponent(intent));
    }

    public static void hookActivityResources(Activity activity, String str) {
        if (Build.VERSION.SDK_INT < 21 || !isVivo(activity.getResources())) {
            try {
                Context baseContext = activity.getBaseContext();
                Resources resources = PluginManager.getInstance(activity).getLoadedPlugin(str).getResources();
                if (resources != null) {
                    Reflector.with(baseContext).field("mResources").set(resources);
                    Resources.Theme newTheme = resources.newTheme();
                    newTheme.setTo(activity.getTheme());
                    Reflector with = Reflector.with(activity);
                    newTheme.applyStyle(((Integer) with.field("mThemeResource").get()).intValue(), true);
                    with.field("mTheme").set(newTheme);
                    with.field("mResources").set(resources);
                }
            } catch (Exception e) {
                Log.w(Constants.TAG, e);
            }
        }
    }

    public static boolean isIntentFromPlugin(Intent intent) {
        if (intent == null || intent.getCategories() == null) {
            return false;
        }
        Iterator<String> it = intent.getCategories().iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(Constants.CATEGORY_PREFIX)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isLocalService(ServiceInfo serviceInfo) {
        return TextUtils.isEmpty(serviceInfo.processName) || serviceInfo.applicationInfo.packageName.equals(serviceInfo.processName);
    }

    public static boolean isVivo(Resources resources) {
        return resources.getClass().getName().equals("android.content.res.VivoResources");
    }

    public static void putBinder(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            Reflector.QuietReflector.with((Object) bundle).method("putIBinder", String.class, IBinder.class).call(str, iBinder);
        }
    }

    public static int selectDefaultTheme(int i, int i2) {
        return selectSystemTheme(i, i2, R.style.Theme, R.style.Theme.Holo, R.style.Theme.DeviceDefault, R.style.Theme.DeviceDefault.Light.DarkActionBar);
    }

    public static int selectSystemTheme(int i, int i2, int i3, int i4, int i5, int i6) {
        return i != 0 ? i : i2 < 11 ? i3 : i2 < 14 ? i4 : i2 < 24 ? i5 : i6;
    }
}
