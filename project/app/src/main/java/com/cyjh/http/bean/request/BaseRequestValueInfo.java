package com.cyjh.http.bean.request;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BaseRequestValueInfo implements Parcelable {
    public long AppId;
    public String AppInfo;
    public String AppVersion;
    public long ClientTimestamp;
    public String DeviceCode;
    public String DeviceId;
    public int IsRedFinger;
    public long TemplateFileId;
    public String TemplateVersion;

    /* renamed from: V */
    public String f5815V;

    public BaseRequestValueInfo() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseRequestValueInfo(Parcel parcel) {
        this.TemplateFileId = parcel.readLong();
        this.TemplateVersion = parcel.readString();
        this.AppId = parcel.readLong();
        this.AppVersion = parcel.readString();
        this.DeviceId = parcel.readString();
        this.ClientTimestamp = parcel.readLong();
        this.IsRedFinger = parcel.readInt();
        this.DeviceCode = parcel.readString();
        this.AppInfo = parcel.readString();
        this.f5815V = parcel.readString();
    }

    public BaseRequestValueInfo(BaseRequestValueInfo baseRequestValueInfo) {
        this.AppId = baseRequestValueInfo.AppId;
        this.AppVersion = baseRequestValueInfo.AppVersion;
        this.ClientTimestamp = baseRequestValueInfo.ClientTimestamp;
        this.DeviceId = baseRequestValueInfo.DeviceId;
        this.TemplateFileId = baseRequestValueInfo.TemplateFileId;
        this.TemplateVersion = baseRequestValueInfo.TemplateVersion;
        this.IsRedFinger = baseRequestValueInfo.IsRedFinger;
        this.DeviceCode = baseRequestValueInfo.DeviceCode;
        this.AppInfo = baseRequestValueInfo.AppInfo;
        this.f5815V = baseRequestValueInfo.f5815V;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "BaseRequestValueInfo{TemplateFileId=" + this.TemplateFileId + ", TemplateVersion='" + this.TemplateVersion + "', AppId=" + this.AppId + ", AppVersion='" + this.AppVersion + "', DeviceId='" + this.DeviceId + "', ClientTimestamp=" + this.ClientTimestamp + ", IsRedFinger=" + this.IsRedFinger + ", DeviceCode='" + this.DeviceCode + "', AppInfo='" + this.AppInfo + "', V='" + this.f5815V + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.TemplateFileId);
        parcel.writeString(this.TemplateVersion);
        parcel.writeLong(this.AppId);
        parcel.writeString(this.AppVersion);
        parcel.writeString(this.DeviceId);
        parcel.writeLong(this.ClientTimestamp);
        parcel.writeInt(this.IsRedFinger);
        parcel.writeString(this.DeviceCode);
        parcel.writeString(this.AppInfo);
        parcel.writeString(this.f5815V);
    }
}
