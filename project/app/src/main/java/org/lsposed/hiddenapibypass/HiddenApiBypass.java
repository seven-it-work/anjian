package org.lsposed.hiddenapibypass;

import android.util.Log;
import com.cyjh.common.p069d.ViewOnClickListenerC1139b;
import com.umeng.commonsdk.proguard.C2518v;
import dalvik.system.VMRuntime;
import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandleInfo;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class HiddenApiBypass {

    /* renamed from: a */
    private static final Unsafe f11235a;

    /* renamed from: b */
    private static final long f11236b;

    /* renamed from: c */
    private static final long f11237c;

    /* renamed from: d */
    private static final long f11238d;

    /* renamed from: e */
    private static final long f11239e;

    /* renamed from: f */
    private static final long f11240f;

    /* renamed from: g */
    private static final long f11241g;

    /* renamed from: h */
    private static final long f11242h;

    /* renamed from: i */
    private static final long f11243i;

    /* renamed from: j */
    private static final long f11244j;

    /* renamed from: k */
    private static final long f11245k;

    /* renamed from: l */
    private static final long f11246l;

    /* renamed from: m */
    private static final long f11247m;

    /* renamed from: n */
    private static final Set f11248n = new HashSet();

    static {
        try {
            Unsafe unsafe = (Unsafe) Unsafe.class.getDeclaredMethod("getUnsafe", new Class[0]).invoke(null, new Object[0]);
            f11235a = unsafe;
            f11236b = unsafe.objectFieldOffset(Helper$Executable.class.getDeclaredField("artMethod"));
            f11237c = unsafe.objectFieldOffset(Helper$Executable.class.getDeclaredField("declaringClass"));
            long objectFieldOffset = unsafe.objectFieldOffset(Helper$MethodHandle.class.getDeclaredField("artFieldOrMethod"));
            f11238d = objectFieldOffset;
            f11239e = unsafe.objectFieldOffset(Helper$MethodHandleImpl.class.getDeclaredField("info"));
            long objectFieldOffset2 = unsafe.objectFieldOffset(Helper$Class.class.getDeclaredField("methods"));
            f11240f = objectFieldOffset2;
            long objectFieldOffset3 = unsafe.objectFieldOffset(Helper$Class.class.getDeclaredField("iFields"));
            f11241g = objectFieldOffset3;
            f11242h = unsafe.objectFieldOffset(Helper$Class.class.getDeclaredField("sFields"));
            f11243i = unsafe.objectFieldOffset(Helper$HandleInfo.class.getDeclaredField("member"));
            Method declaredMethod = Helper$NeverCall.class.getDeclaredMethod("a", new Class[0]);
            Method declaredMethod2 = Helper$NeverCall.class.getDeclaredMethod(ViewOnClickListenerC1139b.f4016d, new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            MethodHandle unreflect = MethodHandles.lookup().unreflect(declaredMethod);
            MethodHandle unreflect2 = MethodHandles.lookup().unreflect(declaredMethod2);
            long j = unsafe.getLong(unreflect, objectFieldOffset);
            long j2 = unsafe.getLong(unreflect2, objectFieldOffset);
            long j3 = unsafe.getLong(Helper$NeverCall.class, objectFieldOffset2);
            long j4 = j2 - j;
            f11244j = j4;
            f11245k = (j - j3) - j4;
            Field declaredField = Helper$NeverCall.class.getDeclaredField(C2518v.f9546am);
            Field declaredField2 = Helper$NeverCall.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
            MethodHandle unreflectGetter2 = MethodHandles.lookup().unreflectGetter(declaredField2);
            long j5 = unsafe.getLong(unreflectGetter, objectFieldOffset);
            long j6 = unsafe.getLong(unreflectGetter2, objectFieldOffset);
            long j7 = unsafe.getLong(Helper$NeverCall.class, objectFieldOffset3);
            f11246l = j6 - j5;
            f11247m = j5 - j7;
        } catch (ReflectiveOperationException e) {
            Log.e("HiddenApiBypass", "Initialize error", e);
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    static boolean m13978a(Class[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i = 0; i < clsArr.length; i++) {
            if (!clsArr[i].isPrimitive()) {
                Object obj = objArr[i];
                if (obj != null && !clsArr[i].isInstance(obj)) {
                    return false;
                }
            } else {
                if (clsArr[i] == Integer.TYPE && !(objArr[i] instanceof Integer)) {
                    return false;
                }
                if (clsArr[i] == Byte.TYPE && !(objArr[i] instanceof Byte)) {
                    return false;
                }
                if (clsArr[i] == Character.TYPE && !(objArr[i] instanceof Character)) {
                    return false;
                }
                if (clsArr[i] == Boolean.TYPE && !(objArr[i] instanceof Boolean)) {
                    return false;
                }
                if (clsArr[i] == Double.TYPE && !(objArr[i] instanceof Double)) {
                    return false;
                }
                if (clsArr[i] == Float.TYPE && !(objArr[i] instanceof Float)) {
                    return false;
                }
                if (clsArr[i] == Long.TYPE && !(objArr[i] instanceof Long)) {
                    return false;
                }
                if (clsArr[i] == Short.TYPE && !(objArr[i] instanceof Short)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean addHiddenApiExemptions(String... strArr) {
        Set set = f11248n;
        set.addAll(Arrays.asList(strArr));
        String[] strArr2 = new String[((HashSet) set).size()];
        set.toArray(strArr2);
        return setHiddenApiExemptions(strArr2);
    }

    public static boolean clearHiddenApiExemptions() {
        ((HashSet) f11248n).clear();
        return setHiddenApiExemptions(new String[0]);
    }

    public static Constructor getDeclaredConstructor(Class cls, Class... clsArr) {
        for (Executable executable : getDeclaredMethods(cls)) {
            if (executable instanceof Constructor) {
                Class<?>[] parameterTypes = executable.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i = 0; i < clsArr.length; i++) {
                        if (clsArr[i] != parameterTypes[i]) {
                            break;
                        }
                    }
                    return (Constructor) executable;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    public static Method getDeclaredMethod(Class cls, String str, Class... clsArr) {
        for (Executable executable : getDeclaredMethods(cls)) {
            if (executable.getName().equals(str) && (executable instanceof Method)) {
                Class<?>[] parameterTypes = executable.getParameterTypes();
                if (parameterTypes.length == clsArr.length) {
                    for (int i = 0; i < clsArr.length; i++) {
                        if (clsArr[i] != parameterTypes[i]) {
                            break;
                        }
                    }
                    return (Method) executable;
                }
                continue;
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static List getDeclaredMethods(Class cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Method declaredMethod = Helper$NeverCall.class.getDeclaredMethod("a", new Class[0]);
                declaredMethod.setAccessible(true);
                MethodHandle unreflect = MethodHandles.lookup().unreflect(declaredMethod);
                Unsafe unsafe = f11235a;
                long j = unsafe.getLong(cls, f11240f);
                if (j == 0) {
                    return arrayList;
                }
                int i = unsafe.getInt(j);
                for (int i2 = 0; i2 < i; i2++) {
                    long j2 = (i2 * f11244j) + j + f11245k;
                    Unsafe unsafe2 = f11235a;
                    unsafe2.putLong(unreflect, f11238d, j2);
                    unsafe2.putObject(unreflect, f11239e, (Object) null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflect);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f11235a;
                    arrayList.add((Executable) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflect, f11239e), f11243i));
                }
            } catch (IllegalAccessException | NoSuchMethodException unused2) {
            }
        }
        return arrayList;
    }

    public static List getInstanceFields(Class cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Field declaredField = Helper$NeverCall.class.getDeclaredField(C2518v.f9546am);
                declaredField.setAccessible(true);
                MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f11235a;
                long j = unsafe.getLong(cls, f11241g);
                if (j == 0) {
                    return arrayList;
                }
                int i = unsafe.getInt(j);
                for (int i2 = 0; i2 < i; i2++) {
                    long j2 = (i2 * f11246l) + j + f11247m;
                    Unsafe unsafe2 = f11235a;
                    unsafe2.putLong(unreflectGetter, f11238d, j2);
                    unsafe2.putObject(unreflectGetter, f11239e, (Object) null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f11235a;
                    arrayList.add((Field) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflectGetter, f11239e), f11243i));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    public static List getStaticFields(Class cls) {
        ArrayList arrayList = new ArrayList();
        if (!cls.isPrimitive() && !cls.isArray()) {
            try {
                Field declaredField = Helper$NeverCall.class.getDeclaredField(C2518v.f9545al);
                declaredField.setAccessible(true);
                MethodHandle unreflectGetter = MethodHandles.lookup().unreflectGetter(declaredField);
                Unsafe unsafe = f11235a;
                long j = unsafe.getLong(cls, f11242h);
                if (j == 0) {
                    return arrayList;
                }
                int i = unsafe.getInt(j);
                for (int i2 = 0; i2 < i; i2++) {
                    long j2 = (i2 * f11246l) + j + f11247m;
                    Unsafe unsafe2 = f11235a;
                    unsafe2.putLong(unreflectGetter, f11238d, j2);
                    unsafe2.putObject(unreflectGetter, f11239e, (Object) null);
                    try {
                        MethodHandles.lookup().revealDirect(unreflectGetter);
                    } catch (Throwable unused) {
                    }
                    Unsafe unsafe3 = f11235a;
                    arrayList.add((Field) unsafe3.getObject((MethodHandleInfo) unsafe3.getObject(unreflectGetter, f11239e), f11243i));
                }
            } catch (IllegalAccessException | NoSuchFieldException unused2) {
            }
        }
        return arrayList;
    }

    public static Object invoke(Class cls, Object obj, String str, Object... objArr) {
        if (obj != null && !cls.isInstance(obj)) {
            throw new IllegalArgumentException("this object is not an instance of the given class");
        }
        Method declaredMethod = Helper$InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        declaredMethod.setAccessible(true);
        Unsafe unsafe = f11235a;
        long j = unsafe.getLong(cls, f11240f);
        if (j == 0) {
            throw new NoSuchMethodException("Cannot find matching method");
        }
        int i = unsafe.getInt(j);
        for (int i2 = 0; i2 < i; i2++) {
            f11235a.putLong(declaredMethod, f11236b, (i2 * f11244j) + j + f11245k);
            if (str.equals(declaredMethod.getName()) && m13978a(declaredMethod.getParameterTypes(), objArr)) {
                return declaredMethod.invoke(obj, objArr);
            }
        }
        throw new NoSuchMethodException("Cannot find matching method");
    }

    public static Object newInstance(Class cls, Object... objArr) {
        Method declaredMethod = Helper$InvokeStub.class.getDeclaredMethod("invoke", Object[].class);
        Constructor declaredConstructor = Helper$InvokeStub.class.getDeclaredConstructor(Object[].class);
        declaredConstructor.setAccessible(true);
        Unsafe unsafe = f11235a;
        long j = unsafe.getLong(cls, f11240f);
        if (j == 0) {
            throw new NoSuchMethodException("Cannot find matching constructor");
        }
        int i = unsafe.getInt(j);
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = (i2 * f11244j) + j + f11245k;
            Unsafe unsafe2 = f11235a;
            long j3 = f11236b;
            unsafe2.putLong(declaredMethod, j3, j2);
            if ("<init>".equals(declaredMethod.getName())) {
                unsafe2.putLong(declaredConstructor, j3, j2);
                unsafe2.putObject(declaredConstructor, f11237c, cls);
                if (m13978a(declaredConstructor.getParameterTypes(), objArr)) {
                    return declaredConstructor.newInstance(objArr);
                }
            }
        }
        throw new NoSuchMethodException("Cannot find matching constructor");
    }

    public static boolean setHiddenApiExemptions(String... strArr) {
        try {
            invoke(VMRuntime.class, invoke(VMRuntime.class, null, "getRuntime", new Object[0]), "setHiddenApiExemptions", strArr);
            return true;
        } catch (Throwable th) {
            Log.w("HiddenApiBypass", "setHiddenApiExemptions", th);
            return false;
        }
    }
}
