package com.p021b.p022a.p023a.p030g;

import com.p021b.p022a.p023a.C0650c;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

/* renamed from: com.b.a.a.g.f */
/* loaded from: classes.dex */
final class C0718f implements InvocationHandler {

    /* renamed from: a */
    boolean f1759a;

    /* renamed from: b */
    String f1760b;

    /* renamed from: c */
    private final List<String> f1761c;

    public C0718f(List<String> list) {
        this.f1761c = list;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (objArr == null) {
            objArr = C0650c.f1500b;
        }
        if (name.equals("supports") && Boolean.TYPE == returnType) {
            return true;
        }
        if (name.equals("unsupported") && Void.TYPE == returnType) {
            this.f1759a = true;
            return null;
        }
        if (name.equals("protocols") && objArr.length == 0) {
            return this.f1761c;
        }
        if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f1760b = (String) objArr[0];
            return null;
        }
        List list = (List) objArr[0];
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj2 = this.f1761c.get(0);
                break;
            }
            if (this.f1761c.contains(list.get(i))) {
                obj2 = list.get(i);
                break;
            }
            i++;
        }
        String str = (String) obj2;
        this.f1760b = str;
        return str;
    }
}
