package com.cyjh.elfin.p077e.p080c;

import android.content.Context;
import android.util.JsonReader;
import com.cyjh.elfin.entity.BestResolution;
import com.cyjh.elfin.entity.FileVersion;
import com.cyjh.elfin.entity.Script;
import com.cyjh.elfin.entity.ScriptInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* renamed from: com.cyjh.elfin.e.c.l */
/* loaded from: classes.dex */
public final class C1261l {

    /* renamed from: a */
    private static final String f4691a = "BestResolution";

    /* renamed from: b */
    private static final String f4692b = "X";

    /* renamed from: c */
    private static final String f4693c = "Y";

    /* renamed from: d */
    private static final String f4694d = "ChangeFileList";

    /* renamed from: e */
    private static final String f4695e = "Description";

    /* renamed from: f */
    private static final String f4696f = "FileVersion";

    /* renamed from: g */
    private static final String f4697g = "Name";

    /* renamed from: h */
    private static final String f4698h = "id";

    /* renamed from: i */
    private static final String f4699i = "ScriptVersion";

    /* renamed from: j */
    private static final String f4700j = "AppID";

    /* renamed from: k */
    private static final String f4701k = "Version";

    /* renamed from: l */
    private static final String f4702l = "SelID";

    /* renamed from: m */
    private static final String f4703m = ".mq";

    /* renamed from: n */
    private static final String f4704n = ".atc";

    /* renamed from: o */
    private static final String f4705o = ".prop";

    /* renamed from: p */
    private static final String f4706p = ".rtd";

    /* renamed from: q */
    private static final String f4707q = ".ui";

    /* renamed from: a */
    private static BestResolution m5748a(JsonReader jsonReader) throws IOException {
        BestResolution bestResolution = new BestResolution();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(f4692b)) {
                bestResolution.setX(jsonReader.nextInt());
            } else if (nextName.equals(f4693c)) {
                bestResolution.setY(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return bestResolution;
    }

    /* renamed from: a */
    public static Script m5749a(InputStream inputStream) throws IOException {
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, "GBK"));
        jsonReader.beginObject();
        Script script = new Script();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(f4700j)) {
                script.setAppId(jsonReader.nextString());
            } else if (nextName.equals(f4691a)) {
                script.setBestResolution(m5748a(jsonReader));
            } else if (nextName.equals(f4694d)) {
                script.setChangeFileList(jsonReader.nextInt());
            } else if (nextName.equals(f4695e)) {
                script.setDescription(jsonReader.nextString());
            } else if (nextName.equals(f4696f)) {
                script.setFileVersion(m5752b(jsonReader));
            } else if (nextName.equals(f4697g)) {
                script.setName(jsonReader.nextString());
            } else if (nextName.equals("id")) {
                script.setId(jsonReader.nextString());
            } else if (nextName.equals(f4702l)) {
                script.setSelId(jsonReader.nextString());
            } else if (nextName.equals(f4701k)) {
                script.setVersion(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return script;
    }

    /* renamed from: a */
    public static String m5750a(Context context, String str) {
        ScriptInfo scriptInfo = new ScriptInfo();
        try {
            JsonReader jsonReader = new JsonReader(new InputStreamReader(context.getAssets().open(str), "GBK"));
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (f4699i.equals(jsonReader.nextName())) {
                    scriptInfo.setScriptVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return scriptInfo.getScriptVersion();
    }

    /* renamed from: a */
    public static String m5751a(File file) {
        ScriptInfo scriptInfo = new ScriptInfo();
        try {
            JsonReader jsonReader = new JsonReader(new InputStreamReader(new FileInputStream(file), "GBK"));
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (f4699i.equals(jsonReader.nextName())) {
                    scriptInfo.setScriptVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return scriptInfo.getScriptVersion();
    }

    /* renamed from: b */
    private static FileVersion m5752b(JsonReader jsonReader) throws IOException {
        FileVersion fileVersion = new FileVersion();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(".atc")) {
                fileVersion.setAtc(jsonReader.nextInt());
            } else if (nextName.equals(".mq")) {
                fileVersion.setMq(jsonReader.nextInt());
            } else if (nextName.equals(".prop")) {
                fileVersion.setProp(jsonReader.nextInt());
            } else if (nextName.equals(".ui")) {
                fileVersion.setUI(jsonReader.nextInt());
            } else if (nextName.equals(".rtd")) {
                fileVersion.setRtd(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return fileVersion;
    }
}
