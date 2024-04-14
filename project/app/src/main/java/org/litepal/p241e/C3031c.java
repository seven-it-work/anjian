package org.litepal.p241e;

import net.grandcentrix.tray.provider.ContentProviderStorage;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* renamed from: org.litepal.e.c */
/* loaded from: classes2.dex */
public final class C3031c extends DefaultHandler {

    /* renamed from: a */
    private C3029a f11069a;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endDocument() throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startDocument() throws SAXException {
        this.f11069a = C3029a.m13714a();
        this.f11069a.m13730d().clear();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int i = 0;
        if ("dbname".equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.f11069a.f11059b = attributes.getValue(i).trim();
                }
                i++;
            }
            return;
        }
        if (ContentProviderStorage.VERSION.equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.f11069a.f11058a = Integer.parseInt(attributes.getValue(i).trim());
                }
                i++;
            }
            return;
        }
        if ("mapping".equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("class".equalsIgnoreCase(attributes.getLocalName(i))) {
                    C3029a c3029a = this.f11069a;
                    c3029a.m13730d().add(attributes.getValue(i).trim());
                }
                i++;
            }
            return;
        }
        if ("cases".equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.f11069a.f11060c = attributes.getValue(i).trim();
                }
                i++;
            }
            return;
        }
        if ("storage".equalsIgnoreCase(str2)) {
            while (i < attributes.getLength()) {
                if ("value".equalsIgnoreCase(attributes.getLocalName(i))) {
                    this.f11069a.f11061d = attributes.getValue(i).trim();
                }
                i++;
            }
        }
    }
}
