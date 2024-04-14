package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class EngineParams extends BaseRequestValueInfo implements Parcelable {
    public static final Parcelable.Creator<EngineParams> CREATOR = new Parcelable.Creator<EngineParams>() { // from class: com.cyjh.http.bean.request.EngineParams.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EngineParams createFromParcel(Parcel parcel) {
            return new EngineParams(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final EngineParams[] newArray(int i) {
            return new EngineParams[i];
        }
    };
    public String BaseURL;
    public String PackageName;
    public String PayAppId;
    public boolean ScriptType;
    public String[] authDesKeys;

    protected EngineParams(Parcel parcel) {
        super(parcel);
        this.PackageName = parcel.readString();
        this.BaseURL = parcel.readString();
        this.PayAppId = parcel.readString();
        this.ScriptType = parcel.readByte() != 0;
        this.authDesKeys = parcel.createStringArray();
    }

    public EngineParams(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.PackageName);
        parcel.writeString(this.BaseURL);
        parcel.writeString(this.PayAppId);
        parcel.writeByte(this.ScriptType ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.authDesKeys);
    }
}
