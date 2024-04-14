package com.core.util.share;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SharedPreferenceProvider extends ContentProvider {

    /* renamed from: a */
    private Map<String, InterfaceC1122a> f3816a = new ArrayMap();

    /* renamed from: b */
    private InterfaceC1122a f3817b = new InterfaceC1122a() { // from class: com.core.util.share.SharedPreferenceProvider.1
        @Override // com.core.util.share.SharedPreferenceProvider.InterfaceC1122a
        /* renamed from: a */
        public final Bundle mo4146a(@Nullable String str, @Nullable Bundle bundle) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(C1124b.f3848g, Process.myPid());
            return bundle2;
        }
    };

    /* renamed from: c */
    private InterfaceC1122a f3818c = new InterfaceC1122a() { // from class: com.core.util.share.SharedPreferenceProvider.2
        @Override // com.core.util.share.SharedPreferenceProvider.InterfaceC1122a
        /* renamed from: a */
        public final Bundle mo4146a(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            String string = bundle.getString("key_key");
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            int i = bundle.getInt("key_value_type");
            switch (i) {
                case 1:
                    bundle.putString("key_value", sharedPreferences.getString(string, bundle.getString("key_value")));
                    return bundle;
                case 2:
                    bundle.putInt("key_value", sharedPreferences.getInt(string, bundle.getInt("key_value")));
                    return bundle;
                case 3:
                    bundle.putLong("key_value", sharedPreferences.getLong(string, bundle.getLong("key_value")));
                    return bundle;
                case 4:
                    bundle.putFloat("key_value", sharedPreferences.getFloat(string, bundle.getFloat("key_value")));
                    return bundle;
                case 5:
                    bundle.putBoolean("key_value", sharedPreferences.getBoolean(string, bundle.getBoolean("key_value")));
                    return bundle;
                case 6:
                    Set<String> stringSet = sharedPreferences.getStringSet(string, null);
                    bundle.putStringArrayList("key_value", stringSet != null ? new ArrayList<>(stringSet) : null);
                    return bundle;
                default:
                    throw new IllegalArgumentException("unknown valueType:" + i);
            }
        }
    };

    /* renamed from: d */
    private InterfaceC1122a f3819d = new InterfaceC1122a() { // from class: com.core.util.share.SharedPreferenceProvider.3
        @Override // com.core.util.share.SharedPreferenceProvider.InterfaceC1122a
        /* renamed from: a */
        public final Bundle mo4146a(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            bundle.putBoolean(C1124b.f3848g, context.getSharedPreferences(str, 0).contains(bundle.getString("key_key")));
            return bundle;
        }
    };

    /* renamed from: e */
    private InterfaceC1122a f3820e = new InterfaceC1122a() { // from class: com.core.util.share.SharedPreferenceProvider.4
        /* renamed from: a */
        private static SharedPreferences.Editor m4147a(SharedPreferences.Editor editor, Bundle bundle) {
            String string = bundle.getString("key_key");
            int i = bundle.getInt("key_value_type");
            switch (i) {
                case 1:
                    return editor.putString(string, bundle.getString("key_value"));
                case 2:
                    return editor.putInt(string, bundle.getInt("key_value"));
                case 3:
                    return editor.putLong(string, bundle.getLong("key_value"));
                case 4:
                    return editor.putFloat(string, bundle.getFloat("key_value"));
                case 5:
                    return editor.putBoolean(string, bundle.getBoolean("key_value"));
                case 6:
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("key_value");
                    return stringArrayList == null ? editor.putStringSet(string, null) : editor.putStringSet(string, new HashSet(stringArrayList));
                default:
                    throw new IllegalArgumentException("unknown valueType:" + i);
            }
        }

        @Override // com.core.util.share.SharedPreferenceProvider.InterfaceC1122a
        /* renamed from: a */
        public final Bundle mo4146a(@Nullable String str, @Nullable Bundle bundle) {
            if (bundle == null) {
                throw new IllegalArgumentException("methodQueryValues, extras is null!");
            }
            Context context = SharedPreferenceProvider.this.getContext();
            if (context == null) {
                throw new IllegalArgumentException("methodQueryValues, ctx is null!");
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(C1124b.f3848g);
            if (parcelableArrayList == null) {
                parcelableArrayList = new ArrayList();
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            Iterator it = parcelableArrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    int i = bundle.getInt("key_op_type");
                    if (i == 6) {
                        edit.apply();
                        return null;
                    }
                    if (i != 5) {
                        throw new IllegalArgumentException("unknown applyOrCommit:" + i);
                    }
                    boolean commit = edit.commit();
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean(C1124b.f3848g, commit);
                    return bundle2;
                }
                Bundle bundle3 = (Bundle) it.next();
                int i2 = bundle3.getInt("key_op_type");
                switch (i2) {
                    case 2:
                        String string = bundle3.getString("key_key");
                        int i3 = bundle3.getInt("key_value_type");
                        switch (i3) {
                            case 1:
                                edit = edit.putString(string, bundle3.getString("key_value"));
                                break;
                            case 2:
                                edit = edit.putInt(string, bundle3.getInt("key_value"));
                                break;
                            case 3:
                                edit = edit.putLong(string, bundle3.getLong("key_value"));
                                break;
                            case 4:
                                edit = edit.putFloat(string, bundle3.getFloat("key_value"));
                                break;
                            case 5:
                                edit = edit.putBoolean(string, bundle3.getBoolean("key_value"));
                                break;
                            case 6:
                                ArrayList<String> stringArrayList = bundle3.getStringArrayList("key_value");
                                edit = edit.putStringSet(string, stringArrayList != null ? new HashSet(stringArrayList) : null);
                                break;
                            default:
                                throw new IllegalArgumentException("unknown valueType:" + i3);
                        }
                    case 3:
                        edit = edit.clear();
                        break;
                    case 4:
                        edit = edit.remove(bundle3.getString("key_key"));
                        break;
                    default:
                        throw new IllegalArgumentException("unkonw op type:" + i2);
                }
            }
        }
    };

    /* renamed from: com.core.util.share.SharedPreferenceProvider$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1122a {
        /* renamed from: a */
        Bundle mo4146a(@Nullable String str, @Nullable Bundle bundle);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, @Nullable String str2, @Nullable Bundle bundle) {
        InterfaceC1122a interfaceC1122a = this.f3816a.get(str);
        if (interfaceC1122a == null) {
            return null;
        }
        return interfaceC1122a.mo4146a(str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f3816a.put(C1124b.f3845d, this.f3818c);
        this.f3816a.put(C1124b.f3842a, this.f3819d);
        this.f3816a.put(C1124b.f3846e, this.f3820e);
        this.f3816a.put(C1124b.f3847f, this.f3817b);
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
