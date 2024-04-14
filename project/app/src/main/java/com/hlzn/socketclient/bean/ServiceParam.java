package com.hlzn.socketclient.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ServiceParam implements Parcelable {
    public static final Parcelable.Creator<ServiceParam> CREATOR = new Parcelable.Creator<ServiceParam>() { // from class: com.hlzn.socketclient.bean.ServiceParam.1
        /* renamed from: a */
        private static ServiceParam m9512a(Parcel parcel) {
            return new ServiceParam(parcel);
        }

        /* renamed from: a */
        private static ServiceParam[] m9513a(int i) {
            return new ServiceParam[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ServiceParam createFromParcel(Parcel parcel) {
            return new ServiceParam(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ServiceParam[] newArray(int i) {
            return new ServiceParam[i];
        }
    };

    /* renamed from: a */
    public static final int f8104a = 0;

    /* renamed from: b */
    public static final int f8105b = -1;

    /* renamed from: c */
    public String f8106c;

    /* renamed from: d */
    public String f8107d;

    /* renamed from: e */
    public String f8108e;

    /* renamed from: f */
    public String f8109f;

    /* renamed from: g */
    public boolean f8110g;

    /* renamed from: h */
    public int f8111h;

    /* renamed from: i */
    public String f8112i;

    /* renamed from: j */
    public int f8113j;

    /* renamed from: k */
    public String f8114k;

    /* renamed from: l */
    public int f8115l;

    /* renamed from: m */
    public String f8116m;

    /* renamed from: n */
    public int f8117n;

    /* renamed from: o */
    public String f8118o;

    /* renamed from: p */
    public int f8119p;

    /* renamed from: q */
    public String f8120q;

    /* renamed from: r */
    public int f8121r;

    /* renamed from: s */
    public String f8122s;

    /* renamed from: t */
    public int f8123t;

    /* renamed from: u */
    public String f8124u;

    public ServiceParam() {
        this.f8111h = -1;
        this.f8113j = -1;
        this.f8115l = -1;
        this.f8117n = -1;
        this.f8119p = -1;
        this.f8121r = -1;
        this.f8123t = -1;
    }

    protected ServiceParam(Parcel parcel) {
        this.f8111h = -1;
        this.f8113j = -1;
        this.f8115l = -1;
        this.f8117n = -1;
        this.f8119p = -1;
        this.f8121r = -1;
        this.f8123t = -1;
        this.f8106c = parcel.readString();
        this.f8107d = parcel.readString();
        this.f8108e = parcel.readString();
        this.f8109f = parcel.readString();
        this.f8110g = parcel.readByte() != 0;
        this.f8111h = parcel.readInt();
        this.f8112i = parcel.readString();
        this.f8113j = parcel.readInt();
        this.f8114k = parcel.readString();
        this.f8115l = parcel.readInt();
        this.f8116m = parcel.readString();
        this.f8117n = parcel.readInt();
        this.f8118o = parcel.readString();
        this.f8119p = parcel.readInt();
        this.f8120q = parcel.readString();
        this.f8121r = parcel.readInt();
        this.f8122s = parcel.readString();
        this.f8123t = parcel.readInt();
        this.f8124u = parcel.readString();
    }

    /* renamed from: a */
    private String m9473a() {
        return this.f8106c;
    }

    /* renamed from: a */
    private void m9474a(int i) {
        this.f8111h = i;
    }

    /* renamed from: a */
    private void m9475a(String str) {
        this.f8106c = str;
    }

    /* renamed from: a */
    private void m9476a(boolean z) {
        this.f8110g = z;
    }

    /* renamed from: b */
    private String m9477b() {
        return this.f8107d;
    }

    /* renamed from: b */
    private void m9478b(int i) {
        this.f8113j = i;
    }

    /* renamed from: b */
    private void m9479b(String str) {
        this.f8107d = str;
    }

    /* renamed from: c */
    private String m9480c() {
        return this.f8108e;
    }

    /* renamed from: c */
    private void m9481c(int i) {
        this.f8115l = i;
    }

    /* renamed from: c */
    private void m9482c(String str) {
        this.f8108e = str;
    }

    /* renamed from: d */
    private String m9483d() {
        return this.f8109f;
    }

    /* renamed from: d */
    private void m9484d(int i) {
        this.f8117n = i;
    }

    /* renamed from: d */
    private void m9485d(String str) {
        this.f8109f = str;
    }

    /* renamed from: e */
    private void m9486e(int i) {
        this.f8119p = i;
    }

    /* renamed from: e */
    private void m9487e(String str) {
        this.f8112i = str;
    }

    /* renamed from: e */
    private boolean m9488e() {
        return this.f8110g;
    }

    /* renamed from: f */
    private int m9489f() {
        return this.f8111h;
    }

    /* renamed from: f */
    private void m9490f(int i) {
        this.f8121r = i;
    }

    /* renamed from: f */
    private void m9491f(String str) {
        this.f8114k = str;
    }

    /* renamed from: g */
    private String m9492g() {
        return this.f8112i;
    }

    /* renamed from: g */
    private void m9493g(int i) {
        this.f8123t = i;
    }

    /* renamed from: g */
    private void m9494g(String str) {
        this.f8116m = str;
    }

    /* renamed from: h */
    private int m9495h() {
        return this.f8113j;
    }

    /* renamed from: h */
    private void m9496h(String str) {
        this.f8118o = str;
    }

    /* renamed from: i */
    private String m9497i() {
        return this.f8114k;
    }

    /* renamed from: i */
    private void m9498i(String str) {
        this.f8120q = str;
    }

    /* renamed from: j */
    private int m9499j() {
        return this.f8115l;
    }

    /* renamed from: j */
    private void m9500j(String str) {
        this.f8122s = str;
    }

    /* renamed from: k */
    private String m9501k() {
        return this.f8116m;
    }

    /* renamed from: k */
    private void m9502k(String str) {
        this.f8124u = str;
    }

    /* renamed from: l */
    private int m9503l() {
        return this.f8117n;
    }

    /* renamed from: m */
    private String m9504m() {
        return this.f8118o;
    }

    /* renamed from: n */
    private int m9505n() {
        return this.f8119p;
    }

    /* renamed from: o */
    private String m9506o() {
        return this.f8120q;
    }

    /* renamed from: p */
    private int m9507p() {
        return this.f8121r;
    }

    /* renamed from: q */
    private String m9508q() {
        return this.f8122s;
    }

    /* renamed from: r */
    private int m9509r() {
        return this.f8123t;
    }

    /* renamed from: s */
    private String m9510s() {
        return this.f8124u;
    }

    /* renamed from: t */
    private static Parcelable.Creator<ServiceParam> m9511t() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f8106c);
        parcel.writeString(this.f8107d);
        parcel.writeString(this.f8108e);
        parcel.writeString(this.f8109f);
        parcel.writeByte(this.f8110g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f8111h);
        parcel.writeString(this.f8112i);
        parcel.writeInt(this.f8113j);
        parcel.writeString(this.f8114k);
        parcel.writeInt(this.f8115l);
        parcel.writeString(this.f8116m);
        parcel.writeInt(this.f8117n);
        parcel.writeString(this.f8118o);
        parcel.writeInt(this.f8119p);
        parcel.writeString(this.f8120q);
        parcel.writeInt(this.f8121r);
        parcel.writeString(this.f8122s);
        parcel.writeInt(this.f8123t);
        parcel.writeString(this.f8124u);
    }
}
