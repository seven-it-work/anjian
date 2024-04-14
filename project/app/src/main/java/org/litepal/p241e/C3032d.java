package org.litepal.p241e;

import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.litepal.LitePalApplication;
import org.litepal.p239c.C3025f;
import org.litepal.p246g.InterfaceC3057b;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: org.litepal.e.d */
/* loaded from: classes2.dex */
public final class C3032d {

    /* renamed from: a */
    static final String f11070a = "dbname";

    /* renamed from: b */
    static final String f11071b = "version";

    /* renamed from: c */
    static final String f11072c = "list";

    /* renamed from: d */
    static final String f11073d = "mapping";

    /* renamed from: e */
    static final String f11074e = "cases";

    /* renamed from: f */
    static final String f11075f = "storage";

    /* renamed from: g */
    static final String f11076g = "value";

    /* renamed from: h */
    static final String f11077h = "class";

    /* renamed from: i */
    private static C3032d f11078i;

    /* renamed from: a */
    public static C3030b m13742a() {
        if (f11078i == null) {
            f11078i = new C3032d();
        }
        return m13744c();
    }

    /* renamed from: b */
    private static void m13743b() {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            xMLReader.setContentHandler(new C3031c());
            xMLReader.parse(new InputSource(m13745d()));
        } catch (Resources.NotFoundException unused) {
            throw new C3025f(C3025f.CAN_NOT_FIND_LITEPAL_FILE);
        } catch (IOException unused2) {
            throw new C3025f(C3025f.IO_EXCEPTION);
        } catch (ParserConfigurationException unused3) {
            throw new C3025f(C3025f.PARSE_CONFIG_FAILED);
        } catch (SAXException unused4) {
            throw new C3025f(C3025f.FILE_FORMAT_IS_NOT_CORRECT);
        }
    }

    /* renamed from: c */
    private static C3030b m13744c() {
        try {
            C3030b c3030b = new C3030b();
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(m13745d(), "UTF-8");
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                String name = newPullParser.getName();
                if (eventType == 2) {
                    if (f11070a.equals(name)) {
                        c3030b.f11065b = newPullParser.getAttributeValue("", f11076g);
                    } else if ("version".equals(name)) {
                        c3030b.f11064a = Integer.parseInt(newPullParser.getAttributeValue("", f11076g));
                    } else if (f11073d.equals(name)) {
                        c3030b.m13741a().add(newPullParser.getAttributeValue("", f11077h));
                    } else if (f11074e.equals(name)) {
                        c3030b.f11066c = newPullParser.getAttributeValue("", f11076g);
                    } else if (f11075f.equals(name)) {
                        c3030b.f11067d = newPullParser.getAttributeValue("", f11076g);
                    }
                }
            }
            return c3030b;
        } catch (IOException unused) {
            throw new C3025f(C3025f.IO_EXCEPTION);
        } catch (XmlPullParserException unused2) {
            throw new C3025f(C3025f.FILE_FORMAT_IS_NOT_CORRECT);
        }
    }

    /* renamed from: d */
    private static InputStream m13745d() throws IOException {
        AssetManager assets = LitePalApplication.m13404a().getAssets();
        String[] list = assets.list("");
        if (list != null && list.length > 0) {
            for (String str : list) {
                if (InterfaceC3057b.a.f11203e.equalsIgnoreCase(str)) {
                    return assets.open(str, 3);
                }
            }
        }
        throw new C3025f(C3025f.CAN_NOT_FIND_LITEPAL_FILE);
    }
}
