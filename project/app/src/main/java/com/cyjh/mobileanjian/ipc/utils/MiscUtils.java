package com.cyjh.mobileanjian.ipc.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MiscUtils {
    public static boolean hasClass(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String parseId(String str) {
        try {
            return new JSONObject(FileUtils.file2Text(str, "GBK")).getString("id");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String parseScriptName(String str) {
        try {
            return new JSONObject(FileUtils.file2Text(str, "GBK")).getString("Name");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String sendGet(String str, String str2) {
        String str3 = "";
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append("?");
                    if (str2 == null) {
                        str2 = "";
                    }
                    sb.append(str2);
                    URLConnection openConnection = new URL(sb.toString()).openConnection();
                    openConnection.setRequestProperty("accept", "*/*");
                    openConnection.setRequestProperty("connection", "Keep-Alive");
                    openConnection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
                    openConnection.connect();
                    openConnection.getHeaderFields();
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(openConnection.getInputStream()));
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                bufferedReader2.close();
                                return str3;
                            }
                            str3 = str3 + readLine;
                        } catch (Exception e) {
                            e = e;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return str3;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
