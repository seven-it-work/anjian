package android.support.v4.util;

/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        Object[] objArr;
        this.mGarbage = false;
        if (i == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            objArr = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i);
            this.mKeys = new long[idealLongArraySize];
            objArr = new Object[idealLongArraySize];
        }
        this.mValues = objArr;
        this.mSize = 0;
    }

    /* renamed from: gc */
    private void m26gc() {
        int i = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != DELETED) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.mGarbage = false;
        this.mSize = i2;
    }

    public void append(long j, E e) {
        if (this.mSize != 0 && j <= this.mKeys[this.mSize - 1]) {
            put(j, e);
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m26gc();
        }
        int i = this.mSize;
        if (i >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr = new Object[idealLongArraySize];
            System.arraycopy(this.mKeys, 0, jArr, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, objArr, 0, this.mValues.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[i] = j;
        this.mValues[i] = e;
        this.mSize = i + 1;
    }

    public void clear() {
        int i = this.mSize;
        Object[] objArr = this.mValues;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m13983clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            try {
                longSparseArray.mKeys = (long[]) this.mKeys.clone();
                longSparseArray.mValues = (Object[]) this.mValues.clone();
                return longSparseArray;
            } catch (CloneNotSupportedException unused) {
                return longSparseArray;
            }
        } catch (CloneNotSupportedException unused2) {
            return null;
        }
    }

    public void delete(long j) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (binarySearch < 0 || this.mValues[binarySearch] == DELETED) {
            return;
        }
        this.mValues[binarySearch] = DELETED;
        this.mGarbage = true;
    }

    public E get(long j) {
        return get(j, null);
    }

    public E get(long j, E e) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        return (binarySearch < 0 || this.mValues[binarySearch] == DELETED) ? e : (E) this.mValues[binarySearch];
    }

    public int indexOfKey(long j) {
        if (this.mGarbage) {
            m26gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
    }

    public int indexOfValue(E e) {
        if (this.mGarbage) {
            m26gc();
        }
        for (int i = 0; i < this.mSize; i++) {
            if (this.mValues[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public long keyAt(int i) {
        if (this.mGarbage) {
            m26gc();
        }
        return this.mKeys[i];
    }

    public void put(long j, E e) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e;
            return;
        }
        int i = binarySearch ^ (-1);
        if (i < this.mSize && this.mValues[i] == DELETED) {
            this.mKeys[i] = j;
            this.mValues[i] = e;
            return;
        }
        if (this.mGarbage && this.mSize >= this.mKeys.length) {
            m26gc();
            i = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j) ^ (-1);
        }
        if (this.mSize >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(this.mSize + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr = new Object[idealLongArraySize];
            System.arraycopy(this.mKeys, 0, jArr, 0, this.mKeys.length);
            System.arraycopy(this.mValues, 0, objArr, 0, this.mValues.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        if (this.mSize - i != 0) {
            int i2 = i + 1;
            System.arraycopy(this.mKeys, i, this.mKeys, i2, this.mSize - i);
            System.arraycopy(this.mValues, i, this.mValues, i2, this.mSize - i);
        }
        this.mKeys[i] = j;
        this.mValues[i] = e;
        this.mSize++;
    }

    public void remove(long j) {
        delete(j);
    }

    public void removeAt(int i) {
        if (this.mValues[i] != DELETED) {
            this.mValues[i] = DELETED;
            this.mGarbage = true;
        }
    }

    public void setValueAt(int i, E e) {
        if (this.mGarbage) {
            m26gc();
        }
        this.mValues[i] = e;
    }

    public int size() {
        if (this.mGarbage) {
            m26gc();
        }
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i = 0; i < this.mSize; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i));
            sb.append('=');
            E valueAt = valueAt(i);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i) {
        if (this.mGarbage) {
            m26gc();
        }
        return (E) this.mValues[i];
    }
}
