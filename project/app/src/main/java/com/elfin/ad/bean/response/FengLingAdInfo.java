package com.elfin.ad.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class FengLingAdInfo implements Parcelable {
    public static final Parcelable.Creator<FengLingAdInfo> CREATOR = new Parcelable.Creator<FengLingAdInfo>() { // from class: com.elfin.ad.bean.response.FengLingAdInfo.1
        /* renamed from: a */
        private static FengLingAdInfo m7889a(Parcel parcel) {
            return new FengLingAdInfo(parcel);
        }

        /* renamed from: a */
        private static FengLingAdInfo[] m7890a(int i) {
            return new FengLingAdInfo[i];
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FengLingAdInfo createFromParcel(Parcel parcel) {
            return new FengLingAdInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FengLingAdInfo[] newArray(int i) {
            return new FengLingAdInfo[i];
        }
    };

    /* renamed from: a */
    public int f6775a;

    /* renamed from: b */
    public int f6776b;

    /* renamed from: c */
    public int f6777c;

    /* renamed from: d */
    public int f6778d;

    /* renamed from: e */
    public int f6779e;

    /* renamed from: f */
    public String f6780f;

    /* renamed from: g */
    public int f6781g;

    /* renamed from: h */
    public C1729a f6782h;

    /* renamed from: i */
    public String f6783i;

    /* renamed from: j */
    public int f6784j;

    /* renamed from: k */
    public String f6785k;

    /* renamed from: l */
    public C1730b f6786l;

    /* renamed from: m */
    public int f6787m;

    /* renamed from: com.elfin.ad.bean.response.FengLingAdInfo$a */
    /* loaded from: classes.dex */
    public class C1729a {

        /* renamed from: a */
        public int f6788a;

        /* renamed from: b */
        public int f6789b;

        /* renamed from: c */
        public String f6790c;

        public C1729a() {
        }

        /* renamed from: a */
        private int m7891a() {
            return this.f6788a;
        }

        /* renamed from: a */
        private void m7892a(int i) {
            this.f6788a = i;
        }

        /* renamed from: a */
        private void m7893a(String str) {
            this.f6790c = str;
        }

        /* renamed from: b */
        private int m7894b() {
            return this.f6789b;
        }

        /* renamed from: b */
        private void m7895b(int i) {
            this.f6789b = i;
        }

        /* renamed from: c */
        private String m7896c() {
            return this.f6790c;
        }
    }

    /* renamed from: com.elfin.ad.bean.response.FengLingAdInfo$b */
    /* loaded from: classes.dex */
    public class C1730b {

        /* renamed from: a */
        public int f6792a;

        /* renamed from: b */
        public List<String> f6793b;

        /* renamed from: c */
        public List<String> f6794c;

        /* renamed from: d */
        public List<String> f6795d;

        /* renamed from: e */
        public List<String> f6796e;

        public C1730b() {
        }

        /* renamed from: a */
        private int m7897a() {
            return this.f6792a;
        }

        /* renamed from: a */
        private void m7898a(int i) {
            this.f6792a = i;
        }

        /* renamed from: a */
        private void m7899a(List<String> list) {
            this.f6793b = list;
        }

        /* renamed from: b */
        private List<String> m7900b() {
            return this.f6793b;
        }

        /* renamed from: b */
        private void m7901b(List<String> list) {
            this.f6794c = list;
        }

        /* renamed from: c */
        private List<String> m7902c() {
            return this.f6794c;
        }

        /* renamed from: c */
        private void m7903c(List<String> list) {
            this.f6795d = list;
        }

        /* renamed from: d */
        private List<String> m7904d() {
            return this.f6795d;
        }

        /* renamed from: d */
        private void m7905d(List<String> list) {
            this.f6796e = list;
        }

        /* renamed from: e */
        private List<String> m7906e() {
            return this.f6796e;
        }
    }

    public FengLingAdInfo() {
    }

    protected FengLingAdInfo(Parcel parcel) {
        this.f6775a = parcel.readInt();
        this.f6776b = parcel.readInt();
        this.f6777c = parcel.readInt();
        this.f6778d = parcel.readInt();
        this.f6779e = parcel.readInt();
        this.f6780f = parcel.readString();
        this.f6781g = parcel.readInt();
        this.f6783i = parcel.readString();
        this.f6784j = parcel.readInt();
        this.f6785k = parcel.readString();
        this.f6787m = parcel.readInt();
    }

    /* renamed from: a */
    private int m7863a() {
        return this.f6775a;
    }

    /* renamed from: a */
    private void m7864a(int i) {
        this.f6775a = i;
    }

    /* renamed from: a */
    private void m7865a(C1729a c1729a) {
        this.f6782h = c1729a;
    }

    /* renamed from: a */
    private void m7866a(C1730b c1730b) {
        this.f6786l = c1730b;
    }

    /* renamed from: a */
    private void m7867a(String str) {
        this.f6780f = str;
    }

    /* renamed from: b */
    private int m7868b() {
        return this.f6776b;
    }

    /* renamed from: b */
    private void m7869b(int i) {
        this.f6776b = i;
    }

    /* renamed from: b */
    private void m7870b(String str) {
        this.f6783i = str;
    }

    /* renamed from: c */
    private int m7871c() {
        return this.f6777c;
    }

    /* renamed from: c */
    private void m7872c(int i) {
        this.f6777c = i;
    }

    /* renamed from: c */
    private void m7873c(String str) {
        this.f6785k = str;
    }

    /* renamed from: d */
    private int m7874d() {
        return this.f6778d;
    }

    /* renamed from: d */
    private void m7875d(int i) {
        this.f6778d = i;
    }

    /* renamed from: e */
    private int m7876e() {
        return this.f6779e;
    }

    /* renamed from: e */
    private void m7877e(int i) {
        this.f6779e = i;
    }

    /* renamed from: f */
    private String m7878f() {
        return this.f6780f;
    }

    /* renamed from: f */
    private void m7879f(int i) {
        this.f6781g = i;
    }

    /* renamed from: g */
    private int m7880g() {
        return this.f6781g;
    }

    /* renamed from: g */
    private void m7881g(int i) {
        this.f6784j = i;
    }

    /* renamed from: h */
    private C1729a m7882h() {
        return this.f6782h;
    }

    /* renamed from: h */
    private void m7883h(int i) {
        this.f6787m = i;
    }

    /* renamed from: i */
    private String m7884i() {
        return this.f6783i;
    }

    /* renamed from: j */
    private int m7885j() {
        return this.f6784j;
    }

    /* renamed from: k */
    private String m7886k() {
        return this.f6785k;
    }

    /* renamed from: l */
    private C1730b m7887l() {
        return this.f6786l;
    }

    /* renamed from: m */
    private int m7888m() {
        return this.f6787m;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6775a);
        parcel.writeInt(this.f6776b);
        parcel.writeInt(this.f6777c);
        parcel.writeInt(this.f6778d);
        parcel.writeInt(this.f6779e);
        parcel.writeString(this.f6780f);
        parcel.writeInt(this.f6781g);
        parcel.writeString(this.f6783i);
        parcel.writeInt(this.f6784j);
        parcel.writeString(this.f6785k);
        parcel.writeInt(this.f6787m);
    }
}
