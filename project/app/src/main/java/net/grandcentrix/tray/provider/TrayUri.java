package net.grandcentrix.tray.provider;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import net.grandcentrix.tray.core.TrayStorage;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TrayUri {
    private final Uri mContentUri;
    private final Uri mContentUriInternal;
    private Context mContext;

    /* loaded from: classes2.dex */
    public final class Builder {
        private boolean mInternal;
        private String mKey;
        private String mModule;
        private TrayStorage.Type mType = TrayStorage.Type.UNDEFINED;

        public Builder(Context context) {
            TrayUri.this.mContext = context.getApplicationContext();
        }

        public final Uri build() {
            Uri.Builder buildUpon = (this.mInternal ? TrayUri.this.mContentUriInternal : TrayUri.this.mContentUri).buildUpon();
            if (this.mModule != null) {
                buildUpon.appendPath(this.mModule);
            }
            if (this.mKey != null) {
                buildUpon.appendPath(this.mKey);
            }
            if (this.mType != TrayStorage.Type.UNDEFINED) {
                buildUpon.appendQueryParameter("backup", TrayStorage.Type.USER.equals(this.mType) ? "true" : "false");
            }
            return buildUpon.build();
        }

        public final Builder setInternal(boolean z) {
            this.mInternal = z;
            return this;
        }

        public final Builder setKey(String str) {
            this.mKey = str;
            return this;
        }

        public final Builder setModule(String str) {
            this.mModule = str;
            return this;
        }

        public final Builder setType(TrayStorage.Type type) {
            this.mType = type;
            return this;
        }
    }

    public TrayUri(@NonNull Context context) {
        this.mContext = context;
        this.mContentUri = TrayContract.generateContentUri(context);
        this.mContentUriInternal = TrayContract.generateInternalContentUri(context);
    }

    public Builder builder() {
        return new Builder(this.mContext);
    }

    public Uri get() {
        return this.mContentUri;
    }

    public Uri getInternal() {
        return this.mContentUriInternal;
    }
}
