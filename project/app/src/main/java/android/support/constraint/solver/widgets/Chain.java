package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (!constraintWidgetContainer.optimizeFor(4) || !Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r2.mHorizontalChainStyle == 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0035, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x004f, code lost:
    
        if (r2.mVerticalChainStyle == 2) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0358 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer r44, android.support.constraint.solver.LinearSystem r45, int r46, int r47, android.support.constraint.solver.widgets.ChainHead r48) {
        /*
            Method dump skipped, instructions count: 1359
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Chain.applyChainConstraints(android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.LinearSystem, int, int, android.support.constraint.solver.widgets.ChainHead):void");
    }
}
