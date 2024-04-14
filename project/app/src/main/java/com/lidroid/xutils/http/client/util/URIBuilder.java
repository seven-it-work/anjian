package com.lidroid.xutils.http.client.util;

import android.text.TextUtils;
import com.lidroid.xutils.util.LogUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class URIBuilder {
    private String encodedAuthority;
    private String encodedFragment;
    private String encodedPath;
    private String encodedQuery;
    private String encodedSchemeSpecificPart;
    private String encodedUserInfo;
    private String fragment;
    private String host;
    private String path;
    private int port;
    private List<NameValuePair> queryParams;
    private String scheme;
    private String userInfo;

    public URIBuilder() {
        this.port = -1;
    }

    public URIBuilder(String str) {
        try {
            digestURI(new URI(str));
        } catch (URISyntaxException e) {
            LogUtils.m10369e(e.getMessage(), e);
        }
    }

    public URIBuilder(URI uri) {
        digestURI(uri);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String buildString(java.nio.charset.Charset r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r2.scheme
            if (r1 == 0) goto L13
            java.lang.String r1 = r2.scheme
            r0.append(r1)
            r1 = 58
            r0.append(r1)
        L13:
            java.lang.String r1 = r2.encodedSchemeSpecificPart
            if (r1 == 0) goto L1e
            java.lang.String r1 = r2.encodedSchemeSpecificPart
        L19:
            r0.append(r1)
            goto Lb4
        L1e:
            java.lang.String r1 = r2.encodedAuthority
            if (r1 == 0) goto L2d
            java.lang.String r1 = "//"
            r0.append(r1)
            java.lang.String r1 = r2.encodedAuthority
            r0.append(r1)
            goto L79
        L2d:
            java.lang.String r1 = r2.host
            if (r1 == 0) goto L79
            java.lang.String r1 = "//"
            r0.append(r1)
            java.lang.String r1 = r2.encodedUserInfo
            if (r1 == 0) goto L45
            java.lang.String r1 = r2.encodedUserInfo
        L3c:
            r0.append(r1)
            java.lang.String r1 = "@"
            r0.append(r1)
            goto L50
        L45:
            java.lang.String r1 = r2.userInfo
            if (r1 == 0) goto L50
            java.lang.String r1 = r2.userInfo
            java.lang.String r1 = r2.encodeUserInfo(r1, r3)
            goto L3c
        L50:
            java.lang.String r1 = r2.host
            boolean r1 = org.apache.http.conn.util.InetAddressUtils.isIPv6Address(r1)
            if (r1 == 0) goto L68
            java.lang.String r1 = "["
            r0.append(r1)
            java.lang.String r1 = r2.host
            r0.append(r1)
            java.lang.String r1 = "]"
        L64:
            r0.append(r1)
            goto L6b
        L68:
            java.lang.String r1 = r2.host
            goto L64
        L6b:
            int r1 = r2.port
            if (r1 < 0) goto L79
            java.lang.String r1 = ":"
            r0.append(r1)
            int r1 = r2.port
            r0.append(r1)
        L79:
            java.lang.String r1 = r2.encodedPath
            if (r1 == 0) goto L87
            java.lang.String r1 = r2.encodedPath
            java.lang.String r1 = normalizePath(r1)
        L83:
            r0.append(r1)
            goto L96
        L87:
            java.lang.String r1 = r2.path
            if (r1 == 0) goto L96
            java.lang.String r1 = r2.path
            java.lang.String r1 = normalizePath(r1)
            java.lang.String r1 = r2.encodePath(r1, r3)
            goto L83
        L96:
            java.lang.String r1 = r2.encodedQuery
            if (r1 == 0) goto La3
            java.lang.String r1 = "?"
            r0.append(r1)
            java.lang.String r1 = r2.encodedQuery
            goto L19
        La3:
            java.util.List<org.apache.http.NameValuePair> r1 = r2.queryParams
            if (r1 == 0) goto Lb4
            java.lang.String r1 = "?"
            r0.append(r1)
            java.util.List<org.apache.http.NameValuePair> r1 = r2.queryParams
            java.lang.String r1 = r2.encodeQuery(r1, r3)
            goto L19
        Lb4:
            java.lang.String r1 = r2.encodedFragment
            if (r1 == 0) goto Lc3
            java.lang.String r3 = "#"
            r0.append(r3)
            java.lang.String r3 = r2.encodedFragment
        Lbf:
            r0.append(r3)
            goto Ld3
        Lc3:
            java.lang.String r1 = r2.fragment
            if (r1 == 0) goto Ld3
            java.lang.String r1 = "#"
            r0.append(r1)
            java.lang.String r1 = r2.fragment
            java.lang.String r3 = r2.encodeFragment(r1, r3)
            goto Lbf
        Ld3:
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.client.util.URIBuilder.buildString(java.nio.charset.Charset):java.lang.String");
    }

    private void digestURI(URI uri) {
        this.scheme = uri.getScheme();
        this.encodedSchemeSpecificPart = uri.getRawSchemeSpecificPart();
        this.encodedAuthority = uri.getRawAuthority();
        this.host = uri.getHost();
        this.port = uri.getPort();
        this.encodedUserInfo = uri.getRawUserInfo();
        this.userInfo = uri.getUserInfo();
        this.encodedPath = uri.getRawPath();
        this.path = uri.getPath();
        this.encodedQuery = uri.getRawQuery();
        this.queryParams = parseQuery(uri.getRawQuery());
        this.encodedFragment = uri.getRawFragment();
        this.fragment = uri.getFragment();
    }

    private String encodeFragment(String str, Charset charset) {
        return URLEncodedUtils.encFragment(str, charset);
    }

    private String encodePath(String str, Charset charset) {
        return URLEncodedUtils.encPath(str, charset).replace(Marker.ANY_NON_NULL_MARKER, "20%");
    }

    private String encodeQuery(List<NameValuePair> list, Charset charset) {
        return URLEncodedUtils.format(list, charset);
    }

    private String encodeUserInfo(String str, Charset charset) {
        return URLEncodedUtils.encUserInfo(str, charset);
    }

    private static String normalizePath(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        while (i < str.length() && str.charAt(i) == '/') {
            i++;
        }
        return i > 1 ? str.substring(i - 1) : str;
    }

    private List<NameValuePair> parseQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return URLEncodedUtils.parse(str);
    }

    public URIBuilder addParameter(String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        this.queryParams.add(new BasicNameValuePair(str, str2));
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URI build(Charset charset) throws URISyntaxException {
        return new URI(buildString(charset));
    }

    public String getFragment() {
        return this.fragment;
    }

    public String getHost() {
        return this.host;
    }

    public String getPath() {
        return this.path;
    }

    public int getPort() {
        return this.port;
    }

    public List<NameValuePair> getQueryParams() {
        return this.queryParams != null ? new ArrayList(this.queryParams) : new ArrayList();
    }

    public String getScheme() {
        return this.scheme;
    }

    public String getUserInfo() {
        return this.userInfo;
    }

    public URIBuilder setFragment(String str) {
        this.fragment = str;
        this.encodedFragment = null;
        return this;
    }

    public URIBuilder setHost(String str) {
        this.host = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        return this;
    }

    public URIBuilder setParameter(String str, String str2) {
        if (this.queryParams == null) {
            this.queryParams = new ArrayList();
        }
        if (!this.queryParams.isEmpty()) {
            Iterator<NameValuePair> it = this.queryParams.iterator();
            while (it.hasNext()) {
                if (it.next().getName().equals(str)) {
                    it.remove();
                }
            }
        }
        this.queryParams.add(new BasicNameValuePair(str, str2));
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URIBuilder setPath(String str) {
        this.path = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedPath = null;
        return this;
    }

    public URIBuilder setPort(int i) {
        if (i < 0) {
            i = -1;
        }
        this.port = i;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        return this;
    }

    public URIBuilder setQuery(String str) {
        this.queryParams = parseQuery(str);
        this.encodedQuery = null;
        this.encodedSchemeSpecificPart = null;
        return this;
    }

    public URIBuilder setScheme(String str) {
        this.scheme = str;
        return this;
    }

    public URIBuilder setUserInfo(String str) {
        this.userInfo = str;
        this.encodedSchemeSpecificPart = null;
        this.encodedAuthority = null;
        this.encodedUserInfo = null;
        return this;
    }

    public URIBuilder setUserInfo(String str, String str2) {
        return setUserInfo(String.valueOf(str) + ':' + str2);
    }
}
