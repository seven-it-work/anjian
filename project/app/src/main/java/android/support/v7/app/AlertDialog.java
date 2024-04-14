package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.ArrayRes;
import android.support.annotation.AttrRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v7.app.AlertController;
import android.support.v7.appcompat.C0328R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;

/* loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: P */
        private final AlertController.AlertParams f33P;
        private final int mTheme;

        public Builder(@NonNull Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(@NonNull Context context, @StyleRes int i) {
            this.f33P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f33P.mContext, this.mTheme);
            this.f33P.apply(alertDialog.mAlert);
            alertDialog.setCancelable(this.f33P.mCancelable);
            if (this.f33P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f33P.mOnCancelListener);
            alertDialog.setOnDismissListener(this.f33P.mOnDismissListener);
            if (this.f33P.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.f33P.mOnKeyListener);
            }
            return alertDialog;
        }

        @NonNull
        public Context getContext() {
            return this.f33P.mContext;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mAdapter = listAdapter;
            this.f33P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.f33P.mCancelable = z;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            this.f33P.mCursor = cursor;
            this.f33P.mLabelColumn = str;
            this.f33P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCustomTitle(@Nullable View view) {
            this.f33P.mCustomTitleView = view;
            return this;
        }

        public Builder setIcon(@DrawableRes int i) {
            this.f33P.mIconId = i;
            return this;
        }

        public Builder setIcon(@Nullable Drawable drawable) {
            this.f33P.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(@AttrRes int i) {
            TypedValue typedValue = new TypedValue();
            this.f33P.mContext.getTheme().resolveAttribute(i, typedValue, true);
            this.f33P.mIconId = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public Builder setInverseBackgroundForced(boolean z) {
            this.f33P.mForceInverseBackground = z;
            return this;
        }

        public Builder setItems(@ArrayRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mItems = this.f33P.mContext.getResources().getTextArray(i);
            this.f33P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mItems = charSequenceArr;
            this.f33P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMessage(@StringRes int i) {
            this.f33P.mMessage = this.f33P.mContext.getText(i);
            return this;
        }

        public Builder setMessage(@Nullable CharSequence charSequence) {
            this.f33P.mMessage = charSequence;
            return this;
        }

        public Builder setMultiChoiceItems(@ArrayRes int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f33P.mItems = this.f33P.mContext.getResources().getTextArray(i);
            this.f33P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f33P.mCheckedItems = zArr;
            this.f33P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f33P.mCursor = cursor;
            this.f33P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f33P.mIsCheckedColumn = str;
            this.f33P.mLabelColumn = str2;
            this.f33P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f33P.mItems = charSequenceArr;
            this.f33P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f33P.mCheckedItems = zArr;
            this.f33P.mIsMultiChoice = true;
            return this;
        }

        public Builder setNegativeButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mNegativeButtonText = this.f33P.mContext.getText(i);
            this.f33P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mNegativeButtonText = charSequence;
            this.f33P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButtonIcon(Drawable drawable) {
            this.f33P.mNegativeButtonIcon = drawable;
            return this;
        }

        public Builder setNeutralButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mNeutralButtonText = this.f33P.mContext.getText(i);
            this.f33P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mNeutralButtonText = charSequence;
            this.f33P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButtonIcon(Drawable drawable) {
            this.f33P.mNeutralButtonIcon = drawable;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.f33P.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.f33P.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f33P.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.f33P.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setPositiveButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mPositiveButtonText = this.f33P.mContext.getText(i);
            this.f33P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mPositiveButtonText = charSequence;
            this.f33P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButtonIcon(Drawable drawable) {
            this.f33P.mPositiveButtonIcon = drawable;
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setRecycleOnMeasureEnabled(boolean z) {
            this.f33P.mRecycleOnMeasure = z;
            return this;
        }

        public Builder setSingleChoiceItems(@ArrayRes int i, int i2, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mItems = this.f33P.mContext.getResources().getTextArray(i);
            this.f33P.mOnClickListener = onClickListener;
            this.f33P.mCheckedItem = i2;
            this.f33P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mCursor = cursor;
            this.f33P.mOnClickListener = onClickListener;
            this.f33P.mCheckedItem = i;
            this.f33P.mLabelColumn = str;
            this.f33P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mAdapter = listAdapter;
            this.f33P.mOnClickListener = onClickListener;
            this.f33P.mCheckedItem = i;
            this.f33P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            this.f33P.mItems = charSequenceArr;
            this.f33P.mOnClickListener = onClickListener;
            this.f33P.mCheckedItem = i;
            this.f33P.mIsSingleChoice = true;
            return this;
        }

        public Builder setTitle(@StringRes int i) {
            this.f33P.mTitle = this.f33P.mContext.getText(i);
            return this;
        }

        public Builder setTitle(@Nullable CharSequence charSequence) {
            this.f33P.mTitle = charSequence;
            return this;
        }

        public Builder setView(int i) {
            this.f33P.mView = null;
            this.f33P.mViewLayoutResId = i;
            this.f33P.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view) {
            this.f33P.mView = view;
            this.f33P.mViewLayoutResId = 0;
            this.f33P.mViewSpacingSpecified = false;
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @Deprecated
        public Builder setView(View view, int i, int i2, int i3, int i4) {
            this.f33P.mView = view;
            this.f33P.mViewLayoutResId = 0;
            this.f33P.mViewSpacingSpecified = true;
            this.f33P.mViewSpacingLeft = i;
            this.f33P.mViewSpacingTop = i2;
            this.f33P.mViewSpacingRight = i3;
            this.f33P.mViewSpacingBottom = i4;
            return this;
        }

        public AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }
    }

    protected AlertDialog(@NonNull Context context) {
        this(context, 0);
    }

    protected AlertDialog(@NonNull Context context, @StyleRes int i) {
        super(context, resolveDialogTheme(context, i));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    protected AlertDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    static int resolveDialogTheme(@NonNull Context context, @StyleRes int i) {
        if (((i >>> 24) & 255) > 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0328R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i) {
        return this.mAlert.getButton(i);
    }

    public ListView getListView() {
        return this.mAlert.getListView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, null);
    }

    public void setButton(int i, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, drawable);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.mAlert.setButton(i, charSequence, null, message, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    void setButtonPanelLayoutHint(int i) {
        this.mAlert.setButtonPanelLayoutHint(i);
    }

    public void setCustomTitle(View view) {
        this.mAlert.setCustomTitle(view);
    }

    public void setIcon(int i) {
        this.mAlert.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.setIcon(drawable);
    }

    public void setIconAttribute(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    public void setMessage(CharSequence charSequence) {
        this.mAlert.setMessage(charSequence);
    }

    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    public void setView(View view) {
        this.mAlert.setView(view);
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.mAlert.setView(view, i, i2, i3, i4);
    }
}
