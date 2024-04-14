package com.cyjh.http.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class NotifyMsgBean implements Parcelable {
    public static final Parcelable.Creator<NotifyMsgBean> CREATOR = new Parcelable.Creator<NotifyMsgBean>() { // from class: com.cyjh.http.bean.NotifyMsgBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NotifyMsgBean createFromParcel(Parcel parcel) {
            return new NotifyMsgBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final NotifyMsgBean[] newArray(int i) {
            return new NotifyMsgBean[i];
        }
    };
    public String DescriptionType;

    /* renamed from: ID */
    public String f5814ID;
    public boolean IsSendMessage;
    public String NoticeContent;
    public String NoticeDescription;
    public String NoticeTime;
    public String NoticeTitle;
    public String Platforms;
    public String PushTemplate;
    public String UserName;

    public NotifyMsgBean() {
    }

    protected NotifyMsgBean(Parcel parcel) {
        this.f5814ID = parcel.readString();
        this.Platforms = parcel.readString();
        this.PushTemplate = parcel.readString();
        this.IsSendMessage = parcel.readByte() != 0;
        this.NoticeTitle = parcel.readString();
        this.NoticeContent = parcel.readString();
        this.NoticeTime = parcel.readString();
        this.UserName = parcel.readString();
        this.NoticeDescription = parcel.readString();
        this.DescriptionType = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "NotifyMsgBean{ID='" + this.f5814ID + "', Platforms='" + this.Platforms + "', PushTemplate='" + this.PushTemplate + "', IsSendMessage=" + this.IsSendMessage + ", NoticeTitle='" + this.NoticeTitle + "', NoticeContent='" + this.NoticeContent + "', NoticeTime='" + this.NoticeTime + "', UserName='" + this.UserName + "', NoticeDescription='" + this.NoticeDescription + "', DescriptionType='" + this.DescriptionType + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f5814ID);
        parcel.writeString(this.Platforms);
        parcel.writeString(this.PushTemplate);
        parcel.writeByte(this.IsSendMessage ? (byte) 1 : (byte) 0);
        parcel.writeString(this.NoticeTitle);
        parcel.writeString(this.NoticeContent);
        parcel.writeString(this.NoticeTime);
        parcel.writeString(this.UserName);
        parcel.writeString(this.NoticeDescription);
        parcel.writeString(this.DescriptionType);
    }
}
