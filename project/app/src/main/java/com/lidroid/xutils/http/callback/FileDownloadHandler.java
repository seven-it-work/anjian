package com.lidroid.xutils.http.callback;

/* loaded from: classes.dex */
public class FileDownloadHandler {
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
    
        if (r19.updateProgress(r11, r9, true) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
    
        com.lidroid.xutils.util.IOUtils.closeQuietly(r13);
        com.lidroid.xutils.util.IOUtils.closeQuietly(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0080, code lost:
    
        r14.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0083, code lost:
    
        if (r19 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0085, code lost:
    
        r19.updateProgress(r11, r4, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008c, code lost:
    
        com.lidroid.xutils.util.IOUtils.closeQuietly(r13);
        com.lidroid.xutils.util.IOUtils.closeQuietly(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0096, code lost:
    
        if (r8.exists() == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009c, code lost:
    
        if (android.text.TextUtils.isEmpty(r22) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009e, code lost:
    
        r1 = new java.io.File(r8.getParent(), r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ab, code lost:
    
        if (r1.exists() != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b5, code lost:
    
        r1 = new java.io.File(r8.getParent(), java.lang.String.valueOf(java.lang.System.currentTimeMillis()) + r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b1, code lost:
    
        if (r8.renameTo(r1) == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b3, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b4, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d3, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.io.File handleEntity(org.apache.http.HttpEntity r18, com.lidroid.xutils.http.callback.RequestCallBackHandler r19, java.lang.String r20, boolean r21, java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.callback.FileDownloadHandler.handleEntity(org.apache.http.HttpEntity, com.lidroid.xutils.http.callback.RequestCallBackHandler, java.lang.String, boolean, java.lang.String):java.io.File");
    }
}
