package com.cyjh.mobileanjian.ipc.utils;

import android.content.Context;
import android.support.annotation.NonNull;
import com.cyjh.mq.sdk.entity.Script4Run;
import java.io.File;
import org.apache.commons.io.FilenameUtils;

/* renamed from: com.cyjh.mobileanjian.ipc.utils.o */
/* loaded from: classes.dex */
public final class C1661o {

    /* renamed from: a */
    private static final String f6424a = "script";

    /* renamed from: a */
    private static Script4Run m7516a(Context context, @NonNull Script4Run script4Run) throws Exception {
        File file = new File(context.getFilesDir(), f6424a);
        if (file.exists()) {
            org.apache.commons.io.FileUtils.deleteDirectory(file);
        } else {
            file.mkdirs();
            file.setReadable(true, false);
            file.setExecutable(true, false);
        }
        File[] fileArr = {new File(script4Run.getLcPath()), new File(script4Run.getAtcPath()), new File(script4Run.getConfigPath())};
        File file2 = new File(file, FilenameUtils.getName(script4Run.getLcPath()));
        File file3 = new File(file, FilenameUtils.getName(script4Run.getAtcPath()));
        File file4 = new File(file, FilenameUtils.getName(script4Run.getConfigPath()));
        File[] fileArr2 = new File[3];
        fileArr2[0] = file2;
        fileArr2[1] = file3;
        fileArr2[2] = file4;
        for (int i = 0; i < 3; i++) {
            if (fileArr[i].exists()) {
                org.apache.commons.io.FileUtils.copyFile(fileArr[i], fileArr2[i]);
                fileArr2[i].setReadable(true, false);
            } else {
                fileArr2[i] = fileArr[i];
            }
        }
        Script4Run m13987clone = script4Run.m13987clone();
        m13987clone.setLcPath(file2.getAbsolutePath()).setAtcPath(file3.getAbsolutePath()).setConfigPath(file4.getAbsolutePath());
        return m13987clone;
    }
}
