package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DeviceInfo implements Parcelable {
    public static final Parcelable.Creator<DeviceInfo> CREATOR = new Parcelable.Creator<DeviceInfo>() { // from class: com.cyjh.http.bean.request.DeviceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DeviceInfo createFromParcel(Parcel parcel) {
            return new DeviceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final DeviceInfo[] newArray(int i) {
            return new DeviceInfo[i];
        }
    };
    public String DeviceCode;
    public String DeviceId;

    public DeviceInfo() {
    }

    protected DeviceInfo(Parcel parcel) {
        this.DeviceCode = parcel.readString();
        this.DeviceId = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.DeviceCode);
        parcel.writeString(this.DeviceId);
    }
}
