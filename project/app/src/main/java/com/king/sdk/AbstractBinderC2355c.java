package com.king.sdk;

import android.accounts.Account;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.king.sdk.c */
/* loaded from: classes.dex */
public abstract class AbstractBinderC2355c extends Binder implements InterfaceC2354b {
    /* renamed from: a */
    public static InterfaceC2354b m10351a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC2354b)) ? new C2356d(iBinder) : (InterfaceC2354b) queryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1598968902) {
            parcel2.writeString("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                String a2 = mo10325a(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeString(a2);
                return true;
            case 2:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                int a3 = mo10323a(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a3);
                return true;
            case 3:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                int b2 = mo10339b(parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(b2);
                return true;
            case 4:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                int a4 = mo10322a();
                parcel2.writeNoException();
                parcel2.writeInt(a4);
                return true;
            case 5:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10333a(parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10332a(parcel.readString(), parcel.readStrongBinder(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10330a(parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10328a(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 9:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10334a(parcel.readString(), parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 10:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                byte[] b3 = mo10342b();
                parcel2.writeNoException();
                parcel2.writeByteArray(b3);
                return true;
            case 11:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10326a(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 12:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                Intent a5 = mo10324a(parcel.readString());
                parcel2.writeNoException();
                if (a5 == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                a5.writeToParcel(parcel2, 1);
                return true;
            case 13:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10327a(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                IBinder b4 = mo10340b(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(b4);
                return true;
            case 15:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10344c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                String c2 = mo10343c();
                parcel2.writeNoException();
                parcel2.writeString(c2);
                return true;
            case 17:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                String d = mo10345d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                return true;
            case 18:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10335a(parcel.createStringArray(), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 19:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                int e = mo10347e();
                parcel2.writeNoException();
                parcel2.writeInt(e);
                return true;
            case 20:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                String f = mo10349f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 21:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                boolean d2 = mo10346d(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(d2 ? 1 : 0);
                return true;
            case 22:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10329a(AbstractBinderC2359g.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10341b(AbstractBinderC2359g.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 24:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10331a(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 25:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                String g = mo10350g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                return true;
            case 26:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                mo10348e(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 27:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                boolean a6 = mo10338a(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(a6 ? 1 : 0);
                return true;
            case 28:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                boolean a7 = mo10336a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a7 ? 1 : 0);
                return true;
            case 29:
                parcel.enforceInterface("com.king.sdk.I2FABB9840C76199A1E170A7C19698595");
                boolean a8 = mo10337a(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createByteArray(), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(a8 ? 1 : 0);
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
