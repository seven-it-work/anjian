package org.greenrobot.eventbus.util;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

/* loaded from: classes2.dex */
public final class ErrorDialogFragments {

    /* renamed from: a */
    public static int f10550a;

    /* renamed from: b */
    public static Class<?> f10551b;

    @TargetApi(11)
    /* loaded from: classes2.dex */
    public static class Honeycomb extends DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.m12546a(getActivity(), getArguments());
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.m12545a(getActivity(), getArguments(), this);
        }
    }

    /* loaded from: classes2.dex */
    public static class Support extends android.support.v4.app.DialogFragment implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ErrorDialogFragments.m12546a(getActivity(), getArguments());
        }

        @Override // android.support.v4.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return ErrorDialogFragments.m12545a(getActivity(), getArguments(), this);
        }
    }

    /* renamed from: a */
    public static Dialog m12545a(Context context, Bundle bundle, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(bundle.getString(ErrorDialogManager.f10555d));
        builder.setMessage(bundle.getString(ErrorDialogManager.f10556e));
        if (f10550a != 0) {
            builder.setIcon(f10550a);
        }
        builder.setPositiveButton(R.string.ok, onClickListener);
        return builder.create();
    }

    /* renamed from: a */
    public static void m12546a(Activity activity, Bundle bundle) {
        if (f10551b != null) {
            try {
                ErrorDialogManager.f10552a.f10587a.m12579a().m12506c(f10551b.newInstance());
            } catch (Exception e) {
                throw new RuntimeException("Event cannot be constructed", e);
            }
        }
        if (!bundle.getBoolean(ErrorDialogManager.f10557f, false) || activity == null) {
            return;
        }
        activity.finish();
    }
}
