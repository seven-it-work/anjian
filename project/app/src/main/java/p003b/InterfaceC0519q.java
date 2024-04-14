package p003b;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* renamed from: b.q */
/* loaded from: classes.dex */
public interface InterfaceC0519q {

    /* renamed from: a */
    public static final InterfaceC0519q f944a = new InterfaceC0519q() { // from class: b.q.1
        @Override // p003b.InterfaceC0519q
        /* renamed from: a */
        public final List<InetAddress> mo809a(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            return Arrays.asList(InetAddress.getAllByName(str));
        }
    };

    /* renamed from: a */
    List<InetAddress> mo809a(String str) throws UnknownHostException;
}
