package org.slf4j.helpers;

import java.io.ObjectStreamException;
import java.io.Serializable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes2.dex */
abstract class NamedLoggerBase implements Serializable, Logger {
    private static final long serialVersionUID = 7535258609338176893L;
    protected String name;

    public String getName() {
        return this.name;
    }

    protected Object readResolve() throws ObjectStreamException {
        return LoggerFactory.getLogger(getName());
    }
}
