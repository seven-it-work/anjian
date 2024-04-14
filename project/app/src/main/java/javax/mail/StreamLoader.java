package javax.mail;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
interface StreamLoader {
    void load(InputStream inputStream) throws IOException;
}
