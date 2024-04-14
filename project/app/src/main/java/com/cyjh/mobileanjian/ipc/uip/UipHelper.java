package com.cyjh.mobileanjian.ipc.uip;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.JsonReader;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import com.cyjh.mobileanjian.ipc.p106ui.SlidingTabLayout;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.uip.C1643c;
import com.cyjh.mqsdk.C1696R;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UipHelper implements View.OnClickListener, AdapterView.OnItemSelectedListener {
    public static final int UIP_MESSAGE = 0;

    /* renamed from: a */
    private static final String f6334a = new File(Environment.getExternalStorageDirectory(), ".uip.config.json").getAbsolutePath();

    /* renamed from: b */
    private Context f6335b;

    /* renamed from: c */
    private SlidingTabLayout f6336c;

    /* renamed from: d */
    private C1641a f6337d;

    /* renamed from: e */
    private C1643c f6338e;

    /* renamed from: f */
    private List<ScrollView> f6339f;

    /* renamed from: g */
    private boolean f6340g;

    /* renamed from: h */
    private Handler f6341h = new Handler() { // from class: com.cyjh.mobileanjian.ipc.uip.UipHelper.2
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            try {
                UiMessage.CommandToUip parseFrom = UiMessage.CommandToUip.parseFrom((ByteString) message.obj);
                UiMessage.CommandToUip.Command_Type command = parseFrom.getCommand();
                String controlId = parseFrom.getControlId();
                new StringBuilder("GET UIP Command -->").append(parseFrom);
                if (command == UiMessage.CommandToUip.Command_Type.GET_UIP_ATTRIBUTE) {
                    UipHelper.m7423a(UipHelper.this, controlId);
                } else if (command == UiMessage.CommandToUip.Command_Type.SET_UIP_ATTRIBUTE) {
                    UipHelper.m7424a(UipHelper.this, controlId, parseFrom.getUipAttributeData());
                }
            } catch (InvalidProtocolBufferException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    };

    /* renamed from: i */
    private JSONObject f6342i;

    public UipHelper(Context context) {
        this.f6335b = context;
    }

    /* renamed from: a */
    private LinearLayout m7421a(String str, IUipJsonParser iUipJsonParser) {
        View parseHorizontalLinearLayout;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.f6335b);
        }
        LinearLayout linearLayout = new LinearLayout(this.f6335b);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        ViewPager viewPager = new ViewPager(this.f6335b);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams2);
        linearLayout.addView(viewPager);
        this.f6337d = new C1641a(this.f6335b);
        this.f6337d.setLayoutParams(new LinearLayout.LayoutParams(-2, this.f6337d.m7450a(20.0f)));
        this.f6337d.setPadding(0, this.f6337d.m7450a(10.0f), 0, 0);
        linearLayout.addView(this.f6337d);
        List<ScrollView> arrayList = new ArrayList<>(32);
        ArrayList arrayList2 = new ArrayList(32);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.f6335b.getString(C1696R.string.ui_activity))) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    LinearLayout linearLayout2 = new LinearLayout(this.f6335b);
                    linearLayout2.setOrientation(1);
                    linearLayout2.setLayoutParams(layoutParams);
                    ScrollView scrollView = new ScrollView(this.f6335b);
                    scrollView.setTag(nextName);
                    scrollView.setLayoutParams(layoutParams);
                    scrollView.addView(linearLayout2);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_linearlayout))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_textview))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_button))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_edittext))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_checkbox))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_spinner))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                        linearLayout2.addView(parseHorizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    if (arrayList.size() < 32) {
                        arrayList2.add(nextName);
                        arrayList.add(scrollView);
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        viewPager.setAdapter(new C1646f(arrayList, arrayList2));
        this.f6337d.setViewPager(viewPager);
        bindEvent(arrayList);
        saveToConfigFile(f6334a);
        return linearLayout;
    }

    /* renamed from: a */
    private void m7422a(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof C1642b) || (childAt instanceof LinearLayout)) {
                m7422a((ViewGroup) childAt);
            } else if (!TextUtils.isEmpty((CharSequence) childAt.getTag(C1696R.id.uip_function_key))) {
                if (childAt instanceof Spinner) {
                    ((Spinner) childAt).setOnItemSelectedListener(this);
                } else if (childAt instanceof CheckBox) {
                    ((CheckBox) childAt).setOnClickListener(this);
                } else if (childAt instanceof Button) {
                    ((Button) childAt).setOnClickListener(this);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x009a, code lost:
    
        r0.put(r5, r6.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        r0.put(r5, r6);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void m7423a(com.cyjh.mobileanjian.ipc.uip.UipHelper r5, java.lang.String r6) throws org.json.JSONException {
        /*
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.util.List<android.widget.ScrollView> r1 = r5.f6339f
            java.util.Iterator r1 = r1.iterator()
        Lb:
            boolean r2 = r1.hasNext()
            r3 = 1
            if (r2 == 0) goto Le0
            java.lang.Object r2 = r1.next()
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            android.view.View r2 = r2.findViewWithTag(r6)
            boolean r4 = r2 instanceof android.widget.Spinner
            if (r4 == 0) goto L5f
            android.widget.Spinner r2 = (android.widget.Spinner) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_spinner_defaultitem
            java.lang.String r6 = r6.getString(r1)
            int r1 = r2.getSelectedItemPosition()
            r0.put(r6, r1)
            android.widget.SpinnerAdapter r6 = r2.getAdapter()
            com.cyjh.mobileanjian.ipc.uip.e r6 = (com.cyjh.mobileanjian.ipc.uip.C1645e) r6
            java.util.List<java.lang.String> r6 = r6.f6387a
            org.json.JSONArray r1 = new org.json.JSONArray
            r1.<init>()
            java.util.Iterator r6 = r6.iterator()
        L42:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L52
            java.lang.Object r2 = r6.next()
            java.lang.String r2 = (java.lang.String) r2
            r1.put(r2)
            goto L42
        L52:
            android.content.Context r5 = r5.f6335b
            int r6 = com.cyjh.mqsdk.C1696R.string.ui_spinner_items
            java.lang.String r5 = r5.getString(r6)
            r0.put(r5, r1)
            goto Le0
        L5f:
            boolean r4 = r2 instanceof android.widget.CheckBox
            if (r4 == 0) goto L88
            android.widget.CheckBox r2 = (android.widget.CheckBox) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_checkbox_hintcontent
            java.lang.String r6 = r6.getString(r1)
            java.lang.CharSequence r1 = r2.getText()
            java.lang.String r1 = r1.toString()
            r0.put(r6, r1)
            android.content.Context r5 = r5.f6335b
            int r6 = com.cyjh.mqsdk.C1696R.string.ui_checkbox_checked
            java.lang.String r5 = r5.getString(r6)
            boolean r6 = r2.isChecked()
        L84:
            r0.put(r5, r6)
            goto Le0
        L88:
            boolean r4 = r2 instanceof android.widget.Button
            if (r4 == 0) goto La2
            android.widget.Button r2 = (android.widget.Button) r2
            android.content.Context r5 = r5.f6335b
            int r6 = com.cyjh.mqsdk.C1696R.string.ui_textview_textcontent
            java.lang.String r5 = r5.getString(r6)
            java.lang.CharSequence r6 = r2.getText()
        L9a:
            java.lang.String r6 = r6.toString()
            r0.put(r5, r6)
            goto Le0
        La2:
            boolean r4 = r2 instanceof android.widget.EditText
            if (r4 == 0) goto Lcd
            android.widget.EditText r2 = (android.widget.EditText) r2
            android.content.Context r5 = r5.f6335b
            int r6 = com.cyjh.mqsdk.C1696R.string.ui_edittext_defaultcontent
            java.lang.String r5 = r5.getString(r6)
            android.text.Editable r6 = r2.getText()
            java.lang.String r6 = r6.toString()
            r0.put(r5, r6)
            android.text.method.TransformationMethod r5 = r2.getTransformationMethod()
            boolean r5 = r5 instanceof android.text.method.PasswordTransformationMethod
            if (r5 == 0) goto Lc9
            java.lang.String r5 = "密码"
            r0.put(r5, r3)
            goto Le0
        Lc9:
            java.lang.String r5 = "密码"
            r6 = 0
            goto L84
        Lcd:
            boolean r4 = r2 instanceof android.widget.TextView
            if (r4 == 0) goto Lb
            android.widget.TextView r2 = (android.widget.TextView) r2
            android.content.Context r5 = r5.f6335b
            int r6 = com.cyjh.mqsdk.C1696R.string.ui_textview_textcontent
            java.lang.String r5 = r5.getString(r6)
            java.lang.CharSequence r6 = r2.getText()
            goto L9a
        Le0:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "rtnJson:"
            r5.<init>(r6)
            r5.append(r0)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r5 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.newBuilder()
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Command_Type r6 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.Command_Type.RSP_MSG
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r5 = r5.setCommand(r6)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r5 = r5.setIsSuccess(r3)
            java.lang.String r6 = r0.toString()
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r5 = r5.setUipAttributeData(r6)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand r5 = r5.build()
            com.google.protobuf.ByteString r5 = r5.toByteString()
            com.cyjh.mobileanjian.ipc.uip.UipEventStub.UiRequestReturn(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.uip.UipHelper.m7423a(com.cyjh.mobileanjian.ipc.uip.UipHelper, java.lang.String):void");
    }

    /* renamed from: a */
    static /* synthetic */ void m7424a(UipHelper uipHelper, String str, String str2) {
        JsonReader jsonReader = new JsonReader(new StringReader(str2));
        try {
            Iterator<ScrollView> it = uipHelper.f6339f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View findViewWithTag = it.next().findViewWithTag(str);
                if (findViewWithTag instanceof Spinner) {
                    Spinner spinner = (Spinner) findViewWithTag;
                    int i = -1;
                    ArrayList arrayList = null;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName = jsonReader.nextName();
                        if (nextName.equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_spinner_defaultitem))) {
                            i = jsonReader.nextInt();
                        } else if (nextName.equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_spinner_items))) {
                            arrayList = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (arrayList != null) {
                        C1645e c1645e = new C1645e(uipHelper.f6335b, arrayList);
                        c1645e.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) c1645e);
                    }
                    if (i >= 0 && i < spinner.getCount()) {
                        spinner.setSelection(i);
                    }
                } else if (findViewWithTag instanceof CheckBox) {
                    CheckBox checkBox = (CheckBox) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        if (nextName2.equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_checkbox_hintcontent))) {
                            checkBox.setText(jsonReader.nextString());
                        } else if (nextName2.equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_checkbox_checked))) {
                            checkBox.setChecked(jsonReader.nextBoolean());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof Button) {
                    Button button = (Button) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_textview_textcontent))) {
                            button.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof EditText) {
                    EditText editText = (EditText) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (nextName3.equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_edittext_defaultcontent))) {
                            editText.setText(jsonReader.nextString());
                        } else if (nextName3.equalsIgnoreCase("密码")) {
                            boolean z = false;
                            try {
                                z = jsonReader.nextBoolean();
                            } catch (Exception unused) {
                            }
                            editText.setTransformationMethod(z ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof TextView) {
                    TextView textView = (TextView) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(uipHelper.f6335b.getString(C1696R.string.ui_textview_textcontent))) {
                            textView.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).build().toByteString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x009a, code lost:
    
        r1 = r1.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
    
        r0.put(r6, r1);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m7425a(java.lang.String r6) throws org.json.JSONException {
        /*
            r5 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.util.List<android.widget.ScrollView> r1 = r5.f6339f
            java.util.Iterator r1 = r1.iterator()
        Lb:
            boolean r2 = r1.hasNext()
            r3 = 1
            if (r2 == 0) goto Ldd
            java.lang.Object r2 = r1.next()
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            android.view.View r2 = r2.findViewWithTag(r6)
            boolean r4 = r2 instanceof android.widget.Spinner
            if (r4 == 0) goto L5f
            android.widget.Spinner r2 = (android.widget.Spinner) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_spinner_defaultitem
            java.lang.String r6 = r6.getString(r1)
            int r1 = r2.getSelectedItemPosition()
            r0.put(r6, r1)
            android.widget.SpinnerAdapter r6 = r2.getAdapter()
            com.cyjh.mobileanjian.ipc.uip.e r6 = (com.cyjh.mobileanjian.ipc.uip.C1645e) r6
            java.util.List<java.lang.String> r6 = r6.f6387a
            org.json.JSONArray r1 = new org.json.JSONArray
            r1.<init>()
            java.util.Iterator r6 = r6.iterator()
        L42:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L52
            java.lang.Object r2 = r6.next()
            java.lang.String r2 = (java.lang.String) r2
            r1.put(r2)
            goto L42
        L52:
            android.content.Context r6 = r5.f6335b
            int r2 = com.cyjh.mqsdk.C1696R.string.ui_spinner_items
            java.lang.String r6 = r6.getString(r2)
        L5a:
            r0.put(r6, r1)
            goto Ldd
        L5f:
            boolean r4 = r2 instanceof android.widget.CheckBox
            if (r4 == 0) goto L88
            android.widget.CheckBox r2 = (android.widget.CheckBox) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_checkbox_hintcontent
            java.lang.String r6 = r6.getString(r1)
            java.lang.CharSequence r1 = r2.getText()
            java.lang.String r1 = r1.toString()
            r0.put(r6, r1)
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_checkbox_checked
            java.lang.String r6 = r6.getString(r1)
            boolean r1 = r2.isChecked()
        L84:
            r0.put(r6, r1)
            goto Ldd
        L88:
            boolean r4 = r2 instanceof android.widget.Button
            if (r4 == 0) goto L9f
            android.widget.Button r2 = (android.widget.Button) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_textview_textcontent
            java.lang.String r6 = r6.getString(r1)
            java.lang.CharSequence r1 = r2.getText()
        L9a:
            java.lang.String r1 = r1.toString()
            goto L5a
        L9f:
            boolean r4 = r2 instanceof android.widget.EditText
            if (r4 == 0) goto Lca
            android.widget.EditText r2 = (android.widget.EditText) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_edittext_defaultcontent
            java.lang.String r6 = r6.getString(r1)
            android.text.Editable r1 = r2.getText()
            java.lang.String r1 = r1.toString()
            r0.put(r6, r1)
            android.text.method.TransformationMethod r6 = r2.getTransformationMethod()
            boolean r6 = r6 instanceof android.text.method.PasswordTransformationMethod
            if (r6 == 0) goto Lc6
            java.lang.String r6 = "密码"
            r0.put(r6, r3)
            goto Ldd
        Lc6:
            java.lang.String r6 = "密码"
            r1 = 0
            goto L84
        Lca:
            boolean r4 = r2 instanceof android.widget.TextView
            if (r4 == 0) goto Lb
            android.widget.TextView r2 = (android.widget.TextView) r2
            android.content.Context r6 = r5.f6335b
            int r1 = com.cyjh.mqsdk.C1696R.string.ui_textview_textcontent
            java.lang.String r6 = r6.getString(r1)
            java.lang.CharSequence r1 = r2.getText()
            goto L9a
        Ldd:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r1 = "rtnJson:"
            r6.<init>(r1)
            r6.append(r0)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r6 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.newBuilder()
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Command_Type r1 = com.cyjh.mobileanjian.ipc.share.proto.UiMessage.UipToCommand.Command_Type.RSP_MSG
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r6 = r6.setCommand(r1)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r6 = r6.setIsSuccess(r3)
            java.lang.String r0 = r0.toString()
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand$Builder r6 = r6.setUipAttributeData(r0)
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$UipToCommand r6 = r6.build()
            com.google.protobuf.ByteString r6 = r6.toByteString()
            com.cyjh.mobileanjian.ipc.uip.UipEventStub.UiRequestReturn(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.uip.UipHelper.m7425a(java.lang.String):void");
    }

    /* renamed from: a */
    private void m7426a(String str, String str2) {
        JsonReader jsonReader = new JsonReader(new StringReader(str2));
        try {
            Iterator<ScrollView> it = this.f6339f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                View findViewWithTag = it.next().findViewWithTag(str);
                if (findViewWithTag instanceof Spinner) {
                    Spinner spinner = (Spinner) findViewWithTag;
                    int i = -1;
                    ArrayList arrayList = null;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName = jsonReader.nextName();
                        if (nextName.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_spinner_defaultitem))) {
                            i = jsonReader.nextInt();
                        } else if (nextName.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_spinner_items))) {
                            arrayList = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    if (arrayList != null) {
                        C1645e c1645e = new C1645e(this.f6335b, arrayList);
                        c1645e.setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
                        spinner.setAdapter((SpinnerAdapter) c1645e);
                    }
                    if (i >= 0 && i < spinner.getCount()) {
                        spinner.setSelection(i);
                    }
                } else if (findViewWithTag instanceof CheckBox) {
                    CheckBox checkBox = (CheckBox) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_checkbox_hintcontent))) {
                            checkBox.setText(jsonReader.nextString());
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_checkbox_checked))) {
                            checkBox.setChecked(jsonReader.nextBoolean());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof Button) {
                    Button button = (Button) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_textview_textcontent))) {
                            button.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof EditText) {
                    EditText editText = (EditText) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (nextName3.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_edittext_defaultcontent))) {
                            editText.setText(jsonReader.nextString());
                        } else if (nextName3.equalsIgnoreCase("密码")) {
                            boolean z = false;
                            try {
                                z = jsonReader.nextBoolean();
                            } catch (Exception unused) {
                            }
                            editText.setTransformationMethod(z ? PasswordTransformationMethod.getInstance() : HideReturnsTransformationMethod.getInstance());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                } else if (findViewWithTag instanceof TextView) {
                    TextView textView = (TextView) findViewWithTag;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.nextName().equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_textview_textcontent))) {
                            textView.setText(jsonReader.nextString());
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        UipEventStub.UiRequestReturn(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.RSP_MSG).setIsSuccess(true).build().toByteString());
    }

    /* renamed from: b */
    private LinearLayout m7427b(String str, IUipJsonParser iUipJsonParser) {
        View parseHorizontalLinearLayout;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.f6335b);
        }
        LinearLayout linearLayout = new LinearLayout(this.f6335b);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        this.f6336c = new SlidingTabLayout(this.f6335b);
        this.f6336c.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f6336c.setSelectedIndicatorColors(this.f6335b.getResources().getColor(C1696R.color.ui_show_blue));
        this.f6336c.setDistributeEvenly(true);
        linearLayout.addView(this.f6336c);
        ViewPager viewPager = new ViewPager(this.f6335b);
        TableLayout.LayoutParams layoutParams2 = new TableLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams2);
        linearLayout.addView(viewPager);
        List<ScrollView> arrayList = new ArrayList<>(32);
        ArrayList arrayList2 = new ArrayList(32);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.f6335b.getString(C1696R.string.ui_activity))) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    LinearLayout linearLayout2 = new LinearLayout(this.f6335b);
                    linearLayout2.setOrientation(1);
                    linearLayout2.setLayoutParams(layoutParams);
                    ScrollView scrollView = new ScrollView(this.f6335b);
                    scrollView.setTag(nextName);
                    scrollView.setLayoutParams(layoutParams);
                    scrollView.addView(linearLayout2);
                    scrollView.setDescendantFocusability(131072);
                    scrollView.setFocusable(true);
                    scrollView.setFocusableInTouchMode(true);
                    scrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.cyjh.mobileanjian.ipc.uip.UipHelper.1
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            view.requestFocusFromTouch();
                            return false;
                        }
                    });
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_linearlayout))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_textview))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_button))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_edittext))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_checkbox))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_spinner))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                        linearLayout2.addView(parseHorizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    if (arrayList.size() < 32) {
                        arrayList2.add(nextName);
                        arrayList.add(scrollView);
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        viewPager.setAdapter(new C1646f(arrayList, arrayList2));
        this.f6336c.setViewPager(viewPager);
        bindEvent(arrayList);
        saveToConfigFile(f6334a);
        return linearLayout;
    }

    /* renamed from: b */
    private void m7428b(ViewGroup viewGroup) throws JSONException {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            String str = (String) childAt.getTag();
            if ((childAt instanceof LinearLayout) || (childAt instanceof C1642b)) {
                m7428b((ViewGroup) childAt);
            } else if (childAt instanceof CheckBox) {
                this.f6342i.put(str, ((CheckBox) childAt).isChecked());
            } else if (childAt instanceof Spinner) {
                this.f6342i.put(str, ((Spinner) childAt).getSelectedItemPosition());
            } else if (childAt instanceof EditText) {
                this.f6342i.put(str, ((EditText) childAt).getText().toString());
            }
        }
    }

    /* renamed from: c */
    private LinearLayout m7429c(String str, IUipJsonParser iUipJsonParser) {
        View parseHorizontalLinearLayout;
        C1643c c1643c;
        if (iUipJsonParser == null) {
            iUipJsonParser = new DefaultUipJsonParser(this.f6335b);
        }
        this.f6338e = new C1643c(this.f6335b);
        JsonReader jsonReader = new JsonReader(new StringReader(str));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext() && jsonReader.nextName().startsWith(this.f6335b.getString(C1696R.string.ui_activity))) {
                jsonReader.beginObject();
                for (int i = 0; i < 32 && jsonReader.hasNext(); i++) {
                    String nextName = jsonReader.nextName();
                    C1643c c1643c2 = this.f6338e;
                    RadioButton radioButton = new RadioButton(c1643c2.getContext());
                    radioButton.setId(C1643c.f6375a[c1643c2.f6382g]);
                    radioButton.setPadding(0, 0, 0, c1643c2.f6379d);
                    radioButton.setButtonDrawable(new BitmapDrawable((Bitmap) null));
                    radioButton.setTextColor(c1643c2.getResources().getColorStateList(C1696R.color.selector_tab));
                    radioButton.setText(nextName);
                    radioButton.setLines(1);
                    radioButton.setEllipsize(TextUtils.TruncateAt.END);
                    c1643c2.f6377b.addView(radioButton);
                    c1643c2.f6381f = new ScrollView(c1643c2.getContext());
                    c1643c2.f6381f.setDescendantFocusability(131072);
                    c1643c2.f6381f.setFocusable(true);
                    c1643c2.f6381f.setFocusableInTouchMode(true);
                    c1643c2.f6381f.setOnTouchListener(new C1643c.AnonymousClass1());
                    c1643c2.f6381f.setTag(nextName);
                    c1643c2.f6381f.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    LinearLayout linearLayout = new LinearLayout(c1643c2.getContext());
                    linearLayout.setOrientation(1);
                    linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                    c1643c2.f6380e = linearLayout;
                    c1643c2.f6381f.addView(c1643c2.f6380e);
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_linearlayout))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseHorizontalLinearLayout(jsonReader);
                            c1643c = this.f6338e;
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_textview))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseTextView(jsonReader);
                            c1643c = this.f6338e;
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_button))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseButton(jsonReader);
                            c1643c = this.f6338e;
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_edittext))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseEditText(jsonReader);
                            c1643c = this.f6338e;
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_checkbox))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseCheckBox(jsonReader);
                            c1643c = this.f6338e;
                        } else if (nextName2.equalsIgnoreCase(this.f6335b.getString(C1696R.string.ui_spinner))) {
                            parseHorizontalLinearLayout = iUipJsonParser.parseSpinner(jsonReader);
                            c1643c = this.f6338e;
                        } else {
                            jsonReader.skipValue();
                        }
                        c1643c.m7458a(parseHorizontalLinearLayout);
                    }
                    jsonReader.endObject();
                    C1643c c1643c3 = this.f6338e;
                    c1643c3.f6378c.add(c1643c3.f6381f);
                    c1643c3.f6382g++;
                }
                jsonReader.endObject();
            }
            jsonReader.endObject();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        this.f6338e.setSelectTab(0);
        bindEvent(this.f6338e.getScrollViewList());
        saveToConfigFile(f6334a);
        return this.f6338e;
    }

    public void bindEvent(List<ScrollView> list) {
        UipEventStub.registerHandler(this.f6341h);
        this.f6339f = list;
        Iterator<ScrollView> it = list.iterator();
        while (it.hasNext()) {
            m7422a(it.next());
        }
    }

    public void configViewFromFile(String str) {
        try {
            configViewFromJson(FileUtils.readFileToString(new File(str)));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void configViewFromJson(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f6340g = true;
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Iterator<ScrollView> it = this.f6339f.iterator();
                while (it.hasNext()) {
                    View findViewWithTag = it.next().findViewWithTag(next);
                    if (findViewWithTag != null) {
                        if (findViewWithTag instanceof CheckBox) {
                            ((CheckBox) findViewWithTag).setChecked(jSONObject.getBoolean(next));
                        } else if (findViewWithTag instanceof Spinner) {
                            Spinner spinner = (Spinner) findViewWithTag;
                            spinner.setSelection(jSONObject.getInt(next) < spinner.getAdapter().getCount() ? jSONObject.getInt(next) : 0);
                        } else if (findViewWithTag instanceof EditText) {
                            ((EditText) findViewWithTag).setText(jSONObject.getString(next));
                        }
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f6340g = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f6340g) {
            return;
        }
        UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) view.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).setEventFunctionName((String) view.getTag(C1696R.id.uip_function_key)).build()).build().toByteString());
        new StringBuilder("onClick Function Name: ").append((String) view.getTag(C1696R.id.uip_function_key));
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        new StringBuilder("isCodeEvent: ").append(this.f6340g);
        if (this.f6340g) {
            return;
        }
        UiMessage.ControlEvent build = UiMessage.ControlEvent.newBuilder().setControlId((String) adapterView.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).setEventArgs(String.valueOf(i)).setEventFunctionName((String) adapterView.getTag(C1696R.id.uip_function_key)).build();
        UipEventStub.hasEvent(UiMessage.UipToCommand.newBuilder().setCommand(UiMessage.UipToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(build).build().toByteString());
        new StringBuilder("onItemSelected: ").append(build);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public LinearLayout parseLayoutFromJson(String str, IUipJsonParser iUipJsonParser) {
        return this.f6335b.getResources().getConfiguration().orientation == 2 ? m7429c(str, iUipJsonParser) : m7427b(str, iUipJsonParser);
    }

    public void restoreConfig() {
        configViewFromFile(f6334a);
    }

    public String saveConfigToJson() {
        this.f6342i = new JSONObject();
        Iterator<ScrollView> it = this.f6339f.iterator();
        while (it.hasNext()) {
            try {
                m7428b((LinearLayout) it.next().getChildAt(0));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return this.f6342i.toString();
    }

    public void saveToConfigFile(String str) {
        try {
            FileUtils.writeStringToFile(new File(str), saveConfigToJson());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public View transform(int i) {
        for (ScrollView scrollView : this.f6339f) {
            ViewParent parent = scrollView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(scrollView);
            }
            new StringBuilder("childCount of scrollview: ").append(((ViewGroup) scrollView.getChildAt(0)).getChildCount());
        }
        if (i == 2) {
            this.f6338e = new C1643c(this.f6335b);
            this.f6338e.m7459a(this.f6339f);
            this.f6338e.setSelectTab(this.f6336c.getViewPager().getCurrentItem());
            return this.f6338e;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ScrollView> it = this.f6339f.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next().getTag());
        }
        LinearLayout linearLayout = new LinearLayout(this.f6335b);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        this.f6336c = new SlidingTabLayout(this.f6335b);
        this.f6336c.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f6336c.setSelectedIndicatorColors(this.f6335b.getResources().getColor(C1696R.color.ui_show_blue));
        this.f6336c.setDistributeEvenly(true);
        linearLayout.addView(this.f6336c);
        ViewPager viewPager = new ViewPager(this.f6335b);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        viewPager.setLayoutParams(layoutParams);
        linearLayout.addView(viewPager);
        viewPager.setAdapter(new C1646f(this.f6339f, arrayList));
        viewPager.setCurrentItem(this.f6338e.getCurrentItem());
        this.f6336c.setViewPager(viewPager);
        return linearLayout;
    }
}
