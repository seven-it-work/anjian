package com.cyjh.mobileanjian.ipc.p106ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
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
import com.cyjh.mqsdk.C1696R;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;

/* renamed from: com.cyjh.mobileanjian.ipc.ui.g */
/* loaded from: classes.dex */
public final class C1629g {

    /* renamed from: a */
    LayoutInflater f6211a;

    /* renamed from: b */
    private Context f6212b;

    private C1629g(Context context) {
        this.f6212b = context;
        this.f6211a = LayoutInflater.from(this.f6212b);
    }

    /* renamed from: a */
    private int m7250a(float f) {
        return (int) ((this.f6212b.getResources().getDisplayMetrics().density * f) + 0.5d);
    }

    /* renamed from: a */
    private int m7251a(int i) {
        return (int) (i * (this.f6212b.getResources().getDisplayMetrics().densityDpi / 160.0f));
    }

    /* renamed from: a */
    private LinearLayout.LayoutParams m7252a(int i, int i2) {
        return m7259b(i, i2);
    }

    /* renamed from: a */
    private LinearLayout m7253a(int i, String str) {
        LinearLayout linearLayout = (LinearLayout) this.f6211a.inflate(C1696R.layout.ui_show_tab_layout, (ViewGroup) null);
        linearLayout.setId(i);
        linearLayout.setTag(str);
        return linearLayout;
    }

    /* renamed from: a */
    private TextView m7254a(String str, String str2) {
        return m7270a(str, str2, -2, -2);
    }

    /* renamed from: a */
    public static C1629g m7255a(Context context) {
        return new C1629g(context);
    }

    /* renamed from: a */
    private C1633k m7256a(String str) {
        return m7272a(str, -1, -2);
    }

    /* renamed from: b */
    private int m7257b(float f) {
        return (int) ((f / this.f6212b.getResources().getDisplayMetrics().density) + 0.5d);
    }

    /* renamed from: b */
    private Button m7258b(String str, String str2) {
        return m7273b(str, str2, -2, -2);
    }

    /* renamed from: b */
    private LinearLayout.LayoutParams m7259b(int i, int i2) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        layoutParams.setMargins(0, 0, m7251a(8), 0);
        return layoutParams;
    }

    /* renamed from: c */
    private EditText m7260c(String str, String str2) {
        return m7277d(str, str2, -2, -2);
    }

    /* renamed from: e */
    private TextView m7261e(String str, String str2, int i, int i2) {
        TextView textView = (TextView) this.f6211a.inflate(C1696R.layout.ui_show_text_view, (ViewGroup) null);
        textView.setTag(str);
        textView.setText(str2);
        textView.setLayoutParams(m7259b(i, i2));
        return textView;
    }

    /* renamed from: f */
    private TextView m7262f(String str, String str2, int i, int i2) {
        TextView textView = (TextView) this.f6211a.inflate(C1696R.layout.ui_float_text_view, (ViewGroup) null);
        textView.setTag(str);
        textView.setText(str2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    /* renamed from: g */
    private Button m7263g(String str, String str2, int i, int i2) {
        Button button = (Button) this.f6211a.inflate(C1696R.layout.ui_show_button, (ViewGroup) null);
        button.setTag(str);
        button.setText(str2);
        button.setAllCaps(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, 0, m7251a(8), 0);
        button.setLayoutParams(layoutParams);
        button.setBackgroundResource(C1696R.drawable.bg_default_button);
        return button;
    }

    /* renamed from: h */
    private Button m7264h(String str, String str2, int i, int i2) {
        Button button = (Button) this.f6211a.inflate(C1696R.layout.ui_float_button, (ViewGroup) null);
        button.setTag(str);
        button.setText(str2);
        button.setAllCaps(false);
        button.setLayoutParams((i == 0 && i2 == 0) ? new RelativeLayout.LayoutParams(-1, 100) : new RelativeLayout.LayoutParams(i, i2));
        return button;
    }

    /* renamed from: a */
    public final WebView m7265a(String str, int i, int i2, String str2) {
        if (!str2.startsWith("http://") && !str2.startsWith("https://")) {
            str2 = "http://" + str2;
        }
        WebView webView = new WebView(this.f6212b);
        webView.setTag(str);
        webView.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(str2);
        webView.setWebViewClient(new WebViewClient() { // from class: com.cyjh.mobileanjian.ipc.ui.g.1
            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str3) {
                webView2.loadUrl(str3);
                return true;
            }
        });
        return webView;
    }

    /* renamed from: a */
    public final CheckBox m7266a(String str, String str2, int i, int i2, boolean z) {
        CheckBox checkBox = (CheckBox) LayoutInflater.from(this.f6212b).inflate(C1696R.layout.ui_show_checkbox, (ViewGroup) null);
        checkBox.setTag(str);
        checkBox.setText(str2);
        checkBox.setChecked(z);
        checkBox.setLayoutParams(m7259b(i, i2));
        checkBox.setPadding(0, 0, 0, 0);
        return checkBox;
    }

    /* renamed from: a */
    public final ImageView m7267a(int i, String str, int i2, int i3, String str2) {
        ImageView imageView = new ImageView(this.f6212b);
        imageView.setId(i);
        imageView.setTag(str);
        imageView.setLayoutParams(m7259b(i2, i3));
        imageView.setImageURI(Uri.fromFile(new File(str2)));
        return imageView;
    }

    /* renamed from: a */
    public final RadioGroup m7268a(String str, List<String> list, int i, int i2, int i3) {
        RadioGroup radioGroup = new RadioGroup(this.f6212b);
        radioGroup.setTag(str);
        radioGroup.setLayoutParams(m7259b(i2, i3));
        for (int i4 = 0; i4 < list.size(); i4++) {
            RadioButton radioButton = (RadioButton) this.f6211a.inflate(C1696R.layout.ui_show_radio_button, (ViewGroup) null);
            radioButton.setId(i4);
            radioButton.setText(list.get(i4));
            radioButton.setLayoutParams(m7259b(-2, -2));
            radioButton.setPadding(0, m7251a(5), 0, m7251a(5));
            radioGroup.addView(radioButton);
            if (i4 >= 100) {
                break;
            }
        }
        radioGroup.clearCheck();
        radioGroup.check(i < radioGroup.getChildCount() ? i : 0);
        return radioGroup;
    }

    /* renamed from: a */
    public final Spinner m7269a(String str, List<String> list, int i) {
        Spinner spinner = (Spinner) this.f6211a.inflate(C1696R.layout.ui_show_spinner, (ViewGroup) null);
        spinner.setTag(str);
        spinner.setLayoutParams(m7259b(-2, -2));
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.f6212b, C1696R.layout.ui_show_spinner_dropdown_item, list);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        if (i >= arrayAdapter.getCount()) {
            i = 0;
        }
        spinner.setSelection(i);
        return spinner;
    }

    /* renamed from: a */
    public final TextView m7270a(String str, String str2, int i, int i2) {
        TextView textView = (TextView) this.f6211a.inflate(C1696R.layout.ui_show_text_view, (ViewGroup) null);
        textView.setTag(str);
        textView.setText(str2);
        textView.setLayoutParams(m7259b(i, i2));
        return textView;
    }

    /* renamed from: a */
    public final C1632j m7271a(String str, int i, int i2, int i3, int i4) {
        return new C1632j(this.f6212b, str, i, i2, i3, i4);
    }

    /* renamed from: a */
    public final C1633k m7272a(String str, int i, int i2) {
        return new C1633k(this.f6212b, str, i, i2);
    }

    /* renamed from: b */
    public final Button m7273b(String str, String str2, int i, int i2) {
        Button button = (Button) this.f6211a.inflate(C1696R.layout.ui_show_button, (ViewGroup) null);
        button.setTag(str);
        button.setText(str2);
        button.setAllCaps(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, 0, m7251a(8), 0);
        button.setLayoutParams(layoutParams);
        button.setBackgroundResource(C1696R.drawable.bg_default_button);
        return button;
    }

    /* renamed from: b */
    public final LinearLayout m7274b(String str, int i, int i2) {
        LinearLayout linearLayout = new LinearLayout(this.f6212b);
        linearLayout.setTag(str);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-16777216);
        if (i == -1) {
            i = 3000;
        }
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        return linearLayout;
    }

    /* renamed from: c */
    public final ImageView m7275c(String str, String str2, int i, int i2) {
        Bitmap bitmap;
        ImageView imageView = (ImageView) this.f6211a.inflate(C1696R.layout.ui_show_image_view, (ViewGroup) null);
        imageView.setTag(str);
        try {
            bitmap = BitmapFactory.decodeStream(new FileInputStream(str2));
        } catch (Exception e) {
            e.printStackTrace();
            bitmap = null;
        }
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i != -2 && i2 != -2) {
            layoutParams.width = i;
            layoutParams.height = i2;
        }
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    /* renamed from: c */
    public final LinearLayout m7276c(String str, int i, int i2) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.f6212b).inflate(C1696R.layout.ui_show_row, (ViewGroup) null);
        linearLayout.setOrientation(0);
        linearLayout.setTag(str);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(i, i2));
        return linearLayout;
    }

    /* renamed from: d */
    public final EditText m7277d(String str, String str2, int i, int i2) {
        EditText editText = (EditText) this.f6211a.inflate(C1696R.layout.ui_show_edit_text, (ViewGroup) null);
        editText.setTag(str);
        editText.setText(str2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(0, 0, m7251a(8), 0);
        editText.setLayoutParams(layoutParams);
        editText.setBackgroundResource(C1696R.drawable.bg_edit_text);
        return editText;
    }
}
