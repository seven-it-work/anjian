package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class AuthorRelatedInfo implements Parcelable {
    public static final Parcelable.Creator<AuthorRelatedInfo> CREATOR = new Parcelable.Creator<AuthorRelatedInfo>() { // from class: com.cyjh.http.bean.response.AuthorRelatedInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthorRelatedInfo createFromParcel(Parcel parcel) {
            return new AuthorRelatedInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AuthorRelatedInfo[] newArray(int i) {
            return new AuthorRelatedInfo[i];
        }
    };
    public List<BackgroundSetAdInfo> AdList;
    public String EngineToken;
    public int IsFreeAd;
    public String ServicePackPrompt;
    public int ServicePackStatus;

    protected AuthorRelatedInfo(Parcel parcel) {
        this.ServicePackStatus = parcel.readInt();
        this.ServicePackPrompt = parcel.readString();
        this.IsFreeAd = parcel.readInt();
        this.EngineToken = parcel.readString();
        this.AdList = parcel.createTypedArrayList(BackgroundSetAdInfo.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.ServicePackStatus);
        parcel.writeString(this.ServicePackPrompt);
        parcel.writeInt(this.IsFreeAd);
        parcel.writeString(this.EngineToken);
        parcel.writeTypedList(this.AdList);
    }
}
