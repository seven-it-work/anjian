package com.alibaba.sdk.android.oss.common.utils;

import java.net.URLEncoder;
import java.util.Map;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class HttpUtil {
    public static String paramToQueryString(Map<String, String> map, String str) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!z) {
                sb.append("&");
            }
            sb.append(urlEncode(key, str));
            if (value != null) {
                sb.append("=");
                sb.append(urlEncode(value, str));
            }
            z = false;
        }
        return sb.toString();
    }

    public static String urlEncode(String str, String str2) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, str2).replace(Marker.ANY_NON_NULL_MARKER, "%20").replace(Marker.ANY_MARKER, "%2A").replace("%7E", "~").replace("%2F", "/");
        } catch (Exception e) {
            throw new IllegalArgumentException("failed to encode url!", e);
        }
    }
}
