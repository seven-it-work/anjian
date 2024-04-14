package android.support.constraint.solver;

import android.support.constraint.solver.SolverVariable;
import com.cyjh.common.util.C1176s;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    private static final int NONE = -1;
    private final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[this.ROW_SIZE];
    private int[] mArrayNextIndices = new int[this.ROW_SIZE];
    private float[] mArrayValues = new float[this.ROW_SIZE];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void add(SolverVariable solverVariable, float f, boolean z) {
        if (f == 0.0f) {
            return;
        }
        if (this.mHead == -1) {
            this.mHead = 0;
            this.mArrayValues[this.mHead] = f;
            this.mArrayIndices[this.mHead] = solverVariable.f14id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            this.mLast++;
            if (this.mLast >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = this.mArrayIndices.length - 1;
                return;
            }
            return;
        }
        int i = this.mHead;
        int i2 = -1;
        for (int i3 = 0; i != -1 && i3 < this.currentSize; i3++) {
            if (this.mArrayIndices[i] == solverVariable.f14id) {
                float[] fArr = this.mArrayValues;
                fArr[i] = fArr[i] + f;
                if (this.mArrayValues[i] == 0.0f) {
                    if (i == this.mHead) {
                        this.mHead = this.mArrayNextIndices[i];
                    } else {
                        this.mArrayNextIndices[i2] = this.mArrayNextIndices[i];
                    }
                    if (z) {
                        solverVariable.removeFromRow(this.mRow);
                    }
                    if (this.mDidFillOnce) {
                        this.mLast = i;
                    }
                    solverVariable.usageInRowCount--;
                    this.currentSize--;
                    return;
                }
                return;
            }
            if (this.mArrayIndices[i] < solverVariable.f14id) {
                i2 = i;
            }
            i = this.mArrayNextIndices[i];
        }
        int i4 = this.mLast + 1;
        if (this.mDidFillOnce) {
            i4 = this.mArrayIndices[this.mLast] == -1 ? this.mLast : this.mArrayIndices.length;
        }
        if (i4 >= this.mArrayIndices.length && this.currentSize < this.mArrayIndices.length) {
            int i5 = 0;
            while (true) {
                if (i5 >= this.mArrayIndices.length) {
                    break;
                }
                if (this.mArrayIndices[i5] == -1) {
                    i4 = i5;
                    break;
                }
                i5++;
            }
        }
        if (i4 >= this.mArrayIndices.length) {
            i4 = this.mArrayIndices.length;
            this.ROW_SIZE *= 2;
            this.mDidFillOnce = false;
            this.mLast = i4 - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[i4] = solverVariable.f14id;
        this.mArrayValues[i4] = f;
        if (i2 != -1) {
            this.mArrayNextIndices[i4] = this.mArrayNextIndices[i2];
            this.mArrayNextIndices[i2] = i4;
        } else {
            this.mArrayNextIndices[i4] = this.mHead;
            this.mHead = i4;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        this.currentSize++;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        if (this.mLast >= this.mArrayIndices.length) {
            this.mDidFillOnce = true;
            this.mLast = this.mArrayIndices.length - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0087 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.support.constraint.solver.SolverVariable chooseSubject(android.support.constraint.solver.LinearSystem r15) {
        /*
            r14 = this;
            int r0 = r14.mHead
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = r1
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
        La:
            r9 = -1
            if (r0 == r9) goto L8f
            int r9 = r14.currentSize
            if (r2 >= r9) goto L8f
            float[] r9 = r14.mArrayValues
            r9 = r9[r0]
            android.support.constraint.solver.Cache r10 = r14.mCache
            android.support.constraint.solver.SolverVariable[] r10 = r10.mIndexedVariables
            int[] r11 = r14.mArrayIndices
            r11 = r11[r0]
            r10 = r10[r11]
            int r11 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r11 >= 0) goto L35
            r11 = -1165815185(0xffffffffba83126f, float:-0.001)
            int r11 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r11 <= 0) goto L41
            float[] r9 = r14.mArrayValues
            r9[r0] = r3
        L2e:
            android.support.constraint.solver.ArrayRow r9 = r14.mRow
            r10.removeFromRow(r9)
            r9 = 0
            goto L41
        L35:
            r11 = 981668463(0x3a83126f, float:0.001)
            int r11 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r11 >= 0) goto L41
            float[] r9 = r14.mArrayValues
            r9[r0] = r3
            goto L2e
        L41:
            int r11 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            r12 = 1
            if (r11 == 0) goto L87
            android.support.constraint.solver.SolverVariable$Type r11 = r10.mType
            android.support.constraint.solver.SolverVariable$Type r13 = android.support.constraint.solver.SolverVariable.Type.UNRESTRICTED
            if (r11 != r13) goto L67
            if (r1 != 0) goto L56
        L4e:
            boolean r1 = r14.isNew(r10, r15)
            r6 = r1
            r5 = r9
            r1 = r10
            goto L87
        L56:
            int r11 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r11 <= 0) goto L5b
            goto L4e
        L5b:
            if (r6 != 0) goto L87
            boolean r11 = r14.isNew(r10, r15)
            if (r11 == 0) goto L87
            r5 = r9
            r1 = r10
            r6 = 1
            goto L87
        L67:
            if (r1 != 0) goto L87
            int r11 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r11 >= 0) goto L87
            if (r4 != 0) goto L77
        L6f:
            boolean r4 = r14.isNew(r10, r15)
            r8 = r4
            r7 = r9
            r4 = r10
            goto L87
        L77:
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 <= 0) goto L7c
            goto L6f
        L7c:
            if (r8 != 0) goto L87
            boolean r11 = r14.isNew(r10, r15)
            if (r11 == 0) goto L87
            r7 = r9
            r4 = r10
            r8 = 1
        L87:
            int[] r9 = r14.mArrayNextIndices
            r0 = r9[r0]
            int r2 = r2 + 1
            goto La
        L8f:
            if (r1 == 0) goto L92
            return r1
        L92:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.ArrayLinkedVariables.chooseSubject(android.support.constraint.solver.LinearSystem):android.support.constraint.solver.SolverVariable");
    }

    public final void clear() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i = this.mArrayNextIndices[i];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean containsKey(SolverVariable solverVariable) {
        if (this.mHead == -1) {
            return false;
        }
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.f14id) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    public void display() {
        int i = this.currentSize;
        System.out.print("{ ");
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(i2) + C1176s.a.f4108a);
            }
        }
        System.out.println(" }");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void divideByAmount(float f) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] / f;
            i = this.mArrayNextIndices[i];
        }
    }

    public final float get(SolverVariable solverVariable) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.f14id) {
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
        }
        return 0.0f;
    }

    SolverVariable getPivotCandidate() {
        if (this.candidate != null) {
            return this.candidate;
        }
        int i = this.mHead;
        SolverVariable solverVariable = null;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable == null || solverVariable.strength < solverVariable2.strength) {
                    solverVariable = solverVariable2;
                }
            }
            i = this.mArrayNextIndices[i];
        }
        return solverVariable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolverVariable getPivotCandidate(boolean[] zArr, SolverVariable solverVariable) {
        int i = this.mHead;
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayValues[i] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if ((zArr == null || !zArr[solverVariable3.f14id]) && solverVariable3 != solverVariable && (solverVariable3.mType == SolverVariable.Type.SLACK || solverVariable3.mType == SolverVariable.Type.ERROR)) {
                    float f2 = this.mArrayValues[i];
                    if (f2 < f) {
                        solverVariable2 = solverVariable3;
                        f = f2;
                    }
                }
            }
            i = this.mArrayNextIndices[i];
        }
        return solverVariable2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SolverVariable getVariable(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i2]];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float getVariableValue(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mArrayValues[i2];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return 0.0f;
    }

    boolean hasAtLeastOnePositiveVariable() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayValues[i] > 0.0f) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invert() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.mArrayNextIndices[i];
        }
    }

    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        if (this.mHead == -1) {
            this.mHead = 0;
            this.mArrayValues[this.mHead] = f;
            this.mArrayIndices[this.mHead] = solverVariable.f14id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            this.mLast++;
            if (this.mLast >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = this.mArrayIndices.length - 1;
                return;
            }
            return;
        }
        int i = this.mHead;
        int i2 = -1;
        for (int i3 = 0; i != -1 && i3 < this.currentSize; i3++) {
            if (this.mArrayIndices[i] == solverVariable.f14id) {
                this.mArrayValues[i] = f;
                return;
            }
            if (this.mArrayIndices[i] < solverVariable.f14id) {
                i2 = i;
            }
            i = this.mArrayNextIndices[i];
        }
        int i4 = this.mLast + 1;
        if (this.mDidFillOnce) {
            i4 = this.mArrayIndices[this.mLast] == -1 ? this.mLast : this.mArrayIndices.length;
        }
        if (i4 >= this.mArrayIndices.length && this.currentSize < this.mArrayIndices.length) {
            int i5 = 0;
            while (true) {
                if (i5 >= this.mArrayIndices.length) {
                    break;
                }
                if (this.mArrayIndices[i5] == -1) {
                    i4 = i5;
                    break;
                }
                i5++;
            }
        }
        if (i4 >= this.mArrayIndices.length) {
            i4 = this.mArrayIndices.length;
            this.ROW_SIZE *= 2;
            this.mDidFillOnce = false;
            this.mLast = i4 - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, this.ROW_SIZE);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[i4] = solverVariable.f14id;
        this.mArrayValues[i4] = f;
        if (i2 != -1) {
            this.mArrayNextIndices[i4] = this.mArrayNextIndices[i2];
            this.mArrayNextIndices[i2] = i4;
        } else {
            this.mArrayNextIndices[i4] = this.mHead;
            this.mHead = i4;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        this.currentSize++;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        if (this.currentSize >= this.mArrayIndices.length) {
            this.mDidFillOnce = true;
        }
        if (this.mLast >= this.mArrayIndices.length) {
            this.mDidFillOnce = true;
            this.mLast = this.mArrayIndices.length - 1;
        }
    }

    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        if (this.mHead == -1) {
            return 0.0f;
        }
        int i = this.mHead;
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.f14id) {
                if (i == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i];
                } else {
                    this.mArrayNextIndices[i3] = this.mArrayNextIndices[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i;
                }
                return this.mArrayValues[i];
            }
            i2++;
            i3 = i;
            i = this.mArrayNextIndices[i];
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        String str = "";
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            str = ((str + " -> ") + this.mArrayValues[i] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            i = this.mArrayNextIndices[i];
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void updateFromRow(ArrayRow arrayRow, ArrayRow arrayRow2, boolean z) {
        int i = this.mHead;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
                if (this.mArrayIndices[i] == arrayRow2.variable.f14id) {
                    float f = this.mArrayValues[i];
                    remove(arrayRow2.variable, z);
                    ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                    int i3 = arrayLinkedVariables.mHead;
                    for (int i4 = 0; i3 != -1 && i4 < arrayLinkedVariables.currentSize; i4++) {
                        add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i3]], arrayLinkedVariables.mArrayValues[i3] * f, z);
                        i3 = arrayLinkedVariables.mArrayNextIndices[i3];
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    if (z) {
                        arrayRow2.variable.removeFromRow(arrayRow);
                    }
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                }
            }
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateFromSystem(ArrayRow arrayRow, ArrayRow[] arrayRowArr) {
        int i = this.mHead;
        while (true) {
            for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
                SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                if (solverVariable.definitionId != -1) {
                    float f = this.mArrayValues[i];
                    remove(solverVariable, true);
                    ArrayRow arrayRow2 = arrayRowArr[solverVariable.definitionId];
                    if (!arrayRow2.isSimpleDefinition) {
                        ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                        int i3 = arrayLinkedVariables.mHead;
                        for (int i4 = 0; i3 != -1 && i4 < arrayLinkedVariables.currentSize; i4++) {
                            add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[i3]], arrayLinkedVariables.mArrayValues[i3] * f, true);
                            i3 = arrayLinkedVariables.mArrayNextIndices[i3];
                        }
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    arrayRow2.variable.removeFromRow(arrayRow);
                    i = this.mHead;
                } else {
                    i = this.mArrayNextIndices[i];
                }
            }
            return;
        }
    }
}
