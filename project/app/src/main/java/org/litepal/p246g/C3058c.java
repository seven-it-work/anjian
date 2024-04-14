package org.litepal.p246g;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.grandcentrix.tray.provider.TrayContract;

/* renamed from: org.litepal.g.c */
/* loaded from: classes2.dex */
public final class C3058c {

    /* renamed from: a */
    private static final String f11213a = "DBUtility";

    /* renamed from: b */
    private static final String f11214b = ",abort,add,after,all,alter,and,as,asc,autoincrement,before,begin,between,by,cascade,check,collate,column,commit,conflict,constraint,create,cross,database,deferrable,deferred,delete,desc,distinct,drop,each,end,escape,except,exclusive,exists,foreign,from,glob,group,having,in,index,inner,insert,intersect,into,is,isnull,join,like,limit,match,natural,not,notnull,null,of,offset,on,or,order,outer,plan,pragma,primary,query,raise,references,regexp,reindex,release,rename,replace,restrict,right,rollback,row,savepoint,select,set,table,temp,temporary,then,to,transaction,trigger,union,unique,update,using,vacuum,values,view,virtual,when,where,";

    /* renamed from: c */
    private static final String f11215c = "_lpcolumn";

    /* renamed from: d */
    private static final String f11216d = "\\s*(=|!=|<>|<|>)";

    /* renamed from: e */
    private static final String f11217e = "\\s+(not\\s+)?(like|between)\\s+";

    /* renamed from: f */
    private static final String f11218f = "\\s+(not\\s+)?(in)\\s*\\(";

    private C3058c() {
    }

    /* renamed from: a */
    public static String m13951a(String str) {
        if (TextUtils.isEmpty(str) || '.' == str.charAt(str.length() - 1)) {
            return null;
        }
        return str.substring(str.lastIndexOf(".") + 1);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: a */
    public static String m13952a(String str, String str2) {
        StringBuilder sb;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        if (str.toLowerCase(Locale.US).compareTo(str2.toLowerCase(Locale.US)) <= 0) {
            sb = new StringBuilder();
            sb.append(str);
            sb.append("_");
            sb.append(str2);
        } else {
            sb = new StringBuilder();
            sb.append(str2);
            sb.append("_");
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m13953a(Field field) {
        return C3054a.m13930a(field.getName() + TrayContract.Preferences.Columns.f10375ID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
    
        r0.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        if (r4.moveToNext() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        if (r4 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
    
        if (r4.moveToFirst() != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
    
        r1 = r4.getString(r4.getColumnIndexOrThrow("tbl_name"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if (r0.contains(r1) != false) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<java.lang.String> m13954a(android.database.sqlite.SQLiteDatabase r4) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.String r2 = "select * from sqlite_master where type = ?"
            java.lang.String r3 = "table"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f
            android.database.Cursor r4 = r4.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f
            boolean r1 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            if (r1 == 0) goto L31
        L18:
            java.lang.String r1 = "tbl_name"
            int r1 = r4.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            java.lang.String r1 = r4.getString(r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            boolean r2 = r0.contains(r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            if (r2 != 0) goto L2b
            r0.add(r1)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
        L2b:
            boolean r1 = r4.moveToNext()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            if (r1 != 0) goto L18
        L31:
            if (r4 == 0) goto L36
            r4.close()
        L36:
            return r0
        L37:
            r0 = move-exception
            r1 = r4
            goto L4d
        L3a:
            r0 = move-exception
            r1 = r4
            goto L40
        L3d:
            r0 = move-exception
            goto L4d
        L3f:
            r0 = move-exception
        L40:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L3d
            org.litepal.c.b r4 = new org.litepal.c.b     // Catch: java.lang.Throwable -> L3d
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L3d
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L3d
            throw r4     // Catch: java.lang.Throwable -> L3d
        L4d:
            if (r1 == 0) goto L52
            r1.close()
        L52:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13954a(android.database.sqlite.SQLiteDatabase):java.util.List");
    }

    /* renamed from: a */
    private static List<String> m13955a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m13951a(it.next()));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        if (r0 != 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        if (r9.equalsIgnoreCase(r10.getString(r10.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b))) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
    
        r0 = r10.moveToNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0049, code lost:
    
        if (r0 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        if (r10.getInt(r10.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11209c)) != 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        if (r10 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x004b, code lost:
    
        if (r10 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        r10.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m13956a(java.lang.String r9, android.database.sqlite.SQLiteDatabase r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L69
            java.lang.String r0 = "[0-9a-zA-Z]+_[0-9a-zA-Z]+"
            boolean r0 = r9.matches(r0)
            if (r0 == 0) goto L69
            r0 = 0
            java.lang.String r2 = "table_schema"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L56 java.lang.Exception -> L59
            boolean r0 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r0 == 0) goto L4b
        L22:
            java.lang.String r0 = "name"
            int r0 = r10.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            java.lang.String r0 = r10.getString(r0)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            boolean r0 = r9.equalsIgnoreCase(r0)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r0 == 0) goto L45
            java.lang.String r9 = "type"
            int r9 = r10.getColumnIndexOrThrow(r9)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            int r9 = r10.getInt(r9)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            r0 = 1
            if (r9 != r0) goto L4b
            if (r10 == 0) goto L44
            r10.close()
        L44:
            return r0
        L45:
            boolean r0 = r10.moveToNext()     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L53
            if (r0 != 0) goto L22
        L4b:
            if (r10 == 0) goto L69
            r10.close()
            goto L69
        L51:
            r9 = move-exception
            goto L63
        L53:
            r9 = move-exception
            r0 = r10
            goto L5a
        L56:
            r9 = move-exception
            r10 = r0
            goto L63
        L59:
            r9 = move-exception
        L5a:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L56
            if (r0 == 0) goto L69
            r0.close()
            goto L69
        L63:
            if (r10 == 0) goto L68
            r10.close()
        L68:
            throw r9
        L69:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13956a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        if (r5.moveToFirst() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        if (r4.equalsIgnoreCase(r5.getString(r5.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b))) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        if (r5.moveToNext() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        if (r5 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
    
        return r1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m13957a(java.lang.String r4, java.lang.String r5, android.database.sqlite.SQLiteDatabase r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 != 0) goto L62
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto Le
            return r1
        Le:
            r0 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.String r3 = "pragma table_info("
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            r2.append(r5)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.String r5 = ")"
            r2.append(r5)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            android.database.Cursor r5 = r6.rawQuery(r5, r0)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            boolean r6 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            if (r6 == 0) goto L44
        L2c:
            java.lang.String r6 = "name"
            int r6 = r5.getColumnIndexOrThrow(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            java.lang.String r6 = r5.getString(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            boolean r6 = r4.equalsIgnoreCase(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            if (r6 == 0) goto L3e
            r1 = 1
            goto L44
        L3e:
            boolean r6 = r5.moveToNext()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4d
            if (r6 != 0) goto L2c
        L44:
            if (r5 == 0) goto L5b
            r5.close()
            return r1
        L4a:
            r4 = move-exception
            r0 = r5
            goto L5c
        L4d:
            r4 = move-exception
            r0 = r5
            goto L53
        L50:
            r4 = move-exception
            goto L5c
        L52:
            r4 = move-exception
        L53:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L5b
            r0.close()
        L5b:
            return r1
        L5c:
            if (r0 == 0) goto L61
            r0.close()
        L61:
            throw r4
        L62:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13957a(java.lang.String, java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    /* renamed from: a */
    public static String[] m13958a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = m13964d(strArr[i]);
        }
        return strArr2;
    }

    /* renamed from: b */
    public static String m13959b(String str) {
        return C3054a.m13930a(m13951a(str) + TrayContract.Preferences.Columns.f10375ID);
    }

    /* renamed from: b */
    public static String m13960b(String str, String str2) {
        return C3054a.m13930a(m13951a(str) + "_" + str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        if (r10.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        if (r9.equalsIgnoreCase(r10.getString(r10.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b))) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
    
        if (r10.moveToNext() != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        if (r10.getInt(r10.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11209c)) != 2) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        if (r10 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
    
        if (r10 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return false;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m13961b(java.lang.String r9, android.database.sqlite.SQLiteDatabase r10) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L6a
            java.lang.String r0 = "[0-9a-zA-Z]+_[0-9a-zA-Z]+"
            boolean r0 = r9.matches(r0)
            if (r0 == 0) goto L6a
            r0 = 0
            java.lang.String r2 = "table_schema"
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r10
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L5a
            boolean r0 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r0 == 0) goto L4c
        L22:
            java.lang.String r0 = "name"
            int r0 = r10.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            java.lang.String r0 = r10.getString(r0)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            boolean r0 = r9.equalsIgnoreCase(r0)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r0 == 0) goto L46
            java.lang.String r9 = "type"
            int r9 = r10.getColumnIndexOrThrow(r9)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            int r9 = r10.getInt(r9)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            r0 = 2
            if (r9 != r0) goto L4c
            if (r10 == 0) goto L44
            r10.close()
        L44:
            r9 = 1
            return r9
        L46:
            boolean r0 = r10.moveToNext()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r0 != 0) goto L22
        L4c:
            if (r10 == 0) goto L6a
            r10.close()
            goto L6a
        L52:
            r9 = move-exception
            goto L64
        L54:
            r9 = move-exception
            r0 = r10
            goto L5b
        L57:
            r9 = move-exception
            r10 = r0
            goto L64
        L5a:
            r9 = move-exception
        L5b:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L6a
            r0.close()
            goto L6a
        L64:
            if (r10 == 0) goto L69
            r10.close()
        L69:
            throw r9
        L6a:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13961b(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    /* renamed from: c */
    public static boolean m13962c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        StringBuilder sb = new StringBuilder(",");
        sb.append(str.toLowerCase(Locale.US));
        sb.append(",");
        return f11214b.contains(sb.toString());
    }

    /* renamed from: c */
    public static boolean m13963c(String str, SQLiteDatabase sQLiteDatabase) {
        try {
            return C3054a.m13934a(m13954a(sQLiteDatabase), str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public static String m13964d(String str) {
        if (!m13962c(str)) {
            return str;
        }
        return str + f11215c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
    
        r8 = new org.litepal.p242f.p244b.C3038b();
        r2 = r7.getString(r7.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11208b));
        r3 = r7.getString(r7.getColumnIndexOrThrow(org.litepal.p246g.InterfaceC3057b.c.f11209c));
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0053, code lost:
    
        if (r7.getInt(r7.getColumnIndexOrThrow("notnull")) == 1) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
    
        r4 = r0.contains(r2);
        r6 = r7.getString(r7.getColumnIndexOrThrow("dflt_value"));
        r8.f11168a = r2;
        r8.f11169b = r3;
        r8.f11170c = r5;
        r8.f11171d = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006d, code lost:
    
        if (r6 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006f, code lost:
    
        r2 = r6.replace("'", "");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
    
        r8.m13871a(r2);
        r1.m13889a(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0084, code lost:
    
        if (r7.moveToNext() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
    
        r2 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        if (r7 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0088, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        if (r7.moveToFirst() != false) goto L8;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.litepal.p242f.p244b.C3040d m13965d(java.lang.String r7, android.database.sqlite.SQLiteDatabase r8) {
        /*
            boolean r0 = m13963c(r7, r8)
            if (r0 == 0) goto La8
            java.util.List r0 = m13967e(r7, r8)
            org.litepal.f.b.d r1 = new org.litepal.f.b.d
            r1.<init>()
            r1.f11178a = r7
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "pragma table_info("
            r2.<init>(r3)
            r2.append(r7)
            java.lang.String r7 = ")"
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            r2 = 0
            android.database.Cursor r7 = r8.rawQuery(r7, r2)     // Catch: java.lang.Throwable -> L91 java.lang.Exception -> L94
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r8 == 0) goto L86
        L2f:
            org.litepal.f.b.b r8 = new org.litepal.f.b.b     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r8.<init>()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r2 = "name"
            int r2 = r7.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r2 = r7.getString(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r3 = "type"
            int r3 = r7.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r3 = r7.getString(r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r4 = "notnull"
            int r4 = r7.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            int r4 = r7.getInt(r4)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r5 = 1
            if (r4 == r5) goto L56
            goto L57
        L56:
            r5 = 0
        L57:
            boolean r4 = r0.contains(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r6 = "dflt_value"
            int r6 = r7.getColumnIndexOrThrow(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            java.lang.String r6 = r7.getString(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r8.f11168a = r2     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r8.f11169b = r3     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r8.f11170c = r5     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r8.f11171d = r4     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r6 == 0) goto L78
            java.lang.String r2 = "'"
            java.lang.String r3 = ""
            java.lang.String r2 = r6.replace(r2, r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            goto L7a
        L78:
            java.lang.String r2 = ""
        L7a:
            r8.m13871a(r2)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            r1.m13889a(r8)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            boolean r8 = r7.moveToNext()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L8e
            if (r8 != 0) goto L2f
        L86:
            if (r7 == 0) goto L8b
            r7.close()
        L8b:
            return r1
        L8c:
            r8 = move-exception
            goto La2
        L8e:
            r8 = move-exception
            r2 = r7
            goto L95
        L91:
            r8 = move-exception
            r7 = r2
            goto La2
        L94:
            r8 = move-exception
        L95:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L91
            org.litepal.c.b r7 = new org.litepal.c.b     // Catch: java.lang.Throwable -> L91
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L91
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L91
            throw r7     // Catch: java.lang.Throwable -> L91
        La2:
            if (r7 == 0) goto La7
            r7.close()
        La7:
            throw r8
        La8:
            org.litepal.c.b r8 = new org.litepal.c.b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Table doesn't exist when executing "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13965d(java.lang.String, android.database.sqlite.SQLiteDatabase):org.litepal.f.b.d");
    }

    /* renamed from: e */
    public static String m13966e(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("(\\w+\\s*(=|!=|<>|<|>)|\\w+\\s+(not\\s+)?(like|between)\\s+|\\w+\\s+(not\\s+)?(in)\\s*\\()").matcher(str);
                while (matcher.find()) {
                    String group = matcher.group();
                    String replaceAll = group.replaceAll("(\\s*(=|!=|<>|<|>)|\\s+(not\\s+)?(like|between)\\s+|\\s+(not\\s+)?(in)\\s*\\()", "");
                    String replace = group.replace(replaceAll, "");
                    matcher.appendReplacement(stringBuffer, m13964d(replaceAll) + replace);
                }
                matcher.appendTail(stringBuffer);
                return stringBuffer.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.util.List<java.lang.String> m13967e(java.lang.String r6, android.database.sqlite.SQLiteDatabase r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String r3 = "pragma index_list("
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            r2.append(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String r6 = ")"
            r2.append(r6)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            android.database.Cursor r6 = r7.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> L8c java.lang.Exception -> L90
            boolean r2 = r6.moveToFirst()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L88
            if (r2 == 0) goto L7a
            r2 = r1
        L24:
            java.lang.String r3 = "unique"
            int r3 = r6.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            int r3 = r6.getInt(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            r4 = 1
            if (r3 != r4) goto L6e
            java.lang.String r3 = "name"
            int r3 = r6.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.String r3 = r6.getString(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.String r5 = "pragma index_info("
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            r4.append(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.String r3 = ")"
            r4.append(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            android.database.Cursor r3 = r7.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            boolean r2 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6a
            if (r2 == 0) goto L65
            java.lang.String r2 = "name"
            int r2 = r3.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6a
            java.lang.String r2 = r3.getString(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6a
            r0.add(r2)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6a
        L65:
            r2 = r3
            goto L6e
        L67:
            r7 = move-exception
            r2 = r3
            goto La1
        L6a:
            r7 = move-exception
            r1 = r6
            r2 = r3
            goto L92
        L6e:
            boolean r3 = r6.moveToNext()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            if (r3 != 0) goto L24
            r1 = r2
            goto L7a
        L76:
            r7 = move-exception
            goto La1
        L78:
            r7 = move-exception
            goto L8a
        L7a:
            if (r6 == 0) goto L7f
            r6.close()
        L7f:
            if (r1 == 0) goto L84
            r1.close()
        L84:
            return r0
        L85:
            r7 = move-exception
            r2 = r1
            goto La1
        L88:
            r7 = move-exception
            r2 = r1
        L8a:
            r1 = r6
            goto L92
        L8c:
            r7 = move-exception
            r6 = r1
            r2 = r6
            goto La1
        L90:
            r7 = move-exception
            r2 = r1
        L92:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L9f
            org.litepal.c.b r6 = new org.litepal.c.b     // Catch: java.lang.Throwable -> L9f
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> L9f
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L9f
            throw r6     // Catch: java.lang.Throwable -> L9f
        L9f:
            r7 = move-exception
            r6 = r1
        La1:
            if (r6 == 0) goto La6
            r6.close()
        La6:
            if (r2 == 0) goto Lab
            r2.close()
        Lab:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.litepal.p246g.C3058c.m13967e(java.lang.String, android.database.sqlite.SQLiteDatabase):java.util.List");
    }

    /* renamed from: f */
    public static String m13968f(String str) {
        String str2;
        if (str.endsWith("asc")) {
            str = str.replace("asc", "").trim();
            str2 = " asc";
        } else if (str.endsWith("desc")) {
            str = str.replace("desc", "").trim();
            str2 = " desc";
        } else {
            str2 = "";
        }
        return m13964d(str) + str2;
    }

    /* renamed from: g */
    private static String m13969g(String str) {
        if (TextUtils.isEmpty(str) || !str.toLowerCase(Locale.US).endsWith(TrayContract.Preferences.Columns.f10375ID)) {
            return null;
        }
        return str.substring(0, str.length() - 3);
    }

    /* renamed from: h */
    private static String m13970h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (!lowerCase.contains(",")) {
            return m13968f(lowerCase);
        }
        String[] split = lowerCase.split(",");
        StringBuilder sb = new StringBuilder();
        int length = split.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            String str2 = split[i];
            if (z) {
                sb.append(",");
            }
            sb.append(m13968f(str2));
            i++;
            z = true;
        }
        return sb.toString();
    }
}
