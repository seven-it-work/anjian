package android.support.design.widget;

import android.content.Context;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.WithHint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* loaded from: classes.dex */
public class TextInputEditText extends AppCompatEditText {
    public TextInputEditText(Context context) {
        super(context);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.support.v7.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent instanceof WithHint) {
                    editorInfo.hintText = ((WithHint) parent).getHint();
                    return onCreateInputConnection;
                }
            }
        }
        return onCreateInputConnection;
    }
}
