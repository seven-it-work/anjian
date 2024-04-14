package com.elfin.engin.p124b;

import android.R;
import android.content.Context;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mqm.MiscUtilities;
import com.elfin.engin.p124b.p125a.InterfaceC1747a;
import com.elfin.engin.p126c.C1751a;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.elfin.engin.b.b */
/* loaded from: classes.dex */
public final class C1748b implements InterfaceC1747a {

    /* renamed from: a */
    protected ArrayList<CheckBox> f6880a = new ArrayList<>();

    /* renamed from: b */
    protected ArrayList<Spinner> f6881b = new ArrayList<>();

    /* renamed from: c */
    protected ArrayList<EditText> f6882c = new ArrayList<>();

    /* renamed from: d */
    private Context f6883d;

    /* renamed from: e */
    private File f6884e;

    /* renamed from: f */
    private File f6885f;

    /* renamed from: g */
    private String f6886g;

    private C1748b(Context context) {
        this.f6883d = context;
    }

    public C1748b(Context context, String str, String str2) {
        this.f6884e = new File(str);
        this.f6885f = new File(str2);
        this.f6883d = context;
        Log.e("a111111", "ScriptUiModel " + str);
    }

    /* renamed from: a */
    private int m7993a(int i) {
        return this.f6883d.getResources().getInteger(i);
    }

    /* renamed from: a */
    private LinearLayout m7994a(JsonReader jsonReader) throws IOException {
        View m7996b;
        LinearLayout linearLayout = new LinearLayout(this.f6883d);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.f6883d.getString(C1751a.m8023a("string", "ui_linearlayout")).equalsIgnoreCase(nextName)) {
                m7996b = m7996b(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textview")).equalsIgnoreCase(nextName)) {
                m7996b = m7999c(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext")).equalsIgnoreCase(nextName)) {
                m7996b = m8000d(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_checkbox")).equals(nextName)) {
                m7996b = m8001e(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_spinner")).equalsIgnoreCase(nextName)) {
                m7996b = m8002f(jsonReader);
            }
            linearLayout.addView(m7996b);
        }
        jsonReader.endObject();
        return linearLayout;
    }

    /* renamed from: a */
    private void m7995a(File file) throws JSONException {
        String str;
        if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
            return;
        }
        try {
            str = TextUtils.isEmpty(this.f6886g) ? FileUtils.readFileToString(file, "UTF-8") : this.f6886g;
        } catch (IOException e) {
            e.printStackTrace();
            str = null;
        }
        JSONObject jSONObject = new JSONObject(str);
        Iterator<Spinner> it = this.f6881b.iterator();
        while (it.hasNext()) {
            Spinner next = it.next();
            try {
                int i = jSONObject.getInt(next.getTag().toString());
                if (i >= next.getCount()) {
                    next.setSelection(0);
                } else {
                    next.setSelection(i);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        Iterator<CheckBox> it2 = this.f6880a.iterator();
        while (it2.hasNext()) {
            CheckBox next2 = it2.next();
            try {
                next2.setChecked(jSONObject.getBoolean(next2.getTag().toString()));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        Iterator<EditText> it3 = this.f6882c.iterator();
        while (it3.hasNext()) {
            EditText next3 = it3.next();
            try {
                next3.setText(jSONObject.getString(next3.getTag().toString()));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* renamed from: b */
    private LinearLayout m7996b(JsonReader jsonReader) throws IOException {
        View m7996b;
        LinearLayout linearLayout = new LinearLayout(this.f6883d);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.f6883d.getString(C1751a.m8023a("string", "ui_linearlayout")).equalsIgnoreCase(nextName)) {
                m7996b = m7996b(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textview")).equalsIgnoreCase(nextName)) {
                m7996b = m7999c(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext")).equalsIgnoreCase(nextName)) {
                m7996b = m8000d(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_checkbox")).equals(nextName)) {
                m7996b = m8001e(jsonReader);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_spinner")).equalsIgnoreCase(nextName)) {
                m7996b = m8002f(jsonReader);
            } else {
                jsonReader.skipValue();
            }
            linearLayout.addView(m7996b);
        }
        jsonReader.endObject();
        return linearLayout;
    }

    /* renamed from: b */
    private String m7997b(File file) throws Exception {
        if (file == null || file.isDirectory()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        Iterator<CheckBox> it = this.f6880a.iterator();
        while (it.hasNext()) {
            CheckBox next = it.next();
            try {
                jSONObject.put(next.getTag().toString(), next.isChecked());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Iterator<Spinner> it2 = this.f6881b.iterator();
        while (it2.hasNext()) {
            Spinner next2 = it2.next();
            try {
                jSONObject.put(next2.getTag().toString(), next2.getSelectedItemPosition());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        Iterator<EditText> it3 = this.f6882c.iterator();
        while (it3.hasNext()) {
            EditText next3 = it3.next();
            try {
                jSONObject.put(next3.getTag().toString(), next3.getText().toString());
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        FileUtils.writeStringToFile(file, jSONObject.toString(), "UTF-8");
        return jSONObject.toString();
    }

    /* renamed from: c */
    private LinearLayout m7998c(String str) {
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        LinearLayout linearLayout = new LinearLayout(this.f6883d);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().startsWith(this.f6883d.getString(C1751a.m8023a("string", "ui_activity")))) {
                    linearLayout = m7994a(jsonReader);
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            jsonReader.close();
        } catch (Exception unused) {
        }
        return linearLayout;
    }

    /* renamed from: c */
    private TextView m7999c(JsonReader jsonReader) throws IOException {
        TextView textView = new TextView(this.f6883d);
        textView.setGravity(17);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(m7993a(C1751a.m8023a("integer", "ui_textSize_normal")));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.f6883d.getString(C1751a.m8023a("string", "ui_name")).equalsIgnoreCase(nextName)) {
                textView.setTag(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textview_textcontent")).equalsIgnoreCase(nextName)) {
                textView.setText(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textsize")).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= m7993a(C1751a.m8023a("integer", "ui_textsize_min"))) {
                    if (nextInt != m7993a(C1751a.m8023a("integer", "ui_textSize_default"))) {
                        nextInt = m7993a(C1751a.m8023a("integer", "ui_textsize_min"));
                    }
                }
                textView.setTextSize(nextInt);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_height")).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > m7993a(C1751a.m8023a("integer", "ui_default_height"))) {
                    textView.setHeight(nextInt2);
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_width")).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > m7993a(C1751a.m8023a("integer", "ui_default_width"))) {
                    textView.setWidth(nextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return textView;
    }

    /* renamed from: d */
    private EditText m8000d(JsonReader jsonReader) throws IOException {
        boolean z;
        EditText editText = new EditText(this.f6883d);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        editText.setTextSize(m7993a(C1751a.m8023a("integer", "ui_textSize_normal")));
        editText.setSingleLine(true);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.f6883d.getString(C1751a.m8023a("string", "ui_name")).equalsIgnoreCase(nextName)) {
                editText.setTag(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext_hintcontent")).equalsIgnoreCase(nextName)) {
                editText.setHint(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textsize")).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= m7993a(C1751a.m8023a("integer", "ui_textsize_min"))) {
                    if (nextInt != m7993a(C1751a.m8023a("integer", "ui_textSize_default"))) {
                        nextInt = m7993a(C1751a.m8023a("integer", "ui_textsize_min"));
                    }
                }
                editText.setTextSize(nextInt);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_height")).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > m7993a(C1751a.m8023a("integer", "ui_default_height"))) {
                    editText.setHeight(nextInt2);
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_width")).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > m7993a(C1751a.m8023a("integer", "ui_default_width"))) {
                    editText.setWidth(nextInt3);
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext_maxlength")).equalsIgnoreCase(nextName)) {
                int nextInt4 = jsonReader.nextInt();
                if (nextInt4 > 0) {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(nextInt4)});
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext_inputnumber")).equalsIgnoreCase(nextName)) {
                try {
                    z = jsonReader.nextBoolean();
                } catch (Exception unused) {
                    z = false;
                }
                if (z) {
                    editText.setInputType(2);
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_edittext_defaultcontent")).equalsIgnoreCase(nextName)) {
                editText.setText(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        this.f6882c.add(editText);
        jsonReader.endObject();
        return editText;
    }

    /* renamed from: e */
    private CheckBox m8001e(JsonReader jsonReader) throws IOException {
        CheckBox checkBox = new CheckBox(this.f6883d);
        checkBox.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        checkBox.setTextSize(m7993a(C1751a.m8023a("integer", "ui_textSize_normal")));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.f6883d.getString(C1751a.m8023a("string", "ui_name")).equalsIgnoreCase(nextName)) {
                checkBox.setTag(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_checkbox_hintcontent")).equalsIgnoreCase(nextName)) {
                checkBox.setText(jsonReader.nextString());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_checkbox_checked")).equalsIgnoreCase(nextName)) {
                checkBox.setChecked(jsonReader.nextBoolean());
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_textsize")).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= m7993a(C1751a.m8023a("integer", "ui_textsize_min"))) {
                    if (nextInt != m7993a(C1751a.m8023a("integer", "ui_textSize_default"))) {
                        nextInt = m7993a(C1751a.m8023a("integer", "ui_textsize_min"));
                    }
                }
                checkBox.setTextSize(nextInt);
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_height")).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > m7993a(C1751a.m8023a("integer", "ui_default_height"))) {
                    checkBox.setHeight(nextInt2);
                }
            } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_layout_width")).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > m7993a(C1751a.m8023a("integer", "ui_default_width"))) {
                    checkBox.setWidth(nextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        this.f6880a.add(checkBox);
        jsonReader.endObject();
        return checkBox;
    }

    /* renamed from: f */
    private Spinner m8002f(JsonReader jsonReader) throws IOException {
        Spinner spinner = new Spinner(this.f6883d);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            try {
                String nextName = jsonReader.nextName();
                ArrayList arrayList = new ArrayList();
                if (this.f6883d.getString(C1751a.m8023a("string", "ui_name")).equalsIgnoreCase(nextName)) {
                    spinner.setTag(jsonReader.nextString());
                } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_spinner_items")).equalsIgnoreCase(nextName)) {
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        try {
                            arrayList.add(jsonReader.nextString());
                        } catch (Exception unused) {
                        }
                    }
                    jsonReader.endArray();
                    ArrayAdapter arrayAdapter = new ArrayAdapter(this.f6883d, (int) R.layout.simple_spinner_item, arrayList);
                    arrayAdapter.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                    spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                } else if (this.f6883d.getString(C1751a.m8023a("string", "ui_spinner_defaultitem")).equalsIgnoreCase(nextName)) {
                    try {
                        spinner.setSelection(jsonReader.nextInt(), true);
                    } catch (Exception unused2) {
                        spinner.setSelection(0);
                    }
                } else {
                    jsonReader.skipValue();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        jsonReader.endObject();
        this.f6881b.add(spinner);
        return spinner;
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: a */
    public final LinearLayout mo7987a() throws Exception {
        if (!this.f6884e.exists()) {
            return new LinearLayout(this.f6883d);
        }
        String LoadUIFile = new MiscUtilities().LoadUIFile(this.f6884e.getAbsolutePath(), true);
        Log.e("a111111", "ScriptUiModel parseui begin");
        LinearLayout m7998c = m7998c(LoadUIFile);
        Log.e("a111111", "ScriptUiModel end");
        return m7998c;
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: a */
    public final void mo7988a(String str) {
        this.f6886g = str;
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: b */
    public final String mo7989b() {
        return null;
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: b */
    public final void mo7990b(String str) {
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: c */
    public final void mo7991c() throws JSONException {
        String str;
        try {
            File file = this.f6885f;
            if (file == null || !file.exists() || file.isDirectory() || file.length() == 0) {
                return;
            }
            try {
                str = TextUtils.isEmpty(this.f6886g) ? FileUtils.readFileToString(file, "UTF-8") : this.f6886g;
            } catch (IOException e) {
                e.printStackTrace();
                str = null;
            }
            JSONObject jSONObject = new JSONObject(str);
            Iterator<Spinner> it = this.f6881b.iterator();
            while (it.hasNext()) {
                Spinner next = it.next();
                try {
                    int i = jSONObject.getInt(next.getTag().toString());
                    if (i >= next.getCount()) {
                        next.setSelection(0);
                    } else {
                        next.setSelection(i);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            Iterator<CheckBox> it2 = this.f6880a.iterator();
            while (it2.hasNext()) {
                CheckBox next2 = it2.next();
                try {
                    next2.setChecked(jSONObject.getBoolean(next2.getTag().toString()));
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            Iterator<EditText> it3 = this.f6882c.iterator();
            while (it3.hasNext()) {
                EditText next3 = it3.next();
                try {
                    next3.setText(jSONObject.getString(next3.getTag().toString()));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // com.elfin.engin.p124b.p125a.InterfaceC1747a
    /* renamed from: d */
    public final String mo7992d() throws Exception {
        return m7997b(this.f6885f);
    }
}
