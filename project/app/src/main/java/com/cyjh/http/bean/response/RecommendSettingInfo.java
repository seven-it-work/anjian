package com.cyjh.http.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RecommendSettingInfo implements Parcelable {
    public static final Parcelable.Creator<RecommendSettingInfo> CREATOR = new Parcelable.Creator<RecommendSettingInfo>() { // from class: com.cyjh.http.bean.response.RecommendSettingInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RecommendSettingInfo createFromParcel(Parcel parcel) {
            return new RecommendSettingInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RecommendSettingInfo[] newArray(int i) {
            return new RecommendSettingInfo[i];
        }
    };

    /* renamed from: Id */
    public int f5819Id;
    public String LinkUrl;
    public String RecommendType;
    public int Sequence;
    public String Title;

    public RecommendSettingInfo() {
    }

    protected RecommendSettingInfo(Parcel parcel) {
        this.Title = parcel.readString();
        this.f5819Id = parcel.readInt();
        this.RecommendType = parcel.readString();
        this.LinkUrl = parcel.readString();
        this.Sequence = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "RecommendSettingInfo{Title='" + this.Title + "', Id=" + this.f5819Id + ", RecommendType='" + this.RecommendType + "', LinkUrl='" + this.LinkUrl + "', Sequence=" + this.Sequence + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.Title);
        parcel.writeInt(this.f5819Id);
        parcel.writeString(this.RecommendType);
        parcel.writeString(this.LinkUrl);
        parcel.writeInt(this.Sequence);
    }
}
