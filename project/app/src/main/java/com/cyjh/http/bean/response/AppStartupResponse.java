package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AppStartupResponse implements Parcelable {
    public static final Parcelable.Creator<AppStartupResponse> CREATOR = new Parcelable.Creator<AppStartupResponse>() { // from class: com.cyjh.http.bean.response.AppStartupResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppStartupResponse createFromParcel(Parcel parcel) {
            return new AppStartupResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AppStartupResponse[] newArray(int i) {
            return new AppStartupResponse[i];
        }
    };
    public AppRelatedInfo AppInfo;
    public AuthorRelatedInfo AuthorInfo;
    public long ClientTimestamp;
    public long ServerTimestamp;

    protected AppStartupResponse(Parcel parcel) {
        this.ClientTimestamp = parcel.readLong();
        this.ServerTimestamp = parcel.readLong();
        this.AuthorInfo = (AuthorRelatedInfo) parcel.readParcelable(AuthorRelatedInfo.class.getClassLoader());
        this.AppInfo = (AppRelatedInfo) parcel.readParcelable(AppRelatedInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeLong(this.ServerTimestamp);
        parcel.writeParcelable(this.AuthorInfo, i);
        parcel.writeParcelable(this.AppInfo, i);
    }
}
