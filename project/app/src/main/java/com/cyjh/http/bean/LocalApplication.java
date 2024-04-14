package com.cyjh.http.bean;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import com.cyjh.http.p104e.C1579a;

/* loaded from: classes.dex */
public class LocalApplication implements Parcelable {
    public static final Parcelable.Creator<LocalApplication> CREATOR = new Parcelable.Creator<LocalApplication>() { // from class: com.cyjh.http.bean.LocalApplication.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LocalApplication createFromParcel(Parcel parcel) {
            return new LocalApplication(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final LocalApplication[] newArray(int i) {
            return new LocalApplication[i];
        }
    };
    protected Drawable applicationIcon;
    protected String applicationName;
    protected String applicationPackageName;
    protected String applicationVersionName;
    protected String initialLetter;
    protected boolean isSelect;

    public LocalApplication() {
    }

    public LocalApplication(Parcel parcel) {
        this.applicationName = parcel.readString();
        this.applicationPackageName = parcel.readString();
        this.applicationVersionName = parcel.readString();
        this.isSelect = parcel.readByte() != 0;
        this.initialLetter = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Drawable getApplicationIcon() {
        return this.applicationIcon;
    }

    public String getApplicationName() {
        return this.applicationName;
    }

    public String getApplicationPackageName() {
        return this.applicationPackageName;
    }

    public String getApplicationVersionName() {
        return this.applicationVersionName;
    }

    public String getInitialLetter() {
        if (this.initialLetter == null) {
            C1579a.m7019a(this);
        }
        return this.initialLetter;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setApplicationIcon(Drawable drawable) {
        this.applicationIcon = drawable;
    }

    public void setApplicationName(String str) {
        this.applicationName = str;
    }

    public void setApplicationPackageName(String str) {
        this.applicationPackageName = str;
    }

    public void setApplicationVersionName(String str) {
        this.applicationVersionName = str;
    }

    public void setInitialLetter(String str) {
        this.initialLetter = str;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.applicationName);
        parcel.writeString(this.applicationPackageName);
        parcel.writeString(this.applicationVersionName);
        parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
        parcel.writeString(this.initialLetter);
    }
}
