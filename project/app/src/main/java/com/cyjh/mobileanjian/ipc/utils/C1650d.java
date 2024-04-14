package com.cyjh.mobileanjian.ipc.utils;

import android.content.ContentProviderOperation;
import android.content.Context;
import android.provider.ContactsContract;
import android.widget.Toast;
import java.util.ArrayList;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.d */
/* loaded from: classes.dex */
public class C1650d {

    /* renamed from: a */
    private static final String f6393a = "d";

    /* renamed from: a */
    public static void m7480a(Context context) {
        context.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
    
        if (r8.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
    
        r7.getContentResolver().delete(android.content.ContentUris.withAppendedId(android.provider.ContactsContract.RawContacts.CONTENT_URI, r8.getInt(0)), null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0036, code lost:
    
        if (r8.moveToNext() != false) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m7481a(android.content.Context r7, java.lang.String r8) {
        /*
            android.content.ContentResolver r0 = r7.getContentResolver()
            android.net.Uri r1 = android.provider.ContactsContract.Data.CONTENT_URI
            java.lang.String r2 = "raw_contact_id"
            java.lang.String[] r2 = new java.lang.String[]{r2}
            java.lang.String r3 = "data1=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]
            r6 = 0
            r4[r6] = r8
            r5 = 0
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5)
            boolean r0 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r0 == 0) goto L38
        L1f:
            int r0 = r8.getInt(r6)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            android.content.ContentResolver r1 = r7.getContentResolver()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            android.net.Uri r2 = android.provider.ContactsContract.RawContacts.CONTENT_URI     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            long r3 = (long) r0     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r2, r3)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            r2 = 0
            r1.delete(r0, r2, r2)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            boolean r0 = r8.moveToNext()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3e
            if (r0 != 0) goto L1f
        L38:
            r8.close()
            return
        L3c:
            r7 = move-exception
            goto L4c
        L3e:
            r7 = move-exception
            java.lang.String r0 = com.cyjh.mobileanjian.ipc.utils.C1650d.f6393a     // Catch: java.lang.Throwable -> L3c
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> L3c
            android.util.Log.e(r0, r7)     // Catch: java.lang.Throwable -> L3c
            r8.close()
            return
        L4c:
            r8.close()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.utils.C1650d.m7481a(android.content.Context, java.lang.String):void");
    }

    /* renamed from: a */
    public static boolean m7482a(Context context, String str, String str2, String str3) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data2", str2).withValue("data3", str).build());
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", str3).withValue("data2", 2).build());
        try {
            context.getContentResolver().applyBatch("com.android.contacts", arrayList);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(context, e.getMessage(), 1).show();
            return false;
        }
    }
}
