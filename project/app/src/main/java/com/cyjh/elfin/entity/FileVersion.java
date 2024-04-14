package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class FileVersion implements Parcelable {
    public static final Parcelable.Creator<FileVersion> CREATOR = new Parcelable.Creator<FileVersion>() { // from class: com.cyjh.elfin.entity.FileVersion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FileVersion createFromParcel(Parcel parcel) {
            return new FileVersion(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final FileVersion[] newArray(int i) {
            return new FileVersion[i];
        }
    };
    int atc;

    /* renamed from: mq */
    int f4783mq;
    int prop;
    int rtd;

    /* renamed from: ui */
    int f4784ui;

    public FileVersion() {
    }

    public FileVersion(int i, int i2, int i3, int i4, int i5) {
        this.atc = i;
        this.f4783mq = i2;
        this.prop = i3;
        this.f4784ui = i4;
        this.rtd = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAtc() {
        return this.atc;
    }

    public int getMq() {
        return this.f4783mq;
    }

    public int getProp() {
        return this.prop;
    }

    public int getRtd() {
        return this.rtd;
    }

    public int getUi() {
        return this.f4784ui;
    }

    public void setAtc(int i) {
        this.atc = i;
    }

    public void setMq(int i) {
        this.f4783mq = i;
    }

    public void setProp(int i) {
        this.prop = i;
    }

    public void setRtd(int i) {
        this.rtd = i;
    }

    public void setUI(int i) {
        this.f4784ui = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.atc);
        parcel.writeInt(this.f4783mq);
        parcel.writeInt(this.prop);
        parcel.writeInt(this.f4784ui);
        parcel.writeInt(this.rtd);
    }
}
