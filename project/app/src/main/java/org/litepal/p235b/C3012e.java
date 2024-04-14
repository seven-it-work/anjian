package org.litepal.p235b;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.C3033f;
import org.litepal.p235b.p236a.C3000f;
import org.litepal.p235b.p236a.C3001g;
import org.litepal.p239c.C3024e;
import org.litepal.p242f.C3041c;
import org.litepal.p246g.C3054a;
import org.litepal.p246g.C3058c;

/* renamed from: org.litepal.b.e */
/* loaded from: classes2.dex */
public class C3012e {
    protected static final String AES = "AES";
    protected static final String MD5 = "MD5";
    Map<String, List<Long>> associatedModelsMapForJoinTable;
    private Map<String, Set<Long>> associatedModelsMapWithFK;
    private Map<String, Long> associatedModelsMapWithoutFK;
    long baseObjId;
    private List<String> fieldsToSetToDefault;
    private List<String> listToClearAssociatedFK;
    private List<String> listToClearSelfFK;

    private void clearFKNameList() {
        getListToClearSelfFK().clear();
        getListToClearAssociatedFK().clear();
    }

    private void clearIdOfModelForJoinTable() {
        Iterator<String> it = getAssociatedModelsMapForJoinTable().keySet().iterator();
        while (it.hasNext()) {
            this.associatedModelsMapForJoinTable.get(it.next()).clear();
        }
        this.associatedModelsMapForJoinTable.clear();
    }

    private void clearIdOfModelWithFK() {
        Iterator<String> it = getAssociatedModelsMapWithFK().keySet().iterator();
        while (it.hasNext()) {
            this.associatedModelsMapWithFK.get(it.next()).clear();
        }
        this.associatedModelsMapWithFK.clear();
    }

    private void clearIdOfModelWithoutFK() {
        getAssociatedModelsMapWithoutFK().clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAssociatedModelForJoinTable(String str, long j) {
        List<Long> list = getAssociatedModelsMapForJoinTable().get(str);
        if (list != null) {
            list.add(Long.valueOf(j));
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        this.associatedModelsMapForJoinTable.put(str, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAssociatedModelWithFK(String str, long j) {
        Set<Long> set = getAssociatedModelsMapWithFK().get(str);
        if (set != null) {
            set.add(Long.valueOf(j));
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(Long.valueOf(j));
        this.associatedModelsMapWithFK.put(str, hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAssociatedModelWithoutFK(String str, long j) {
        getAssociatedModelsMapWithoutFK().put(str, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addAssociatedTableNameToClearFK(String str) {
        List<String> listToClearAssociatedFK = getListToClearAssociatedFK();
        if (listToClearAssociatedFK.contains(str)) {
            return;
        }
        listToClearAssociatedFK.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addEmptyModelForJoinTable(String str) {
        if (getAssociatedModelsMapForJoinTable().get(str) == null) {
            this.associatedModelsMapForJoinTable.put(str, new ArrayList());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addFKNameToClearSelf(String str) {
        List<String> listToClearSelfFK = getListToClearSelfFK();
        if (listToClearSelfFK.contains(str)) {
            return;
        }
        listToClearSelfFK.add(str);
    }

    public void assignBaseObjId(int i) {
        this.baseObjId = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearAssociatedData() {
        clearIdOfModelWithFK();
        clearIdOfModelWithoutFK();
        clearIdOfModelForJoinTable();
        clearFKNameList();
    }

    public void clearSavedState() {
        this.baseObjId = 0L;
    }

    public int delete() {
        int m13533b;
        synchronized (C3012e.class) {
            SQLiteDatabase m13891a = C3041c.m13891a();
            m13891a.beginTransaction();
            try {
                m13533b = new C3009c(m13891a).m13533b(this);
                this.baseObjId = 0L;
                m13891a.setTransactionSuccessful();
            } finally {
                m13891a.endTransaction();
            }
        }
        return m13533b;
    }

    public C3001g deleteAsync() {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.b.e.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int delete = C3012e.this.delete();
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.b.e.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, List<Long>> getAssociatedModelsMapForJoinTable() {
        if (this.associatedModelsMapForJoinTable == null) {
            this.associatedModelsMapForJoinTable = new HashMap();
        }
        return this.associatedModelsMapForJoinTable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Set<Long>> getAssociatedModelsMapWithFK() {
        if (this.associatedModelsMapWithFK == null) {
            this.associatedModelsMapWithFK = new HashMap();
        }
        return this.associatedModelsMapWithFK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Long> getAssociatedModelsMapWithoutFK() {
        if (this.associatedModelsMapWithoutFK == null) {
            this.associatedModelsMapWithoutFK = new HashMap();
        }
        return this.associatedModelsMapWithoutFK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getBaseObjId() {
        return this.baseObjId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getClassName() {
        return getClass().getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> getFieldsToSetToDefault() {
        if (this.fieldsToSetToDefault == null) {
            this.fieldsToSetToDefault = new ArrayList();
        }
        return this.fieldsToSetToDefault;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> getListToClearAssociatedFK() {
        if (this.listToClearAssociatedFK == null) {
            this.listToClearAssociatedFK = new ArrayList();
        }
        return this.listToClearAssociatedFK;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> getListToClearSelfFK() {
        if (this.listToClearSelfFK == null) {
            this.listToClearSelfFK = new ArrayList();
        }
        return this.listToClearSelfFK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getTableName() {
        return C3054a.m13930a(C3058c.m13951a(getClassName()));
    }

    public boolean isSaved() {
        return this.baseObjId > 0;
    }

    public boolean save() {
        try {
            saveThrows();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public C3000f saveAsync() {
        final C3000f c3000f = new C3000f();
        c3000f.f10995a = new Runnable() { // from class: org.litepal.b.e.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final boolean save = C3012e.this.save();
                    if (c3000f.f11000b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.b.e.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3000f;
    }

    @Deprecated
    public boolean saveIfNotExist(String... strArr) {
        if (C3033f.m13798c(getClass(), strArr)) {
            return false;
        }
        return save();
    }

    public boolean saveOrUpdate(String... strArr) {
        synchronized (C3012e.class) {
            try {
                if (strArr == null) {
                    return save();
                }
                List m13442a = C3033f.m13787b(strArr).m13442a((Class) getClass(), false);
                if (m13442a.isEmpty()) {
                    return save();
                }
                SQLiteDatabase m13891a = C3041c.m13891a();
                m13891a.beginTransaction();
                try {
                    Iterator it = m13442a.iterator();
                    while (it.hasNext()) {
                        this.baseObjId = ((C3012e) it.next()).getBaseObjId();
                        new C3017j(m13891a).m13598b(this);
                        clearAssociatedData();
                    }
                    m13891a.setTransactionSuccessful();
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                } finally {
                    m13891a.endTransaction();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public C3000f saveOrUpdateAsync(final String... strArr) {
        final C3000f c3000f = new C3000f();
        c3000f.f10995a = new Runnable() { // from class: org.litepal.b.e.5
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final boolean saveOrUpdate = C3012e.this.saveOrUpdate(strArr);
                    if (c3000f.f11000b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.b.e.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3000f;
    }

    public void saveThrows() {
        synchronized (C3012e.class) {
            SQLiteDatabase m13891a = C3041c.m13891a();
            m13891a.beginTransaction();
            try {
                try {
                    new C3017j(m13891a).m13598b(this);
                    clearAssociatedData();
                    m13891a.setTransactionSuccessful();
                } catch (Exception e) {
                    throw new C3024e(e.getMessage(), e);
                }
            } finally {
                m13891a.endTransaction();
            }
        }
    }

    public void setToDefault(String str) {
        getFieldsToSetToDefault().add(str);
    }

    public int update(long j) {
        int m13610b;
        synchronized (C3012e.class) {
            try {
                try {
                    m13610b = new C3018k(C3041c.m13891a()).m13610b(this, j);
                    getFieldsToSetToDefault().clear();
                } catch (Exception e) {
                    throw new C3024e(e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m13610b;
    }

    public int updateAll(String... strArr) {
        int m13609a;
        synchronized (C3012e.class) {
            try {
                try {
                    m13609a = new C3018k(C3041c.m13891a()).m13609a(this, strArr);
                    getFieldsToSetToDefault().clear();
                } catch (Exception e) {
                    throw new C3024e(e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m13609a;
    }

    public C3001g updateAllAsync(final String... strArr) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.b.e.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int updateAll = C3012e.this.updateAll(strArr);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.b.e.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }

    public C3001g updateAsync(final long j) {
        final C3001g c3001g = new C3001g();
        c3001g.f10995a = new Runnable() { // from class: org.litepal.b.e.2
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (C3012e.class) {
                    final int update = C3012e.this.update(j);
                    if (c3001g.f11001b != null) {
                        C3033f.m13754a().post(new Runnable() { // from class: org.litepal.b.e.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                }
            }
        };
        return c3001g;
    }
}
