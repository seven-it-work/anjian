package com.lidroid.xutils.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;

/* loaded from: classes.dex */
public class PreferencesCookieStore implements CookieStore {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_NAME_STORE = "names";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private final SharedPreferences cookiePrefs;
    private final ConcurrentHashMap<String, Cookie> cookies = new ConcurrentHashMap<>();

    /* loaded from: classes.dex */
    public class SerializableCookie implements Serializable {
        private static final long serialVersionUID = 6374381828722046732L;
        private transient BasicClientCookie clientCookie;
        private final transient Cookie cookie;

        public SerializableCookie(Cookie cookie) {
            this.cookie = cookie;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this.clientCookie = new BasicClientCookie((String) objectInputStream.readObject(), (String) objectInputStream.readObject());
            this.clientCookie.setComment((String) objectInputStream.readObject());
            this.clientCookie.setDomain((String) objectInputStream.readObject());
            this.clientCookie.setExpiryDate((Date) objectInputStream.readObject());
            this.clientCookie.setPath((String) objectInputStream.readObject());
            this.clientCookie.setVersion(objectInputStream.readInt());
            this.clientCookie.setSecure(objectInputStream.readBoolean());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.cookie.getName());
            objectOutputStream.writeObject(this.cookie.getValue());
            objectOutputStream.writeObject(this.cookie.getComment());
            objectOutputStream.writeObject(this.cookie.getDomain());
            objectOutputStream.writeObject(this.cookie.getExpiryDate());
            objectOutputStream.writeObject(this.cookie.getPath());
            objectOutputStream.writeInt(this.cookie.getVersion());
            objectOutputStream.writeBoolean(this.cookie.isSecure());
        }

        public Cookie getCookie() {
            return this.clientCookie != null ? this.clientCookie : this.cookie;
        }
    }

    public PreferencesCookieStore(Context context) {
        Cookie decodeCookie;
        this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS, 0);
        String string = this.cookiePrefs.getString(COOKIE_NAME_STORE, null);
        if (string != null) {
            for (String str : TextUtils.split(string, ",")) {
                String string2 = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                if (string2 != null && (decodeCookie = decodeCookie(string2)) != null) {
                    this.cookies.put(str, decodeCookie);
                }
            }
            clearExpired(new Date());
        }
    }

    @Override // org.apache.http.client.CookieStore
    public void addCookie(Cookie cookie) {
        String name = cookie.getName();
        if (cookie.isExpired(new Date())) {
            this.cookies.remove(name);
        } else {
            this.cookies.put(name, cookie);
        }
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        edit.putString(COOKIE_NAME_PREFIX + name, encodeCookie(new SerializableCookie(cookie)));
        edit.commit();
    }

    protected String byteArrayToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b2 : bArr) {
            int i = b2 & 255;
            if (i < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(Integer.toHexString(i));
        }
        return stringBuffer.toString().toUpperCase();
    }

    @Override // org.apache.http.client.CookieStore
    public void clear() {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        Iterator<String> it = this.cookies.keySet().iterator();
        while (it.hasNext()) {
            edit.remove(COOKIE_NAME_PREFIX + it.next());
        }
        edit.remove(COOKIE_NAME_STORE);
        edit.commit();
        this.cookies.clear();
    }

    @Override // org.apache.http.client.CookieStore
    public boolean clearExpired(Date date) {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        boolean z = false;
        for (Map.Entry<String, Cookie> entry : this.cookies.entrySet()) {
            String key = entry.getKey();
            Cookie value = entry.getValue();
            if (value.getExpiryDate() == null || value.isExpired(date)) {
                this.cookies.remove(key);
                edit.remove(COOKIE_NAME_PREFIX + key);
                z = true;
            }
        }
        if (z) {
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        }
        edit.commit();
        return z;
    }

    protected Cookie decodeCookie(String str) {
        try {
            return ((SerializableCookie) new ObjectInputStream(new ByteArrayInputStream(hexStringToByteArray(str))).readObject()).getCookie();
        } catch (Throwable th) {
            LogUtils.m10369e(th.getMessage(), th);
            return null;
        }
    }

    protected String encodeCookie(SerializableCookie serializableCookie) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(serializableCookie);
            return byteArrayToHexString(byteArrayOutputStream.toByteArray());
        } catch (Throwable unused) {
            return null;
        }
    }

    public Cookie getCookie(String str) {
        return this.cookies.get(str);
    }

    @Override // org.apache.http.client.CookieStore
    public List<Cookie> getCookies() {
        return new ArrayList(this.cookies.values());
    }

    protected byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
