package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BindRegCodeResponse implements Parcelable {
    public static final Parcelable.Creator<BindRegCodeResponse> CREATOR = new Parcelable.Creator<BindRegCodeResponse>() { // from class: com.cyjh.elfin.entity.BindRegCodeResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BindRegCodeResponse createFromParcel(Parcel parcel) {
            return new BindRegCodeResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BindRegCodeResponse[] newArray(int i) {
            return new BindRegCodeResponse[i];
        }
    };
    public int Code;
    public RegCodeTimeInfo Data;
    public String Message;

    /* loaded from: classes.dex */
    public static class RegCodeTimeInfo implements Parcelable {
        public static final Parcelable.Creator<RegCodeTimeInfo> CREATOR = new Parcelable.Creator<RegCodeTimeInfo>() { // from class: com.cyjh.elfin.entity.BindRegCodeResponse.RegCodeTimeInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RegCodeTimeInfo createFromParcel(Parcel parcel) {
                return new RegCodeTimeInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RegCodeTimeInfo[] newArray(int i) {
                return new RegCodeTimeInfo[i];
            }
        };
        public long ClientTimestamp;
        public long ExpireTime;
        public long ServerTimestamp;

        protected RegCodeTimeInfo(Parcel parcel) {
            this.ClientTimestamp = parcel.readLong();
            this.ServerTimestamp = parcel.readLong();
            this.ExpireTime = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.ClientTimestamp);
            parcel.writeLong(this.ServerTimestamp);
            parcel.writeLong(this.ExpireTime);
        }
    }

    protected BindRegCodeResponse(Parcel parcel) {
        this.Code = parcel.readInt();
        this.Message = parcel.readString();
        this.Data = (RegCodeTimeInfo) parcel.readParcelable(RegCodeTimeInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.Code);
        parcel.writeString(this.Message);
        parcel.writeParcelable(this.Data, i);
    }
}
