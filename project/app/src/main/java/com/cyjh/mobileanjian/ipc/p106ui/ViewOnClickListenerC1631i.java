package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
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
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.cyjh.event.C1451c;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.cyjh.mobileanjian.ipc.utils.C1649c;
import com.cyjh.mobileanjian.ipc.view.ExToast;
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

/* renamed from: com.cyjh.mobileanjian.ipc.ui.i */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1631i implements View.OnClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: g */
    private static final String f6239g = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})";

    /* renamed from: h */
    private static final int f6240h = 32;

    /* renamed from: c */
    public C1629g f6243c;

    /* renamed from: i */
    private Context f6247i;

    /* renamed from: a */
    public C1633k[] f6241a = new C1633k[32];

    /* renamed from: b */
    public int f6242b = 0;

    /* renamed from: d */
    public HashMap<String, Integer> f6244d = new HashMap<>();

    /* renamed from: e */
    public HashMap[] f6245e = new HashMap[32];

    /* renamed from: f */
    public int f6246f = 1;

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.i$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String f6248a;

        public AnonymousClass1(String str) {
            this.f6248a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6248a).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
        }
    }

    /* renamed from: com.cyjh.mobileanjian.ipc.ui.i$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String f6250a;

        public AnonymousClass2(String str) {
            this.f6250a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            UiMessage.UiToCommand build = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6250a).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_EXIT).build()).setIsSuccess(true).build();
            C1451c.m6688b(build.toByteString());
            new StringBuilder("exit event: ").append(build);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.cyjh.mobileanjian.ipc.ui.i$a */
    /* loaded from: classes.dex */
    public class a implements TextWatcher {

        /* renamed from: b */
        private String f6255b;

        public a(String str) {
            this.f6255b = str;
        }

        /* renamed from: a */
        private String m7367a() {
            return this.f6255b;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(this.f6255b).setType(UiMessage.ControlEvent.Event_Type.ON_CHANGE).build()).setIsSuccess(true).build().toByteString());
            ViewOnClickListenerC1631i.this.f6241a[ViewOnClickListenerC1631i.this.f6242b].m7409b();
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ViewOnClickListenerC1631i(Context context) {
        this.f6247i = context;
        this.f6243c = C1629g.m7255a(context);
    }

    /* renamed from: a */
    private void m7334a(String str, int i, int i2) {
        this.f6242b++;
        this.f6241a[this.f6242b] = this.f6243c.m7272a(str, i, i2);
        this.f6244d.put(str, Integer.valueOf(this.f6242b));
        this.f6245e[this.f6242b] = new HashMap();
        this.f6241a[this.f6242b].f6294b = new AnonymousClass1(str);
        this.f6241a[this.f6242b].f6293a = new AnonymousClass2(str);
    }

    /* renamed from: a */
    public static void m7335a(boolean z) {
        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(z).build().toByteString());
    }

    /* renamed from: a */
    private boolean m7336a(String str, String str2) {
        if (this.f6244d.get(str) == null) {
            m7357a(C1696R.string.ui_show_not_found_ui, str);
            return false;
        }
        this.f6241a[this.f6244d.get(str).intValue()].m7404a(str2);
        return true;
    }

    /* renamed from: c */
    public static void m7339c(String str) {
        C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
    }

    /* renamed from: d */
    private void m7340d() {
        m7363c();
        this.f6242b = 0;
        this.f6246f = 1;
        for (int i = 0; i < 32; i++) {
            this.f6241a[i] = null;
            if (this.f6245e[i] != null) {
                this.f6245e[i].clear();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:151:0x0408. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x001e. Please report as an issue. */
    /* renamed from: d */
    private void m7341d(UiMessage.CommandToUi commandToUi) {
        C1633k c1633k;
        View view;
        CharSequence text;
        String charSequence;
        TextPaint paint;
        String controlId = commandToUi.getControlId();
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
                m7358a(commandToUi.getPath());
                m7335a(z);
                return;
            case LOAD_PROFILE:
                m7362b(commandToUi.getPath());
                m7335a(z);
                return;
            case NEW_LAYOUT:
                int width = commandToUi.getWidth();
                int height = commandToUi.getHeight();
                this.f6242b++;
                this.f6241a[this.f6242b] = this.f6243c.m7272a(controlId, width, height);
                this.f6244d.put(controlId, Integer.valueOf(this.f6242b));
                this.f6245e[this.f6242b] = new HashMap();
                this.f6241a[this.f6242b].f6294b = new AnonymousClass1(controlId);
                this.f6241a[this.f6242b].f6293a = new AnonymousClass2(controlId);
                m7335a(z);
                return;
            case SHOW_LAYOUT:
                if (this.f6244d.get(controlId) == null) {
                    m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                    m7335a(false);
                    return;
                } else {
                    if (this.f6241a[this.f6244d.get(controlId).intValue()].f6295c) {
                        m7335a(false);
                        return;
                    }
                    this.f6241a[this.f6244d.get(controlId).intValue()].m7412c();
                    m7335a(true);
                    C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
                    return;
                }
            case CLOSE_LAYOUT:
                C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(controlId).setType(UiMessage.ControlEvent.Event_Type.ON_CLOSE_CONTINUE).build()).build().toByteString());
                m7335a(z);
                return;
            case CLOSE_CONTINUE_ACK:
                z = m7365d(controlId);
                m7335a(z);
                return;
            case CLOSE_EXIT_ACK:
                m7363c();
                m7335a(z);
                return;
            case NEW_ROW:
                if (this.f6241a[this.f6242b] != null) {
                    C1633k c1633k2 = this.f6241a[this.f6242b];
                    m7356a();
                    c1633k2.m7406a(controlId, commandToUi.getParentId(), commandToUi.getWidth(), commandToUi.getHeight());
                }
                m7335a(z);
                return;
            case SET_TITLE_TEXT:
                String text2 = commandToUi.getText();
                if (this.f6244d.get(controlId) == null) {
                    m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                    z = false;
                } else {
                    this.f6241a[this.f6244d.get(controlId).intValue()].m7404a(text2);
                }
                m7335a(z);
                return;
            case GET_TITLE_TEXT:
                if (this.f6244d.get(controlId) != null) {
                    C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.f6241a[this.f6244d.get(controlId).intValue()].m7399a()).build()).build().toByteString());
                    return;
                } else {
                    m7357a(C1696R.string.ui_show_not_found_ui, controlId);
                    m7335a(false);
                    return;
                }
            case SET_TITLE_BACKCOLOR:
                String controlId2 = commandToUi.getControlId();
                String color = commandToUi.getColor();
                if (this.f6244d.get(controlId2) == null) {
                    m7357a(C1696R.string.ui_show_not_found_ui, controlId2);
                    m7335a(false);
                    return;
                }
                if (!color.matches(f6239g)) {
                    m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7335a(false);
                    return;
                }
                if (!color.startsWith("#")) {
                    color = "#" + color;
                }
                this.f6241a[this.f6244d.get(controlId2).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
                m7335a(true);
                return;
            case ADD_LINE:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g = this.f6243c;
                    m7356a();
                    View m7274b = c1629g.m7274b(controlId, commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.LINE);
                    view = m7274b;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_TEXT_VIEW:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g2 = this.f6243c;
                    m7356a();
                    View m7270a = c1629g2.m7270a(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.TEXT_VIEW);
                    view = m7270a;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_EDIT_TEXT:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g3 = this.f6243c;
                    m7356a();
                    EditText m7277d = c1629g3.m7277d(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.EDIT_TEXT);
                    this.f6241a[this.f6242b].m7403a(m7277d, commandToUi.getParentId());
                    m7277d.addTextChangedListener(new a(controlId));
                }
                m7335a(z);
                return;
            case ADD_BUTTON:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g4 = this.f6243c;
                    m7356a();
                    Button m7273b = c1629g4.m7273b(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.BUTTON);
                    m7273b.setOnClickListener(this);
                    view = m7273b;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_RADIO_GROUP:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g5 = this.f6243c;
                    m7356a();
                    View m7268a = c1629g5.m7268a(controlId, commandToUi.getItemTextList(), commandToUi.getDefaultItemIndex(), commandToUi.getWidth(), commandToUi.getHeight());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.RADIIO_GROUP);
                    view = m7268a;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_CHECK_BOX:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g6 = this.f6243c;
                    m7356a();
                    View m7266a = c1629g6.m7266a(controlId, commandToUi.getText(), commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getDefaultCheckStatus());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.CHECK_BOX);
                    view = m7266a;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_IMAGE_VIEW:
                if (this.f6241a[this.f6242b] != null) {
                    ImageView m7267a = this.f6243c.m7267a(m7356a(), controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getPath());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.IMAGE_VIEW);
                    m7267a.setOnClickListener(this);
                    view = m7267a;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_WEB_VIEW:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g7 = this.f6243c;
                    m7356a();
                    View m7265a = c1629g7.m7265a(controlId, commandToUi.getWidth(), commandToUi.getHeight(), commandToUi.getUrl());
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.WEB_VIEW);
                    view = m7265a;
                    c1633k = this.f6241a[this.f6242b];
                    c1633k.m7403a(view, commandToUi.getParentId());
                }
                m7335a(z);
                return;
            case ADD_SPINNER:
                if (this.f6241a[this.f6242b] != null) {
                    C1629g c1629g8 = this.f6243c;
                    m7356a();
                    List<String> itemTextList = commandToUi.getItemTextList();
                    int defaultItemIndex = commandToUi.getDefaultItemIndex();
                    commandToUi.getWidth();
                    commandToUi.getHeight();
                    Spinner m7269a = c1629g8.m7269a(controlId, itemTextList, defaultItemIndex);
                    this.f6245e[this.f6242b].put(controlId, EnumC1635m.SPINNER);
                    this.f6241a[this.f6242b].m7403a(m7269a, commandToUi.getParentId());
                    m7269a.setOnItemSelectedListener(this);
                }
                m7335a(z);
                return;
            case ADD_TAB_HOST:
                if (this.f6241a[this.f6242b] != null) {
                    this.f6241a[this.f6242b].m7405a(commandToUi.getControlId(), commandToUi.getHeight());
                }
                m7335a(z);
                return;
            case ADD_TAB:
                if (this.f6241a[this.f6242b] != null) {
                    z = this.f6241a[this.f6242b].m7407a(m7356a(), commandToUi.getControlId(), commandToUi.getParentId(), commandToUi.getText());
                }
                m7335a(z);
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
                z = m7359a(commandToUi);
                m7335a(z);
                return;
            case SET_FULLSCREEN:
                if (this.f6244d.get(controlId) != null) {
                    m7335a(true);
                } else if (this.f6245e[this.f6242b].get(controlId) == null) {
                    m7335a(false);
                } else {
                    View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
                    layoutParams.width = -1;
                    m7408b.setLayoutParams(layoutParams);
                }
                m7335a(z);
                return;
            case SET_TEXT:
                m7364c(commandToUi);
                return;
            case SET_FONT:
                m7361b(commandToUi);
                return;
            case SET_EDIT_INPUT_TYPE:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                String controlId3 = commandToUi.getControlId();
                commandToUi.getText();
                View m7408b2 = this.f6241a[this.f6242b].m7408b(controlId3);
                if (m7408b2 == null) {
                    m7335a(false);
                    return;
                } else if (this.f6245e[this.f6242b].get(controlId3) != EnumC1635m.EDIT_TEXT) {
                    m7335a(false);
                    return;
                } else {
                    ((EditText) m7408b2).setInputType(commandToUi.getEditInputType());
                    m7335a(true);
                    return;
                }
            case GET_TEXT:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                String controlId4 = commandToUi.getControlId();
                if (this.f6245e[this.f6242b].get(controlId4) == null) {
                    m7335a(false);
                    return;
                }
                switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId4)) {
                    case TEXT_VIEW:
                    case EDIT_TEXT:
                    case BUTTON:
                        text = ((TextView) this.f6241a[this.f6242b].m7408b(controlId4)).getText();
                        charSequence = text.toString();
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case CHECK_BOX:
                        text = ((CheckBox) this.f6241a[this.f6242b].m7408b(controlId4)).getText();
                        charSequence = text.toString();
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case RADIIO_GROUP:
                        RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6241a[this.f6242b].m7408b(controlId4)).findViewById(commandToUi.getItemIndex());
                        if (radioButton == null) {
                            m7335a(false);
                            return;
                        }
                        text = radioButton.getText();
                        charSequence = text.toString();
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    case SPINNER:
                        Spinner spinner = (Spinner) this.f6241a[this.f6242b].m7408b(controlId4);
                        if (commandToUi.getItemIndex() >= spinner.getCount()) {
                            m7335a(false);
                            return;
                        }
                        new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                        charSequence = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId4).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                        return;
                    default:
                        m7335a(false);
                        return;
                }
            case SET_TEXTCOLOR:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                String controlId5 = commandToUi.getControlId();
                String color2 = commandToUi.getColor();
                if (!color2.matches(f6239g)) {
                    m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7335a(false);
                    return;
                }
                if (!color2.startsWith("#")) {
                    color2 = "#" + color2;
                }
                int m7479a = C1649c.m7479a(Color.parseColor(color2));
                if (this.f6244d.get(controlId5) != null) {
                    this.f6241a[this.f6244d.get(controlId5).intValue()].m7400a(m7479a);
                } else {
                    View m7408b3 = this.f6241a[this.f6242b].m7408b(controlId5);
                    if (m7408b3 == null) {
                        m7335a(false);
                        return;
                    }
                    switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId5)) {
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
                                m7335a(false);
                                return;
                            }
                        case SPINNER:
                            if (commandToUi.getItemIndex() >= ((Spinner) m7408b3).getCount()) {
                                m7335a(false);
                                return;
                            }
                            break;
                        default:
                            m7335a(false);
                            return;
                    }
                }
                m7335a(true);
                return;
            case SET_BACKCOLOR:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                String controlId6 = commandToUi.getControlId();
                View m7408b4 = this.f6241a[this.f6242b].m7408b(controlId6);
                if (m7408b4 == null) {
                    m7335a(false);
                    return;
                }
                String color3 = commandToUi.getColor();
                if (!color3.matches(f6239g)) {
                    m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
                    m7335a(false);
                    return;
                }
                if (!color3.startsWith("#")) {
                    color3 = "#" + color3;
                }
                int m7479a2 = C1649c.m7479a(Color.parseColor(color3));
                if (this.f6245e[this.f6242b].get(controlId6) != EnumC1635m.BUTTON) {
                    if (this.f6245e[this.f6242b].get(controlId6) != EnumC1635m.SPINNER) {
                        m7408b4.setBackgroundColor(m7479a2);
                    }
                    m7335a(true);
                    return;
                }
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(m7479a2);
                gradientDrawable.setCornerRadius(m7360b());
                if (Build.VERSION.SDK_INT >= 16) {
                    m7408b4.setBackground(gradientDrawable);
                } else {
                    m7408b4.setBackgroundDrawable(gradientDrawable);
                }
                m7335a(true);
                return;
            case GET_VALUE:
                m7366e(controlId);
                return;
            case GET_ENABLED:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                View m7408b5 = this.f6241a[this.f6242b].m7408b(controlId);
                if (m7408b5 == null) {
                    m7335a(false);
                    return;
                }
                boolean isEnabled = m7408b5.isEnabled();
                if (this.f6245e[this.f6242b].get(controlId) == EnumC1635m.EDIT_TEXT) {
                    isEnabled = ((EditText) m7408b5).isFocusable();
                }
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
                return;
            case GET_VISIBLE:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                View m7408b6 = this.f6241a[this.f6242b].m7408b(controlId);
                if (m7408b6 == null) {
                    m7335a(false);
                    return;
                }
                int visibility = m7408b6.getVisibility();
                if (visibility != 0) {
                    if (visibility != 4) {
                        if (visibility == 8) {
                            i = 3;
                        }
                    }
                    C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                    return;
                }
                i = 1;
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
                return;
            case GET_TEXTCOLOR:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                String controlId7 = commandToUi.getControlId();
                if (this.f6245e[this.f6242b].get(controlId7) == null) {
                    m7335a(false);
                    return;
                }
                switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId7)) {
                    case TEXT_VIEW:
                    case EDIT_TEXT:
                    case BUTTON:
                        paint = ((TextView) this.f6241a[this.f6242b].m7408b(controlId7)).getPaint();
                        break;
                    case CHECK_BOX:
                        paint = ((CheckBox) this.f6241a[this.f6242b].m7408b(controlId7)).getPaint();
                        break;
                    case RADIIO_GROUP:
                        RadioButton radioButton3 = (RadioButton) ((RadioGroup) this.f6241a[this.f6242b].m7408b(controlId7)).findViewById(commandToUi.getItemIndex());
                        if (radioButton3 != null) {
                            paint = radioButton3.getPaint();
                            break;
                        } else {
                            m7335a(false);
                            return;
                        }
                    default:
                        m7335a(false);
                        return;
                }
                int color4 = paint.getColor();
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId7).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color4)), Integer.valueOf(Color.green(color4)), Integer.valueOf(Color.red(color4)))).build()).build().toByteString());
                return;
            case GET_BACKCOLOR:
            case SET_WINDOW_GRAVITY:
            default:
                m7335a(z);
                return;
            case SET_CONTROL_GRAVITY:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                View m7408b7 = this.f6241a[this.f6242b].m7408b(commandToUi.getControlId());
                if (m7408b7 == null) {
                    m7335a(false);
                    return;
                }
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m7408b7.getLayoutParams();
                layoutParams2.gravity = commandToUi.getAlignType();
                m7408b7.setLayoutParams(layoutParams2);
                new StringBuilder("set gravity ok; ").append(layoutParams2);
                m7335a(true);
                return;
            case SET_PADDING:
                if (this.f6241a[this.f6242b] == null) {
                    m7335a(false);
                    return;
                }
                View m7408b8 = this.f6241a[this.f6242b].m7408b(commandToUi.getControlId());
                if (m7408b8 == null) {
                    m7335a(false);
                    return;
                }
                UiMessage.Padding_Var padding = commandToUi.getPadding();
                new StringBuilder("padding: ").append(padding.getLeft());
                new StringBuilder("padding: ").append(padding.getTop());
                new StringBuilder("padding: ").append(padding.getRight());
                new StringBuilder("padding: ").append(padding.getBottom());
                m7408b8.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
                m7335a(true);
                return;
        }
    }

    /* renamed from: e */
    private void m7342e(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        commandToUi.getText();
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7335a(false);
        } else if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.EDIT_TEXT) {
            m7335a(false);
        } else {
            ((EditText) m7408b).setInputType(commandToUi.getEditInputType());
            m7335a(true);
        }
    }

    /* renamed from: f */
    private void m7343f(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (!color.matches(f6239g)) {
            m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7335a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(color));
        if (this.f6244d.get(controlId) != null) {
            this.f6241a[this.f6244d.get(controlId).intValue()].m7400a(m7479a);
            m7335a(true);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId)) {
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
                    m7335a(false);
                    return;
                }
            case SPINNER:
                if (commandToUi.getItemIndex() >= ((Spinner) m7408b).getCount()) {
                    m7335a(false);
                    return;
                }
                break;
            default:
                m7335a(false);
                return;
        }
        m7335a(true);
    }

    /* renamed from: f */
    private void m7344f(String str) {
        if (this.f6244d.get(str) != null) {
            m7335a(true);
            return;
        }
        if (this.f6245e[this.f6242b].get(str) == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(str);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
        layoutParams.width = -1;
        m7408b.setLayoutParams(layoutParams);
    }

    /* renamed from: g */
    private void m7345g(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        String color = commandToUi.getColor();
        if (!color.matches(f6239g)) {
            m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7335a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        int m7479a = C1649c.m7479a(Color.parseColor(color));
        if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.BUTTON) {
            if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.SPINNER) {
                m7408b.setBackgroundColor(m7479a);
            }
            m7335a(true);
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(m7479a);
        gradientDrawable.setCornerRadius(m7360b());
        if (Build.VERSION.SDK_INT >= 16) {
            m7408b.setBackground(gradientDrawable);
        } else {
            m7408b.setBackgroundDrawable(gradientDrawable);
        }
        m7335a(true);
    }

    /* renamed from: g */
    private void m7346g(String str) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(str);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        boolean isEnabled = m7408b.isEnabled();
        if (this.f6245e[this.f6242b].get(str) == EnumC1635m.EDIT_TEXT) {
            isEnabled = ((EditText) m7408b).isFocusable();
        }
        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(isEnabled).build()).build().toByteString());
    }

    /* renamed from: h */
    private void m7347h(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(commandToUi.getControlId());
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m7408b.getLayoutParams();
        layoutParams.gravity = commandToUi.getAlignType();
        m7408b.setLayoutParams(layoutParams);
        new StringBuilder("set gravity ok; ").append(layoutParams);
        m7335a(true);
    }

    /* renamed from: h */
    private void m7348h(String str) {
        int i;
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(str);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        int visibility = m7408b.getVisibility();
        if (visibility != 0) {
            if (visibility == 4) {
                i = 2;
            } else if (visibility == 8) {
                i = 3;
            }
            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
        }
        i = 1;
        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.INT).setIntValue(i).build()).build().toByteString());
    }

    /* renamed from: i */
    private void m7349i(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(commandToUi.getControlId());
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        UiMessage.Padding_Var padding = commandToUi.getPadding();
        new StringBuilder("padding: ").append(padding.getLeft());
        new StringBuilder("padding: ").append(padding.getTop());
        new StringBuilder("padding: ").append(padding.getRight());
        new StringBuilder("padding: ").append(padding.getBottom());
        m7408b.setPadding(padding.getLeft(), padding.getTop(), padding.getRight(), padding.getBottom());
        m7335a(true);
    }

    /* renamed from: i */
    private void m7350i(String str) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(str);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue("#" + Integer.toHexString(C1649c.m7479a(m7408b.getSolidColor()) & ViewCompat.MEASURED_SIZE_MASK)).build()).build().toByteString());
    }

    /* renamed from: j */
    private void m7351j(UiMessage.CommandToUi commandToUi) {
        TextPaint paint;
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        if (this.f6245e[this.f6242b].get(controlId) == null) {
            m7335a(false);
            return;
        }
        switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                paint = ((TextView) this.f6241a[this.f6242b].m7408b(controlId)).getPaint();
                break;
            case CHECK_BOX:
                paint = ((CheckBox) this.f6241a[this.f6242b].m7408b(controlId)).getPaint();
                break;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6241a[this.f6242b].m7408b(controlId)).findViewById(commandToUi.getItemIndex());
                if (radioButton != null) {
                    paint = radioButton.getPaint();
                    break;
                } else {
                    m7335a(false);
                    return;
                }
            default:
                m7335a(false);
                return;
        }
        int color = paint.getColor();
        C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(String.format("%02X%02X%02X", Integer.valueOf(Color.blue(color)), Integer.valueOf(Color.green(color)), Integer.valueOf(Color.red(color)))).build()).build().toByteString());
    }

    /* renamed from: j */
    private void m7352j(String str) {
        if (this.f6244d.get(str) == null) {
            m7357a(C1696R.string.ui_show_not_found_ui, str);
            m7335a(false);
        } else {
            if (this.f6241a[this.f6244d.get(str).intValue()].f6295c) {
                m7335a(false);
                return;
            }
            this.f6241a[this.f6244d.get(str).intValue()].m7412c();
            m7335a(true);
            C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setIsSuccess(true).setEvent(UiMessage.ControlEvent.newBuilder().setControlId(str).setType(UiMessage.ControlEvent.Event_Type.ON_SHOW).build()).build().toByteString());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0035. Please report as an issue. */
    /* renamed from: k */
    private void m7353k(UiMessage.CommandToUi commandToUi) {
        CharSequence text;
        String charSequence;
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        if (this.f6245e[this.f6242b].get(controlId) == null) {
            m7335a(false);
            return;
        }
        switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId)) {
            case TEXT_VIEW:
            case EDIT_TEXT:
            case BUTTON:
                text = ((TextView) this.f6241a[this.f6242b].m7408b(controlId)).getText();
                charSequence = text.toString();
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case CHECK_BOX:
                text = ((CheckBox) this.f6241a[this.f6242b].m7408b(controlId)).getText();
                charSequence = text.toString();
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case RADIIO_GROUP:
                RadioButton radioButton = (RadioButton) ((RadioGroup) this.f6241a[this.f6242b].m7408b(controlId)).findViewById(commandToUi.getItemIndex());
                if (radioButton == null) {
                    m7335a(false);
                    return;
                }
                text = radioButton.getText();
                charSequence = text.toString();
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            case SPINNER:
                Spinner spinner = (Spinner) this.f6241a[this.f6242b].m7408b(controlId);
                if (commandToUi.getItemIndex() >= spinner.getCount()) {
                    m7335a(false);
                    return;
                }
                new StringBuilder("Spinner Get pos: ").append(spinner.getItemAtPosition(commandToUi.getItemIndex()));
                charSequence = (String) spinner.getItemAtPosition(commandToUi.getItemIndex());
                C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(controlId).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(charSequence).build()).build().toByteString());
                return;
            default:
                m7335a(false);
                return;
        }
    }

    /* renamed from: k */
    private void m7354k(String str) {
        if (this.f6244d.get(str) != null) {
            C1451c.m6686a(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true).addVarTable(UiMessage.ControlVar.newBuilder().setControlId(str).setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(this.f6241a[this.f6244d.get(str).intValue()].m7399a()).build()).build().toByteString());
        } else {
            m7357a(C1696R.string.ui_show_not_found_ui, str);
            m7335a(false);
        }
    }

    /* renamed from: l */
    private void m7355l(UiMessage.CommandToUi commandToUi) {
        String controlId = commandToUi.getControlId();
        String color = commandToUi.getColor();
        if (this.f6244d.get(controlId) == null) {
            m7357a(C1696R.string.ui_show_not_found_ui, controlId);
            m7335a(false);
            return;
        }
        if (!color.matches(f6239g)) {
            m7357a(C1696R.string.ui_show_invalid_color_value, new Object[0]);
            m7335a(false);
            return;
        }
        if (!color.startsWith("#")) {
            color = "#" + color;
        }
        this.f6241a[this.f6244d.get(controlId).intValue()].m7410b(C1649c.m7479a(Color.parseColor(color)));
        m7335a(true);
    }

    /* renamed from: a */
    public final int m7356a() {
        int i = this.f6246f + 1;
        this.f6246f = i;
        return i;
    }

    /* renamed from: a */
    public final void m7357a(int i, Object... objArr) {
        ExToast.makeText(this.f6247i, String.format(this.f6247i.getString(i), objArr), (int) ExToast.LENGTH_LONG).show();
    }

    /* renamed from: a */
    public final void m7358a(String str) throws JSONException, IOException {
        if (this.f6241a[this.f6242b] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : this.f6245e[this.f6242b].entrySet()) {
            String str2 = (String) entry.getKey();
            int i = AnonymousClass3.f6253b[((EnumC1635m) entry.getValue()).ordinal()];
            if (i != 2) {
                switch (i) {
                    case 4:
                        jSONObject.put(str2, ((CheckBox) this.f6241a[this.f6242b].m7408b(str2)).isChecked());
                        break;
                    case 5:
                        jSONObject.put(str2, ((RadioGroup) this.f6241a[this.f6242b].m7408b(str2)).getCheckedRadioButtonId());
                        break;
                    case 6:
                        jSONObject.put(str2, ((Spinner) this.f6241a[this.f6242b].m7408b(str2)).getSelectedItemId());
                        break;
                }
            } else {
                jSONObject.put(str2, ((EditText) this.f6241a[this.f6242b].m7408b(str2)).getText().toString());
            }
        }
        FileUtils.writeStringToFile(new File(str), jSONObject.toString());
    }

    /* renamed from: a */
    public final boolean m7359a(UiMessage.CommandToUi commandToUi) {
        int i;
        if (this.f6241a[this.f6242b] == null) {
            return false;
        }
        String controlId = commandToUi.getControlId();
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7357a(C1696R.string.ui_show_not_found_widget, controlId);
            return false;
        }
        switch (commandToUi.getCommand()) {
            case SET_TEXT_VIEW:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.TEXT_VIEW) {
                    return false;
                }
                TextView textView = (TextView) m7408b;
                textView.setText(commandToUi.getText());
                textView.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_EDIT_TEXT:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.EDIT_TEXT) {
                    return false;
                }
                EditText editText = (EditText) m7408b;
                editText.setText(commandToUi.getText());
                editText.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_BOTTON:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.BUTTON) {
                    return false;
                }
                Button button = (Button) m7408b;
                button.setText(commandToUi.getText());
                button.setLayoutParams(new LinearLayout.LayoutParams(commandToUi.getWidth(), commandToUi.getHeight()));
                return true;
            case SET_CHECK_BOX:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.CHECK_BOX) {
                    return false;
                }
                CheckBox checkBox = (CheckBox) m7408b;
                checkBox.setChecked(commandToUi.getDefaultCheckStatus());
                checkBox.setText(commandToUi.getText());
                checkBox.getLayoutParams().width = commandToUi.getWidth();
                checkBox.getLayoutParams().height = commandToUi.getHeight();
                return true;
            case SET_IMAGE_VIEW:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.IMAGE_VIEW) {
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
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.WEB_VIEW) {
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
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.RADIIO_GROUP) {
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
                    RadioButton radioButton = (RadioButton) LayoutInflater.from(this.f6247i).inflate(C1696R.layout.ui_show_radio_button, (ViewGroup) null);
                    radioButton.setId(i2);
                    radioButton.setText(itemTextList.get(i2));
                    radioButton.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    radioButton.setPadding(0, m7360b(), 0, m7360b());
                    radioGroup.addView(radioButton);
                }
                ((RadioButton) radioGroup.findViewById(commandToUi.getDefaultItemIndex() < radioGroup.getChildCount() ? commandToUi.getDefaultItemIndex() : 0)).setChecked(true);
                return true;
            case SET_SPINNER:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.SPINNER) {
                    return false;
                }
                Spinner spinner = (Spinner) m7408b;
                ArrayAdapter arrayAdapter = new ArrayAdapter(this.f6247i, C1696R.layout.ui_show_spinner_dropdown_item, commandToUi.getItemTextList());
                spinner.setAdapter((SpinnerAdapter) arrayAdapter);
                spinner.setSelection(commandToUi.getDefaultItemIndex() < arrayAdapter.getCount() ? commandToUi.getDefaultItemIndex() : 0);
                return true;
            case SET_ENABLED:
                if (this.f6245e[this.f6242b].get(controlId) == EnumC1635m.RADIIO_GROUP) {
                    m7408b.setEnabled(commandToUi.getEnabledStatus());
                    RadioGroup radioGroup2 = (RadioGroup) m7408b;
                    while (r1 < radioGroup2.getChildCount()) {
                        radioGroup2.getChildAt(r1).setEnabled(commandToUi.getEnabledStatus());
                        r1++;
                    }
                    return true;
                }
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.EDIT_TEXT) {
                    m7408b.setEnabled(commandToUi.getEnabledStatus());
                    return true;
                }
                new StringBuilder("set edittext enabled. ").append(commandToUi.getEnabledStatus());
                EditText editText2 = (EditText) m7408b;
                editText2.setFocusable(commandToUi.getEnabledStatus());
                editText2.setFocusableInTouchMode(commandToUi.getEnabledStatus());
                return true;
            case SET_LINE:
                if (this.f6245e[this.f6242b].get(controlId) != EnumC1635m.LINE) {
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

    /* renamed from: b */
    public final int m7360b() {
        return (int) ((this.f6247i.getResources().getDisplayMetrics().densityDpi / 160.0f) * 5.0f);
    }

    /* renamed from: b */
    public final void m7361b(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        new StringBuilder("SET FONT type: ").append(commandToUi.getFontType());
        String controlId = commandToUi.getControlId();
        Typeface create = Typeface.create(commandToUi.getFontType(), 0);
        if (create == null) {
            m7335a(false);
            return;
        }
        int fontSize = commandToUi.getFontSize() < 0 ? 14 : commandToUi.getFontSize();
        if (this.f6244d.get(controlId) != null && this.f6241a[this.f6244d.get(controlId).intValue()] != null) {
            this.f6241a[this.f6244d.get(controlId).intValue()].m7401a(create, fontSize);
            m7335a(true);
            return;
        }
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        if (this.f6245e[this.f6242b].get(controlId) == null) {
            m7335a(false);
            return;
        }
        switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId)) {
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
                m7335a(false);
                return;
        }
        m7335a(true);
    }

    /* renamed from: b */
    public final void m7362b(String str) throws IOException, JSONException {
        if (this.f6245e[this.f6242b] == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject(FileUtils.readFileToString(new File(str)));
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (this.f6245e[this.f6242b].get(next) != null) {
                int i = AnonymousClass3.f6253b[((EnumC1635m) this.f6245e[this.f6242b].get(next)).ordinal()];
                if (i != 2) {
                    switch (i) {
                        case 4:
                            ((CheckBox) this.f6241a[this.f6242b].m7408b(next)).setChecked(jSONObject.getBoolean(next));
                            break;
                        case 5:
                            RadioGroup radioGroup = (RadioGroup) this.f6241a[this.f6242b].m7408b(next);
                            if (jSONObject.getInt(next) >= radioGroup.getChildCount()) {
                                break;
                            } else {
                                ((RadioButton) radioGroup.findViewById(jSONObject.getInt(next))).setChecked(true);
                                break;
                            }
                        case 6:
                            Spinner spinner = (Spinner) this.f6241a[this.f6242b].m7408b(next);
                            if (jSONObject.getInt(next) >= spinner.getCount()) {
                                break;
                            } else {
                                spinner.setSelection(jSONObject.getInt(next));
                                break;
                            }
                    }
                } else {
                    ((EditText) this.f6241a[this.f6242b].m7408b(next)).setText(jSONObject.getString(next));
                }
            }
        }
    }

    /* renamed from: c */
    public final void m7363c() {
        for (int i = 31; i > 0; i--) {
            C1633k c1633k = this.f6241a[i];
            if (c1633k != null && c1633k.f6295c) {
                c1633k.m7414e();
            }
        }
    }

    /* renamed from: c */
    public final void m7364c(UiMessage.CommandToUi commandToUi) {
        if (this.f6241a[this.f6242b] == null) {
            m7335a(false);
            return;
        }
        String controlId = commandToUi.getControlId();
        String text = commandToUi.getText();
        View m7408b = this.f6241a[this.f6242b].m7408b(controlId);
        if (m7408b == null) {
            m7335a(false);
            return;
        }
        if (this.f6245e[this.f6242b].get(controlId) == null) {
            m7335a(false);
            return;
        }
        switch ((EnumC1635m) this.f6245e[this.f6242b].get(controlId)) {
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
                    m7335a(false);
                    return;
                } else {
                    radioButton.setText(text);
                    break;
                }
            case SPINNER:
                Spinner spinner = (Spinner) m7408b;
                if (commandToUi.getItemIndex() >= spinner.getCount()) {
                    m7335a(false);
                    return;
                }
                ArrayAdapter arrayAdapter = (ArrayAdapter) spinner.getAdapter();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < arrayAdapter.getCount(); i++) {
                    arrayList.add(arrayAdapter.getItem(i));
                }
                arrayList.set(commandToUi.getItemIndex(), text);
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(this.f6247i, C1696R.layout.ui_show_spinner_dropdown_item, arrayList);
                spinner.setAdapter((SpinnerAdapter) arrayAdapter2);
                arrayAdapter2.notifyDataSetChanged();
                break;
            default:
                m7335a(false);
                return;
        }
        m7335a(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if (r4.f6244d.get(r5).intValue() == r4.f6242b) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r4.f6242b--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0053, code lost:
    
        if (r4.f6242b <= 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005b, code lost:
    
        if (r4.f6241a[r4.f6242b] != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        if (r4.f6242b >= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        r4.f6242b = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        return true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m7365d(java.lang.String r5) {
        /*
            r4 = this;
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r4.f6244d
            java.lang.Object r0 = r0.get(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L14
            int r0 = com.cyjh.mqsdk.C1696R.string.ui_show_not_found_ui
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r1] = r5
            r4.m7357a(r0, r2)
            return r1
        L14:
            com.cyjh.mobileanjian.ipc.ui.k[] r0 = r4.f6241a
            java.util.HashMap<java.lang.String, java.lang.Integer> r3 = r4.f6244d
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0 = r0[r3]
            boolean r0 = r0.f6295c
            if (r0 != 0) goto L29
            return r1
        L29:
            com.cyjh.mobileanjian.ipc.ui.k[] r0 = r4.f6241a
            java.util.HashMap<java.lang.String, java.lang.Integer> r3 = r4.f6244d
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0 = r0[r3]
            r0.m7414e()
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r4.f6244d
            java.lang.Object r5 = r0.get(r5)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            int r0 = r4.f6242b
            if (r5 != r0) goto L64
        L4c:
            int r5 = r4.f6242b
            int r5 = r5 - r2
            r4.f6242b = r5
            int r5 = r4.f6242b
            if (r5 <= 0) goto L5e
            com.cyjh.mobileanjian.ipc.ui.k[] r5 = r4.f6241a
            int r0 = r4.f6242b
            r5 = r5[r0]
            if (r5 != 0) goto L5e
            goto L4c
        L5e:
            int r5 = r4.f6242b
            if (r5 >= 0) goto L64
            r4.f6242b = r1
        L64:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.mobileanjian.ipc.p106ui.ViewOnClickListenerC1631i.m7365d(java.lang.String):boolean");
    }

    /* renamed from: e */
    public final void m7366e(String str) {
        UiMessage.ControlVar.Builder type;
        int checkedRadioButtonId;
        UiMessage.UiToCommand build;
        UiMessage.UiToCommand.Builder isSuccess = UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.RSP_MSG).setIsSuccess(true);
        UiMessage.ControlVar.Builder controlId = UiMessage.ControlVar.newBuilder().setControlId(str);
        EnumC1635m enumC1635m = null;
        int i = 0;
        while (true) {
            if (i >= 32) {
                i = 0;
                break;
            } else if (this.f6245e[i] != null && (enumC1635m = (EnumC1635m) this.f6245e[i].get(str)) != null) {
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
            m7357a(C1696R.string.ui_show_not_found_widget, str);
            build = isSuccess.setIsSuccess(false).build();
        } else {
            switch (enumC1635m) {
                case TEXT_VIEW:
                case EDIT_TEXT:
                case BUTTON:
                    controlId.setType(UiMessage.ControlVar.Data_Type.STRING).setStringValue(((TextView) this.f6241a[i].m7408b(str)).getText().toString());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case CHECK_BOX:
                    controlId.setType(UiMessage.ControlVar.Data_Type.BOOL).setBoolValue(((CheckBox) this.f6241a[i].m7408b(str)).isChecked());
                    isSuccess.addVarTable(controlId.build());
                    break;
                case RADIIO_GROUP:
                    RadioGroup radioGroup = (RadioGroup) this.f6241a[i].m7408b(str);
                    type = controlId.setType(UiMessage.ControlVar.Data_Type.INT);
                    checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                    type.setIntValue(checkedRadioButtonId);
                    isSuccess.addVarTable(controlId.build());
                    break;
                case SPINNER:
                    Spinner spinner = (Spinner) this.f6241a[i].m7408b(str);
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
            build = isSuccess.build();
        }
        C1451c.m6686a(build.toByteString());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) view.getTag()).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C1451c.m6688b(UiMessage.UiToCommand.newBuilder().setCommand(UiMessage.UiToCommand.Command_Type.EVENT).setEvent(UiMessage.ControlEvent.newBuilder().setControlId((String) adapterView.getTag()).setEventArgs(String.valueOf(i)).setType(UiMessage.ControlEvent.Event_Type.ON_CLICK).build()).setIsSuccess(true).build().toByteString());
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
