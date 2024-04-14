package com.cyjh.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import com.cyjh.common.C1130R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SlCustomInputLayout extends LinearLayout {

    /* renamed from: a */
    int f4380a;

    /* renamed from: b */
    List<String> f4381b;

    /* renamed from: c */
    InterfaceC1219a f4382c;

    /* renamed from: d */
    private int f4383d;

    /* renamed from: e */
    private Context f4384e;

    /* renamed from: f */
    private boolean f4385f;

    /* renamed from: g */
    private int f4386g;

    /* renamed from: h */
    private int f4387h;

    /* renamed from: i */
    private int f4388i;

    /* renamed from: j */
    private int f4389j;

    /* renamed from: k */
    private int f4390k;

    /* renamed from: l */
    private int f4391l;

    /* renamed from: m */
    private int f4392m;

    /* renamed from: n */
    private int f4393n;

    /* renamed from: o */
    private int f4394o;

    /* renamed from: p */
    private int f4395p;

    /* renamed from: q */
    private int f4396q;

    /* renamed from: com.cyjh.common.view.SlCustomInputLayout$1 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC12161 implements View.OnClickListener {
        ViewOnClickListenerC12161() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SlCustomInputLayout.this.setFocusable(true);
            SlCustomInputLayout.this.setFocusableInTouchMode(true);
            SlCustomInputLayout.this.requestFocus();
            ((InputMethodManager) SlCustomInputLayout.this.getContext().getSystemService("input_method")).showSoftInput(SlCustomInputLayout.this, 1);
        }
    }

    /* renamed from: com.cyjh.common.view.SlCustomInputLayout$2 */
    /* loaded from: classes.dex */
    final class ViewOnFocusChangeListenerC12172 implements View.OnFocusChangeListener {
        ViewOnFocusChangeListenerC12172() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (z) {
                PassWordView passWordView = (PassWordView) SlCustomInputLayout.this.getChildAt(SlCustomInputLayout.this.f4380a);
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(SlCustomInputLayout.this.f4385f);
                    passWordView.m5302a();
                    return;
                }
                return;
            }
            PassWordView passWordView2 = (PassWordView) SlCustomInputLayout.this.getChildAt(SlCustomInputLayout.this.f4380a);
            if (passWordView2 != null) {
                passWordView2.setmIsShowRemindLine(false);
                passWordView2.m5303a(false);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.cyjh.common.view.SlCustomInputLayout.SavedState.1
            /* renamed from: a */
            private static SavedState m5329a(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            /* renamed from: a */
            private static SavedState[] m5330a(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        public List<String> f4399a;

        private SavedState(Parcel parcel) {
            super(parcel);
            parcel.readStringList(this.f4399a);
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeList(this.f4399a);
        }
    }

    /* renamed from: com.cyjh.common.view.SlCustomInputLayout$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1219a {
        /* renamed from: a */
        void m5331a();

        /* renamed from: b */
        void m5332b();

        /* renamed from: c */
        void m5333c();
    }

    /* renamed from: com.cyjh.common.view.SlCustomInputLayout$b */
    /* loaded from: classes.dex */
    class ViewOnKeyListenerC1220b implements View.OnKeyListener {
        ViewOnKeyListenerC1220b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00ba, code lost:
        
            if (r5 != null) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00cb, code lost:
        
            r5.setmPassText("");
            r5.m5302a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00c9, code lost:
        
            if (r5 != null) goto L38;
         */
        @Override // android.view.View.OnKeyListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean onKey(android.view.View r4, int r5, android.view.KeyEvent r6) {
            /*
                Method dump skipped, instructions count: 253
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.view.SlCustomInputLayout.ViewOnKeyListenerC1220b.onKey(android.view.View, int, android.view.KeyEvent):boolean");
        }
    }

    /* renamed from: com.cyjh.common.view.SlCustomInputLayout$c */
    /* loaded from: classes.dex */
    private class C1221c extends BaseInputConnection {
        public C1221c(View view) {
            super(view, false);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public final boolean commitText(CharSequence charSequence, int i) {
            return super.commitText(charSequence, i);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public final boolean deleteSurroundingText(int i, int i2) {
            return (i == 1 && i2 == 0) ? sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67)) : super.deleteSurroundingText(i, i2);
        }

        @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
        public final boolean sendKeyEvent(KeyEvent keyEvent) {
            return super.sendKeyEvent(keyEvent);
        }
    }

    public SlCustomInputLayout(Context context) {
        this(context, null);
    }

    public SlCustomInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlCustomInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4383d = 6;
        this.f4380a = 0;
        this.f4384e = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1130R.styleable.PassWordLayoutStyle);
        this.f4386g = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_input_color, C1130R.color.pass_view_rect_input);
        this.f4387h = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_no_input_color, C1130R.color.regi_line_color);
        this.f4388i = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_input_line_color, C1130R.color.pass_view_rect_input);
        this.f4389j = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_text_input_color, C1130R.color.pass_view_rect_input);
        this.f4390k = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_box_draw_type, 0);
        this.f4391l = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_interval_width, 4);
        this.f4383d = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_leng, 6);
        this.f4392m = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_width, 40);
        this.f4393n = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_height, 40);
        this.f4394o = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_inputed_type, 0);
        this.f4395p = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_txt_size, 18);
        this.f4396q = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_box_line_size, 4);
        this.f4385f = obtainStyledAttributes.getBoolean(C1130R.styleable.PassWordLayoutStyle_is_show_input_line, true);
        obtainStyledAttributes.recycle();
        this.f4381b = new ArrayList();
        setOrientation(0);
        setGravity(17);
        setOnClickListener(new ViewOnClickListenerC12161());
        setOnKeyListener(new ViewOnKeyListenerC1220b());
        setOnFocusChangeListener(new ViewOnFocusChangeListenerC12172());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
    
        if (r0 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (r0 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0044, code lost:
    
        r0.setmPassText("");
        r0.m5302a();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m5320a() {
        /*
            r3 = this;
            java.util.List<java.lang.String> r0 = r3.f4381b
            if (r0 == 0) goto L4c
            java.util.List<java.lang.String> r0 = r3.f4381b
            int r0 = r0.size()
            if (r0 <= 0) goto L4c
            java.util.List<java.lang.String> r0 = r3.f4381b
            java.util.List<java.lang.String> r1 = r3.f4381b
            int r1 = r1.size()
            int r1 = r1 + (-1)
            r0.remove(r1)
            int r0 = r3.f4380a
            if (r0 <= 0) goto L36
            int r0 = r3.f4380a
            r1 = 0
            java.lang.String r2 = ""
            r3.m5327a(r0, r1, r2)
            int r0 = r3.f4380a
            int r0 = r0 + (-1)
            r3.f4380a = r0
            int r0 = r3.f4380a
            android.view.View r0 = r3.getChildAt(r0)
            com.cyjh.common.view.PassWordView r0 = (com.cyjh.common.view.PassWordView) r0
            if (r0 == 0) goto L4c
            goto L44
        L36:
            int r0 = r3.f4380a
            if (r0 != 0) goto L4c
            int r0 = r3.f4380a
            android.view.View r0 = r3.getChildAt(r0)
            com.cyjh.common.view.PassWordView r0 = (com.cyjh.common.view.PassWordView) r0
            if (r0 == 0) goto L4c
        L44:
            java.lang.String r1 = ""
            r0.setmPassText(r1)
            r0.m5302a()
        L4c:
            com.cyjh.common.view.SlCustomInputLayout$a r0 = r3.f4382c
            if (r0 == 0) goto L5b
            java.util.List<java.lang.String> r0 = r3.f4381b
            int r0 = r0.size()
            if (r0 <= 0) goto L5b
            r3.getPassString()
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.view.SlCustomInputLayout.m5320a():void");
    }

    /* renamed from: a */
    private void m5321a(Context context) {
        for (int i = 0; i < this.f4383d; i++) {
            PassWordView passWordView = new PassWordView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f4392m, this.f4393n);
            if (i > 0) {
                layoutParams.leftMargin = this.f4391l;
            }
            passWordView.setInputStateColor(this.f4386g);
            passWordView.setNoinputColor(this.f4387h);
            passWordView.setInputStateTextColor(this.f4389j);
            passWordView.setRemindLineColor(this.f4388i);
            passWordView.setmBoxDrawType(this.f4390k);
            passWordView.setmShowPassType(this.f4394o);
            passWordView.setmDrawTxtSize(this.f4395p);
            passWordView.setmDrawBoxLineSize(this.f4396q);
            passWordView.setmIsShowRemindLine(this.f4385f);
            addView(passWordView, layoutParams);
        }
    }

    /* renamed from: a */
    private void m5322a(Context context, AttributeSet attributeSet) {
        this.f4384e = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1130R.styleable.PassWordLayoutStyle);
        this.f4386g = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_input_color, C1130R.color.pass_view_rect_input);
        this.f4387h = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_no_input_color, C1130R.color.regi_line_color);
        this.f4388i = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_input_line_color, C1130R.color.pass_view_rect_input);
        this.f4389j = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_text_input_color, C1130R.color.pass_view_rect_input);
        this.f4390k = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_box_draw_type, 0);
        this.f4391l = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_interval_width, 4);
        this.f4383d = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_leng, 6);
        this.f4392m = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_width, 40);
        this.f4393n = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_height, 40);
        this.f4394o = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_inputed_type, 0);
        this.f4395p = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_txt_size, 18);
        this.f4396q = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_box_line_size, 4);
        this.f4385f = obtainStyledAttributes.getBoolean(C1130R.styleable.PassWordLayoutStyle_is_show_input_line, true);
        obtainStyledAttributes.recycle();
        this.f4381b = new ArrayList();
        setOrientation(0);
        setGravity(17);
        setOnClickListener(new ViewOnClickListenerC12161());
        setOnKeyListener(new ViewOnKeyListenerC1220b());
        setOnFocusChangeListener(new ViewOnFocusChangeListenerC12172());
    }

    /* renamed from: b */
    private void m5323b() {
        PassWordView passWordView;
        if (this.f4381b != null) {
            for (int size = this.f4381b.size(); size >= 0; size--) {
                if (size > 0) {
                    m5327a(size, false, "");
                } else if (size == 0 && (passWordView = (PassWordView) getChildAt(size)) != null) {
                    passWordView.setmPassText("");
                    passWordView.m5302a();
                }
            }
            this.f4381b.clear();
            this.f4380a = 0;
        }
    }

    /* renamed from: c */
    private void m5326c() {
        PassWordView passWordView;
        if (this.f4380a <= 0) {
            if (this.f4380a != 0 || (passWordView = (PassWordView) getChildAt(this.f4380a)) == null) {
                return;
            }
            passWordView.setmPassText("");
            passWordView.m5302a();
            return;
        }
        m5327a(this.f4380a, false, "");
        this.f4380a--;
        PassWordView passWordView2 = (PassWordView) getChildAt(this.f4380a);
        if (passWordView2 != null) {
            passWordView2.setmPassText("");
            passWordView2.m5302a();
        }
    }

    private void setNextInput(String str) {
        if (this.f4380a < this.f4383d) {
            m5327a(this.f4380a, true, str);
            this.f4380a++;
            PassWordView passWordView = (PassWordView) getChildAt(this.f4380a);
            if (passWordView != null) {
                passWordView.setmPassText(str);
                passWordView.m5302a();
            }
        }
    }

    /* renamed from: a */
    public final void m5327a(int i, boolean z, String str) {
        PassWordView passWordView;
        if (i >= 0 && (passWordView = (PassWordView) getChildAt(i)) != null) {
            passWordView.setmPassText(str);
            passWordView.m5303a(z);
        }
    }

    /* renamed from: a */
    public final void m5328a(String str) {
        if (this.f4381b != null && this.f4381b.size() < this.f4383d) {
            this.f4381b.add(str);
            setNextInput(str);
        }
        if (this.f4382c != null) {
            if (this.f4381b.size() < this.f4383d) {
                getPassString();
            } else {
                getPassString();
            }
        }
    }

    public String getPassString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = this.f4381b.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.inputType = 2;
        editorInfo.imeOptions = 268435456;
        return new C1221c(this);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getChildCount() == 0) {
            if ((this.f4383d * this.f4392m) + ((this.f4383d - 1) * this.f4391l) > getMeasuredWidth()) {
                this.f4392m = (getMeasuredWidth() - ((this.f4383d - 1) * this.f4391l)) / this.f4383d;
                this.f4393n = this.f4392m;
            }
            Context context = getContext();
            for (int i3 = 0; i3 < this.f4383d; i3++) {
                PassWordView passWordView = new PassWordView(context);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f4392m, this.f4393n);
                if (i3 > 0) {
                    layoutParams.leftMargin = this.f4391l;
                }
                passWordView.setInputStateColor(this.f4386g);
                passWordView.setNoinputColor(this.f4387h);
                passWordView.setInputStateTextColor(this.f4389j);
                passWordView.setRemindLineColor(this.f4388i);
                passWordView.setmBoxDrawType(this.f4390k);
                passWordView.setmShowPassType(this.f4394o);
                passWordView.setmDrawTxtSize(this.f4395p);
                passWordView.setmDrawBoxLineSize(this.f4396q);
                passWordView.setmIsShowRemindLine(this.f4385f);
                addView(passWordView, layoutParams);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f4381b = savedState.f4399a;
        this.f4380a = this.f4381b.size();
        if (this.f4381b.isEmpty()) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            PassWordView passWordView = (PassWordView) getChildAt(i);
            if (i > this.f4381b.size() - 1) {
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(false);
                    passWordView.m5303a(false);
                    return;
                }
                return;
            }
            if (passWordView != null) {
                passWordView.setmPassText(this.f4381b.get(i));
                passWordView.m5303a(true);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4399a = this.f4381b;
        return savedState;
    }

    public void setPwdChangeListener(InterfaceC1219a interfaceC1219a) {
        this.f4382c = interfaceC1219a;
    }
}
