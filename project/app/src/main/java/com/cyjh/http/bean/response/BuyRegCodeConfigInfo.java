package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BuyRegCodeConfigInfo implements Parcelable {
    public static final Parcelable.Creator<BuyRegCodeConfigInfo> CREATOR = new Parcelable.Creator<BuyRegCodeConfigInfo>() { // from class: com.cyjh.http.bean.response.BuyRegCodeConfigInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BuyRegCodeConfigInfo createFromParcel(Parcel parcel) {
            return new BuyRegCodeConfigInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BuyRegCodeConfigInfo[] newArray(int i) {
            return new BuyRegCodeConfigInfo[i];
        }
    };
    public String ButtonName;
    public String BuyLinkUrl;

    protected BuyRegCodeConfigInfo(Parcel parcel) {
        this.ButtonName = parcel.readString();
        this.BuyLinkUrl = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.ButtonName);
        parcel.writeString(this.BuyLinkUrl);
    }
}
