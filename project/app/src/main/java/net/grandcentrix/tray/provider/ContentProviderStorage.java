package net.grandcentrix.tray.provider;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.cyjh.common.util.C1176s;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import net.grandcentrix.tray.core.OnTrayPreferenceChangeListener;
import net.grandcentrix.tray.core.TrayException;
import net.grandcentrix.tray.core.TrayItem;
import net.grandcentrix.tray.core.TrayLog;
import net.grandcentrix.tray.core.TrayRuntimeException;
import net.grandcentrix.tray.core.TrayStorage;

/* loaded from: classes2.dex */
public class ContentProviderStorage extends TrayStorage {
    public static final String VERSION = "version";
    private final Context mContext;
    WeakHashMap<OnTrayPreferenceChangeListener, Handler> mListeners;
    TrayContentObserver mObserver;
    HandlerThread mObserverThread;
    private final TrayProviderHelper mProviderHelper;
    private volatile boolean mRegisteredContentObserver;
    private final TrayUri mTrayUri;

    /* loaded from: classes2.dex */
    class TrayContentObserver extends ContentObserver {
        public TrayContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            if (uri == null) {
                uri = ContentProviderStorage.this.mTrayUri.builder().setModule(ContentProviderStorage.this.getModuleName()).build();
            }
            final List<TrayItem> queryProviderSafe = ContentProviderStorage.this.mProviderHelper.queryProviderSafe(uri);
            for (Map.Entry entry : new HashSet(ContentProviderStorage.this.mListeners.entrySet())) {
                final OnTrayPreferenceChangeListener onTrayPreferenceChangeListener = (OnTrayPreferenceChangeListener) entry.getKey();
                Handler handler = (Handler) entry.getValue();
                if (handler != null) {
                    handler.post(new Runnable() { // from class: net.grandcentrix.tray.provider.ContentProviderStorage.TrayContentObserver.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onTrayPreferenceChangeListener.onTrayPreferenceChanged(queryProviderSafe);
                        }
                    });
                } else {
                    onTrayPreferenceChangeListener.onTrayPreferenceChanged(queryProviderSafe);
                }
            }
        }
    }

    public ContentProviderStorage(@NonNull Context context, @NonNull String str, @NonNull TrayStorage.Type type) {
        super(str, type);
        this.mListeners = new WeakHashMap<>();
        this.mRegisteredContentObserver = false;
        this.mContext = context.getApplicationContext();
        this.mTrayUri = new TrayUri(this.mContext);
        this.mProviderHelper = new TrayProviderHelper(this.mContext);
    }

    @Override // net.grandcentrix.tray.core.TrayStorage
    public void annex(TrayStorage trayStorage) {
        Iterator<TrayItem> it = trayStorage.getAll().iterator();
        while (it.hasNext()) {
            put(it.next());
        }
        trayStorage.wipe();
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean clear() {
        return this.mProviderHelper.remove(this.mTrayUri.builder().setModule(getModuleName()).setType(getType()).build());
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    @Nullable
    public TrayItem get(@NonNull String str) {
        List<TrayItem> queryProviderSafe = this.mProviderHelper.queryProviderSafe(this.mTrayUri.builder().setType(getType()).setModule(getModuleName()).setKey(str).build());
        int size = queryProviderSafe.size();
        if (size > 1) {
            TrayLog.m12289w("found more than one item for key '" + str + "' in module " + getModuleName() + ". This can be caused by using the same name for a device and user specific preference.");
            for (int i = 0; i < queryProviderSafe.size(); i++) {
                TrayLog.m12285d("item #" + i + C1176s.a.f4108a + queryProviderSafe.get(i));
            }
        }
        if (size > 0) {
            return queryProviderSafe.get(0);
        }
        return null;
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    @NonNull
    public Collection<TrayItem> getAll() {
        return this.mProviderHelper.queryProviderSafe(this.mTrayUri.builder().setType(getType()).setModule(getModuleName()).build());
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public int getVersion() throws TrayException {
        List<TrayItem> queryProvider = this.mProviderHelper.queryProvider(this.mTrayUri.builder().setInternal(true).setType(getType()).setModule(getModuleName()).setKey(VERSION).build());
        if (queryProvider.size() == 0) {
            return 0;
        }
        return Integer.valueOf(queryProvider.get(0).value()).intValue();
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean put(@NonNull String str, @Nullable Object obj) {
        return put(str, null, obj);
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean put(@NonNull String str, @Nullable String str2, @Nullable Object obj) {
        if (getType() == TrayStorage.Type.UNDEFINED) {
            throw new TrayRuntimeException("writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed.");
        }
        return this.mProviderHelper.persist(this.mTrayUri.builder().setType(getType()).setModule(getModuleName()).setKey(str).build(), obj == null ? null : String.valueOf(obj), str2);
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean put(TrayItem trayItem) {
        return put(trayItem.key(), trayItem.migratedKey(), trayItem.value());
    }

    @Override // net.grandcentrix.tray.core.TrayStorage
    @TargetApi(16)
    public synchronized void registerOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener) {
        if (onTrayPreferenceChangeListener == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        this.mListeners.put(onTrayPreferenceChangeListener, myLooper != null ? new Handler(myLooper) : null);
        if (this.mListeners.keySet().size() == 1) {
            this.mObserverThread = new HandlerThread("observer") { // from class: net.grandcentrix.tray.provider.ContentProviderStorage.1
                @Override // android.os.HandlerThread
                protected void onLooperPrepared() {
                    super.onLooperPrepared();
                    ContentProviderStorage.this.mObserver = new TrayContentObserver(new Handler(getLooper()));
                    ContentProviderStorage.this.mContext.getContentResolver().registerContentObserver(ContentProviderStorage.this.mTrayUri.builder().setType(ContentProviderStorage.this.getType()).setModule(ContentProviderStorage.this.getModuleName()).build(), true, ContentProviderStorage.this.mObserver);
                    ContentProviderStorage.this.mRegisteredContentObserver = true;
                }
            };
            this.mObserverThread.start();
            do {
            } while (!this.mRegisteredContentObserver);
            this.mRegisteredContentObserver = false;
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean remove(@NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("null is not valid. use clear or wipe to delete all preferences");
        }
        return this.mProviderHelper.removeAndCount(this.mTrayUri.builder().setType(getType()).setModule(getModuleName()).setKey(str).build()) > 0;
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean setVersion(int i) {
        if (getType() == TrayStorage.Type.UNDEFINED) {
            throw new TrayRuntimeException("writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed.");
        }
        return this.mProviderHelper.persist(this.mTrayUri.builder().setInternal(true).setType(getType()).setModule(getModuleName()).setKey(VERSION).build(), String.valueOf(i));
    }

    @Override // net.grandcentrix.tray.core.TrayStorage
    public void unregisterOnTrayPreferenceChangeListener(@NonNull OnTrayPreferenceChangeListener onTrayPreferenceChangeListener) {
        if (onTrayPreferenceChangeListener == null) {
            return;
        }
        this.mListeners.remove(onTrayPreferenceChangeListener);
        if (this.mListeners.size() == 0) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mObserver);
            this.mObserver = null;
            this.mObserverThread.quit();
            this.mObserverThread = null;
        }
    }

    @Override // net.grandcentrix.tray.core.PreferenceStorage
    public boolean wipe() {
        if (!clear()) {
            return false;
        }
        return this.mProviderHelper.remove(this.mTrayUri.builder().setInternal(true).setType(getType()).setModule(getModuleName()).build());
    }
}
