package com.cyjh.elfin.p077e.p080c;

import java.io.File;
import java.util.Comparator;

/* renamed from: com.cyjh.elfin.e.c.g */
/* loaded from: classes.dex */
public final class C1256g implements Comparator<File> {
    /* renamed from: a */
    private static int m5691a(File file, File file2) {
        return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file.lastModified()));
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(File file, File file2) {
        return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file.lastModified()));
    }
}
