package com.elf.studio.enity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IMResultInfo implements Parcelable {
    public static final Parcelable.Creator<IMResultInfo> CREATOR = new Parcelable.Creator<IMResultInfo>() { // from class: com.elf.studio.enity.IMResultInfo.1
        /* renamed from: a */
        private static IMResultInfo m7821a(Parcel parcel) {
            return new IMResultInfo(parcel);
        }

        /* renamed from: a */
        private static IMResultInfo[] m7822a(int i) {
            return new IMResultInfo[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ IMResultInfo createFromParcel(Parcel parcel) {
            return new IMResultInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ IMResultInfo[] newArray(int i) {
            return new IMResultInfo[i];
        }
    };
    public String IMServerHost;
    public int IMServerPort;
    public String IMToken;

    public IMResultInfo() {
    }

    protected IMResultInfo(Parcel parcel) {
        this.IMServerHost = parcel.readString();
        this.IMServerPort = parcel.readInt();
        this.IMToken = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "IMResultInfo{IMServerHost='" + this.IMServerHost + "', IMServerPort='" + this.IMServerPort + "', IMToken='" + this.IMToken + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.IMServerHost);
        parcel.writeInt(this.IMServerPort);
        parcel.writeString(this.IMToken);
    }
}
