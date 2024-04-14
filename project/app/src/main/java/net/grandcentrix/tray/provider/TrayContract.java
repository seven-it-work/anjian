package net.grandcentrix.tray.provider;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Process;
import android.provider.BaseColumns;
import android.support.annotation.NonNull;
import android.util.Log;
import java.util.List;
import net.grandcentrix.tray.C2709R;
import net.grandcentrix.tray.core.TrayLog;
import net.grandcentrix.tray.core.TrayRuntimeException;

/* loaded from: classes2.dex */
class TrayContract {
    static String sAuthority;

    /* loaded from: classes2.dex */
    public interface InternalPreferences extends Preferences {
        public static final String BASE_PATH = "internal_preferences";
    }

    /* loaded from: classes2.dex */
    public interface Preferences {
        public static final String BASE_PATH = "preferences";

        /* loaded from: classes2.dex */
        public interface Columns extends BaseColumns {
            public static final String CREATED = "CREATED";

            /* renamed from: ID */
            public static final String f10375ID = "_id";
            public static final String KEY = "KEY";
            public static final String MIGRATED_KEY = "MIGRATED_KEY";
            public static final String MODULE = "MODULE";
            public static final String UPDATED = "UPDATED";
            public static final String VALUE = "VALUE";
        }
    }

    TrayContract() {
    }

    private static void checkOldWayToSetAuthority(@NonNull Context context) {
        if ("legacyTrayAuthority".equals(context.getString(C2709R.string.tray__authority))) {
            return;
        }
        Log.e("Tray", "Deprecated way of defining the Tray authority detected\n#########################################\n#########################################\n#########################################\nDon't set the authority with `tray__authority` in your build.gradle.\nTo change the default authority override it inside the AndroidManifest\nSee https://github.com/grandcentrix/tray/wiki/Custom-Authority for instructions\n#########################################\n#########################################\n#########################################\n");
    }

    @NonNull
    public static Uri generateContentUri(@NonNull Context context) {
        return generateContentUri(context, Preferences.BASE_PATH);
    }

    @NonNull
    private static Uri generateContentUri(@NonNull Context context, String str) {
        return Uri.withAppendedPath(Uri.parse("content://" + getAuthority(context)), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Uri generateInternalContentUri(@NonNull Context context) {
        return generateContentUri(context, InternalPreferences.BASE_PATH);
    }

    @NonNull
    private static synchronized String getAuthority(@NonNull Context context) {
        synchronized (TrayContract.class) {
            if (sAuthority != null) {
                return sAuthority;
            }
            checkOldWayToSetAuthority(context);
            List<ProviderInfo> queryContentProviders = context.getPackageManager().queryContentProviders(context.getPackageName(), Process.myUid(), 0);
            if (queryContentProviders != null) {
                for (ProviderInfo providerInfo : queryContentProviders) {
                    if (providerInfo.name.equals(TrayContentProvider.class.getName())) {
                        sAuthority = providerInfo.authority;
                        TrayLog.m12288v("found authority: " + sAuthority);
                        return sAuthority;
                    }
                }
            }
            throw new TrayRuntimeException("Internal tray error. Could not find the provider authority. Please fill an issue at https://github.com/grandcentrix/tray/issues");
        }
    }
}
