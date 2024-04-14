package org.litepal.p242f;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.cyjh.common.util.C1176s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import net.grandcentrix.tray.provider.TrayContract;
import org.litepal.p239c.C3021b;
import org.litepal.p242f.p244b.C3037a;
import org.litepal.p242f.p244b.C3038b;
import org.litepal.p242f.p244b.C3039c;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;
import org.litepal.p246g.C3059d;
import org.litepal.p246g.InterfaceC3057b;

/* renamed from: org.litepal.f.a */
/* loaded from: classes2.dex */
public abstract class AbstractC3034a extends AbstractC3051f {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m13815a(String str, List<C3038b> list, boolean z) {
        StringBuilder sb = new StringBuilder("create table ");
        sb.append(str);
        sb.append(" (");
        if (z) {
            sb.append("id integer primary key autoincrement,");
        }
        if (list.size() == 0 || (list.size() == 1 && m13692e(list.get(0).f11168a)) || (list.size() == 2 && m13692e(list.get(0).f11168a) && m13692e(list.get(1).f11168a))) {
            sb.deleteCharAt(sb.length() - 1);
        }
        boolean z2 = false;
        for (C3038b c3038b : list) {
            if (!(TrayContract.Preferences.Columns.f10375ID.equalsIgnoreCase(c3038b.f11168a) || "id".equalsIgnoreCase(c3038b.f11168a))) {
                if (z2) {
                    sb.append(", ");
                }
                sb.append(c3038b.f11168a);
                sb.append(C1176s.a.f4108a);
                sb.append(c3038b.f11169b);
                if (!c3038b.f11170c) {
                    sb.append(" not null");
                }
                if (c3038b.f11171d) {
                    sb.append(" unique");
                }
                String str2 = c3038b.f11172e;
                if (!TextUtils.isEmpty(str2)) {
                    sb.append(" default ");
                    sb.append(str2);
                }
                z2 = true;
            }
        }
        sb.append(")");
        C3059d.m13972a(AbstractC3051f.f11184g, "create table sql is >> " + ((Object) sb));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m13816a(String str, C3038b c3038b) {
        StringBuilder sb = new StringBuilder();
        sb.append("alter table ");
        sb.append(str);
        sb.append(" add column ");
        sb.append(c3038b.f11168a);
        sb.append(C1176s.a.f4108a);
        sb.append(c3038b.f11169b);
        if (!c3038b.f11170c) {
            sb.append(" not null");
        }
        if (c3038b.f11171d) {
            sb.append(" unique");
        }
        String str2 = c3038b.f11172e;
        if (TextUtils.isEmpty(str2)) {
            if (!c3038b.f11170c) {
                if ("integer".equalsIgnoreCase(c3038b.f11169b)) {
                    str2 = "0";
                } else if ("text".equalsIgnoreCase(c3038b.f11169b)) {
                    str2 = "''";
                } else if ("real".equalsIgnoreCase(c3038b.f11169b)) {
                    str2 = "0.0";
                }
            }
            C3059d.m13972a(AbstractC3051f.f11184g, "add column sql is >> " + ((Object) sb));
            return sb.toString();
        }
        sb.append(" default ");
        sb.append(str2);
        C3059d.m13972a(AbstractC3051f.f11184g, "add column sql is >> " + ((Object) sb));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13817a(String str, int i, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        StringBuilder sb = new StringBuilder("select * from ");
        sb.append(InterfaceC3057b.c.f11207a);
        C3059d.m13972a(AbstractC3051f.f11184g, "giveTableSchemaACopy SQL is >> " + ((Object) sb));
        Cursor cursor2 = null;
        try {
            try {
                cursor = sQLiteDatabase.rawQuery(sb.toString(), null);
                try {
                    if ((m13824b(cursor, str) || InterfaceC3057b.c.f11207a.equalsIgnoreCase(str)) ? false : true) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(InterfaceC3057b.c.f11208b, C3054a.m13930a(str));
                        contentValues.put(InterfaceC3057b.c.f11209c, Integer.valueOf(i));
                        sQLiteDatabase.insert(InterfaceC3057b.c.f11207a, null, contentValues);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e) {
                    e = e;
                    cursor2 = cursor;
                    e.printStackTrace();
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = cursor2;
        }
    }

    /* renamed from: a */
    private static void m13818a(String str, String str2, SQLiteDatabase sQLiteDatabase, boolean z) {
        ArrayList arrayList = new ArrayList();
        C3038b c3038b = new C3038b();
        c3038b.f11168a = str + TrayContract.Preferences.Columns.f10375ID;
        c3038b.f11169b = "integer";
        C3038b c3038b2 = new C3038b();
        c3038b2.f11168a = str2 + TrayContract.Preferences.Columns.f10375ID;
        c3038b2.f11169b = "integer";
        arrayList.add(c3038b);
        arrayList.add(c3038b2);
        String m13952a = C3058c.m13952a(str, str2);
        ArrayList arrayList2 = new ArrayList();
        if (C3058c.m13963c(m13952a, sQLiteDatabase)) {
            if (z) {
                arrayList2.add(m13825g(m13952a));
            }
            m13906b(arrayList2, sQLiteDatabase);
            m13817a(m13952a, 1, sQLiteDatabase);
        }
        arrayList2.add(m13815a(m13952a, (List<C3038b>) arrayList, false));
        m13906b(arrayList2, sQLiteDatabase);
        m13817a(m13952a, 1, sQLiteDatabase);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m13819a(String str, String str2, String str3, SQLiteDatabase sQLiteDatabase) {
        if (!C3058c.m13963c(str, sQLiteDatabase)) {
            throw new C3021b(C3021b.TABLE_DOES_NOT_EXIST + str);
        }
        if (!C3058c.m13963c(str2, sQLiteDatabase)) {
            throw new C3021b(C3021b.TABLE_DOES_NOT_EXIST + str2);
        }
        String str4 = null;
        if (str.equals(str3)) {
            str4 = m13693f(str2);
        } else if (str2.equals(str3)) {
            str4 = m13693f(str);
        }
        if (C3058c.m13957a(str4, str3, sQLiteDatabase)) {
            C3059d.m13972a(AbstractC3051f.f11184g, "column " + str4 + " is already exist, no need to add one");
            return;
        }
        C3038b c3038b = new C3038b();
        c3038b.f11168a = str4;
        c3038b.f11169b = "integer";
        ArrayList arrayList = new ArrayList();
        arrayList.add(m13816a(str3, c3038b));
        m13906b(arrayList, sQLiteDatabase);
    }

    /* renamed from: a */
    private void m13820a(Collection<C3037a> collection, SQLiteDatabase sQLiteDatabase, boolean z) {
        for (C3037a c3037a : collection) {
            if (2 == c3037a.f11167d || 1 == c3037a.f11167d) {
                m13819a(c3037a.f11164a, c3037a.f11165b, c3037a.f11166c, sQLiteDatabase);
            } else if (3 == c3037a.f11167d) {
                String str = c3037a.f11164a;
                String str2 = c3037a.f11165b;
                ArrayList arrayList = new ArrayList();
                C3038b c3038b = new C3038b();
                c3038b.f11168a = str + TrayContract.Preferences.Columns.f10375ID;
                c3038b.f11169b = "integer";
                C3038b c3038b2 = new C3038b();
                c3038b2.f11168a = str2 + TrayContract.Preferences.Columns.f10375ID;
                c3038b2.f11169b = "integer";
                arrayList.add(c3038b);
                arrayList.add(c3038b2);
                String m13952a = C3058c.m13952a(str, str2);
                ArrayList arrayList2 = new ArrayList();
                if (C3058c.m13963c(m13952a, sQLiteDatabase)) {
                    if (z) {
                        arrayList2.add(m13825g(m13952a));
                    }
                    m13906b(arrayList2, sQLiteDatabase);
                    m13817a(m13952a, 1, sQLiteDatabase);
                }
                arrayList2.add(m13815a(m13952a, (List<C3038b>) arrayList, false));
                m13906b(arrayList2, sQLiteDatabase);
                m13817a(m13952a, 1, sQLiteDatabase);
            }
        }
        for (C3039c c3039c : this.f11045c) {
            String str3 = c3039c.f11173a;
            String str4 = c3039c.f11174b;
            String str5 = c3039c.f11175c;
            String str6 = c3039c.f11176d;
            ArrayList arrayList3 = new ArrayList();
            C3038b c3038b3 = new C3038b();
            c3038b3.f11168a = str4;
            c3038b3.f11169b = str5;
            C3038b c3038b4 = new C3038b();
            c3038b4.f11168a = str6;
            c3038b4.f11169b = "integer";
            arrayList3.add(c3038b3);
            arrayList3.add(c3038b4);
            ArrayList arrayList4 = new ArrayList();
            if (C3058c.m13963c(str3, sQLiteDatabase)) {
                if (z) {
                    arrayList4.add(m13825g(str3));
                } else {
                    m13906b(arrayList4, sQLiteDatabase);
                    m13817a(str3, 2, sQLiteDatabase);
                }
            }
            arrayList4.add(m13815a(str3, (List<C3038b>) arrayList3, false));
            m13906b(arrayList4, sQLiteDatabase);
            m13817a(str3, 2, sQLiteDatabase);
        }
    }

    /* renamed from: a */
    private static void m13821a(C3039c c3039c, SQLiteDatabase sQLiteDatabase, boolean z) {
        String str = c3039c.f11173a;
        String str2 = c3039c.f11174b;
        String str3 = c3039c.f11175c;
        String str4 = c3039c.f11176d;
        ArrayList arrayList = new ArrayList();
        C3038b c3038b = new C3038b();
        c3038b.f11168a = str2;
        c3038b.f11169b = str3;
        C3038b c3038b2 = new C3038b();
        c3038b2.f11168a = str4;
        c3038b2.f11169b = "integer";
        arrayList.add(c3038b);
        arrayList.add(c3038b2);
        ArrayList arrayList2 = new ArrayList();
        if (C3058c.m13963c(str, sQLiteDatabase)) {
            if (z) {
                arrayList2.add(m13825g(str));
            }
            m13906b(arrayList2, sQLiteDatabase);
            m13817a(str, 2, sQLiteDatabase);
        }
        arrayList2.add(m13815a(str, (List<C3038b>) arrayList, false));
        m13906b(arrayList2, sQLiteDatabase);
        m13817a(str, 2, sQLiteDatabase);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        if (r3 != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
    
        if (org.litepal.p246g.InterfaceC3057b.c.f11207a.equalsIgnoreCase(r4) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0020, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0006, code lost:
    
        if (r3.moveToFirst() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (r3.getString(r3.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b)).equalsIgnoreCase(r4) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        if (r3.moveToNext() != false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean m13822a(android.database.Cursor r3, java.lang.String r4) {
        /*
            boolean r0 = r3.moveToFirst()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L20
        L8:
            java.lang.String r0 = "name"
            int r0 = r3.getColumnIndexOrThrow(r0)
            java.lang.String r0 = r3.getString(r0)
            boolean r0 = r0.equalsIgnoreCase(r4)
            if (r0 == 0) goto L1a
            r3 = 1
            goto L21
        L1a:
            boolean r0 = r3.moveToNext()
            if (r0 != 0) goto L8
        L20:
            r3 = 0
        L21:
            if (r3 != 0) goto L2c
            java.lang.String r3 = "table_schema"
            boolean r3 = r3.equalsIgnoreCase(r4)
            if (r3 != 0) goto L2c
            return r1
        L2c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p242f.AbstractC3034a.m13822a(android.database.Cursor, java.lang.String):boolean");
    }

    /* renamed from: a */
    private static boolean m13823a(List<C3038b> list) {
        if (list.size() == 0 || (list.size() == 1 && m13692e(list.get(0).f11168a))) {
            return true;
        }
        return list.size() == 2 && m13692e(list.get(0).f11168a) && m13692e(list.get(1).f11168a);
    }

    /* renamed from: b */
    private static boolean m13824b(Cursor cursor, String str) {
        if (!cursor.moveToFirst()) {
            return false;
        }
        while (!cursor.getString(cursor.getColumnIndexOrThrow(InterfaceC3057b.c.f11208b)).equalsIgnoreCase(str)) {
            if (!cursor.moveToNext()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public static String m13825g(String str) {
        return "drop table if exists " + str;
    }

    /* renamed from: h */
    private static boolean m13826h(String str) {
        return (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID) || str.equalsIgnoreCase(TrayContract.Preferences.Columns.f10375ID)) ? false : true;
    }

    /* renamed from: i */
    private static boolean m13827i(String str) {
        return InterfaceC3057b.c.f11207a.equalsIgnoreCase(str);
    }

    @Override // org.litepal.p242f.AbstractC3051f
    /* renamed from: a */
    protected abstract void mo13828a(SQLiteDatabase sQLiteDatabase, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.litepal.p242f.AbstractC3051f
    /* renamed from: b */
    public void mo13829b(SQLiteDatabase sQLiteDatabase, boolean z) {
        for (C3037a c3037a : m13914b()) {
            if (2 == c3037a.f11167d || 1 == c3037a.f11167d) {
                m13819a(c3037a.f11164a, c3037a.f11165b, c3037a.f11166c, sQLiteDatabase);
            } else if (3 == c3037a.f11167d) {
                String str = c3037a.f11164a;
                String str2 = c3037a.f11165b;
                ArrayList arrayList = new ArrayList();
                C3038b c3038b = new C3038b();
                c3038b.f11168a = str + TrayContract.Preferences.Columns.f10375ID;
                c3038b.f11169b = "integer";
                C3038b c3038b2 = new C3038b();
                c3038b2.f11168a = str2 + TrayContract.Preferences.Columns.f10375ID;
                c3038b2.f11169b = "integer";
                arrayList.add(c3038b);
                arrayList.add(c3038b2);
                String m13952a = C3058c.m13952a(str, str2);
                ArrayList arrayList2 = new ArrayList();
                if (C3058c.m13963c(m13952a, sQLiteDatabase)) {
                    if (z) {
                        arrayList2.add(m13825g(m13952a));
                    }
                    m13906b(arrayList2, sQLiteDatabase);
                    m13817a(m13952a, 1, sQLiteDatabase);
                }
                arrayList2.add(m13815a(m13952a, (List<C3038b>) arrayList, false));
                m13906b(arrayList2, sQLiteDatabase);
                m13817a(m13952a, 1, sQLiteDatabase);
            }
        }
        for (C3039c c3039c : this.f11045c) {
            String str3 = c3039c.f11173a;
            String str4 = c3039c.f11174b;
            String str5 = c3039c.f11175c;
            String str6 = c3039c.f11176d;
            ArrayList arrayList3 = new ArrayList();
            C3038b c3038b3 = new C3038b();
            c3038b3.f11168a = str4;
            c3038b3.f11169b = str5;
            C3038b c3038b4 = new C3038b();
            c3038b4.f11168a = str6;
            c3038b4.f11169b = "integer";
            arrayList3.add(c3038b3);
            arrayList3.add(c3038b4);
            ArrayList arrayList4 = new ArrayList();
            if (C3058c.m13963c(str3, sQLiteDatabase)) {
                if (z) {
                    arrayList4.add(m13825g(str3));
                } else {
                    m13906b(arrayList4, sQLiteDatabase);
                    m13817a(str3, 2, sQLiteDatabase);
                }
            }
            arrayList4.add(m13815a(str3, (List<C3038b>) arrayList3, false));
            m13906b(arrayList4, sQLiteDatabase);
            m13817a(str3, 2, sQLiteDatabase);
        }
    }
}
