package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class RootRelatedEntity implements Parcelable {
    public static final Parcelable.Creator<RootRelatedEntity> CREATOR = new Parcelable.Creator<RootRelatedEntity>() { // from class: com.cyjh.elfin.entity.RootRelatedEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RootRelatedEntity createFromParcel(Parcel parcel) {
            return new RootRelatedEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final RootRelatedEntity[] newArray(int i) {
            return new RootRelatedEntity[i];
        }
    };
    public String Code;
    public RootRelatedData Data;
    public String Msg;

    /* loaded from: classes.dex */
    public static class RootRelatedData implements Parcelable {
        public static final Parcelable.Creator<RootRelatedData> CREATOR = new Parcelable.Creator<RootRelatedData>() { // from class: com.cyjh.elfin.entity.RootRelatedEntity.RootRelatedData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RootRelatedData createFromParcel(Parcel parcel) {
                return new RootRelatedData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final RootRelatedData[] newArray(int i) {
                return new RootRelatedData[i];
            }
        };

        /* renamed from: Id */
        public String f4786Id;
        public String Image;
        public String PackageName;
        public String Path;
        public String ScriptName;
        public String Type;

        protected RootRelatedData(Parcel parcel) {
            this.f4786Id = parcel.readString();
            this.Type = parcel.readString();
            this.Image = parcel.readString();
            this.Path = parcel.readString();
            this.PackageName = parcel.readString();
            this.ScriptName = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f4786Id);
            parcel.writeString(this.Type);
            parcel.writeString(this.Image);
            parcel.writeString(this.Path);
            parcel.writeString(this.PackageName);
            parcel.writeString(this.ScriptName);
        }
    }

    protected RootRelatedEntity(Parcel parcel) {
        this.Code = parcel.readString();
        this.Msg = parcel.readString();
        this.Data = (RootRelatedData) parcel.readParcelable(RootRelatedData.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.Code);
        parcel.writeString(this.Msg);
        parcel.writeParcelable(this.Data, i);
    }
}
