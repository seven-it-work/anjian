package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.mobileanjian.ipc.p106ui.C1632j;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.utils.C1649c;
import com.cyjh.mobileanjian.ipc.view.ExToast;
import com.cyjh.mq.sdk.MqRunner;
import com.cyjh.mqsdk.C1696R;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.h */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1630h implements View.OnClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: j */
    private static final String f6214j = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})";

    /* renamed from: k */
    private static final int f6215k = 32;

    /* renamed from: l */
    private Context f6225l;

    /* renamed from: m */
    private C1629g f6226m;

    /* renamed from: o */
    private LinearLayout f6228o;

    /* renamed from: a */
    public C1633k[] f6216a = new C1633k[32];

    /* renamed from: b */
    public int f6217b = 0;

    /* renamed from: n */
    private HashMap<String, Integer> f6227n = new HashMap<>();

    /* renamed from: c */
    public HashMap[] f6218c = new HashMap[32];

    /* renamed from: d */
    public C1632j[] f6219d = new C1632j[32];

    /* renamed from: e */
    public int f6220e = 0;

    /* renamed from: f */
    public HashMap<String, Integer> f6221f = new HashMap<>();

    /* renamed from: g */
    public HashMap<String, EnumC1635m> f6222g = new HashMap<>();

    /* renamed from: h */
    public HashMap<String, String> f6223h = new HashMap<>();

    /* renamed from: i */
    public int f6224i = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.h$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String f6231a;

        AnonymousClass2(String str) {
            this.f6231a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6231a).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.h$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String f6233a;

        AnonymousClass3(String str) {
            this.f6233a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            for (int i = 31; i > 0; i--) {
                if (ViewOnClickListenerC1630h.this.f6216a[i] != null) {
                    UiMessage.UiToCommand build = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6233a).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_EXIT).build()).setIsSuccess(true).build();
                    MqRunner.getInstance().mo7723b(build.toByteString());
                    new StringBuilder("exit event: ").append(build);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.h$a */
    /* loaded from: classes.dex */
    public class a implements TextWatcher {

        /* renamed from: b */
        private String f6238b;

        public a(String str) {
            this.f6238b = str;
        }

        /* renamed from: a */
        private String m7333a() {
            return this.f6238b;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6238b).setType(UiMessage.ControlEvent.Event_Type.ON_CHANGE).build()).setIsSuccess(true).build().toByteString());
            ViewOnClickListenerC1630h.this.f6216a[ViewOnClickListenerC1630h.this.f6217b].m7409b();
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ViewOnClickListenerC1630h(Context context) {
        this.f6225l = context;
        this.f6226m = C1629g.m7255a(context);
    }

    /* renamed from: a */
    private void m7278a(int i, Object... objArr) {
        ExToast.makeText(this.f6225l, String.format(this.f6225l.getString(i), objArr), (int) ExToast.LENGTH_LONG).show();
    }

    /* renamed from: a */
    private void m7279a(String str) {
        if (this.f6227n.get(str) != null) {
            m7285a(true);
            return;
        }
        if (this.f6218c[this.f6217b].get(str) == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(str);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
        layoutParams.width = -1;
        m7408b.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    private void m7280a(String str, int i) {
        boolean z = true;
        if (this.f6221f.get(str) == null) {
            z = false;
            m7278a(C1696R.string.ui_show_not_found_float, str);
        } else {
            this.f6219d[this.f6221f.get(str).intValue()].setOpacity(i);
        }
        m7285a(z);
    }

    /* renamed from: a */
    private void m7281a(String str, int i, int i2) {
        this.f6217b++;
        this.f6216a[this.f6217b] = this.f6226m.m7272a(str, i, i2);
        this.f6227n.put(str, Integer.valueOf(this.f6217b));
        this.f6218c[this.f6217b] = new HashMap();
        this.f6216a[this.f6217b].f6294b = new AnonymousClass2(str);
        this.f6216a[this.f6217b].f6293a = new AnonymousClass3(str);
    }

    /* renamed from: a */
    private void m7282a(String str, int i, int i2, int i3, int i4) {
        if (this.f6221f.get(str) == null) {
            this.f6220e++;
            this.f6219d[this.f6220e] = this.f6226m.m7271a(str, i, i2, i3, i4);
            this.f6221f.put(str, Integer.valueOf(this.f6220e));
            return;
        }
        if (this.f6219d[this.f6221f.get(str).intValue()].f6259d) {
            this.f6219d[this.f6221f.get(str).intValue()].m7385b();
        }
        Iterator<Map.Entry<String, String>> it = this.f6223h.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            StringBuilder sb = new StringBuilder("doNewFloat key:");
            sb.append(key);
            sb.append(" parentTag:");
            sb.append(value);
            sb.append(" tag:");
            sb.append(str);
            if (value.compareTo(str) == 0) {
                it.remove();
                this.f6222g.remove(key);
            }
        }
        this.f6219d[this.f6221f.get(str).intValue()] = this.f6226m.m7271a(str, i, i2, i3, i4);
    }

    /* renamed from: a */
    public static void m7283a(String str, UiMessage.ControlEvent.Event_Type event_Type) {
        MqRunner.getInstance().mo7724c(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(event_Type).build()).setIsSuccess(true).build().toByteString());
    }

    /* renamed from: a */
    private void m7284a(String str, boolean z) {
        boolean z2 = true;
        if (this.f6221f.get(str) == null) {
            z2 = false;
            m7278a(C1696R.string.ui_show_not_found_float, str);
        } else {
            this.f6219d[this.f6221f.get(str).intValue()].f6260e = z;
        }
        m7285a(z2);
    }

    /* renamed from: a */
    private static void m7285a(boolean z) {
        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(z).build().toByteString());
    }

    /* renamed from: a */
    private boolean m7286a(String str, String str2) {
        if (this.f6227n.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_ui, str);
            return false;
        }
        this.f6216a[this.f6227n.get(str).intValue()].m7404a(str2);
        return true;
    }

    /* renamed from: b */
    private int m7288b() {
        int i = this.f6224i + 1;
        this.f6224i = i;
        return i;
    }

    /* renamed from: b */
    private void m7290b(String str) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(str);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        boolean isEnabled = m7408b.isEnabled();
        if (this.f6218c[this.f6217b].get(str) == EnumC1635m.EDIT_TEXT) {
            isEnabled = ((EditText) m7408b).isFocusable();
        }
        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
    }

    /* renamed from: b */
    private void m7291b(String str, int i) {
        if (this.f6221f.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_float, str);
            m7285a(false);
            return;
        }
        C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
        c1632j.f6262g = i;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g});
        try {
            gradientDrawable.setColor(c1632j.f6261f);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 16) {
            c1632j.f6258c.setBackground(gradientDrawable);
        }
        c1632j.f6258c.getBackground().setAlpha((c1632j.f6263h * 255) / 100);
        this.f6219d[this.f6221f.get(str).intValue()].m7389e();
        m7285a(true);
    }

    /* renamed from: b */
    private void m7292b(String str, String str2) {
        if (!str2.matches(f6214j)) {
            m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7285a(false);
            return;
        }
        if (!str2.startsWith("#")) {
            str2 = "#" + str2;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(str2));
        if (this.f6221f.get(str) != null) {
            C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
            c1632j.f6261f = m7479a;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(new float[]{c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g});
            try {
                gradientDrawable.setColor(c1632j.f6261f);
            } catch (Exception unused) {
            }
            if (Build.VERSION.SDK_INT >= 16) {
                c1632j.f6258c.setBackground(gradientDrawable);
            }
            c1632j.f6258c.getBackground().setAlpha((c1632j.f6263h * 255) / 100);
            this.f6219d[this.f6221f.get(str).intValue()].m7389e();
        } else {
            String str3 = this.f6223h.get(str);
            if (str3 == null) {
                m7285a(false);
                return;
            }
            View m7381a = this.f6219d[this.f6221f.get(str3).intValue()].m7381a(str);
            if (m7381a == null) {
                m7285a(false);
                return;
            } else if (this.f6222g.get(str) == EnumC1635m.BUTTON) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadii(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f});
                gradientDrawable2.setColor(m7479a);
                m7381a.setBackground(gradientDrawable2);
            } else if (this.f6222g.get(str) != EnumC1635m.SPINNER) {
                m7381a.setBackgroundColor(m7479a);
            }
        }
        m7285a(true);
    }

    /* renamed from: b */
    private boolean m7293b(UiMessage.CommandToUi commandToUi) {
        int i;
        if (this.f6216a[this.f6217b] == null) {
            return false;
        }
        String controlId = commandToUi.getControlId();
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7278a(C1696R.string.ui_show_not_found_widget, controlId);
            return false;
        }
        switch (commandToUi.getCommand()) {
            case SET_TEXT_VIEW:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.TEXT_VIEW) {
                    return false;
                }
                TextView textView = (TextView) m7408b;
                textView.setText(commandToUi.getText());
                textView.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_EDIT_TEXT:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.EDIT_TEXT) {
                    return false;
                }
                EditText editText = (EditText) m7408b;
                editText.setText(commandToUi.getText());
                editText.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_BOTTON:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.BUTTON) {
                    return false;
                }
                Button button = (Button) m7408b;
                button.setText(commandToUi.getText());
                button.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_CHECK_BOX:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.CHECK_BOX) {
                    return false;
                }
                CheckBox checkBox = (CheckBox) m7408b;
                checkBox.setChecked(commandToUi.getDefaultCheckStatus());
                checkBox.setText(commandToUi.getText());
                checkBox.getLayoutParams().width = commandToUi.getWidth();
                checkBox.getLayoutParams().height = commandToUi.getHeight();
                return true;
            case SET_IMAGE_VIEW:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.IMAGE_VIEW) {
                    return false;
                }
                ImageView imageView = (ImageView) m7408b;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                layoutParams.width = commandToUi.getWidth();
                layoutParams.height = commandToUi.getHeight();
                imageView.setLayoutParams(layoutParams);
                imageView.setImageURI(Uri.fromFile(new File(commandToUi.getPath())));
                return true;
            case SET_WEB_VIEW:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.WEB_VIEW) {
                    return false;
                }
                String url = commandToUi.getUrl();
                if (!url.startsWith("http://") && !url.startsWith("https://")) {
                    url = "http://" + url;
                }
                WebView webView = (WebView) m7408b;
                webView.loadUrl(url);
                webView.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_RADIO_GROUP:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.RADIIO_GROUP) {
                    return false;
                }
                RadioGroup radioGroup = (RadioGroup) m7408b;
                radioGroup.clearCheck();
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                layoutParams2.weight = commandToUi.getWidth();
                layoutParams2.height = commandToUi.getHeight();
                radioGroup.setLayoutParams(layoutParams2);
                radioGroup.removeAllViews();
                List<String> itemTextList = commandToUi.getItemTextList();
                for (int i2 = 0; i2 < itemTextList.size(); i2++) {
                    RadioButton radioButton = (RadioButton) LayoutInflater.from(this.f6225l).inflate(C1696R.layout.ui_show_radio_button, (ViewGroup) null);
                    radioButton.setId(i2);
                    radioButton.setText(itemTextList.get(i2));
                    radioButton.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    radioButton.setPadding(0, m7294c(), 0, m7294c());
                    radioGroup.addView(radioButton);
                }
                ((RadioButton) radioGroup.findViewById(commandToUi.getDefaultItemIndex() < radioGroup.getChildCount() ? commandToUi.getDefaultItemIndex() : 0)).setChecked(true);
                return true;
            case SET_SPINNER:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.SPINNER) {
                    return false;
                }
                Spinner spinner = (Spinner) m7408b;
                ArrayAdapter arrayAdapter = new ArrayAdapter(this.f6225l, C1696R.layout.ui_show_spinner_dropdown_item, commandToUi.getItemTextList());
                spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                spinner.setSelection(commandToUi.getDefaultItemIndex() < arrayAdapter.getCount() ? commandToUi.getDefaultItemIndex() : 0);
                return true;
            case SET_ENABLED:
                if (this.f6218c[this.f6217b].get(controlId) == EnumC1635m.RADIIO_GROUP) {
                    m7408b.setEnabled(commandToUi.getEnabledStatus());
                    RadioGroup radioGroup2 = (RadioGroup) m7408b;
                    while (r1 < radioGroup2.getChildCount()) {
                        radioGroup2.getChildAt(r1).setEnabled(commandToUi.getEnabledStatus());
                        r1++;
                    }
                    return true;
                }
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.EDIT_TEXT) {
                    m7408b.setEnabled(commandToUi.getEnabledStatus());
                    return true;
                }
                new StringBuilder("set edittext enabled. ").append(commandToUi.getEnabledStatus());
                EditText editText2 = (EditText) m7408b;
                editText2.setFocusable(commandToUi.getEnabledStatus());
                editText2.setFocusableInTouchMode(commandToUi.getEnabledStatus());
                return true;
            case SET_LINE:
                if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.LINE) {
                    return false;
                }
                ((LinearLayout) m7408b).setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_VISIBLE:
                switch (commandToUi.getVisibleStatus()) {
                    case 2:
                        i = 4;
                        break;
                    case 3:
                        i = 8;
                        break;
                    default:
                        m7408b.setVisibility(0);
                        return true;
                }
                m7408b.setVisibility(i);
                return true;
            default:
                return true;
        }
    }

    /* renamed from: c */
    private int m7294c() {
        return (int) ((this.f6225l.getResources().getDisplayMetrics().densityDpi / 160.0f) * 5.0f);
    }

    /* renamed from: c */
    private void m7295c(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        new StringBuilder("SET FONT type: ").append(commandToUi.getFontType());
        String controlId = commandToUi.getControlId();
        Typeface create = Typeface.create(commandToUi.getFontType(), 0);
        if (create == null) {
            m7285a(false);
            return;
        }
        int fontSize = commandToUi.getFontSize() < 0 ? 14 : commandToUi.getFontSize();
        if (this.f6227n.get(controlId) != null && this.f6216a[this.f6227n.get(controlId).intValue()] != null) {
            this.f6216a[this.f6227n.get(controlId).intValue()].m7401a(create, fontSize);
            m7285a(true);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        if (this.f6218c[this.f6217b].get(controlId) == null) {
            m7285a(false);
            return;
        }
        switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                TextView textView = (TextView) m7408b;
                textView.setTypeface(create);
                textView.setTextSize(2, fontSize);
                break;
            case CHECK_BOX:
                CheckBox checkBox = (CheckBox) m7408b;
                checkBox.setTypeface(create);
                checkBox.setTextSize(2, fontSize);
                break;
            case RADIIO_GROUP:
                RadioGroup radioGroup = (RadioGroup) m7408b;
                radioGroup.findViewById(commandToUi.getItemIndex());
                for (int i = 0; i < radioGroup.getChildCount(); i++) {
                    RadioButton radioButton = (RadioButton) radioGroup.getChildAt(i);
                    radioButton.setTypeface(create);
                    radioButton.setTextSize(2, fontSize);
                }
                break;
            default:
                m7285a(false);
                return;
        }
        m7285a(true);
    }

    /* renamed from: c */
    private void m7296c(String str) {
        int i;
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(str);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        int visibility = m7408b.getVisibility();
        if (visibility != 0) {
            if (visibility == 4) {
                i = 2;
            } else if (visibility == 8) {
                i = 3;
            }
            MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
        }
        i = 1;
        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
    }

    /* renamed from: c */
    private boolean m7297c(String str, String str2) {
        View m7381a;
        if (this.f6221f.get(str) == null) {
            String str3 = this.f6223h.get(str);
            if (str3 == null || (m7381a = this.f6219d[this.f6221f.get(str3).intValue()].m7381a(str)) == null) {
                return false;
            }
            if (this.f6222g.get(str) == EnumC1635m.IMAGE_VIEW) {
                ((ImageView) m7381a).setImageURI(Uri.fromFile(new File(str2)));
            }
            return true;
        }
        C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
        c1632j.f6264i = str2;
        Bitmap decodeFile = BitmapFactory.decodeFile(c1632j.f6264i);
        if (Build.VERSION.SDK_INT >= 16) {
            c1632j.f6258c.setBackground(new BitmapDrawable(decodeFile));
        }
        c1632j.f6258c.getBackground().setAlpha((c1632j.f6263h * 255) / 100);
        this.f6219d[this.f6221f.get(str).intValue()].m7389e();
        return true;
    }

    /* renamed from: d */
    private void m7298d() {
        this.f6221f.clear();
        this.f6222g.clear();
        this.f6223h.clear();
        m7331a();
        this.f6217b = 0;
        this.f6224i = 1;
        for (int i = 0; i < 32; i++) {
            this.f6216a[i] = null;
            if (this.f6218c[i] != null) {
                this.f6218c[i].clear();
            }
        }
        this.f6219d = new C1632j[32];
        this.f6220e = 0;
    }

    /* renamed from: d */
    private void m7299d(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        commandToUi.getText();
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7285a(false);
        } else if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.EDIT_TEXT) {
            m7285a(false);
        } else {
            ((EditText) m7408b).setInputType(commandToUi.getEditInputType());
            m7285a(true);
        }
    }

    /* renamed from: d */
    private void m7300d(String str) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(str);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue("#" + Integer.toHexString(C1649c.m7479a(m7408b.getSolidColor()) & ViewCompat.MEASURED_SIZE_MASK)).build()).build().toByteString());
    }

    /* renamed from: e */
    private void m7301e(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String text = commandToUi.getText();
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        if (this.f6218c[this.f6217b].get(controlId) == null) {
            m7285a(false);
            return;
        }
        switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                ((TextView) m7408b).setText(text);
                break;
            case CHECK_BOX:
                ((CheckBox) m7408b).setText(text);
                break;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) m7408b).findViewById(commandToUi.getItemIndex());
                if (radioButton == null) {
                    m7285a(false);
                    return;
                } else {
                    radioButton.setText(text);
                    break;
                }
            case SPINNER:
                Spinner spinner = (Spinner) m7408b;
                if (commandToUi.getItemIndex() >= spinner.getCount()) {
                    m7285a(false);
                    return;
                }
                ArrayAdapter arrayAdapter = (ArrayAdapter) spinner.getAdapter();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < arrayAdapter.getCount(); i++) {
                    arrayList.add(arrayAdapter.getItem(i));
                }
                arrayList.set(commandToUi.getItemIndex(), text);
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(this.f6225l, C1696R.layout.ui_show_spinner_dropdown_item, arrayList);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter2);
                arrayAdapter2.notifyDataSetChanged();
                break;
            default:
                m7285a(false);
                return;
        }
        m7285a(true);
    }

    /* renamed from: e */
    private void m7302e(String str) throws JSONException, IOException {
        if (this.f6216a[this.f6217b] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : this.f6218c[this.f6217b].entrySet()) {
            String str2 = (String) entry.getKey();
            int i = AnonymousClass4.f6236b[((EnumC1635m) entry.getValue()).ordinal()];
            if (i != 2) {
                switch (i) {
                    case 4:
                        jSONObject.put(str2, ((CheckBox) this.f6216a[this.f6217b].m7408b(str2)).isChecked());
                        break;
                    case 5:
                        jSONObject.put(str2, ((RadioGroup) this.f6216a[this.f6217b].m7408b(str2)).getCheckedRadioButtonId());
                        break;
                    case 6:
                        jSONObject.put(str2, ((Spinner) this.f6216a[this.f6217b].m7408b(str2)).getSelectedItemId());
                        break;
                }
            } else {
                jSONObject.put(str2, ((EditText) this.f6216a[this.f6217b].m7408b(str2)).getText().toString());
            }
        }
        FileUtils.writeStringToFile(new File(str), jSONObject.toString());
    }

    /* renamed from: f */
    private void m7303f(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (!color.matches(f6214j)) {
            m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7285a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(color));
        if (this.f6227n.get(controlId) != null) {
            this.f6216a[this.f6227n.get(controlId).intValue()].m7400a(m7479a);
            m7285a(true);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                ((TextView) m7408b).setTextColor(m7479a);
                break;
            case CHECK_BOX:
                ((CheckBox) m7408b).setTextColor(m7479a);
                break;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) m7408b).findViewById(commandToUi.getItemIndex());
                if (radioButton != null) {
                    radioButton.setTextColor(m7479a);
                    break;
                } else {
                    m7285a(false);
                    return;
                }
            case SPINNER:
                if (commandToUi.getItemIndex() >= ((Spinner) m7408b).getCount()) {
                    m7285a(false);
                    return;
                }
                break;
            default:
                m7285a(false);
                return;
        }
        m7285a(true);
    }

    /* renamed from: f */
    private void m7304f(String str) throws IOException, JSONException {
        if (this.f6218c[this.f6217b] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject(FileUtils.readFileToString(new File(str)));
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (this.f6218c[this.f6217b].get(next) != null) {
                int i = AnonymousClass4.f6236b[((EnumC1635m) this.f6218c[this.f6217b].get(next)).ordinal()];
                if (i != 2) {
                    switch (i) {
                        case 4:
                            ((CheckBox) this.f6216a[this.f6217b].m7408b(next)).setChecked(jSONObject.getBoolean(next));
                            break;
                        case 5:
                            RadioGroup radioGroup = (RadioGroup) this.f6216a[this.f6217b].m7408b(next);
                            if (jSONObject.getInt(next) >= radioGroup.getChildCount()) {
                                break;
                            } else {
                                ((RadioButton) radioGroup.findViewById(jSONObject.getInt(next))).setChecked(true);
                                break;
                            }
                        case 6:
                            Spinner spinner = (Spinner) this.f6216a[this.f6217b].m7408b(next);
                            if (jSONObject.getInt(next) >= spinner.getCount()) {
                                break;
                            } else {
                                spinner.setSelection(jSONObject.getInt(next));
                                break;
                            }
                    }
                } else {
                    ((EditText) this.f6216a[this.f6217b].m7408b(next)).setText(jSONObject.getString(next));
                }
            }
        }
    }

    /* renamed from: g */
    private void m7305g(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        String color = commandToUi.getColor();
        if (!color.matches(f6214j)) {
            m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7285a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(color));
        if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.BUTTON) {
            if (this.f6218c[this.f6217b].get(controlId) != EnumC1635m.SPINNER) {
                m7408b.setBackgroundColor(m7479a);
            }
            m7285a(true);
        } else {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(m7479a);
            gradientDrawable.setCornerRadius(m7294c());
            m7408b.setBackground(gradientDrawable);
            m7285a(true);
        }
    }

    /* renamed from: g */
    private void m7306g(String str) {
        if (this.f6227n.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_ui, str);
            m7285a(false);
        } else {
            if (this.f6216a[this.f6227n.get(str).intValue()].f6295c) {
                m7285a(false);
                return;
            }
            this.f6216a[this.f6227n.get(str).intValue()].m7412c();
            m7285a(true);
            MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
        }
    }

    /* renamed from: h */
    private void m7307h(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(commandToUi.getControlId());
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
        layoutParams.gravity = commandToUi.getAlignType();
        m7408b.setLayoutParams(layoutParams);
        new StringBuilder("set gravity ok; ").append(layoutParams);
        m7285a(true);
    }

    /* renamed from: h */
    private void m7308h(String str) {
        if (this.f6227n.get(str) != null) {
            MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.f6216a[this.f6227n.get(str).intValue()].m7399a()).build()).build().toByteString());
        } else {
            m7278a(C1696R.string.ui_show_not_found_ui, str);
            m7285a(false);
        }
    }

    /* renamed from: i */
    private void m7309i(UiMessage.CommandToUi commandToUi) {
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        View m7408b = this.f6216a[this.f6217b].m7408b(commandToUi.getControlId());
        if (m7408b == null) {
            m7285a(false);
            return;
        }
        UiMessage.Padding_Var padding = commandToUi.getPadding();
        new StringBuilder("padding: ").append(padding.getLeft());
        new StringBuilder("padding: ").append(padding.getTop());
        new StringBuilder("padding: ").append(padding.getRight());
        new StringBuilder("padding: ").append(padding.getBottom());
        m7408b.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
        m7285a(true);
    }

    /* renamed from: i */
    private void m7310i(String str) {
        m7312j(str);
        MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
    }

    /* renamed from: j */
    private void m7311j(UiMessage.CommandToUi commandToUi) {
        TextPaint paint;
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        if (this.f6218c[this.f6217b].get(controlId) == null) {
            m7285a(false);
            return;
        }
        switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                paint = ((TextView) this.f6216a[this.f6217b].m7408b(controlId)).getPaint();
                break;
            case CHECK_BOX:
                paint = ((CheckBox) this.f6216a[this.f6217b].m7408b(controlId)).getPaint();
                break;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6216a[this.f6217b].m7408b(controlId)).findViewById(commandToUi.getItemIndex());
                if (radioButton != null) {
                    paint = radioButton.getPaint();
                    break;
                } else {
                    m7285a(false);
                    return;
                }
            default:
                m7285a(false);
                return;
        }
        int color = paint.getColor();
        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color)), Integer.valueOf(Color.green(color)), Integer.valueOf(Color.red(color)))).build()).build().toByteString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if (r4.f6227n.get(r5).intValue() == r4.f6217b) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r4.f6217b--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0053, code lost:
    
        if (r4.f6217b <= 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (r4.f6216a[r4.f6217b] != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        if (r4.f6217b >= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        r4.f6217b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        return true;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m7312j(java.lang.String r5) {
        /*
            r4 = this;
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r4.f6227n
            java.lang.Object r0 = r0.get(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L14
            int r0 = com.cyjh.mqsdk.C1696R.string.ui_show_not_found_ui
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r1] = r5
            r4.m7278a(r0, r2)
            return r1
        L14:
            com.cyjh.mobileanjian.ipc.ui.k[] r0 = r4.f6216a
            java.util.HashMap<java.lang.String, java.lang.Integer> r3 = r4.f6227n
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0 = r0[r3]
            boolean r0 = r0.f6295c
            if (r0 != 0) goto L29
            return r1
        L29:
            com.cyjh.mobileanjian.ipc.ui.k[] r0 = r4.f6216a
            java.util.HashMap<java.lang.String, java.lang.Integer> r3 = r4.f6227n
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0 = r0[r3]
            r0.m7414e()
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r4.f6227n
            java.lang.Object r5 = r0.get(r5)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            int r0 = r4.f6217b
            if (r5 != r0) goto L64
        L4c:
            int r5 = r4.f6217b
            int r5 = r5 - r2
            r4.f6217b = r5
            int r5 = r4.f6217b
            if (r5 <= 0) goto L5e
            com.cyjh.mobileanjian.ipc.ui.k[] r5 = r4.f6216a
            int r0 = r4.f6217b
            r5 = r5[r0]
            if (r5 != 0) goto L5e
            goto L4c
        L5e:
            int r5 = r4.f6217b
            if (r5 >= 0) goto L64
            r4.f6217b = r1
        L64:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1630h.m7312j(java.lang.String):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0035. Please report as an issue. */
    /* renamed from: k */
    private void m7313k(UiMessage.CommandToUi commandToUi) {
        CharSequence text;
        String charSequence;
        if (this.f6216a[this.f6217b] == null) {
            m7285a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        if (this.f6218c[this.f6217b].get(controlId) == null) {
            m7285a(false);
            return;
        }
        switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                text = ((TextView) this.f6216a[this.f6217b].m7408b(controlId)).getText();
                charSequence = text.toString();
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case CHECK_BOX:
                text = ((CheckBox) this.f6216a[this.f6217b].m7408b(controlId)).getText();
                charSequence = text.toString();
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6216a[this.f6217b].m7408b(controlId)).findViewById(commandToUi.getItemIndex());
                if (radioButton == null) {
                    m7285a(false);
                    return;
                }
                text = radioButton.getText();
                charSequence = text.toString();
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case SPINNER:
                Spinner spinner = (Spinner) this.f6216a[this.f6217b].m7408b(controlId);
                if (commandToUi.getItemIndex() >= spinner.getCount()) {
                    m7285a(false);
                    return;
                }
                new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                charSequence = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            default:
                m7285a(false);
                return;
        }
    }

    /* renamed from: k */
    private void m7314k(String str) {
        UiMessage.ControlVar.Builder type;
        int checkedRadioButtonId;
        MqRunner mqRunner;
        UiMessage.UiToCommand.Builder isSuccess = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true);
        UiMessage.ControlVar.Builder controlId = UiMessage.ControlVar.newBuilder().setControlId(str);
        EnumC1635m enumC1635m = null;
        int i = 0;
        while (true) {
            if (i >= 32) {
                i = 0;
                break;
            } else if (this.f6218c[i] != null && (enumC1635m = (EnumC1635m) this.f6218c[i].get(str)) != null) {
                break;
            } else {
                i++;
            }
        }
        StringBuilder sb = new StringBuilder("type=");
        sb.append(enumC1635m);
        sb.append("; tempIndex=");
        sb.append(i);
        if (enumC1635m == null) {
            m7278a(C1696R.string.ui_show_not_found_widget, str);
            mqRunner = MqRunner.getInstance();
            isSuccess = isSuccess.setIsSuccess(false);
        } else {
            switch (enumC1635m) {
                case TEXT_VIEW:
                case EDIT_TEXT:
                case BUTTON:
                    controlId.setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(((TextView) this.f6216a[i].m7408b(str)).getText().toString());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case CHECK_BOX:
                    controlId.setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(((CheckBox) this.f6216a[i].m7408b(str)).isChecked());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case RADIIO_GROUP:
                    RadioGroup radioGroup = (RadioGroup) this.f6216a[i].m7408b(str);
                    type = controlId.setType(UiMessage.ControlVar.Data_Type.INT);
                    checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                    type.setIntValue(checkedRadioButtonId);
                    isSuccess.addVarTable(controlId.build());
                    break;
                case SPINNER:
                    Spinner spinner = (Spinner) this.f6216a[i].m7408b(str);
                    type = controlId.setType(UiMessage.ControlVar.Data_Type.INT);
                    checkedRadioButtonId = spinner.getSelectedItemPosition();
                    type.setIntValue(checkedRadioButtonId);
                    isSuccess.addVarTable(controlId.build());
                    break;
                default:
                    isSuccess.setIsSuccess(false);
                    break;
            }
            new StringBuilder("Ui.getValue result: ").append(isSuccess.build());
            mqRunner = MqRunner.getInstance();
        }
        mqRunner.mo7722a(isSuccess.build().toByteString());
    }

    /* renamed from: l */
    private void m7315l(UiMessage.CommandToUi commandToUi) {
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (this.f6227n.get(controlId) == null) {
            m7278a(C1696R.string.ui_show_not_found_ui, controlId);
            m7285a(false);
            return;
        }
        if (!color.matches(f6214j)) {
            m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7285a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        this.f6216a[this.f6227n.get(controlId).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
        m7285a(true);
    }

    /* renamed from: l */
    private void m7316l(String str) {
        if (this.f6221f.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_float, str);
            m7285a(false);
            return;
        }
        if (this.f6219d[this.f6221f.get(str).intValue()].f6259d) {
            m7285a(false);
            return;
        }
        C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
        String str2 = (String) c1632j.getTag();
        if (c1632j.f6264i == null || c1632j.f6264i.length() <= 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadii(new float[]{c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g, c1632j.f6262g});
            try {
                gradientDrawable.setColor(c1632j.f6261f);
            } catch (Exception unused) {
            }
            if (Build.VERSION.SDK_INT >= 16) {
                c1632j.f6258c.setBackground(gradientDrawable);
            }
        } else {
            Bitmap decodeFile = BitmapFactory.decodeFile(c1632j.f6264i);
            if (Build.VERSION.SDK_INT >= 16) {
                c1632j.f6258c.setBackground(new BitmapDrawable(decodeFile));
            }
        }
        c1632j.f6259d = true;
        c1632j.f6258c.setOnTouchListener(new C1632j.AnonymousClass1(str2));
        c1632j.f6256a.addView(c1632j.f6258c, c1632j.f6257b);
        c1632j.f6258c.getBackground().setAlpha((c1632j.f6263h * 255) / 100);
        m7285a(true);
        m7283a(str, UiMessage.ControlEvent.Event_Type.ON_SHOW);
    }

    /* renamed from: m */
    private void m7317m(UiMessage.CommandToUi commandToUi) {
        String controlId = commandToUi.getControlId();
        String strParam = commandToUi.getStrParam();
        if (!strParam.matches(f6214j)) {
            m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7285a(false);
            return;
        }
        if (!strParam.startsWith("#")) {
            strParam = "#" + strParam;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(strParam));
        String str = this.f6223h.get(controlId);
        if (str == null) {
            m7285a(false);
            return;
        }
        View m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId);
        if (m7381a == null) {
            m7285a(false);
            return;
        }
        if (this.f6222g.get(controlId) == EnumC1635m.BUTTON) {
            ((Button) m7381a).setTextColor(m7479a);
        }
        if (this.f6222g.get(controlId) == EnumC1635m.TEXT_VIEW) {
            ((TextView) m7381a).setTextColor(m7479a);
        }
        this.f6219d[this.f6221f.get(str).intValue()].m7389e();
        m7285a(true);
    }

    /* renamed from: m */
    private void m7318m(String str) {
        if (this.f6221f.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_float, str);
            m7285a(false);
        } else {
            if (!this.f6219d[this.f6221f.get(str).intValue()].f6259d) {
                m7285a(true);
                return;
            }
            C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
            if (c1632j.f6258c != null && c1632j.f6259d) {
                c1632j.f6256a.removeView(c1632j.f6258c);
                c1632j.f6256a.addView(c1632j.f6258c, c1632j.f6257b);
            }
            m7285a(true);
        }
    }

    /* renamed from: n */
    private void m7319n(String str) {
        if (this.f6221f.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_float, str);
            m7285a(false);
        } else if (!this.f6219d[this.f6221f.get(str).intValue()].f6259d) {
            m7285a(false);
        } else {
            this.f6219d[this.f6221f.get(str).intValue()].m7385b();
            m7285a(true);
        }
    }

    /* renamed from: n */
    private boolean m7320n(UiMessage.CommandToUi commandToUi) {
        String controlId = commandToUi.getControlId();
        String str = this.f6223h.get(controlId);
        new StringBuilder("doReSetView value: ").append(commandToUi.getCommand().toString());
        if (str == null) {
            m7285a(false);
            return false;
        }
        new StringBuilder("doReSetView value: ").append(commandToUi.getCommand().toString());
        View m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId);
        if (m7381a == null) {
            m7285a(false);
            return false;
        }
        new StringBuilder("doReSetView value: ").append(commandToUi.getCommand().toString());
        switch (commandToUi.getCommand()) {
            case SET_FW_BUTTON:
                if (this.f6222g.get(controlId) == EnumC1635m.BUTTON) {
                    Button button = (Button) m7381a;
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) m7381a.getLayoutParams();
                    layoutParams.width = commandToUi.getWidth();
                    layoutParams.height = commandToUi.getHeight();
                    button.setLayoutParams(layoutParams);
                    button.setText(commandToUi.getText());
                    button.setX(commandToUi.getLeft());
                    button.setY(commandToUi.getTop());
                    break;
                }
                break;
            case SET_FW_TEXT_VIEW:
                if (this.f6222g.get(controlId) == EnumC1635m.TEXT_VIEW) {
                    TextView textView = (TextView) m7381a;
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) m7381a.getLayoutParams();
                    layoutParams2.width = commandToUi.getWidth();
                    layoutParams2.height = commandToUi.getHeight();
                    textView.setLayoutParams(layoutParams2);
                    textView.setText(commandToUi.getText());
                    textView.setX(commandToUi.getLeft());
                    textView.setY(commandToUi.getTop());
                    break;
                }
                break;
            case SET_FW_IMAGE_VIEW:
                if (this.f6222g.get(controlId) == EnumC1635m.IMAGE_VIEW) {
                    ImageView imageView = (ImageView) m7381a;
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                    layoutParams3.width = commandToUi.getWidth();
                    layoutParams3.height = commandToUi.getHeight();
                    imageView.setLayoutParams(layoutParams3);
                    imageView.setX(commandToUi.getLeft());
                    imageView.setY(commandToUi.getTop());
                    imageView.setImageURI(Uri.fromFile(new File(commandToUi.getText())));
                    break;
                }
                break;
        }
        this.f6219d[this.f6221f.get(str).intValue()].m7389e();
        m7285a(true);
        return true;
    }

    /* renamed from: o */
    private void m7321o(String str) {
        if (this.f6221f.get(str) == null) {
            m7278a(C1696R.string.ui_show_not_found_float, str);
            m7285a(false);
        } else {
            this.f6219d[this.f6221f.get(str).intValue()].m7387c();
            this.f6221f.remove(str);
            m7283a(str, UiMessage.ControlEvent.Event_Type.ON_CLOSE);
            m7285a(true);
        }
    }

    /* renamed from: o */
    private boolean m7322o(UiMessage.CommandToUi commandToUi) {
        C1632j c1632j;
        View m7381a;
        String controlId = commandToUi.getControlId();
        String str = this.f6223h.get(controlId);
        boolean z = false;
        if (str == null) {
            return false;
        }
        try {
            c1632j = this.f6219d[this.f6221f.get(str).intValue()];
        } catch (Exception unused) {
        }
        if (c1632j == null || (m7381a = c1632j.m7381a(controlId)) == null) {
            return false;
        }
        int i = AnonymousClass4.f6236b[this.f6222g.get(controlId).ordinal()];
        z = true;
        if (i == 1 || i == 3) {
            new StringBuilder("setFloatTextSize value: ").append(commandToUi.getFontSize());
            ((TextView) m7381a).setTextSize(2, commandToUi.getFontSize());
        }
        c1632j.m7389e();
        return z;
    }

    /* renamed from: p */
    private void m7323p(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if (this.f6221f.get(str) != null) {
            WindowManager.LayoutParams params = this.f6219d[this.f6221f.get(str).intValue()].getParams();
            jSONObject.put("Left", params.x);
            jSONObject.put("Top", params.y);
            jSONObject.put("Width", params.width);
            jSONObject.put("Height", params.height);
        } else {
            String str2 = this.f6223h.get(str);
            EnumC1635m enumC1635m = this.f6222g.get(str);
            if (enumC1635m == null) {
                m7278a(C1696R.string.ui_show_not_found_widget, str);
                MqRunner.getInstance().mo7725c(jSONObject.toString());
            }
            int i = AnonymousClass4.f6236b[enumC1635m.ordinal()];
            if (i == 1) {
                TextView textView = (TextView) this.f6219d[this.f6221f.get(str2).intValue()].m7381a(str);
                jSONObject.put("Left", textView.getLeft());
                jSONObject.put("Top", textView.getTop());
                jSONObject.put("Text", textView.getText());
                jSONObject.put("Width", textView.getWidth());
                jSONObject.put("Height", textView.getHeight());
            } else {
                if (i != 3) {
                    if (i == 7) {
                        ImageView imageView = (ImageView) this.f6219d[this.f6221f.get(str2).intValue()].m7381a(str);
                        jSONObject.put("Left", imageView.getLeft());
                        jSONObject.put("Top", imageView.getTop());
                        jSONObject.put("Width", imageView.getWidth());
                        jSONObject.put("Height", imageView.getHeight());
                    }
                    new StringBuilder("FWGetValue json: ").append(jSONObject.toString());
                    MqRunner.getInstance().mo7725c(jSONObject.toString());
                }
                Button button = (Button) this.f6219d[this.f6221f.get(str2).intValue()].m7381a(str);
                jSONObject.put("Left", button.getLeft());
                jSONObject.put("Top", button.getTop());
                jSONObject.put("Text", button.getText());
                jSONObject.put("Width", button.getWidth());
                jSONObject.put("Height", button.getHeight());
            }
        }
        new StringBuilder("FWGetValue json: ").append(jSONObject.toString());
        MqRunner.getInstance().mo7725c(jSONObject.toString());
    }

    /* renamed from: p */
    private boolean m7324p(UiMessage.CommandToUi commandToUi) {
        View m7381a;
        String controlId = commandToUi.getControlId();
        String str = this.f6223h.get(controlId);
        if (str == null) {
            return false;
        }
        try {
            C1632j c1632j = this.f6219d[this.f6221f.get(str).intValue()];
            if (c1632j == null || (m7381a = c1632j.m7381a(controlId)) == null) {
                return false;
            }
            switch (commandToUi.getCommand()) {
                case SET_FW_ENABLE:
                    new StringBuilder("doFloatSetStatus ").append(commandToUi.getEnabledStatus());
                    m7381a.setEnabled(commandToUi.getEnabledStatus());
                    break;
                case SET_FW_VISIBLE:
                    new StringBuilder("doFloatSetStatus ").append(commandToUi.getVisibleStatus());
                    if (commandToUi.getVisibleStatus() == 0) {
                        m7381a.setVisibility(8);
                        break;
                    } else {
                        m7381a.setVisibility(0);
                        break;
                    }
            }
            c1632j.m7389e();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        if (r1.getVisibility() == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
    
        r3 = "true";
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        if (r1.isEnabled() != false) goto L22;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m7325q(com.cyjh.mobileanjian.ipc.share.proto.UiMessage.CommandToUi r6) {
        /*
            r5 = this;
            java.lang.String r0 = r6.getControlId()
            java.util.HashMap<java.lang.String, java.lang.String> r1 = r5.f6223h
            java.lang.Object r1 = r1.get(r0)
            java.lang.String r1 = (java.lang.String) r1
            r2 = 0
            if (r1 != 0) goto L10
            return r2
        L10:
            com.cyjh.mobileanjian.ipc.ui.j[] r3 = r5.f6219d     // Catch: java.lang.Exception -> L83
            java.util.HashMap<java.lang.String, java.lang.Integer> r4 = r5.f6221f     // Catch: java.lang.Exception -> L83
            java.lang.Object r1 = r4.get(r1)     // Catch: java.lang.Exception -> L83
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Exception -> L83
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> L83
            r1 = r3[r1]     // Catch: java.lang.Exception -> L83
            if (r1 != 0) goto L23
            return r2
        L23:
            android.view.View r1 = r1.m7381a(r0)
            if (r1 != 0) goto L2a
            return r2
        L2a:
            java.lang.String r3 = "false"
            int[] r4 = com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1630h.AnonymousClass4.f6235a
            com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi$Command_Type r6 = r6.getCommand()
            int r6 = r6.ordinal()
            r6 = r4[r6]
            r4 = 1
            switch(r6) {
                case 70: goto L73;
                case 71: goto L44;
                case 72: goto L3d;
                default: goto L3c;
            }
        L3c:
            goto L7b
        L3d:
            int r6 = r1.getVisibility()
            if (r6 != 0) goto L7b
            goto L79
        L44:
            java.util.HashMap<java.lang.String, com.cyjh.mobileanjian.ipc.ui.m> r6 = r5.f6222g
            java.lang.Object r6 = r6.get(r0)
            com.cyjh.mobileanjian.ipc.ui.m r0 = com.cyjh.mobileanjian.ipc.p106ui.EnumC1635m.IMAGE_VIEW
            if (r6 == r0) goto L7b
            android.widget.TextView r1 = (android.widget.TextView) r1
            int r6 = r1.getCurrentTextColor()
            int r6 = com.cyjh.mobileanjian.ipc.utils.C1649c.m7479a(r6)
            java.lang.String r0 = "%6s"
            java.lang.Object[] r1 = new java.lang.Object[r4]
            r3 = 16777215(0xffffff, float:2.3509886E-38)
            r6 = r6 & r3
            java.lang.String r6 = java.lang.Integer.toHexString(r6)
            r1[r2] = r6
            java.lang.String r6 = java.lang.String.format(r0, r1)
            java.lang.String r0 = " "
            java.lang.String r1 = "0"
            java.lang.String r3 = r6.replace(r0, r1)
            goto L7b
        L73:
            boolean r6 = r1.isEnabled()
            if (r6 == 0) goto L7b
        L79:
            java.lang.String r3 = "true"
        L7b:
            com.cyjh.mq.sdk.MqRunner r6 = com.cyjh.mq.sdk.MqRunner.getInstance()
            r6.mo7725c(r3)
            return r4
        L83:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1630h.m7325q(com.cyjh.mobileanjian.ipc.share.proto.UiMessage$CommandToUi):boolean");
    }

    /* renamed from: r */
    private boolean m7326r(UiMessage.CommandToUi commandToUi) {
        View m7381a;
        String controlId = commandToUi.getControlId();
        if (this.f6221f.get(controlId) != null) {
            this.f6219d[this.f6221f.get(controlId).intValue()].setFloatLeft(commandToUi.getIntParam());
            return true;
        }
        String str = this.f6223h.get(controlId);
        if (str == null || (m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId)) == null) {
            return false;
        }
        if (this.f6222g.get(controlId) != EnumC1635m.BUTTON && this.f6222g.get(controlId) != EnumC1635m.TEXT_VIEW && this.f6222g.get(controlId) != EnumC1635m.IMAGE_VIEW) {
            return true;
        }
        new StringBuilder("view.setX ").append(commandToUi.getIntParam());
        m7381a.setX(commandToUi.getIntParam());
        return true;
    }

    /* renamed from: s */
    private boolean m7327s(UiMessage.CommandToUi commandToUi) {
        View m7381a;
        String controlId = commandToUi.getControlId();
        if (this.f6221f.get(controlId) != null) {
            this.f6219d[this.f6221f.get(controlId).intValue()].setFloatTop(commandToUi.getIntParam());
            return true;
        }
        String str = this.f6223h.get(controlId);
        if (str == null || (m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId)) == null) {
            return false;
        }
        if (this.f6222g.get(controlId) != EnumC1635m.BUTTON && this.f6222g.get(controlId) != EnumC1635m.TEXT_VIEW && this.f6222g.get(controlId) != EnumC1635m.IMAGE_VIEW) {
            return true;
        }
        new StringBuilder("view.setY ").append(commandToUi.getIntParam());
        m7381a.setY(commandToUi.getIntParam());
        return true;
    }

    /* renamed from: t */
    private boolean m7328t(UiMessage.CommandToUi commandToUi) {
        View m7381a;
        String controlId = commandToUi.getControlId();
        if (this.f6221f.get(controlId) != null) {
            this.f6219d[this.f6221f.get(controlId).intValue()].setFloatWidth(commandToUi.getIntParam());
            return true;
        }
        String str = this.f6223h.get(controlId);
        if (str == null || (m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId)) == null) {
            return false;
        }
        if (this.f6222g.get(controlId) != EnumC1635m.BUTTON && this.f6222g.get(controlId) != EnumC1635m.TEXT_VIEW && this.f6222g.get(controlId) != EnumC1635m.IMAGE_VIEW) {
            return true;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) m7381a.getLayoutParams();
        layoutParams.width = commandToUi.getIntParam();
        m7381a.setLayoutParams(layoutParams);
        return true;
    }

    /* renamed from: u */
    private boolean m7329u(UiMessage.CommandToUi commandToUi) {
        View m7381a;
        String controlId = commandToUi.getControlId();
        if (this.f6221f.get(controlId) != null) {
            this.f6219d[this.f6221f.get(controlId).intValue()].setFloatHeight(commandToUi.getIntParam());
            return true;
        }
        String str = this.f6223h.get(controlId);
        if (str == null || (m7381a = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId)) == null) {
            return false;
        }
        if (this.f6222g.get(controlId) != EnumC1635m.BUTTON && this.f6222g.get(controlId) != EnumC1635m.TEXT_VIEW && this.f6222g.get(controlId) != EnumC1635m.IMAGE_VIEW) {
            return true;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) m7381a.getLayoutParams();
        layoutParams.height = commandToUi.getIntParam();
        m7381a.setLayoutParams(layoutParams);
        return true;
    }

    /* renamed from: v */
    private boolean m7330v(UiMessage.CommandToUi commandToUi) {
        C1632j c1632j;
        View m7381a;
        String controlId = commandToUi.getControlId();
        new StringBuilder("setFloatText : ").append(commandToUi.getStrParam());
        String str = this.f6223h.get(controlId);
        boolean z = false;
        if (str == null) {
            return false;
        }
        try {
            c1632j = this.f6219d[this.f6221f.get(str).intValue()];
        } catch (Exception unused) {
        }
        if (c1632j == null || (m7381a = c1632j.m7381a(controlId)) == null) {
            return false;
        }
        int i = AnonymousClass4.f6236b[this.f6222g.get(controlId).ordinal()];
        z = true;
        if (i == 1) {
            ((TextView) m7381a).setText(commandToUi.getStrParam());
        } else if (i == 3) {
            ((Button) m7381a).setText(commandToUi.getStrParam());
        }
        c1632j.m7389e();
        return z;
    }

    /* renamed from: a */
    public final void m7331a() {
        for (int i = 31; i > 0; i--) {
            C1633k c1633k = this.f6216a[i];
            if (c1633k != null && c1633k.f6295c) {
                c1633k.m7414e();
            }
            C1632j c1632j = this.f6219d[i];
            if (c1632j != null && c1632j.f6259d) {
                c1632j.m7387c();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:331:0x0b35. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0024. Please report as an issue. */
    /* renamed from: a */
    public final void m7332a(UiMessage.CommandToUi commandToUi) {
        C1633k c1633k;
        View view;
        CharSequence text;
        String charSequence;
        TextPaint paint;
        View m7381a;
        View m7381a2;
        final String controlId = commandToUi.getControlId();
        UiMessage.CommandToUi.Command_Type command = commandToUi.getCommand();
        new StringBuilder("command: ").append(commandToUi);
        int i = 2;
        boolean z = true;
        try {
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        switch (command) {
            case SAVE_PROFILE:
                m7302e(commandToUi.getPath());
                m7285a(z);
                return;
            case LOAD_PROFILE:
                m7304f(commandToUi.getPath());
                m7285a(z);
                return;
            case NEW_LAYOUT:
                int width = commandToUi.getWidth();
                int height = commandToUi.getHeight();
                this.f6217b++;
                this.f6216a[this.f6217b] = this.f6226m.m7272a(controlId, width, height);
                this.f6227n.put(controlId, Integer.valueOf(this.f6217b));
                this.f6218c[this.f6217b] = new HashMap();
                this.f6216a[this.f6217b].m7411b(new AnonymousClass2(controlId));
                this.f6216a[this.f6217b].m7402a(new AnonymousClass3(controlId));
                m7285a(z);
                return;
            case SHOW_LAYOUT:
                if (this.f6227n.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_ui, controlId);
                    m7285a(false);
                    return;
                } else {
                    if (this.f6216a[this.f6227n.get(controlId).intValue()].m7413d()) {
                        m7285a(false);
                        return;
                    }
                    this.f6216a[this.f6227n.get(controlId).intValue()].m7412c();
                    m7285a(true);
                    MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                    return;
                }
            case CLOSE_LAYOUT:
                m7312j(controlId);
                MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
                m7285a(z);
                return;
            case CLOSE_CONTINUE_ACK:
                z = m7312j(controlId);
                m7285a(z);
                return;
            case CLOSE_EXIT_ACK:
                m7331a();
                m7285a(z);
                return;
            case NEW_ROW:
                if (this.f6216a[this.f6217b] != null) {
                    C1633k c1633k2 = this.f6216a[this.f6217b];
                    m7288b();
                    c1633k2.m7406a(controlId, commandToUi.getParentId(), commandToUi.getWidth(), commandToUi.getHeight());
                }
                m7285a(z);
                return;
            case SET_TITLE_TEXT:
                String text2 = commandToUi.getText();
                if (this.f6227n.get(controlId) != null) {
                    this.f6216a[this.f6227n.get(controlId).intValue()].m7404a(text2);
                    m7285a(z);
                    return;
                } else {
                    m7278a(C1696R.string.ui_show_not_found_ui, controlId);
                    z = false;
                    m7285a(z);
                    return;
                }
            case GET_TITLE_TEXT:
                if (this.f6227n.get(controlId) != null) {
                    MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.f6216a[this.f6227n.get(controlId).intValue()].m7399a()).build()).build().toByteString());
                    return;
                } else {
                    m7278a(C1696R.string.ui_show_not_found_ui, controlId);
                    m7285a(false);
                    return;
                }
            case SET_TITLE_BACKCOLOR:
                String controlId2 = commandToUi.getControlId();
                String color = commandToUi.getColor();
                if (this.f6227n.get(controlId2) == null) {
                    m7278a(C1696R.string.ui_show_not_found_ui, controlId2);
                    m7285a(false);
                    return;
                } else {
                    if (!color.matches(f6214j)) {
                        m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                        m7285a(false);
                        return;
                    }
                    if (!color.startsWith("#")) {
                        color = "#" + color;
                    }
                    this.f6216a[this.f6227n.get(controlId2).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
                    m7285a(true);
                    return;
                }
            case ADD_LINE:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g = this.f6226m;
                    m7288b();
                    View m7274b = c1629g.m7274b(controlId, commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.LINE);
                    view = m7274b;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_TEXT_VIEW:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g2 = this.f6226m;
                    m7288b();
                    View m7270a = c1629g2.m7270a(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.TEXT_VIEW);
                    view = m7270a;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_EDIT_TEXT:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g3 = this.f6226m;
                    m7288b();
                    EditText m7277d = c1629g3.m7277d(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.EDIT_TEXT);
                    this.f6216a[this.f6217b].m7403a(m7277d, commandToUi.getParentId());
                    m7277d.addTextChangedListener(new a(controlId));
                }
                m7285a(z);
                return;
            case ADD_BUTTON:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g4 = this.f6226m;
                    m7288b();
                    Button m7273b = c1629g4.m7273b(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.BUTTON);
                    m7273b.setOnClickListener(this);
                    view = m7273b;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_RADIO_GROUP:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g5 = this.f6226m;
                    m7288b();
                    View m7268a = c1629g5.m7268a(controlId, commandToUi.getItemTextList(), commandToUi.getDefaultItemIndex(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.RADIIO_GROUP);
                    view = m7268a;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_CHECK_BOX:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g6 = this.f6226m;
                    m7288b();
                    View m7266a = c1629g6.m7266a(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getDefaultCheckStatus());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.CHECK_BOX);
                    view = m7266a;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_IMAGE_VIEW:
                if (this.f6216a[this.f6217b] != null) {
                    ImageView m7267a = this.f6226m.m7267a(m7288b(), controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getPath());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.IMAGE_VIEW);
                    m7267a.setOnClickListener(this);
                    view = m7267a;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_WEB_VIEW:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g7 = this.f6226m;
                    m7288b();
                    View m7265a = c1629g7.m7265a(controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getUrl());
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.WEB_VIEW);
                    view = m7265a;
                    c1633k = this.f6216a[this.f6217b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7285a(z);
                return;
            case ADD_SPINNER:
                if (this.f6216a[this.f6217b] != null) {
                    C1629g c1629g8 = this.f6226m;
                    m7288b();
                    List<String> itemTextList = commandToUi.getItemTextList();
                    int defaultItemIndex = commandToUi.getDefaultItemIndex();
                    commandToUi.getWidth();
                    commandToUi.getHeight();
                    Spinner m7269a = c1629g8.m7269a(controlId, itemTextList, defaultItemIndex);
                    this.f6218c[this.f6217b].put(controlId, EnumC1635m.SPINNER);
                    this.f6216a[this.f6217b].m7403a(m7269a, commandToUi.getParentId());
                    m7269a.setOnItemSelectedListener(this);
                }
                m7285a(z);
                return;
            case ADD_TAB_HOST:
                if (this.f6216a[this.f6217b] != null) {
                    this.f6216a[this.f6217b].m7405a(commandToUi.getControlId(), commandToUi.getHeight());
                }
                m7285a(z);
                return;
            case ADD_TAB:
                if (this.f6216a[this.f6217b] != null) {
                    z = this.f6216a[this.f6217b].m7407a(m7288b(), commandToUi.getControlId(), commandToUi.getParentId(), commandToUi.getText());
                }
                m7285a(z);
                return;
            case SET_TEXT_VIEW:
            case SET_EDIT_TEXT:
            case SET_BOTTON:
            case SET_CHECK_BOX:
            case SET_IMAGE_VIEW:
            case SET_WEB_VIEW:
            case SET_RADIO_GROUP:
            case SET_SPINNER:
            case SET_ENABLED:
            case SET_LINE:
            case SET_VISIBLE:
                z = m7293b(commandToUi);
                m7285a(z);
                return;
            case SET_FULLSCREEN:
                if (this.f6227n.get(controlId) != null) {
                    m7285a(true);
                } else if (this.f6218c[this.f6217b].get(controlId) == null) {
                    m7285a(false);
                } else {
                    View m7408b = this.f6216a[this.f6217b].m7408b(controlId);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                    layoutParams.width = -1;
                    m7408b.setLayoutParams(layoutParams);
                }
                m7285a(z);
                return;
            case SET_TEXT:
                m7301e(commandToUi);
                return;
            case SET_FONT:
                m7295c(commandToUi);
                return;
            case SET_EDIT_INPUT_TYPE:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                String controlId3 = commandToUi.getControlId();
                commandToUi.getText();
                View m7408b2 = this.f6216a[this.f6217b].m7408b(controlId3);
                if (m7408b2 == null) {
                    m7285a(false);
                    return;
                } else if (this.f6218c[this.f6217b].get(controlId3) != EnumC1635m.EDIT_TEXT) {
                    m7285a(false);
                    return;
                } else {
                    ((EditText) m7408b2).setInputType(commandToUi.getEditInputType());
                    m7285a(true);
                    return;
                }
            case GET_TEXT:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                String controlId4 = commandToUi.getControlId();
                if (this.f6218c[this.f6217b].get(controlId4) == null) {
                    m7285a(false);
                    return;
                }
                switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId4)) {
                    case TEXT_VIEW:
                    case EDIT_TEXT:
                    case BUTTON:
                        text = ((TextView) this.f6216a[this.f6217b].m7408b(controlId4)).getText();
                        charSequence = text.toString();
                        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case CHECK_BOX:
                        text = ((CheckBox) this.f6216a[this.f6217b].m7408b(controlId4)).getText();
                        charSequence = text.toString();
                        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case RADIIO_GROUP:
                        RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6216a[this.f6217b].m7408b(controlId4)).findViewById(commandToUi.getItemIndex());
                        if (radioButton == null) {
                            m7285a(false);
                            return;
                        }
                        text = radioButton.getText();
                        charSequence = text.toString();
                        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case SPINNER:
                        Spinner spinner = (Spinner) this.f6216a[this.f6217b].m7408b(controlId4);
                        if (commandToUi.getItemIndex() >= spinner.getCount()) {
                            m7285a(false);
                            return;
                        }
                        new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                        charSequence = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                        MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    default:
                        m7285a(false);
                        return;
                }
            case SET_TEXTCOLOR:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                String controlId5 = commandToUi.getControlId();
                String color2 = commandToUi.getColor();
                if (!color2.matches(f6214j)) {
                    m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7285a(false);
                    return;
                }
                if (!color2.startsWith("#")) {
                    color2 = "#" + color2;
                }
                int m7479a = C1649c.m7479a(Color.parseColor(color2));
                if (this.f6227n.get(controlId5) != null) {
                    this.f6216a[this.f6227n.get(controlId5).intValue()].m7400a(m7479a);
                } else {
                    View m7408b3 = this.f6216a[this.f6217b].m7408b(controlId5);
                    if (m7408b3 == null) {
                        m7285a(false);
                        return;
                    }
                    switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId5)) {
                        case TEXT_VIEW:
                        case EDIT_TEXT:
                        case BUTTON:
                            ((TextView) m7408b3).setTextColor(m7479a);
                            break;
                        case CHECK_BOX:
                            ((CheckBox) m7408b3).setTextColor(m7479a);
                            break;
                        case RADIIO_GROUP:
                            RadioButton radioButton2 = (RadioButton) ((RadioGroup) m7408b3).findViewById(commandToUi.getItemIndex());
                            if (radioButton2 != null) {
                                radioButton2.setTextColor(m7479a);
                                break;
                            } else {
                                m7285a(false);
                                return;
                            }
                        case SPINNER:
                            if (commandToUi.getItemIndex() >= ((Spinner) m7408b3).getCount()) {
                                m7285a(false);
                                return;
                            }
                            break;
                        default:
                            m7285a(false);
                            return;
                    }
                }
                m7285a(true);
                return;
            case SET_BACKCOLOR:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                String controlId6 = commandToUi.getControlId();
                View m7408b4 = this.f6216a[this.f6217b].m7408b(controlId6);
                if (m7408b4 == null) {
                    m7285a(false);
                    return;
                }
                String color3 = commandToUi.getColor();
                if (!color3.matches(f6214j)) {
                    m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7285a(false);
                    return;
                }
                if (!color3.startsWith("#")) {
                    color3 = "#" + color3;
                }
                int m7479a2 = C1649c.m7479a(Color.parseColor(color3));
                if (this.f6218c[this.f6217b].get(controlId6) == EnumC1635m.BUTTON) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(m7479a2);
                    gradientDrawable.setCornerRadius(m7294c());
                    m7408b4.setBackground(gradientDrawable);
                } else if (this.f6218c[this.f6217b].get(controlId6) != EnumC1635m.SPINNER) {
                    m7408b4.setBackgroundColor(m7479a2);
                }
                m7285a(true);
                return;
            case GET_VALUE:
                m7314k(controlId);
                return;
            case GET_ENABLED:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                View m7408b5 = this.f6216a[this.f6217b].m7408b(controlId);
                if (m7408b5 == null) {
                    m7285a(false);
                    return;
                }
                boolean isEnabled = m7408b5.isEnabled();
                if (this.f6218c[this.f6217b].get(controlId) == EnumC1635m.EDIT_TEXT) {
                    isEnabled = ((EditText) m7408b5).isFocusable();
                }
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
                return;
            case GET_VISIBLE:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                View m7408b6 = this.f6216a[this.f6217b].m7408b(controlId);
                if (m7408b6 == null) {
                    m7285a(false);
                    return;
                }
                int visibility = m7408b6.getVisibility();
                if (visibility != 0) {
                    if (visibility != 4) {
                        if (visibility == 8) {
                            i = 3;
                        }
                    }
                    MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                    return;
                }
                i = 1;
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                return;
            case GET_TEXTCOLOR:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                String controlId7 = commandToUi.getControlId();
                if (this.f6218c[this.f6217b].get(controlId7) == null) {
                    m7285a(false);
                    return;
                }
                switch ((EnumC1635m) this.f6218c[this.f6217b].get(controlId7)) {
                    case TEXT_VIEW:
                    case EDIT_TEXT:
                    case BUTTON:
                        paint = ((TextView) this.f6216a[this.f6217b].m7408b(controlId7)).getPaint();
                        break;
                    case CHECK_BOX:
                        paint = ((CheckBox) this.f6216a[this.f6217b].m7408b(controlId7)).getPaint();
                        break;
                    case RADIIO_GROUP:
                        RadioButton radioButton3 = (RadioButton) ((RadioGroup) this.f6216a[this.f6217b].m7408b(controlId7)).findViewById(commandToUi.getItemIndex());
                        if (radioButton3 != null) {
                            paint = radioButton3.getPaint();
                            break;
                        } else {
                            m7285a(false);
                            return;
                        }
                    default:
                        m7285a(false);
                        return;
                }
                int color4 = paint.getColor();
                MqRunner.getInstance().mo7722a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                return;
            case GET_BACKCOLOR:
            case SET_WINDOW_GRAVITY:
            default:
                m7285a(z);
                return;
            case SET_CONTROL_GRAVITY:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                View m7408b7 = this.f6216a[this.f6217b].m7408b(commandToUi.getControlId());
                if (m7408b7 == null) {
                    m7285a(false);
                    return;
                }
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m7408b7.getLayoutParams();
                layoutParams2.gravity = commandToUi.getAlignType();
                m7408b7.setLayoutParams(layoutParams2);
                new StringBuilder("set gravity ok; ").append(layoutParams2);
                m7285a(true);
                return;
            case SET_PADDING:
                if (this.f6216a[this.f6217b] == null) {
                    m7285a(false);
                    return;
                }
                View m7408b8 = this.f6216a[this.f6217b].m7408b(commandToUi.getControlId());
                if (m7408b8 == null) {
                    m7285a(false);
                    return;
                }
                UiMessage.Padding_Var padding = commandToUi.getPadding();
                new StringBuilder("padding: ").append(padding.getLeft());
                new StringBuilder("padding: ").append(padding.getTop());
                new StringBuilder("padding: ").append(padding.getRight());
                new StringBuilder("padding: ").append(padding.getBottom());
                m7408b8.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                m7285a(true);
                return;
            case NEW_FLOAT:
                m7282a(controlId, commandToUi.getLeft(), commandToUi.getTop(), commandToUi.getWidth(), commandToUi.getHeight());
                m7285a(z);
                return;
            case SHOW_FLOAT:
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else {
                    if (this.f6219d[this.f6221f.get(controlId).intValue()].m7388d()) {
                        m7285a(false);
                        return;
                    }
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7382a();
                    m7285a(true);
                    m7283a(controlId, UiMessage.ControlEvent.Event_Type.ON_SHOW);
                    return;
                }
            case IS_FW_TOUCHMOVE:
                boolean boolParam = commandToUi.getBoolParam();
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else {
                    this.f6219d[this.f6221f.get(controlId).intValue()].f6260e = boolParam;
                    m7285a(true);
                    return;
                }
            case HIDE_FLOAT:
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else if (!this.f6219d[this.f6221f.get(controlId).intValue()].m7388d()) {
                    m7285a(false);
                    return;
                } else {
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7385b();
                    m7285a(true);
                    return;
                }
            case CLOSE_FLOAT:
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else {
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7387c();
                    this.f6221f.remove(controlId);
                    m7283a(controlId, UiMessage.ControlEvent.Event_Type.ON_CLOSE);
                    m7285a(true);
                    return;
                }
            case FW_OPACITY:
                int intParam = commandToUi.getIntParam();
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else {
                    this.f6219d[this.f6221f.get(controlId).intValue()].setOpacity(intParam);
                    m7285a(true);
                    return;
                }
            case SET_FW_SMOOTH:
                int intParam2 = commandToUi.getIntParam();
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                } else {
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7383a(intParam2);
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7389e();
                    m7285a(true);
                    return;
                }
            case SET_FW_BG:
                String strParam = commandToUi.getStrParam();
                if (!strParam.matches(f6214j)) {
                    m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7285a(false);
                    return;
                }
                if (!strParam.startsWith("#")) {
                    strParam = "#" + strParam;
                }
                int m7479a3 = C1649c.m7479a(Color.parseColor(strParam));
                if (this.f6221f.get(controlId) != null) {
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7386b(m7479a3);
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7389e();
                } else {
                    String str = this.f6223h.get(controlId);
                    if (str == null) {
                        m7285a(false);
                        return;
                    }
                    View m7381a3 = this.f6219d[this.f6221f.get(str).intValue()].m7381a(controlId);
                    if (m7381a3 == null) {
                        m7285a(false);
                        return;
                    } else if (this.f6222g.get(controlId) == EnumC1635m.BUTTON) {
                        GradientDrawable gradientDrawable2 = new GradientDrawable();
                        gradientDrawable2.setCornerRadii(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f});
                        gradientDrawable2.setColor(m7479a3);
                        m7381a3.setBackground(gradientDrawable2);
                    } else if (this.f6222g.get(controlId) != EnumC1635m.SPINNER) {
                        m7381a3.setBackgroundColor(m7479a3);
                    }
                }
                m7285a(true);
                return;
            case SET_FW_PIC:
                String strParam2 = commandToUi.getStrParam();
                if (this.f6221f.get(controlId) != null) {
                    C1632j c1632j = this.f6219d[this.f6221f.get(controlId).intValue()];
                    c1632j.f6264i = strParam2;
                    Bitmap decodeFile = BitmapFactory.decodeFile(c1632j.f6264i);
                    if (Build.VERSION.SDK_INT >= 16) {
                        c1632j.f6258c.setBackground(new BitmapDrawable(decodeFile));
                    }
                    c1632j.f6258c.getBackground().setAlpha((c1632j.f6263h * 255) / 100);
                    this.f6219d[this.f6221f.get(controlId).intValue()].m7389e();
                } else {
                    String str2 = this.f6223h.get(controlId);
                    if (str2 != null && (m7381a = this.f6219d[this.f6221f.get(str2).intValue()].m7381a(controlId)) != null) {
                        if (this.f6222g.get(controlId) == EnumC1635m.IMAGE_VIEW) {
                            ((ImageView) m7381a).setImageURI(Uri.fromFile(new File(strParam2)));
                        }
                    }
                    z = false;
                }
                m7285a(z);
                return;
            case ADD_FW_BUTTON:
                String parentId = commandToUi.getParentId();
                if (this.f6219d[this.f6221f.get(parentId).intValue()] != null) {
                    C1629g c1629g9 = this.f6226m;
                    m7288b();
                    String text3 = commandToUi.getText();
                    int width2 = commandToUi.getWidth();
                    int height2 = commandToUi.getHeight();
                    commandToUi.getLeft();
                    commandToUi.getTop();
                    Button button = (Button) c1629g9.f6211a.inflate(C1696R.layout.ui_float_button, (ViewGroup) null);
                    button.setTag(controlId);
                    button.setText(text3);
                    button.setAllCaps(false);
                    button.setLayoutParams((width2 == 0 && height2 == 0) ? new RelativeLayout.LayoutParams(-1, 100) : new RelativeLayout.LayoutParams(width2, height2));
                    this.f6222g.put(controlId, EnumC1635m.BUTTON);
                    button.setOnClickListener(new View.OnClickListener() { // from class: com.cyjh.mobileanjian.ipc.ui.h.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ViewOnClickListenerC1630h.m7283a(controlId, UiMessage.ControlEvent.Event_Type.ON_CLICK);
                        }
                    });
                    this.f6219d[this.f6221f.get(parentId).intValue()].m7384a(button);
                    this.f6223h.put(controlId, parentId);
                    button.setX(commandToUi.getLeft());
                    button.setY(commandToUi.getTop());
                }
                m7285a(z);
                return;
            case ADD_FW_TEXT_VIEW:
                String parentId2 = commandToUi.getParentId();
                if (this.f6219d[this.f6221f.get(parentId2).intValue()] != null) {
                    C1629g c1629g10 = this.f6226m;
                    m7288b();
                    String text4 = commandToUi.getText();
                    int width3 = commandToUi.getWidth();
                    int height3 = commandToUi.getHeight();
                    commandToUi.getLeft();
                    commandToUi.getTop();
                    TextView textView = (TextView) c1629g10.f6211a.inflate(C1696R.layout.ui_float_text_view, (ViewGroup) null);
                    textView.setTag(controlId);
                    textView.setText(text4);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                    if (width3 != -2 && height3 != -2) {
                        layoutParams3.width = width3;
                        layoutParams3.height = height3;
                    }
                    textView.setLayoutParams(layoutParams3);
                    this.f6222g.put(controlId, EnumC1635m.TEXT_VIEW);
                    this.f6219d[this.f6221f.get(parentId2).intValue()].m7384a(textView);
                    this.f6223h.put(controlId, parentId2);
                    textView.setX(commandToUi.getLeft());
                    textView.setY(commandToUi.getTop());
                }
                m7285a(z);
                return;
            case ADD_FW_IMAGE_VIEW:
                String parentId3 = commandToUi.getParentId();
                if (this.f6219d[this.f6221f.get(parentId3).intValue()] != null) {
                    C1629g c1629g11 = this.f6226m;
                    m7288b();
                    String text5 = commandToUi.getText();
                    int width4 = commandToUi.getWidth();
                    int height4 = commandToUi.getHeight();
                    commandToUi.getLeft();
                    commandToUi.getTop();
                    ImageView m7275c = c1629g11.m7275c(controlId, text5, width4, height4);
                    this.f6222g.put(controlId, EnumC1635m.IMAGE_VIEW);
                    this.f6219d[this.f6221f.get(parentId3).intValue()].m7384a(m7275c);
                    this.f6223h.put(controlId, parentId3);
                    m7275c.setX(commandToUi.getLeft());
                    m7275c.setY(commandToUi.getTop());
                }
                m7285a(z);
                return;
            case FW_ZORDER:
                if (this.f6221f.get(controlId) == null) {
                    m7278a(C1696R.string.ui_show_not_found_float, controlId);
                    m7285a(false);
                    return;
                }
                if (this.f6219d[this.f6221f.get(controlId).intValue()].m7388d()) {
                    C1632j c1632j2 = this.f6219d[this.f6221f.get(controlId).intValue()];
                    if (c1632j2.f6258c != null && c1632j2.m7388d()) {
                        c1632j2.f6256a.removeView(c1632j2.f6258c);
                        c1632j2.f6256a.addView(c1632j2.f6258c, c1632j2.f6257b);
                    }
                }
                m7285a(true);
                return;
            case SET_FW_TEXT_COLOR:
                String controlId8 = commandToUi.getControlId();
                String strParam3 = commandToUi.getStrParam();
                if (!strParam3.matches(f6214j)) {
                    m7278a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7285a(false);
                    return;
                }
                if (!strParam3.startsWith("#")) {
                    strParam3 = "#" + strParam3;
                }
                int m7479a4 = C1649c.m7479a(Color.parseColor(strParam3));
                String str3 = this.f6223h.get(controlId8);
                if (str3 == null) {
                    m7285a(false);
                    return;
                }
                View m7381a4 = this.f6219d[this.f6221f.get(str3).intValue()].m7381a(controlId8);
                if (m7381a4 == null) {
                    m7285a(false);
                    return;
                }
                if (this.f6222g.get(controlId8) == EnumC1635m.BUTTON) {
                    ((Button) m7381a4).setTextColor(m7479a4);
                }
                if (this.f6222g.get(controlId8) == EnumC1635m.TEXT_VIEW) {
                    ((TextView) m7381a4).setTextColor(m7479a4);
                }
                this.f6219d[this.f6221f.get(str3).intValue()].m7389e();
                m7285a(true);
                return;
            case FW_GET_VALUE:
                JSONObject jSONObject = new JSONObject();
                try {
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
                if (this.f6221f.get(controlId) != null) {
                    WindowManager.LayoutParams params = this.f6219d[this.f6221f.get(controlId).intValue()].getParams();
                    jSONObject.put("Left", params.x);
                    jSONObject.put("Top", params.y);
                    jSONObject.put("Width", params.width);
                    jSONObject.put("Height", params.height);
                } else {
                    String str4 = this.f6223h.get(controlId);
                    EnumC1635m enumC1635m = this.f6222g.get(controlId);
                    if (enumC1635m == null) {
                        m7278a(C1696R.string.ui_show_not_found_widget, controlId);
                        MqRunner.getInstance().mo7725c(jSONObject.toString());
                        m7285a(z);
                        return;
                    }
                    int i2 = AnonymousClass4.f6236b[enumC1635m.ordinal()];
                    if (i2 == 1) {
                        TextView textView2 = (TextView) this.f6219d[this.f6221f.get(str4).intValue()].m7381a(controlId);
                        jSONObject.put("Left", textView2.getLeft());
                        jSONObject.put("Top", textView2.getTop());
                        jSONObject.put("Text", textView2.getText());
                        jSONObject.put("Width", textView2.getWidth());
                        jSONObject.put("Height", textView2.getHeight());
                    } else {
                        if (i2 != 3) {
                            if (i2 == 7) {
                                ImageView imageView = (ImageView) this.f6219d[this.f6221f.get(str4).intValue()].m7381a(controlId);
                                jSONObject.put("Left", imageView.getLeft());
                                jSONObject.put("Top", imageView.getTop());
                                jSONObject.put("Width", imageView.getWidth());
                                jSONObject.put("Height", imageView.getHeight());
                            }
                            new StringBuilder("FWGetValue json: ").append(jSONObject.toString());
                            MqRunner.getInstance().mo7725c(jSONObject.toString());
                            m7285a(z);
                            return;
                        }
                        Button button2 = (Button) this.f6219d[this.f6221f.get(str4).intValue()].m7381a(controlId);
                        jSONObject.put("Left", button2.getLeft());
                        jSONObject.put("Top", button2.getTop());
                        jSONObject.put("Text", button2.getText());
                        jSONObject.put("Width", button2.getWidth());
                        jSONObject.put("Height", button2.getHeight());
                    }
                }
                new StringBuilder("FWGetValue json: ").append(jSONObject.toString());
                MqRunner.getInstance().mo7725c(jSONObject.toString());
                m7285a(z);
                return;
            case SET_FW_BUTTON:
            case SET_FW_TEXT_VIEW:
            case SET_FW_IMAGE_VIEW:
                m7320n(commandToUi);
                return;
            case SET_FW_TEXT_SIZE:
                z = m7322o(commandToUi);
                m7285a(z);
                return;
            case SET_FW_ENABLE:
            case SET_FW_VISIBLE:
                z = m7324p(commandToUi);
                m7285a(z);
                return;
            case GET_FW_ENABLE:
            case GET_FW_TEXT_COLOR:
            case GET_FW_VISIBLE:
                z = m7325q(commandToUi);
                m7285a(z);
                return;
            case FW_SET_LEFT:
                String controlId9 = commandToUi.getControlId();
                if (this.f6221f.get(controlId9) != null) {
                    this.f6219d[this.f6221f.get(controlId9).intValue()].setFloatLeft(commandToUi.getIntParam());
                } else {
                    String str5 = this.f6223h.get(controlId9);
                    if (str5 != null && (m7381a2 = this.f6219d[this.f6221f.get(str5).intValue()].m7381a(controlId9)) != null) {
                        if (this.f6222g.get(controlId9) == EnumC1635m.BUTTON || this.f6222g.get(controlId9) == EnumC1635m.TEXT_VIEW || this.f6222g.get(controlId9) == EnumC1635m.IMAGE_VIEW) {
                            new StringBuilder("view.setX ").append(commandToUi.getIntParam());
                            m7381a2.setX(commandToUi.getIntParam());
                        }
                    }
                    z = false;
                }
                m7285a(z);
                return;
            case FW_SET_TOP:
                z = m7327s(commandToUi);
                m7285a(z);
                return;
            case FW_SET_WIDTH:
                z = m7328t(commandToUi);
                m7285a(z);
                return;
            case FW_SET_HEIGHT:
                z = m7329u(commandToUi);
                m7285a(z);
                return;
            case FW_SET_TEXT:
                z = m7330v(commandToUi);
                m7285a(z);
                return;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) view.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        MqRunner.getInstance().mo7723b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) adapterView.getTag()).setEventArgs(String.valueOf(i)).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
