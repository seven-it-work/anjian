package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public class Optimizer {
    static final int FLAG_CHAIN_DANGLING = 1;
    static final int FLAG_RECOMPUTE_BOUNDS = 2;
    static final int FLAG_USE_OPTIMIZE = 0;
    public static final int OPTIMIZATION_BARRIER = 2;
    public static final int OPTIMIZATION_CHAIN = 4;
    public static final int OPTIMIZATION_DIMENSIONS = 8;
    public static final int OPTIMIZATION_DIRECT = 1;
    public static final int OPTIMIZATION_GROUPS = 32;
    public static final int OPTIMIZATION_NONE = 0;
    public static final int OPTIMIZATION_RATIO = 16;
    public static final int OPTIMIZATION_STANDARD = 7;
    static boolean[] flags = new boolean[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r6 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00f8, code lost:
    
        r3.dependsOn(r1, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00eb, code lost:
    
        r3.dependsOn(r1, 1, r18.getResolutionWidth());
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
    
        if (r6 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
    
        if (r6 != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e9, code lost:
    
        if (r6 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f4, code lost:
    
        r7 = r18.getWidth();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x010f, code lost:
    
        if (r6 != false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void analyze(int r17, android.support.constraint.solver.widgets.ConstraintWidget r18) {
        /*
            Method dump skipped, instructions count: 850
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Optimizer.analyze(int, android.support.constraint.solver.widgets.ConstraintWidget):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
    
        if (r7.mHorizontalChainStyle == 2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0030, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0042, code lost:
    
        if (r7.mVerticalChainStyle == 2) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean applyChainOptimized(android.support.constraint.solver.widgets.ConstraintWidgetContainer r23, android.support.constraint.solver.LinearSystem r24, int r25, int r26, android.support.constraint.solver.widgets.ChainHead r27) {
        /*
            Method dump skipped, instructions count: 915
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Optimizer.applyChainOptimized(android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.LinearSystem, int, int, android.support.constraint.solver.widgets.ChainHead):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        if (constraintWidgetContainer.mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.setHorizontalDimension(i, width);
        }
        if (constraintWidgetContainer.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || constraintWidget.mListDimensionBehaviors[1] != ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            return;
        }
        int i2 = constraintWidget.mTop.mMargin;
        int height = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
        constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
        constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
        linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i2);
        linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, height);
        if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
            constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
            linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i2);
        }
        constraintWidget.mVerticalResolution = 2;
        constraintWidget.setVerticalDimension(i2, height);
    }

    private static boolean optimizableMatchConstraint(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            return false;
        }
        if (constraintWidget.mDimensionRatio != 0.0f) {
            if (constraintWidget.mListDimensionBehaviors[i != 0 ? (char) 0 : (char) 1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            }
            return false;
        }
        if (i == 0) {
            if (constraintWidget.mMatchConstraintDefaultWidth != 0 || constraintWidget.mMatchConstraintMinWidth != 0 || constraintWidget.mMatchConstraintMaxWidth != 0) {
                return false;
            }
        } else if (constraintWidget.mMatchConstraintDefaultHeight != 0 || constraintWidget.mMatchConstraintMinHeight != 0 || constraintWidget.mMatchConstraintMaxHeight != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setOptimizedWidget(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedTarget = constraintWidget.getParent().mLeft.getResolutionNode();
        constraintWidget.mListAnchors[i3].getResolutionNode().resolvedOffset = i2;
        constraintWidget.mListAnchors[i3].getResolutionNode().state = 1;
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedTarget = constraintWidget.mListAnchors[i3].getResolutionNode();
        constraintWidget.mListAnchors[i4].getResolutionNode().resolvedOffset = constraintWidget.getLength(i);
        constraintWidget.mListAnchors[i4].getResolutionNode().state = 1;
    }
}
