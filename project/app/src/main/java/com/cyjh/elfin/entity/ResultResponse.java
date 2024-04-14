package com.cyjh.elfin.entity;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ResultResponse implements Parcelable {
    public static final Parcelable.Creator<ResultResponse> CREATOR = new Parcelable.Creator<ResultResponse>() { // from class: com.cyjh.elfin.entity.ResultResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ResultResponse createFromParcel(Parcel parcel) {
            return new ResultResponse(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final ResultResponse[] newArray(int i) {
            return new ResultResponse[i];
        }
    };
    public String Code;
    public String Msg;

    public ResultResponse() {
    }

    protected ResultResponse(Parcel parcel) {
        this.Code = parcel.readString();
        this.Msg = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.Code);
        parcel.writeString(this.Msg);
    }
}
