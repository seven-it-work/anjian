package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintWidget;
import com.googlecode.tesseract.android.TessBaseAPI;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ConstraintTableLayout extends ConstraintWidgetContainer {
    public static final int ALIGN_CENTER = 0;
    private static final int ALIGN_FULL = 3;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    private ArrayList<Guideline> mHorizontalGuidelines;
    private ArrayList<HorizontalSlice> mHorizontalSlices;
    private int mNumCols;
    private int mNumRows;
    private int mPadding;
    private boolean mVerticalGrowth;
    private ArrayList<Guideline> mVerticalGuidelines;
    private ArrayList<VerticalSlice> mVerticalSlices;
    private LinearSystem system;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class HorizontalSlice {
        ConstraintWidget bottom;
        int padding;
        ConstraintWidget top;

        HorizontalSlice() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class VerticalSlice {
        int alignment = 1;
        ConstraintWidget left;
        int padding;
        ConstraintWidget right;

        VerticalSlice() {
        }
    }

    public ConstraintTableLayout() {
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    public ConstraintTableLayout(int i, int i2) {
        super(i, i2);
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    public ConstraintTableLayout(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mVerticalGrowth = true;
        this.mNumCols = 0;
        this.mNumRows = 0;
        this.mPadding = 8;
        this.mVerticalSlices = new ArrayList<>();
        this.mHorizontalSlices = new ArrayList<>();
        this.mVerticalGuidelines = new ArrayList<>();
        this.mHorizontalGuidelines = new ArrayList<>();
        this.system = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void setChildrenConnections() {
        /*
            r11 = this;
            java.util.ArrayList<android.support.constraint.solver.widgets.ConstraintWidget> r0 = r11.mChildren
            int r0 = r0.size()
            r1 = 0
            r2 = 0
        L8:
            if (r1 >= r0) goto Ld3
            java.util.ArrayList<android.support.constraint.solver.widgets.ConstraintWidget> r3 = r11.mChildren
            java.lang.Object r3 = r3.get(r1)
            android.support.constraint.solver.widgets.ConstraintWidget r3 = (android.support.constraint.solver.widgets.ConstraintWidget) r3
            int r4 = r3.getContainerItemSkip()
            int r2 = r2 + r4
            int r4 = r11.mNumCols
            int r4 = r2 % r4
            int r5 = r11.mNumCols
            int r5 = r2 / r5
            java.util.ArrayList<android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice> r6 = r11.mHorizontalSlices
            java.lang.Object r5 = r6.get(r5)
            android.support.constraint.solver.widgets.ConstraintTableLayout$HorizontalSlice r5 = (android.support.constraint.solver.widgets.ConstraintTableLayout.HorizontalSlice) r5
            java.util.ArrayList<android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice> r6 = r11.mVerticalSlices
            java.lang.Object r4 = r6.get(r4)
            android.support.constraint.solver.widgets.ConstraintTableLayout$VerticalSlice r4 = (android.support.constraint.solver.widgets.ConstraintTableLayout.VerticalSlice) r4
            android.support.constraint.solver.widgets.ConstraintWidget r6 = r4.left
            android.support.constraint.solver.widgets.ConstraintWidget r7 = r4.right
            android.support.constraint.solver.widgets.ConstraintWidget r8 = r5.top
            android.support.constraint.solver.widgets.ConstraintWidget r5 = r5.bottom
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r9 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT
            android.support.constraint.solver.widgets.ConstraintAnchor r9 = r3.getAnchor(r9)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT
            android.support.constraint.solver.widgets.ConstraintAnchor r6 = r6.getAnchor(r10)
            int r10 = r11.mPadding
            r9.connect(r6, r10)
            boolean r6 = r7 instanceof android.support.constraint.solver.widgets.Guideline
            if (r6 == 0) goto L5e
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT
            android.support.constraint.solver.widgets.ConstraintAnchor r6 = r3.getAnchor(r6)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r9 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT
        L54:
            android.support.constraint.solver.widgets.ConstraintAnchor r7 = r7.getAnchor(r9)
            int r9 = r11.mPadding
            r6.connect(r7, r9)
            goto L67
        L5e:
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT
            android.support.constraint.solver.widgets.ConstraintAnchor r6 = r3.getAnchor(r6)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r9 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT
            goto L54
        L67:
            int r4 = r4.alignment
            switch(r4) {
                case 1: goto L87;
                case 2: goto L73;
                case 3: goto L6d;
                default: goto L6c;
            }
        L6c:
            goto L9d
        L6d:
            android.support.constraint.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r3.setHorizontalDimensionBehaviour(r4)
            goto L9d
        L73:
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Strength r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.WEAK
            r4.setStrength(r6)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Strength r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG
            goto L9a
        L87:
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Strength r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG
            r4.setStrength(r6)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Strength r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.WEAK
        L9a:
            r4.setStrength(r6)
        L9d:
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r6 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP
            android.support.constraint.solver.widgets.ConstraintAnchor r6 = r8.getAnchor(r6)
            int r7 = r11.mPadding
            r4.connect(r6, r7)
            boolean r4 = r5 instanceof android.support.constraint.solver.widgets.Guideline
            if (r4 == 0) goto Lc4
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM
            android.support.constraint.solver.widgets.ConstraintAnchor r3 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP
        Lba:
            android.support.constraint.solver.widgets.ConstraintAnchor r4 = r5.getAnchor(r4)
            int r5 = r11.mPadding
            r3.connect(r4, r5)
            goto Lcd
        Lc4:
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM
            android.support.constraint.solver.widgets.ConstraintAnchor r3 = r3.getAnchor(r4)
            android.support.constraint.solver.widgets.ConstraintAnchor$Type r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM
            goto Lba
        Lcd:
            int r2 = r2 + 1
            int r1 = r1 + 1
            goto L8
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintTableLayout.setChildrenConnections():void");
    }

    private void setHorizontalSlices() {
        this.mHorizontalSlices.clear();
        float f = 100.0f / this.mNumRows;
        ConstraintWidget constraintWidget = this;
        float f2 = f;
        for (int i = 0; i < this.mNumRows; i++) {
            HorizontalSlice horizontalSlice = new HorizontalSlice();
            horizontalSlice.top = constraintWidget;
            if (i < this.mNumRows - 1) {
                Guideline guideline = new Guideline();
                guideline.setOrientation(0);
                guideline.setParent(this);
                guideline.setGuidePercent((int) f2);
                f2 += f;
                horizontalSlice.bottom = guideline;
                this.mHorizontalGuidelines.add(guideline);
            } else {
                horizontalSlice.bottom = this;
            }
            constraintWidget = horizontalSlice.bottom;
            this.mHorizontalSlices.add(horizontalSlice);
        }
        updateDebugSolverNames();
    }

    private void setVerticalSlices() {
        this.mVerticalSlices.clear();
        float f = 100.0f / this.mNumCols;
        ConstraintWidget constraintWidget = this;
        float f2 = f;
        for (int i = 0; i < this.mNumCols; i++) {
            VerticalSlice verticalSlice = new VerticalSlice();
            verticalSlice.left = constraintWidget;
            if (i < this.mNumCols - 1) {
                Guideline guideline = new Guideline();
                guideline.setOrientation(1);
                guideline.setParent(this);
                guideline.setGuidePercent((int) f2);
                f2 += f;
                verticalSlice.right = guideline;
                this.mVerticalGuidelines.add(guideline);
            } else {
                verticalSlice.right = this;
            }
            constraintWidget = verticalSlice.right;
            this.mVerticalSlices.add(verticalSlice);
        }
        updateDebugSolverNames();
    }

    private void updateDebugSolverNames() {
        if (this.system == null) {
            return;
        }
        int size = this.mVerticalGuidelines.size();
        for (int i = 0; i < size; i++) {
            this.mVerticalGuidelines.get(i).setDebugSolverName(this.system, getDebugName() + ".VG" + i);
        }
        int size2 = this.mHorizontalGuidelines.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.mHorizontalGuidelines.get(i2).setDebugSolverName(this.system, getDebugName() + ".HG" + i2);
        }
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        super.addToSolver(linearSystem);
        int size = this.mChildren.size();
        if (size == 0) {
            return;
        }
        setTableDimensions();
        if (linearSystem == this.mSystem) {
            int size2 = this.mVerticalGuidelines.size();
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= size2) {
                    break;
                }
                Guideline guideline = this.mVerticalGuidelines.get(i);
                if (getHorizontalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z = false;
                }
                guideline.setPositionRelaxed(z);
                guideline.addToSolver(linearSystem);
                i++;
            }
            int size3 = this.mHorizontalGuidelines.size();
            for (int i2 = 0; i2 < size3; i2++) {
                Guideline guideline2 = this.mHorizontalGuidelines.get(i2);
                guideline2.setPositionRelaxed(getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                guideline2.addToSolver(linearSystem);
            }
            for (int i3 = 0; i3 < size; i3++) {
                this.mChildren.get(i3).addToSolver(linearSystem);
            }
        }
    }

    public void computeGuidelinesPercentPositions() {
        int size = this.mVerticalGuidelines.size();
        for (int i = 0; i < size; i++) {
            this.mVerticalGuidelines.get(i).inferRelativePercentPosition();
        }
        int size2 = this.mHorizontalGuidelines.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.mHorizontalGuidelines.get(i2).inferRelativePercentPosition();
        }
    }

    public void cycleColumnAlignment(int i) {
        int i2;
        VerticalSlice verticalSlice = this.mVerticalSlices.get(i);
        switch (verticalSlice.alignment) {
            case 0:
                i2 = 2;
                break;
            case 1:
                i2 = 0;
                break;
            case 2:
                i2 = 1;
                break;
        }
        verticalSlice.alignment = i2;
        setChildrenConnections();
    }

    public String getColumnAlignmentRepresentation(int i) {
        VerticalSlice verticalSlice = this.mVerticalSlices.get(i);
        return verticalSlice.alignment == 1 ? "L" : verticalSlice.alignment == 0 ? "C" : verticalSlice.alignment == 3 ? TessBaseAPI.f8031f : verticalSlice.alignment == 2 ? "R" : "!";
    }

    public String getColumnsAlignmentRepresentation() {
        StringBuilder sb;
        String str;
        int size = this.mVerticalSlices.size();
        String str2 = "";
        for (int i = 0; i < size; i++) {
            VerticalSlice verticalSlice = this.mVerticalSlices.get(i);
            if (verticalSlice.alignment == 1) {
                sb = new StringBuilder();
                sb.append(str2);
                str = "L";
            } else if (verticalSlice.alignment == 0) {
                sb = new StringBuilder();
                sb.append(str2);
                str = "C";
            } else if (verticalSlice.alignment == 3) {
                sb = new StringBuilder();
                sb.append(str2);
                str = TessBaseAPI.f8031f;
            } else if (verticalSlice.alignment == 2) {
                sb = new StringBuilder();
                sb.append(str2);
                str = "R";
            }
            sb.append(str);
            str2 = sb.toString();
        }
        return str2;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidgetContainer
    public ArrayList<Guideline> getHorizontalGuidelines() {
        return this.mHorizontalGuidelines;
    }

    public int getNumCols() {
        return this.mNumCols;
    }

    public int getNumRows() {
        return this.mNumRows;
    }

    public int getPadding() {
        return this.mPadding;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintTableLayout";
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidgetContainer
    public ArrayList<Guideline> getVerticalGuidelines() {
        return this.mVerticalGuidelines;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidgetContainer
    public boolean handlesInternalConstraints() {
        return true;
    }

    public boolean isVerticalGrowth() {
        return this.mVerticalGrowth;
    }

    public void setColumnAlignment(int i, int i2) {
        if (i < this.mVerticalSlices.size()) {
            this.mVerticalSlices.get(i).alignment = i2;
            setChildrenConnections();
        }
    }

    public void setColumnAlignment(String str) {
        int i;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == 'L') {
                i = 1;
            } else {
                if (charAt != 'C') {
                    if (charAt == 'F') {
                        i = 3;
                    } else if (charAt == 'R') {
                        i = 2;
                    }
                }
                setColumnAlignment(i2, 0);
            }
            setColumnAlignment(i2, i);
        }
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.system = linearSystem;
        super.setDebugSolverName(linearSystem, str);
        updateDebugSolverNames();
    }

    public void setNumCols(int i) {
        if (!this.mVerticalGrowth || this.mNumCols == i) {
            return;
        }
        this.mNumCols = i;
        setVerticalSlices();
        setTableDimensions();
    }

    public void setNumRows(int i) {
        if (this.mVerticalGrowth || this.mNumCols == i) {
            return;
        }
        this.mNumRows = i;
        setHorizontalSlices();
        setTableDimensions();
    }

    public void setPadding(int i) {
        if (i > 1) {
            this.mPadding = i;
        }
    }

    public void setTableDimensions() {
        int size = this.mChildren.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.mChildren.get(i2).getContainerItemSkip();
        }
        int i3 = size + i;
        if (this.mVerticalGrowth) {
            if (this.mNumCols == 0) {
                setNumCols(1);
            }
            int i4 = i3 / this.mNumCols;
            if (this.mNumCols * i4 < i3) {
                i4++;
            }
            if (this.mNumRows == i4 && this.mVerticalGuidelines.size() == this.mNumCols - 1) {
                return;
            }
            this.mNumRows = i4;
            setHorizontalSlices();
        } else {
            if (this.mNumRows == 0) {
                setNumRows(1);
            }
            int i5 = i3 / this.mNumRows;
            if (this.mNumRows * i5 < i3) {
                i5++;
            }
            if (this.mNumCols == i5 && this.mHorizontalGuidelines.size() == this.mNumRows - 1) {
                return;
            }
            this.mNumCols = i5;
            setVerticalSlices();
        }
        setChildrenConnections();
    }

    public void setVerticalGrowth(boolean z) {
        this.mVerticalGrowth = z;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public void updateFromSolver(LinearSystem linearSystem) {
        super.updateFromSolver(linearSystem);
        if (linearSystem == this.mSystem) {
            int size = this.mVerticalGuidelines.size();
            for (int i = 0; i < size; i++) {
                this.mVerticalGuidelines.get(i).updateFromSolver(linearSystem);
            }
            int size2 = this.mHorizontalGuidelines.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.mHorizontalGuidelines.get(i2).updateFromSolver(linearSystem);
            }
        }
    }
}
