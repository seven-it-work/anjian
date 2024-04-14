package com.king.sdk;

import android.accounts.Account;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

/* renamed from: com.king.sdk.d */
/* loaded from: classes.dex */
final class C2356d implements InterfaceC2354b {

    /* renamed from: a */
    private IBinder f8829a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2356d(IBinder iBinder) {
        this.f8829a = iBinder;
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final int mo10322a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final int mo10323a(Account account, String str, String str2, String str3) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            if (account != null) {
                obtain.writeInt(1);
                account.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            this.f8829a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final Intent mo10324a(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            this.f8829a.transact(12, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(obtain2) : null;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final String mo10325a(Account account) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            if (account != null) {
                obtain.writeInt(1);
                account.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f8829a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10326a(int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeInt(i);
            this.f8829a.transact(11, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10327a(int i, int i2, String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeInt(i);
            obtain.writeInt(i2);
            obtain.writeString(str);
            this.f8829a.transact(13, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10328a(ComponentName componentName, int i, int i2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            if (componentName != null) {
                obtain.writeInt(1);
                componentName.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeInt(i);
            obtain.writeInt(i2);
            this.f8829a.transact(8, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10329a(IDFEE16B42C8B2890D8FF2860AF5562B1 idfee16b42c8b2890d8ff2860af5562b1) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeStrongBinder(idfee16b42c8b2890d8ff2860af5562b1 != null ? idfee16b42c8b2890d8ff2860af5562b1.asBinder() : null);
            this.f8829a.transact(22, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10330a(String str, int i, int i2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeInt(i);
            obtain.writeInt(i2);
            this.f8829a.transact(7, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10331a(String str, int i, String str2, Notification notification) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeInt(i);
            obtain.writeString(str2);
            if (notification != null) {
                obtain.writeInt(1);
                notification.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f8829a.transact(24, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10332a(String str, IBinder iBinder, int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeStrongBinder(iBinder);
            obtain.writeInt(i);
            this.f8829a.transact(6, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10333a(String str, String str2, int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeInt(i);
            this.f8829a.transact(5, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10334a(String str, boolean z) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeInt(z ? 1 : 0);
            this.f8829a.transact(9, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final void mo10335a(String[] strArr, int i, String str, String str2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeStringArray(strArr);
            obtain.writeInt(i);
            obtain.writeString(str);
            obtain.writeString(str2);
            this.f8829a.transact(18, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final boolean mo10336a(String str, String str2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeString(str2);
            this.f8829a.transact(28, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final boolean mo10337a(String str, String str2, int i, byte[] bArr, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeInt(i);
            obtain.writeByteArray(bArr);
            if (pendingIntent != null) {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            if (pendingIntent2 != null) {
                obtain.writeInt(1);
                pendingIntent2.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f8829a.transact(29, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: a */
    public final boolean mo10338a(String str, String str2, String str3, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            if (pendingIntent != null) {
                obtain.writeInt(1);
                pendingIntent.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            if (pendingIntent2 != null) {
                obtain.writeInt(1);
                pendingIntent2.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f8829a.transact(27, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8829a;
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: b */
    public final int mo10339b(Account account, String str, String str2, String str3) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            if (account != null) {
                obtain.writeInt(1);
                account.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            this.f8829a.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: b */
    public final IBinder mo10340b(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            this.f8829a.transact(14, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readStrongBinder();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: b */
    public final void mo10341b(IDFEE16B42C8B2890D8FF2860AF5562B1 idfee16b42c8b2890d8ff2860af5562b1) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeStrongBinder(idfee16b42c8b2890d8ff2860af5562b1 != null ? idfee16b42c8b2890d8ff2860af5562b1.asBinder() : null);
            this.f8829a.transact(23, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: b */
    public final byte[] mo10342b() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(10, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.createByteArray();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: c */
    public final String mo10343c() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(16, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: c */
    public final void mo10344c(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            this.f8829a.transact(15, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: d */
    public final String mo10345d() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(17, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: d */
    public final boolean mo10346d(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            this.f8829a.transact(21, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: e */
    public final int mo10347e() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(19, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: e */
    public final void mo10348e(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            obtain.writeString(str);
            this.f8829a.transact(26, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: f */
    public final String mo10349f() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(20, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.king.sdk.InterfaceC2354b
    /* renamed from: g */
    public final String mo10350g() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            this.f8829a.transact(25, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
