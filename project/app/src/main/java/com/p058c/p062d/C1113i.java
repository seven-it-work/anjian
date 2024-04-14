package com.p058c.p062d;

import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: com.c.d.i */
/* loaded from: classes.dex */
public class C1113i {

    /* renamed from: a */
    private Element f3788a;

    public C1113i(InputStream inputStream) throws SAXException {
        try {
            this.f3788a = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement();
        } catch (IOException e) {
            throw new SAXException(e);
        } catch (ParserConfigurationException unused) {
        }
    }

    private C1113i(String str) throws SAXException {
        this(str.getBytes());
    }

    private C1113i(Element element) {
        this.f3788a = element;
    }

    private C1113i(byte[] bArr) throws SAXException {
        this(new ByteArrayInputStream(bArr));
    }

    /* renamed from: a */
    private C1113i m4119a(String str) {
        NodeList elementsByTagName = this.f3788a.getElementsByTagName(str);
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return null;
        }
        return new C1113i((Element) elementsByTagName.item(0));
    }

    /* renamed from: a */
    private C1113i m4120a(String str, String str2, String str3) {
        List<C1113i> m4129b = m4129b(str, str2, str3);
        if (m4129b.size() == 0) {
            return null;
        }
        return m4129b.get(0);
    }

    /* renamed from: a */
    private static C1113i m4121a(Node node, String str, String str2, String str3) {
        if (node.getNodeType() != 1) {
            return null;
        }
        Element element = (Element) node;
        if (str != null && !str.equals(element.getTagName())) {
            return null;
        }
        if (str2 != null && !element.hasAttribute(str2)) {
            return null;
        }
        if (str3 == null || str3.equals(element.getAttribute(str2))) {
            return new C1113i(element);
        }
        return null;
    }

    /* renamed from: a */
    private static String m4122a(Node node) {
        String nodeValue;
        switch (node.getNodeType()) {
            case 3:
                nodeValue = node.getNodeValue();
                if (nodeValue != null) {
                    nodeValue = nodeValue.trim();
                    break;
                }
                break;
            case 4:
                nodeValue = node.getNodeValue();
                break;
            default:
                nodeValue = null;
                break;
        }
        return nodeValue == null ? "" : nodeValue;
    }

    /* renamed from: a */
    private static List<C1113i> m4123a(NodeList nodeList, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            C1113i c1113i = null;
            if (item.getNodeType() == 1) {
                Element element = (Element) item;
                if ((str == null || str.equals(element.getTagName())) && ((str2 == null || element.hasAttribute(str2)) && (str3 == null || str3.equals(element.getAttribute(str2))))) {
                    c1113i = new C1113i(element);
                }
            }
            if (c1113i != null) {
                arrayList.add(c1113i);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private Element m4124a() {
        return this.f3788a;
    }

    /* renamed from: a */
    private void m4125a(Element element, XmlSerializer xmlSerializer, int i, String str) throws Exception {
        String tagName = element.getTagName();
        m4126a(xmlSerializer, i, str);
        xmlSerializer.startTag("", tagName);
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                Attr attr = (Attr) attributes.item(i2);
                xmlSerializer.attribute("", attr.getName(), attr.getValue());
            }
        }
        if (element.hasChildNodes()) {
            NodeList childNodes = element.getChildNodes();
            int i3 = 0;
            for (int i4 = 0; i4 < childNodes.getLength(); i4++) {
                Node item = childNodes.item(i4);
                short nodeType = item.getNodeType();
                if (nodeType != 1) {
                    switch (nodeType) {
                        case 3:
                            xmlSerializer.text(m4122a(item));
                            break;
                        case 4:
                            xmlSerializer.cdsect(m4122a(item));
                            break;
                    }
                } else {
                    m4125a((Element) item, xmlSerializer, i + 1, str);
                    i3++;
                }
            }
            if (i3 > 0) {
                m4126a(xmlSerializer, i, str);
            }
        }
        xmlSerializer.endTag("", tagName);
    }

    /* renamed from: a */
    private static void m4126a(XmlSerializer xmlSerializer, int i, String str) throws Exception {
        if (str != null) {
            xmlSerializer.text("\n");
            for (int i2 = 0; i2 < i; i2++) {
                xmlSerializer.text(str);
            }
        }
    }

    /* renamed from: b */
    private String m4127b() {
        return m4131c();
    }

    /* renamed from: b */
    private List<C1113i> m4128b(String str) {
        return m4129b(str, null, null);
    }

    /* renamed from: b */
    private List<C1113i> m4129b(String str, String str2, String str3) {
        return m4123a(this.f3788a.getElementsByTagName(str), (String) null, str2, str3);
    }

    /* renamed from: c */
    private C1113i m4130c(String str) {
        List<C1113i> m4135f = m4135f(str);
        if (m4135f.size() == 0) {
            return null;
        }
        return m4135f.get(0);
    }

    /* renamed from: c */
    private String m4131c() {
        try {
            XmlSerializer newSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            newSerializer.setOutput(stringWriter);
            newSerializer.startDocument("utf-8", null);
            m4125a(this.f3788a, newSerializer, 0, (String) null);
            newSerializer.endDocument();
            return stringWriter.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    private C1113i m4132d(String str) {
        List<C1113i> m4135f = m4135f(str);
        if (m4135f.size() == 0) {
            return null;
        }
        return m4135f.get(0);
    }

    /* renamed from: d */
    private String m4133d() {
        NodeList childNodes = this.f3788a.getChildNodes();
        if (childNodes.getLength() == 1) {
            return childNodes.item(0).getNodeValue();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < childNodes.getLength(); i++) {
            sb.append(m4122a(childNodes.item(i)));
        }
        return sb.toString();
    }

    /* renamed from: e */
    private List<C1113i> m4134e(String str) {
        return m4135f(str);
    }

    /* renamed from: f */
    private List<C1113i> m4135f(String str) {
        return m4123a(this.f3788a.getChildNodes(), str, (String) null, (String) null);
    }

    /* renamed from: g */
    private String m4136g(String str) {
        List<C1113i> m4135f = m4135f(str);
        C1113i c1113i = m4135f.size() == 0 ? null : m4135f.get(0);
        if (c1113i == null) {
            return null;
        }
        NodeList childNodes = c1113i.f3788a.getChildNodes();
        if (childNodes.getLength() == 1) {
            return childNodes.item(0).getNodeValue();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < childNodes.getLength(); i++) {
            sb.append(m4122a(childNodes.item(i)));
        }
        return sb.toString();
    }

    /* renamed from: h */
    private String m4137h(String str) {
        return this.f3788a.getAttribute(str);
    }

    public String toString() {
        return m4131c();
    }
}
