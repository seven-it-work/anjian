package com.umeng.commonsdk.statistics.proto;

import android.support.v4.app.NotificationCompat;
import com.umeng.commonsdk.proguard.AbstractC2481az;
import com.umeng.commonsdk.proguard.AbstractC2492bj;
import com.umeng.commonsdk.proguard.AbstractC2493bk;
import com.umeng.commonsdk.proguard.C2462ag;
import com.umeng.commonsdk.proguard.C2468am;
import com.umeng.commonsdk.proguard.C2469an;
import com.umeng.commonsdk.proguard.C2473ar;
import com.umeng.commonsdk.proguard.C2475at;
import com.umeng.commonsdk.proguard.C2476au;
import com.umeng.commonsdk.proguard.C2483ba;
import com.umeng.commonsdk.proguard.C2485bc;
import com.umeng.commonsdk.proguard.C2487be;
import com.umeng.commonsdk.proguard.C2488bf;
import com.umeng.commonsdk.proguard.C2494bl;
import com.umeng.commonsdk.proguard.C2518v;
import com.umeng.commonsdk.proguard.C2520x;
import com.umeng.commonsdk.proguard.InterfaceC2456aa;
import com.umeng.commonsdk.proguard.InterfaceC2463ah;
import com.umeng.commonsdk.proguard.InterfaceC2490bh;
import com.umeng.commonsdk.proguard.InterfaceC2491bi;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class Response implements InterfaceC2456aa<Response, EnumC2570e>, Serializable, Cloneable {
    private static final int __RESP_CODE_ISSET_ID = 0;
    public static final Map<EnumC2570e, C2468am> metaDataMap;
    private static final Map<Class<? extends InterfaceC2490bh>, InterfaceC2491bi> schemes;
    private static final long serialVersionUID = -4549277923241195391L;
    private byte __isset_bitfield;
    public C2574d imprint;
    public String msg;
    private EnumC2570e[] optionals;
    public int resp_code;
    private static final C2487be STRUCT_DESC = new C2487be("Response");
    private static final C2476au RESP_CODE_FIELD_DESC = new C2476au("resp_code", (byte) 8, 1);
    private static final C2476au MSG_FIELD_DESC = new C2476au(NotificationCompat.CATEGORY_MESSAGE, (byte) 11, 2);
    private static final C2476au IMPRINT_FIELD_DESC = new C2476au(C2518v.f9523Q, (byte) 12, 3);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$a */
    /* loaded from: classes.dex */
    public static class C2566a extends AbstractC2492bj<Response> {
        private C2566a() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, Response response) throws C2462ag {
            abstractC2481az.mo10808j();
            while (true) {
                C2476au mo10810l = abstractC2481az.mo10810l();
                if (mo10810l.f9328b == 0) {
                    abstractC2481az.mo10809k();
                    if (response.isSetResp_code()) {
                        response.validate();
                        return;
                    } else {
                        throw new C2483ba("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (mo10810l.f9329c) {
                    case 1:
                        if (mo10810l.f9328b == 8) {
                            response.resp_code = abstractC2481az.mo10821w();
                            response.setResp_codeIsSet(true);
                            break;
                        }
                        break;
                    case 2:
                        if (mo10810l.f9328b == 11) {
                            response.msg = abstractC2481az.mo10824z();
                            response.setMsgIsSet(true);
                            break;
                        }
                        break;
                    case 3:
                        if (mo10810l.f9328b == 12) {
                            response.imprint = new C2574d();
                            response.imprint.read(abstractC2481az);
                            response.setImprintIsSet(true);
                            break;
                        }
                        break;
                }
                C2485bc.m10856a(abstractC2481az, mo10810l.f9328b);
                abstractC2481az.mo10811m();
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, Response response) throws C2462ag {
            response.validate();
            abstractC2481az.mo10792a(Response.STRUCT_DESC);
            abstractC2481az.mo10787a(Response.RESP_CODE_FIELD_DESC);
            abstractC2481az.mo10785a(response.resp_code);
            abstractC2481az.mo10799c();
            if (response.msg != null && response.isSetMsg()) {
                abstractC2481az.mo10787a(Response.MSG_FIELD_DESC);
                abstractC2481az.mo10793a(response.msg);
                abstractC2481az.mo10799c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                abstractC2481az.mo10787a(Response.IMPRINT_FIELD_DESC);
                response.imprint.write(abstractC2481az);
                abstractC2481az.mo10799c();
            }
            abstractC2481az.mo10801d();
            abstractC2481az.mo10798b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$b */
    /* loaded from: classes.dex */
    private static class C2567b implements InterfaceC2491bi {
        private C2567b() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2491bi
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2566a mo10769b() {
            return new C2566a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$c */
    /* loaded from: classes.dex */
    public static class C2568c extends AbstractC2493bk<Response> {
        private C2568c() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void mo10764a(AbstractC2481az abstractC2481az, Response response) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            c2488bf.mo10785a(response.resp_code);
            BitSet bitSet = new BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            c2488bf.m10860a(bitSet, 2);
            if (response.isSetMsg()) {
                c2488bf.mo10793a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(c2488bf);
            }
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2490bh
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo10766b(AbstractC2481az abstractC2481az, Response response) throws C2462ag {
            C2488bf c2488bf = (C2488bf) abstractC2481az;
            response.resp_code = c2488bf.mo10821w();
            response.setResp_codeIsSet(true);
            BitSet m10861b = c2488bf.m10861b(2);
            if (m10861b.get(0)) {
                response.msg = c2488bf.mo10824z();
                response.setMsgIsSet(true);
            }
            if (m10861b.get(1)) {
                response.imprint = new C2574d();
                response.imprint.read(c2488bf);
                response.setImprintIsSet(true);
            }
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$d */
    /* loaded from: classes.dex */
    private static class C2569d implements InterfaceC2491bi {
        private C2569d() {
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2491bi
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2568c mo10769b() {
            return new C2568c();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.Response$e */
    /* loaded from: classes.dex */
    public enum EnumC2570e implements InterfaceC2463ah {
        RESP_CODE(1, "resp_code"),
        MSG(2, NotificationCompat.CATEGORY_MESSAGE),
        IMPRINT(3, C2518v.f9523Q);


        /* renamed from: d */
        private static final Map<String, EnumC2570e> f9874d = new HashMap();

        /* renamed from: e */
        private final short f9876e;

        /* renamed from: f */
        private final String f9877f;

        static {
            Iterator it = EnumSet.allOf(EnumC2570e.class).iterator();
            while (it.hasNext()) {
                EnumC2570e enumC2570e = (EnumC2570e) it.next();
                f9874d.put(enumC2570e.mo10739b(), enumC2570e);
            }
        }

        EnumC2570e(short s, String str) {
            this.f9876e = s;
            this.f9877f = str;
        }

        /* renamed from: a */
        public static EnumC2570e m11442a(int i) {
            switch (i) {
                case 1:
                    return RESP_CODE;
                case 2:
                    return MSG;
                case 3:
                    return IMPRINT;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static EnumC2570e m11443a(String str) {
            return f9874d.get(str);
        }

        /* renamed from: b */
        public static EnumC2570e m11444b(int i) {
            EnumC2570e m11442a = m11442a(i);
            if (m11442a != null) {
                return m11442a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: a */
        public final short mo10738a() {
            return this.f9876e;
        }

        @Override // com.umeng.commonsdk.proguard.InterfaceC2463ah
        /* renamed from: b */
        public final String mo10739b() {
            return this.f9877f;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        schemes = hashMap;
        hashMap.put(AbstractC2492bj.class, new C2567b());
        schemes.put(AbstractC2493bk.class, new C2569d());
        EnumMap enumMap = new EnumMap(EnumC2570e.class);
        enumMap.put((EnumMap) EnumC2570e.RESP_CODE, (EnumC2570e) new C2468am("resp_code", (byte) 1, new C2469an((byte) 8)));
        enumMap.put((EnumMap) EnumC2570e.MSG, (EnumC2570e) new C2468am(NotificationCompat.CATEGORY_MESSAGE, (byte) 2, new C2469an((byte) 11)));
        enumMap.put((EnumMap) EnumC2570e.IMPRINT, (EnumC2570e) new C2468am(C2518v.f9523Q, (byte) 2, new C2473ar((byte) 12, C2574d.class)));
        metaDataMap = Collections.unmodifiableMap(enumMap);
        C2468am.m10774a(Response.class, metaDataMap);
    }

    public Response() {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new EnumC2570e[]{EnumC2570e.MSG, EnumC2570e.IMPRINT};
    }

    public Response(int i) {
        this();
        this.resp_code = i;
        setResp_codeIsSet(true);
    }

    public Response(Response response) {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new EnumC2570e[]{EnumC2570e.MSG, EnumC2570e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new C2574d(response.imprint);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.__isset_bitfield = (byte) 0;
            read(new C2475at(new C2494bl(objectInputStream)));
        } catch (C2462ag e) {
            throw new IOException(e.getMessage());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            write(new C2475at(new C2494bl(objectOutputStream)));
        } catch (C2462ag e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public InterfaceC2456aa<Response, EnumC2570e> deepCopy() {
        return new Response(this);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public EnumC2570e fieldForId(int i) {
        return EnumC2570e.m11442a(i);
    }

    public C2574d getImprint() {
        return this.imprint;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public boolean isSetResp_code() {
        return C2520x.m11127a(this.__isset_bitfield, 0);
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void read(AbstractC2481az abstractC2481az) throws C2462ag {
        schemes.get(abstractC2481az.mo10850D()).mo10769b().mo10766b(abstractC2481az, this);
    }

    public Response setImprint(C2574d c2574d) {
        this.imprint = c2574d;
        return this;
    }

    public void setImprintIsSet(boolean z) {
        if (z) {
            return;
        }
        this.imprint = null;
    }

    public Response setMsg(String str) {
        this.msg = str;
        return this;
    }

    public void setMsgIsSet(boolean z) {
        if (z) {
            return;
        }
        this.msg = null;
    }

    public Response setResp_code(int i) {
        this.resp_code = i;
        setResp_codeIsSet(true);
        return this;
    }

    public void setResp_codeIsSet(boolean z) {
        this.__isset_bitfield = C2520x.m11119a(this.__isset_bitfield, 0, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.resp_code);
        if (isSetMsg()) {
            sb.append(", ");
            sb.append("msg:");
            sb.append(this.msg == null ? "null" : this.msg);
        }
        if (isSetImprint()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.imprint == null) {
                sb.append("null");
            } else {
                sb.append(this.imprint);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = C2520x.m11131b(this.__isset_bitfield, 0);
    }

    public void validate() throws C2462ag {
        if (this.imprint != null) {
            this.imprint.m11580l();
        }
    }

    @Override // com.umeng.commonsdk.proguard.InterfaceC2456aa
    public void write(AbstractC2481az abstractC2481az) throws C2462ag {
        schemes.get(abstractC2481az.mo10850D()).mo10769b().mo10764a(abstractC2481az, this);
    }
}
