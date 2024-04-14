package com.elf.studio.enity;

import android.os.Parcel;
import android.os.Parcelable;
import com.cyjh.http.bean.request.BaseRequestValueInfo;

/* loaded from: classes.dex */
public class IMRequestInfo extends BaseRequestValueInfo {
    public static final Parcelable.Creator<IMRequestInfo> CREATOR = new Parcelable.Creator<IMRequestInfo>() { // from class: com.elf.studio.enity.IMRequestInfo.1
        /* renamed from: a */
        private static IMRequestInfo m7819a(Parcel parcel) {
            return new IMRequestInfo(parcel);
        }

        /* renamed from: a */
        private static IMRequestInfo[] m7820a(int i) {
            return new IMRequestInfo[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ IMRequestInfo createFromParcel(Parcel parcel) {
            return new IMRequestInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ IMRequestInfo[] newArray(int i) {
            return new IMRequestInfo[i];
        }
    };
    public String ScriptId;

    public IMRequestInfo() {
    }

    protected IMRequestInfo(Parcel parcel) {
        super(parcel);
        this.ScriptId = parcel.readString();
    }

    public IMRequestInfo(BaseRequestValueInfo baseRequestValueInfo) {
        super(baseRequestValueInfo);
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo
    public String toString() {
        return "UpdateRequestInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', ScriptId='" + this.ScriptId + "'}";
    }

    @Override // com.cyjh.http.bean.request.BaseRequestValueInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.ScriptId);
    }
}
