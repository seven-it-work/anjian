package com.cyjh.mq.p110d;

import android.support.annotation.NonNull;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* renamed from: com.cyjh.mq.d.d */
/* loaded from: classes.dex */
public final class C1682d {
    /* renamed from: a */
    private static Object m7696a(@NonNull byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            Object readObject = objectInputStream.readObject();
            objectInputStream.close();
            byteArrayInputStream.close();
            return readObject;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static byte[] m7697a(@NonNull Serializable serializable) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            objectOutputStream.close();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
