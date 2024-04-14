package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* loaded from: classes.dex */
class AppCompatHintHelper {
    AppCompatHintHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent instanceof WithHint) {
                    editorInfo.hintText = ((WithHint) parent).getHint();
                    return inputConnection;
                }
            }
        }
        return inputConnection;
    }
}
