package com.cyjh.mobileanjian.ipc.uip;

import android.R;
import android.content.Context;
import android.text.InputFilter;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.JsonReader;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mobileanjian.ipc.uip.C1642b;
import com.cyjh.mqsdk.C1696R;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DefaultUipJsonParser implements IUipJsonParser {
    protected Context mContext;
    private C1642b.a mDefaultFlowLayoutChildLayoutParams = new C1642b.a(-2, -2);

    public DefaultUipJsonParser(Context context) {
        this.mContext = context;
        this.mDefaultFlowLayoutChildLayoutParams.f6374a = 17;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public Button parseButton(JsonReader jsonReader) throws IOException, IllegalStateException {
        Button button = new Button(this.mContext);
        button.setGravity(17);
        button.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        button.setTextSize(this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_normal));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.mContext.getString(C1696R.string.ui_name).equalsIgnoreCase(nextName)) {
                button.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_textview_textcontent).equalsIgnoreCase(nextName)) {
                button.setText(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_onclick).equalsIgnoreCase(nextName)) {
                button.setTag(C1696R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_textsize).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min)) {
                    if (nextInt != this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_default)) {
                        nextInt = this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min);
                    }
                }
                button.setTextSize(nextInt);
            } else if (this.mContext.getString(C1696R.string.ui_layout_height).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_height)) {
                    button.setHeight(nextInt2);
                }
            } else if (this.mContext.getString(C1696R.string.ui_layout_width).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_width)) {
                    button.setWidth(nextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return button;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public CheckBox parseCheckBox(JsonReader jsonReader) throws IOException, IllegalStateException {
        CheckBox checkBox = new CheckBox(this.mContext);
        checkBox.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        checkBox.setTextSize(this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_normal));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.mContext.getString(C1696R.string.ui_name).equalsIgnoreCase(nextName)) {
                checkBox.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_onclick).equalsIgnoreCase(nextName)) {
                checkBox.setTag(C1696R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_checkbox_hintcontent).equalsIgnoreCase(nextName)) {
                checkBox.setText(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_checkbox_checked).equalsIgnoreCase(nextName)) {
                checkBox.setChecked(jsonReader.nextBoolean());
            } else if (this.mContext.getString(C1696R.string.ui_textsize).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min)) {
                    if (nextInt != this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_default)) {
                        nextInt = this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min);
                    }
                }
                checkBox.setTextSize(nextInt);
            } else if (this.mContext.getString(C1696R.string.ui_layout_height).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_height)) {
                    checkBox.setHeight(nextInt2);
                }
            } else if (this.mContext.getString(C1696R.string.ui_layout_width).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_width)) {
                    checkBox.setWidth(nextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return checkBox;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public EditText parseEditText(JsonReader jsonReader) throws IOException, IllegalStateException {
        boolean z;
        boolean z2;
        EditText editText = new EditText(this.mContext);
        editText.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        editText.setTextSize(this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_normal));
        editText.setSingleLine(true);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.mContext.getString(C1696R.string.ui_name).equalsIgnoreCase(nextName)) {
                editText.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_edittext_hintcontent).equalsIgnoreCase(nextName)) {
                editText.setHint(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_textsize).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min)) {
                    if (nextInt != this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_default)) {
                        nextInt = this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min);
                    }
                }
                editText.setTextSize(nextInt);
            } else if (this.mContext.getString(C1696R.string.ui_layout_height).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_height)) {
                    editText.setHeight(nextInt2);
                }
            } else if (this.mContext.getString(C1696R.string.ui_layout_width).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_width)) {
                    editText.setWidth(nextInt3);
                }
            } else if (this.mContext.getString(C1696R.string.ui_edittext_maxlength).equalsIgnoreCase(nextName)) {
                int nextInt4 = jsonReader.nextInt();
                if (nextInt4 > 0) {
                    editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(nextInt4)});
                }
            } else if (this.mContext.getString(C1696R.string.ui_edittext_inputnumber).equalsIgnoreCase(nextName)) {
                try {
                    z2 = jsonReader.nextBoolean();
                } catch (Exception unused) {
                    z2 = false;
                }
                if (z2) {
                    editText.setInputType(2);
                }
            } else if ("密码".equalsIgnoreCase(nextName)) {
                try {
                    z = jsonReader.nextBoolean();
                } catch (Exception unused2) {
                    z = false;
                }
                editText.setTransformationMethod(z ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
            } else if (this.mContext.getString(C1696R.string.ui_edittext_defaultcontent).equalsIgnoreCase(nextName)) {
                editText.setText(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        editText.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.uip.DefaultUipJsonParser.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        editText.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.cyjh.mobileanjian.ipc.uip.DefaultUipJsonParser.2
            @Override // android.view.ActionMode.Callback
            public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public final void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        return editText;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public C1642b parseHorizontalLinearLayout(JsonReader jsonReader) throws IOException, IllegalStateException {
        View parseTextView;
        C1642b c1642b = new C1642b(this.mContext);
        c1642b.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        c1642b.setGravity(16);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.mContext.getString(C1696R.string.ui_linearlayout).equalsIgnoreCase(nextName)) {
                c1642b.addView(parseHorizontalLinearLayout(jsonReader));
            } else {
                if (this.mContext.getString(C1696R.string.ui_textview).equalsIgnoreCase(nextName)) {
                    parseTextView = parseTextView(jsonReader);
                } else if (this.mContext.getString(C1696R.string.ui_edittext).equalsIgnoreCase(nextName)) {
                    parseTextView = parseEditText(jsonReader);
                } else if (this.mContext.getString(C1696R.string.ui_checkbox).equals(nextName)) {
                    parseTextView = parseCheckBox(jsonReader);
                } else if (this.mContext.getString(C1696R.string.ui_spinner).equalsIgnoreCase(nextName)) {
                    parseTextView = parseSpinner(jsonReader);
                } else if (this.mContext.getString(C1696R.string.ui_button).equalsIgnoreCase(nextName)) {
                    parseTextView = parseButton(jsonReader);
                } else {
                    jsonReader.skipValue();
                }
                c1642b.addView(parseTextView, this.mDefaultFlowLayoutChildLayoutParams);
            }
        }
        jsonReader.endObject();
        return c1642b;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public Spinner parseSpinner(JsonReader jsonReader) throws IOException, IllegalStateException {
        Spinner spinner = new Spinner(this.mContext);
        spinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        spinner.setBackgroundResource(C1696R.drawable.spinner_bg);
        spinner.setPadding(0, 0, 5, 0);
        spinner.setGravity(3);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            ArrayList arrayList = new ArrayList();
            if (this.mContext.getString(C1696R.string.ui_name).equalsIgnoreCase(nextName)) {
                spinner.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_onSelect).equalsIgnoreCase(nextName)) {
                spinner.setTag(C1696R.id.uip_function_key, jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_spinner_items).equalsIgnoreCase(nextName)) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(jsonReader.nextString());
                }
                jsonReader.endArray();
                C1645e c1645e = new C1645e(this.mContext, arrayList);
                c1645e.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                spinner.setAdapter((SpinnerAdapter) c1645e);
            } else if (this.mContext.getString(C1696R.string.ui_spinner_defaultitem).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt >= spinner.getAdapter().getCount()) {
                    nextInt = 0;
                }
                spinner.setSelection(nextInt);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return spinner;
    }

    @Override // com.cyjh.mobileanjian.ipc.uip.IUipJsonParser
    public TextView parseTextView(JsonReader jsonReader) throws IOException, IllegalStateException {
        TextView textView = new TextView(this.mContext);
        textView.setGravity(17);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_normal));
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (this.mContext.getString(C1696R.string.ui_name).equalsIgnoreCase(nextName)) {
                textView.setTag(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_textview_textcontent).equalsIgnoreCase(nextName)) {
                textView.setText(jsonReader.nextString());
            } else if (this.mContext.getString(C1696R.string.ui_textsize).equalsIgnoreCase(nextName)) {
                int nextInt = jsonReader.nextInt();
                if (nextInt <= this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min)) {
                    if (nextInt != this.mContext.getResources().getInteger(C1696R.integer.ui_textSize_default)) {
                        nextInt = this.mContext.getResources().getInteger(C1696R.integer.ui_textsize_min);
                    }
                }
                textView.setTextSize(nextInt);
            } else if (this.mContext.getString(C1696R.string.ui_layout_height).equalsIgnoreCase(nextName)) {
                int nextInt2 = jsonReader.nextInt();
                if (nextInt2 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_height)) {
                    textView.setHeight(nextInt2);
                }
            } else if (this.mContext.getString(C1696R.string.ui_layout_width).equalsIgnoreCase(nextName)) {
                int nextInt3 = jsonReader.nextInt();
                if (nextInt3 > this.mContext.getResources().getInteger(C1696R.integer.ui_default_width)) {
                    textView.setWidth(nextInt3);
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return textView;
    }
}
