package org.slf4j.helpers;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
public class BasicMarker implements Marker {
    private static String CLOSE = " ]";
    private static String OPEN = "[ ";
    private static String SEP = ", ";
    private static final long serialVersionUID = 1803952589649545191L;
    private final String name;
    private List refereceList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasicMarker(String str) {
        if (str == null) {
            throw new IllegalArgumentException("A marker name cannot be null");
        }
        this.name = str;
    }

    @Override // org.slf4j.Marker
    public synchronized void add(Marker marker) {
        try {
            if (marker == null) {
                throw new IllegalArgumentException("A null value cannot be added to a Marker as reference.");
            }
            if (contains(marker)) {
                return;
            }
            if (marker.contains(this)) {
                return;
            }
            if (this.refereceList == null) {
                this.refereceList = new Vector();
            }
            this.refereceList.add(marker);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.slf4j.Marker
    public boolean contains(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Other cannot be null");
        }
        if (this.name.equals(str)) {
            return true;
        }
        if (hasReferences()) {
            for (int i = 0; i < this.refereceList.size(); i++) {
                if (((Marker) this.refereceList.get(i)).contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.slf4j.Marker
    public boolean contains(Marker marker) {
        if (marker == null) {
            throw new IllegalArgumentException("Other cannot be null");
        }
        if (equals(marker)) {
            return true;
        }
        if (hasReferences()) {
            for (int i = 0; i < this.refereceList.size(); i++) {
                if (((Marker) this.refereceList.get(i)).contains(marker)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.slf4j.Marker
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Marker)) {
            return this.name.equals(((Marker) obj).getName());
        }
        return false;
    }

    @Override // org.slf4j.Marker
    public String getName() {
        return this.name;
    }

    @Override // org.slf4j.Marker
    public boolean hasChildren() {
        return hasReferences();
    }

    @Override // org.slf4j.Marker
    public synchronized boolean hasReferences() {
        boolean z;
        if (this.refereceList != null) {
            z = this.refereceList.size() > 0;
        }
        return z;
    }

    @Override // org.slf4j.Marker
    public int hashCode() {
        return this.name.hashCode();
    }

    @Override // org.slf4j.Marker
    public synchronized Iterator iterator() {
        if (this.refereceList != null) {
            return this.refereceList.iterator();
        }
        return Collections.EMPTY_LIST.iterator();
    }

    @Override // org.slf4j.Marker
    public synchronized boolean remove(Marker marker) {
        if (this.refereceList == null) {
            return false;
        }
        int size = this.refereceList.size();
        for (int i = 0; i < size; i++) {
            if (marker.equals((Marker) this.refereceList.get(i))) {
                this.refereceList.remove(i);
                return true;
            }
        }
        return false;
    }

    public String toString() {
        if (!hasReferences()) {
            return getName();
        }
        Iterator it = iterator();
        StringBuffer stringBuffer = new StringBuffer(getName());
        stringBuffer.append(' ');
        String str = OPEN;
        while (true) {
            stringBuffer.append(str);
            while (it.hasNext()) {
                stringBuffer.append(((Marker) it.next()).getName());
                if (it.hasNext()) {
                    break;
                }
            }
            stringBuffer.append(CLOSE);
            return stringBuffer.toString();
            str = SEP;
        }
    }
}
