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
public class PassWordLayout extends LinearLayout {

    /* renamed from: a */
    int f4318a;

    /* renamed from: b */
    int f4319b;

    /* renamed from: c */
    List<String> f4320c;

    /* renamed from: d */
    InterfaceC1212c f4321d;

    /* renamed from: e */
    private Context f4322e;

    /* renamed from: f */
    private boolean f4323f;

    /* renamed from: g */
    private int f4324g;

    /* renamed from: h */
    private int f4325h;

    /* renamed from: i */
    private int f4326i;

    /* renamed from: j */
    private int f4327j;

    /* renamed from: k */
    private int f4328k;

    /* renamed from: l */
    private int f4329l;

    /* renamed from: m */
    private int f4330m;

    /* renamed from: n */
    private int f4331n;

    /* renamed from: o */
    private int f4332o;

    /* renamed from: p */
    private int f4333p;

    /* renamed from: q */
    private int f4334q;

    /* renamed from: com.cyjh.common.view.PassWordLayout$1 */
    /* loaded from: classes.dex */
    final class ViewOnClickListenerC12071 implements View.OnClickListener {
        ViewOnClickListenerC12071() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PassWordLayout.this.setFocusable(true);
            PassWordLayout.this.setFocusableInTouchMode(true);
            PassWordLayout.this.requestFocus();
            ((InputMethodManager) PassWordLayout.this.getContext().getSystemService("input_method")).showSoftInput(PassWordLayout.this, 1);
        }
    }

    /* renamed from: com.cyjh.common.view.PassWordLayout$2 */
    /* loaded from: classes.dex */
    final class ViewOnFocusChangeListenerC12082 implements View.OnFocusChangeListener {
        ViewOnFocusChangeListenerC12082() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (z) {
                PassWordView passWordView = (PassWordView) PassWordLayout.this.getChildAt(PassWordLayout.this.f4319b);
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(PassWordLayout.this.f4323f);
                    passWordView.m5302a();
                    return;
                }
                return;
            }
            PassWordView passWordView2 = (PassWordView) PassWordLayout.this.getChildAt(PassWordLayout.this.f4319b);
            if (passWordView2 != null) {
                passWordView2.setmIsShowRemindLine(false);
                passWordView2.m5303a(false);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.cyjh.common.view.PassWordLayout.SavedState.1
            /* renamed from: a */
            private static SavedState m5291a(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            /* renamed from: a */
            private static SavedState[] m5292a(int i) {
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
        public List<String> f4337a;

        private SavedState(Parcel parcel) {
            super(parcel);
            parcel.readStringList(this.f4337a);
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
            parcel.writeList(this.f4337a);
        }
    }

    /* renamed from: com.cyjh.common.view.PassWordLayout$a */
    /* loaded from: classes.dex */
    class ViewOnKeyListenerC1210a implements View.OnKeyListener {
        ViewOnKeyListenerC1210a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
        
            if (r4 != null) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        
            r4.setmPassText("");
            r4.m5302a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0090, code lost:
        
            if (r4 != null) goto L35;
         */
        @Override // android.view.View.OnKeyListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean onKey(android.view.View r3, int r4, android.view.KeyEvent r5) {
            /*
                r2 = this;
                int r3 = r5.getAction()
                r0 = 0
                if (r3 != 0) goto Lc3
                boolean r3 = r5.isShiftPressed()
                if (r3 == 0) goto Le
                return r0
            Le:
                r3 = 7
                r5 = 1
                if (r4 < r3) goto L4b
                r1 = 16
                if (r4 > r1) goto L4b
                com.cyjh.common.view.PassWordLayout r0 = com.cyjh.common.view.PassWordLayout.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                int r4 = r4 - r3
                r1.append(r4)
                java.lang.String r3 = r1.toString()
                java.util.List<java.lang.String> r4 = r0.f4320c
                if (r4 == 0) goto L3b
                java.util.List<java.lang.String> r4 = r0.f4320c
                int r4 = r4.size()
                int r1 = r0.f4318a
                if (r4 >= r1) goto L3b
                java.util.List<java.lang.String> r4 = r0.f4320c
                r4.add(r3)
                r0.setNextInput(r3)
            L3b:
                com.cyjh.common.view.PassWordLayout$c r3 = r0.f4321d
                if (r3 == 0) goto L4a
                java.util.List<java.lang.String> r3 = r0.f4320c
                int r3 = r3.size()
                int r4 = r0.f4318a
                r0.getPassString()
            L4a:
                return r5
            L4b:
                r3 = 67
                if (r4 != r3) goto Laa
                com.cyjh.common.view.PassWordLayout r3 = com.cyjh.common.view.PassWordLayout.this
                java.util.List<java.lang.String> r4 = r3.f4320c
                if (r4 == 0) goto L9a
                java.util.List<java.lang.String> r4 = r3.f4320c
                int r4 = r4.size()
                if (r4 <= 0) goto L9a
                java.util.List<java.lang.String> r4 = r3.f4320c
                java.util.List<java.lang.String> r1 = r3.f4320c
                int r1 = r1.size()
                int r1 = r1 - r5
                r4.remove(r1)
                int r4 = r3.f4319b
                if (r4 <= 0) goto L84
                int r4 = r3.f4319b
                java.lang.String r1 = ""
                r3.m5290a(r4, r0, r1)
                int r4 = r3.f4319b
                int r4 = r4 - r5
                r3.f4319b = r4
                int r4 = r3.f4319b
                android.view.View r4 = r3.getChildAt(r4)
                com.cyjh.common.view.PassWordView r4 = (com.cyjh.common.view.PassWordView) r4
                if (r4 == 0) goto L9a
                goto L92
            L84:
                int r4 = r3.f4319b
                if (r4 != 0) goto L9a
                int r4 = r3.f4319b
                android.view.View r4 = r3.getChildAt(r4)
                com.cyjh.common.view.PassWordView r4 = (com.cyjh.common.view.PassWordView) r4
                if (r4 == 0) goto L9a
            L92:
                java.lang.String r0 = ""
                r4.setmPassText(r0)
                r4.m5302a()
            L9a:
                com.cyjh.common.view.PassWordLayout$c r4 = r3.f4321d
                if (r4 == 0) goto La9
                java.util.List<java.lang.String> r4 = r3.f4320c
                int r4 = r4.size()
                if (r4 <= 0) goto La9
                r3.getPassString()
            La9:
                return r5
            Laa:
                com.cyjh.common.view.PassWordLayout r3 = com.cyjh.common.view.PassWordLayout.this
                android.content.Context r3 = com.cyjh.common.view.PassWordLayout.m5288c(r3)
                java.lang.String r4 = "input_method"
                java.lang.Object r3 = r3.getSystemService(r4)
                android.view.inputmethod.InputMethodManager r3 = (android.view.inputmethod.InputMethodManager) r3
                com.cyjh.common.view.PassWordLayout r4 = com.cyjh.common.view.PassWordLayout.this
                android.os.IBinder r4 = r4.getWindowToken()
                r0 = 2
                r3.hideSoftInputFromWindow(r4, r0)
                return r5
            Lc3:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.view.PassWordLayout.ViewOnKeyListenerC1210a.onKey(android.view.View, int, android.view.KeyEvent):boolean");
        }
    }

    /* renamed from: com.cyjh.common.view.PassWordLayout$b */
    /* loaded from: classes.dex */
    private class C1211b extends BaseInputConnection {
        public C1211b(View view) {
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

    /* renamed from: com.cyjh.common.view.PassWordLayout$c */
    /* loaded from: classes.dex */
    public interface InterfaceC1212c {
        /* renamed from: a */
        void m5293a();

        /* renamed from: b */
        void m5294b();

        /* renamed from: c */
        void m5295c();
    }

    public PassWordLayout(Context context) {
        this(context, null);
    }

    public PassWordLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PassWordLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4318a = 6;
        this.f4319b = 0;
        this.f4322e = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1130R.styleable.PassWordLayoutStyle);
        this.f4324g = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_input_color, C1130R.color.pass_view_rect_input);
        this.f4325h = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_no_input_color, C1130R.color.regi_line_color);
        this.f4326i = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_input_line_color, C1130R.color.pass_view_rect_input);
        this.f4327j = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_text_input_color, C1130R.color.pass_view_rect_input);
        this.f4328k = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_box_draw_type, 0);
        this.f4329l = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_interval_width, 4);
        this.f4318a = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_leng, 6);
        this.f4330m = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_width, 40);
        this.f4331n = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_height, 40);
        this.f4332o = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_inputed_type, 0);
        this.f4333p = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_txt_size, 18);
        this.f4334q = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_box_line_size, 4);
        this.f4323f = obtainStyledAttributes.getBoolean(C1130R.styleable.PassWordLayoutStyle_is_show_input_line, true);
        obtainStyledAttributes.recycle();
        this.f4320c = new ArrayList();
        setOrientation(0);
        setGravity(17);
        setOnClickListener(new ViewOnClickListenerC12071());
        setOnKeyListener(new ViewOnKeyListenerC1210a());
        setOnFocusChangeListener(new ViewOnFocusChangeListenerC12082());
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
    private void m5282a() {
        /*
            r3 = this;
            java.util.List<java.lang.String> r0 = r3.f4320c
            if (r0 == 0) goto L4c
            java.util.List<java.lang.String> r0 = r3.f4320c
            int r0 = r0.size()
            if (r0 <= 0) goto L4c
            java.util.List<java.lang.String> r0 = r3.f4320c
            java.util.List<java.lang.String> r1 = r3.f4320c
            int r1 = r1.size()
            int r1 = r1 + (-1)
            r0.remove(r1)
            int r0 = r3.f4319b
            if (r0 <= 0) goto L36
            int r0 = r3.f4319b
            r1 = 0
            java.lang.String r2 = ""
            r3.m5290a(r0, r1, r2)
            int r0 = r3.f4319b
            int r0 = r0 + (-1)
            r3.f4319b = r0
            int r0 = r3.f4319b
            android.view.View r0 = r3.getChildAt(r0)
            com.cyjh.common.view.PassWordView r0 = (com.cyjh.common.view.PassWordView) r0
            if (r0 == 0) goto L4c
            goto L44
        L36:
            int r0 = r3.f4319b
            if (r0 != 0) goto L4c
            int r0 = r3.f4319b
            android.view.View r0 = r3.getChildAt(r0)
            com.cyjh.common.view.PassWordView r0 = (com.cyjh.common.view.PassWordView) r0
            if (r0 == 0) goto L4c
        L44:
            java.lang.String r1 = ""
            r0.setmPassText(r1)
            r0.m5302a()
        L4c:
            com.cyjh.common.view.PassWordLayout$c r0 = r3.f4321d
            if (r0 == 0) goto L5b
            java.util.List<java.lang.String> r0 = r3.f4320c
            int r0 = r0.size()
            if (r0 <= 0) goto L5b
            r3.getPassString()
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cyjh.common.view.PassWordLayout.m5282a():void");
    }

    /* renamed from: a */
    private void m5283a(Context context) {
        for (int i = 0; i < this.f4318a; i++) {
            PassWordView passWordView = new PassWordView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f4330m, this.f4331n);
            if (i > 0) {
                layoutParams.leftMargin = this.f4329l;
            }
            passWordView.setInputStateColor(this.f4324g);
            passWordView.setNoinputColor(this.f4325h);
            passWordView.setInputStateTextColor(this.f4327j);
            passWordView.setRemindLineColor(this.f4326i);
            passWordView.setmBoxDrawType(this.f4328k);
            passWordView.setmShowPassType(this.f4332o);
            passWordView.setmDrawTxtSize(this.f4333p);
            passWordView.setmDrawBoxLineSize(this.f4334q);
            passWordView.setmIsShowRemindLine(this.f4323f);
            addView(passWordView, layoutParams);
        }
    }

    /* renamed from: a */
    private void m5284a(Context context, AttributeSet attributeSet) {
        this.f4322e = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1130R.styleable.PassWordLayoutStyle);
        this.f4324g = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_input_color, C1130R.color.pass_view_rect_input);
        this.f4325h = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_box_no_input_color, C1130R.color.regi_line_color);
        this.f4326i = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_input_line_color, C1130R.color.pass_view_rect_input);
        this.f4327j = obtainStyledAttributes.getResourceId(C1130R.styleable.PassWordLayoutStyle_text_input_color, C1130R.color.pass_view_rect_input);
        this.f4328k = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_box_draw_type, 0);
        this.f4329l = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_interval_width, 4);
        this.f4318a = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_leng, 6);
        this.f4330m = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_width, 40);
        this.f4331n = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_item_height, 40);
        this.f4332o = obtainStyledAttributes.getInt(C1130R.styleable.PassWordLayoutStyle_pass_inputed_type, 0);
        this.f4333p = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_txt_size, 18);
        this.f4334q = obtainStyledAttributes.getDimensionPixelOffset(C1130R.styleable.PassWordLayoutStyle_draw_box_line_size, 4);
        this.f4323f = obtainStyledAttributes.getBoolean(C1130R.styleable.PassWordLayoutStyle_is_show_input_line, true);
        obtainStyledAttributes.recycle();
        this.f4320c = new ArrayList();
        setOrientation(0);
        setGravity(17);
        setOnClickListener(new ViewOnClickListenerC12071());
        setOnKeyListener(new ViewOnKeyListenerC1210a());
        setOnFocusChangeListener(new ViewOnFocusChangeListenerC12082());
    }

    /* renamed from: a */
    private void m5285a(String str) {
        if (this.f4320c != null && this.f4320c.size() < this.f4318a) {
            this.f4320c.add(str);
            setNextInput(str);
        }
        if (this.f4321d != null) {
            if (this.f4320c.size() < this.f4318a) {
                getPassString();
            } else {
                getPassString();
            }
        }
    }

    /* renamed from: b */
    private void m5286b() {
        PassWordView passWordView;
        if (this.f4320c != null) {
            for (int size = this.f4320c.size(); size >= 0; size--) {
                if (size > 0) {
                    m5290a(size, false, "");
                } else if (size == 0 && (passWordView = (PassWordView) getChildAt(size)) != null) {
                    passWordView.setmPassText("");
                    passWordView.m5302a();
                }
            }
            this.f4320c.clear();
            this.f4319b = 0;
        }
    }

    /* renamed from: c */
    private void m5289c() {
        PassWordView passWordView;
        if (this.f4319b <= 0) {
            if (this.f4319b != 0 || (passWordView = (PassWordView) getChildAt(this.f4319b)) == null) {
                return;
            }
            passWordView.setmPassText("");
            passWordView.m5302a();
            return;
        }
        m5290a(this.f4319b, false, "");
        this.f4319b--;
        PassWordView passWordView2 = (PassWordView) getChildAt(this.f4319b);
        if (passWordView2 != null) {
            passWordView2.setmPassText("");
            passWordView2.m5302a();
        }
    }

    /* renamed from: a */
    public final void m5290a(int i, boolean z, String str) {
        PassWordView passWordView;
        if (i >= 0 && (passWordView = (PassWordView) getChildAt(i)) != null) {
            passWordView.setmPassText(str);
            passWordView.m5303a(z);
        }
    }

    public String getPassString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = this.f4320c.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        editorInfo.inputType = 2;
        editorInfo.imeOptions = 268435456;
        return new C1211b(this);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getChildCount() == 0) {
            if ((this.f4318a * this.f4330m) + ((this.f4318a - 1) * this.f4329l) > getMeasuredWidth()) {
                this.f4330m = (getMeasuredWidth() - ((this.f4318a - 1) * this.f4329l)) / this.f4318a;
                this.f4331n = this.f4330m;
            }
            Context context = getContext();
            for (int i3 = 0; i3 < this.f4318a; i3++) {
                PassWordView passWordView = new PassWordView(context);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f4330m, this.f4331n);
                if (i3 > 0) {
                    layoutParams.leftMargin = this.f4329l;
                }
                passWordView.setInputStateColor(this.f4324g);
                passWordView.setNoinputColor(this.f4325h);
                passWordView.setInputStateTextColor(this.f4327j);
                passWordView.setRemindLineColor(this.f4326i);
                passWordView.setmBoxDrawType(this.f4328k);
                passWordView.setmShowPassType(this.f4332o);
                passWordView.setmDrawTxtSize(this.f4333p);
                passWordView.setmDrawBoxLineSize(this.f4334q);
                passWordView.setmIsShowRemindLine(this.f4323f);
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
        this.f4320c = savedState.f4337a;
        this.f4319b = this.f4320c.size();
        if (this.f4320c.isEmpty()) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            PassWordView passWordView = (PassWordView) getChildAt(i);
            if (i > this.f4320c.size() - 1) {
                if (passWordView != null) {
                    passWordView.setmIsShowRemindLine(false);
                    passWordView.m5303a(false);
                    return;
                }
                return;
            }
            if (passWordView != null) {
                passWordView.setmPassText(this.f4320c.get(i));
                passWordView.m5303a(true);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4337a = this.f4320c;
        return savedState;
    }

    void setNextInput(String str) {
        if (this.f4319b < this.f4318a) {
            m5290a(this.f4319b, true, str);
            this.f4319b++;
            PassWordView passWordView = (PassWordView) getChildAt(this.f4319b);
            if (passWordView != null) {
                passWordView.setmPassText(str);
                passWordView.m5302a();
            }
        }
    }

    public void setPwdChangeListener(InterfaceC1212c interfaceC1212c) {
        this.f4321d = interfaceC1212c;
    }
}
