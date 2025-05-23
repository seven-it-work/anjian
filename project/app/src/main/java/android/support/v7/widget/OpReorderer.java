package android.support.v7.widget;

import android.support.v7.widget.AdapterHelper;
import java.util.List;

/* loaded from: classes.dex */
class OpReorderer {
    final Callback mCallback;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).cmd != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int i, AdapterHelper.UpdateOp updateOp, int i2, AdapterHelper.UpdateOp updateOp2) {
        int i3 = updateOp.itemCount < updateOp2.positionStart ? -1 : 0;
        if (updateOp.positionStart < updateOp2.positionStart) {
            i3++;
        }
        if (updateOp2.positionStart <= updateOp.positionStart) {
            updateOp.positionStart += updateOp2.itemCount;
        }
        if (updateOp2.positionStart <= updateOp.itemCount) {
            updateOp.itemCount += updateOp2.itemCount;
        }
        updateOp2.positionStart += i3;
        list.set(i, updateOp2);
        list.set(i2, updateOp);
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int i, int i2) {
        AdapterHelper.UpdateOp updateOp = list.get(i);
        AdapterHelper.UpdateOp updateOp2 = list.get(i2);
        int i3 = updateOp2.cmd;
        if (i3 == 4) {
            swapMoveUpdate(list, i, updateOp, i2, updateOp2);
            return;
        }
        switch (i3) {
            case 1:
                swapMoveAdd(list, i, updateOp, i2, updateOp2);
                return;
            case 2:
                swapMoveRemove(list, i, updateOp, i2, updateOp2);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reorderOps(List<AdapterHelper.UpdateOp> list) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(list);
            if (lastMoveOutOfOrder == -1) {
                return;
            } else {
                swapMoveOp(list, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c6, code lost:
    
        if (r11.itemCount > r13.positionStart) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        r11.itemCount -= r13.itemCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0100, code lost:
    
        r9.set(r10, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0107, code lost:
    
        if (r11.positionStart == r11.itemCount) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0109, code lost:
    
        r9.set(r12, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0110, code lost:
    
        if (r6 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0112, code lost:
    
        r9.add(r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0115, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010d, code lost:
    
        r9.remove(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fd, code lost:
    
        if (r11.itemCount >= r13.positionStart) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void swapMoveRemove(java.util.List<android.support.v7.widget.AdapterHelper.UpdateOp> r9, int r10, android.support.v7.widget.AdapterHelper.UpdateOp r11, int r12, android.support.v7.widget.AdapterHelper.UpdateOp r13) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.OpReorderer.swapMoveRemove(java.util.List, int, android.support.v7.widget.AdapterHelper$UpdateOp, int, android.support.v7.widget.AdapterHelper$UpdateOp):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void swapMoveUpdate(java.util.List<android.support.v7.widget.AdapterHelper.UpdateOp> r8, int r9, android.support.v7.widget.AdapterHelper.UpdateOp r10, int r11, android.support.v7.widget.AdapterHelper.UpdateOp r12) {
        /*
            r7 = this;
            int r0 = r10.itemCount
            int r1 = r12.positionStart
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 >= r1) goto Lf
            int r0 = r12.positionStart
            int r0 = r0 - r4
            r12.positionStart = r0
            goto L28
        Lf:
            int r0 = r10.itemCount
            int r1 = r12.positionStart
            int r5 = r12.itemCount
            int r1 = r1 + r5
            if (r0 >= r1) goto L28
            int r0 = r12.itemCount
            int r0 = r0 - r4
            r12.itemCount = r0
            android.support.v7.widget.OpReorderer$Callback r0 = r7.mCallback
            int r1 = r10.positionStart
            java.lang.Object r5 = r12.payload
            android.support.v7.widget.AdapterHelper$UpdateOp r0 = r0.obtainUpdateOp(r2, r1, r4, r5)
            goto L29
        L28:
            r0 = r3
        L29:
            int r1 = r10.positionStart
            int r5 = r12.positionStart
            if (r1 > r5) goto L35
            int r1 = r12.positionStart
            int r1 = r1 + r4
            r12.positionStart = r1
            goto L56
        L35:
            int r1 = r10.positionStart
            int r5 = r12.positionStart
            int r6 = r12.itemCount
            int r5 = r5 + r6
            if (r1 >= r5) goto L56
            int r1 = r12.positionStart
            int r3 = r12.itemCount
            int r1 = r1 + r3
            int r3 = r10.positionStart
            int r1 = r1 - r3
            android.support.v7.widget.OpReorderer$Callback r3 = r7.mCallback
            int r5 = r10.positionStart
            int r5 = r5 + r4
            java.lang.Object r4 = r12.payload
            android.support.v7.widget.AdapterHelper$UpdateOp r3 = r3.obtainUpdateOp(r2, r5, r1, r4)
            int r2 = r12.itemCount
            int r2 = r2 - r1
            r12.itemCount = r2
        L56:
            r8.set(r11, r10)
            int r10 = r12.itemCount
            if (r10 <= 0) goto L61
            r8.set(r9, r12)
            goto L69
        L61:
            r8.remove(r9)
            android.support.v7.widget.OpReorderer$Callback r10 = r7.mCallback
            r10.recycleUpdateOp(r12)
        L69:
            if (r0 == 0) goto L6e
            r8.add(r9, r0)
        L6e:
            if (r3 == 0) goto L73
            r8.add(r9, r3)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.OpReorderer.swapMoveUpdate(java.util.List, int, android.support.v7.widget.AdapterHelper$UpdateOp, int, android.support.v7.widget.AdapterHelper$UpdateOp):void");
    }
}
