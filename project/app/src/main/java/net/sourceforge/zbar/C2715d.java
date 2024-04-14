package net.sourceforge.zbar;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: net.sourceforge.zbar.d */
/* loaded from: classes2.dex */
public final class C2715d implements Iterator<Symbol> {

    /* renamed from: a */
    private Symbol f10393a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2715d(Symbol symbol) {
        this.f10393a = symbol;
    }

    /* renamed from: a */
    private Symbol m12290a() {
        if (this.f10393a == null) {
            throw new NoSuchElementException("access past end of SymbolIterator");
        }
        Symbol symbol = this.f10393a;
        long next = this.f10393a.next();
        if (next != 0) {
            this.f10393a = new Symbol(next);
            return symbol;
        }
        this.f10393a = null;
        return symbol;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10393a != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Symbol next() {
        if (this.f10393a == null) {
            throw new NoSuchElementException("access past end of SymbolIterator");
        }
        Symbol symbol = this.f10393a;
        long next = this.f10393a.next();
        if (next != 0) {
            this.f10393a = new Symbol(next);
            return symbol;
        }
        this.f10393a = null;
        return symbol;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("SymbolIterator is immutable");
    }
}
