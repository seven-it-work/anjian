package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;

/* loaded from: classes.dex */
public class ScriptLog implements Parcelable {
    public static final Parcelable.Creator<ScriptLog> CREATOR = new Parcelable.Creator<ScriptLog>() { // from class: com.cyjh.elfin.entity.ScriptLog.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ScriptLog createFromParcel(Parcel parcel) {
            return new ScriptLog(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ScriptLog[] newArray(int i) {
            return new ScriptLog[i];
        }
    };
    private File file;
    private boolean isSelect;
    private String name;
    private String size;

    public ScriptLog() {
    }

    private ScriptLog(Parcel parcel) {
        this.size = parcel.readString();
        this.name = parcel.readString();
        this.file = (File) parcel.readSerializable();
        this.isSelect = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public File getFile() {
        return this.file;
    }

    public String getName() {
        return this.name;
    }

    public String getSize() {
        return this.size;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public String toString() {
        return "ScriptLog [size=" + this.size + ", name=" + this.name + ", file=" + this.file + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.size);
        parcel.writeString(this.name);
        parcel.writeSerializable(this.file);
        parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
    }
}
