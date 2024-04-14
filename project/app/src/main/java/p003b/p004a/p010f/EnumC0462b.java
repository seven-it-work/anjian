package p003b.p004a.p010f;

/* renamed from: b.a.f.b */
/* loaded from: classes.dex */
public enum EnumC0462b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);

    public final int httpCode;

    EnumC0462b(int i) {
        this.httpCode = i;
    }

    public static EnumC0462b fromHttp2(int i) {
        for (EnumC0462b enumC0462b : values()) {
            if (enumC0462b.httpCode == i) {
                return enumC0462b;
            }
        }
        return null;
    }
}
