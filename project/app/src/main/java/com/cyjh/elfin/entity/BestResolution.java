package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BestResolution implements Parcelable {
    public static final Parcelable.Creator<BestResolution> CREATOR = new Parcelable.Creator<BestResolution>() { // from class: com.cyjh.elfin.entity.BestResolution.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BestResolution createFromParcel(Parcel parcel) {
            return new BestResolution(parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final BestResolution[] newArray(int i) {
            return new BestResolution[i];
        }
    };

    /* renamed from: X */
    private int f4781X;

    /* renamed from: Y */
    private int f4782Y;

    public BestResolution() {
    }

    public BestResolution(int i, int i2) {
        this.f4781X = i;
        this.f4782Y = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getX() {
        return this.f4781X;
    }

    public int getY() {
        return this.f4782Y;
    }

    public void setX(int i) {
        this.f4781X = i;
    }

    public void setY(int i) {
        this.f4782Y = i;
    }

    public String toString() {
        return this.f4781X + "X" + this.f4782Y;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4781X);
        parcel.writeInt(this.f4782Y);
    }
}
