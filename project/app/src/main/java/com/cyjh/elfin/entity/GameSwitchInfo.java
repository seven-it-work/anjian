package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GameSwitchInfo implements Parcelable {
    public static final Parcelable.Creator<GameSwitchInfo> CREATOR = new Parcelable.Creator<GameSwitchInfo>() { // from class: com.cyjh.elfin.entity.GameSwitchInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GameSwitchInfo createFromParcel(Parcel parcel) {
            return new GameSwitchInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final GameSwitchInfo[] newArray(int i) {
            return new GameSwitchInfo[i];
        }
    };

    /* renamed from: Id */
    public String f4785Id;
    public String Name;
    public String Path;
    public String Type;

    public GameSwitchInfo() {
    }

    protected GameSwitchInfo(Parcel parcel) {
        this.f4785Id = parcel.readString();
        this.Name = parcel.readString();
        this.Type = parcel.readString();
        this.Path = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "GameSwitchInfo{Id='" + this.f4785Id + "', Name='" + this.Name + "', Type='" + this.Type + "', Path='" + this.Path + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4785Id);
        parcel.writeString(this.Name);
        parcel.writeString(this.Type);
        parcel.writeString(this.Path);
    }
}
