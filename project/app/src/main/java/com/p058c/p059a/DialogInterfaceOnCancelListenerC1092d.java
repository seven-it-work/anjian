package com.p058c.p059a;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.p058c.C1088a;
import com.p058c.p060b.AbstractRunnableC1095a;
import com.p058c.p060b.C1097c;
import com.p058c.p062d.C1105a;
import com.p058c.p062d.InterfaceC1108d;
import org.apache.http.HttpRequest;

/* renamed from: com.c.a.d */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC1092d extends AbstractC1089a implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    /* renamed from: a */
    private AccountManager f3491a;

    /* renamed from: b */
    private Account f3492b;

    /* renamed from: c */
    private String f3493c;

    /* renamed from: d */
    private Activity f3494d;

    /* renamed from: e */
    private String f3495e;

    /* renamed from: f */
    private Account[] f3496f;

    /* renamed from: g */
    private String f3497g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.c.a.d$a */
    /* loaded from: classes.dex */
    public class a extends AsyncTask<String, String, Bundle> {
        private a() {
        }

        /* synthetic */ a(DialogInterfaceOnCancelListenerC1092d dialogInterfaceOnCancelListenerC1092d, byte b2) {
            this();
        }

        /* renamed from: a */
        private Bundle m3559a() {
            try {
                return DialogInterfaceOnCancelListenerC1092d.this.f3491a.getAuthToken(DialogInterfaceOnCancelListenerC1092d.this.f3492b, DialogInterfaceOnCancelListenerC1092d.this.f3493c, (Bundle) null, DialogInterfaceOnCancelListenerC1092d.this.f3494d, (AccountManagerCallback<Bundle>) null, (Handler) null).getResult();
            } catch (AuthenticatorException | Exception e) {
                C1105a.m4049a(e);
                return null;
            } catch (OperationCanceledException unused) {
                return null;
            }
        }

        /* renamed from: a */
        private void m3560a(Bundle bundle) {
            if (bundle == null || !bundle.containsKey("authtoken")) {
                DialogInterfaceOnCancelListenerC1092d.this.m3499a(C1097c.f3593g, "rejected");
                return;
            }
            DialogInterfaceOnCancelListenerC1092d.this.f3497g = bundle.getString("authtoken");
            DialogInterfaceOnCancelListenerC1092d.this.m3500a(DialogInterfaceOnCancelListenerC1092d.this.f3494d);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bundle doInBackground(String... strArr) {
            return m3559a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 == null || !bundle2.containsKey("authtoken")) {
                DialogInterfaceOnCancelListenerC1092d.this.m3499a(C1097c.f3593g, "rejected");
                return;
            }
            DialogInterfaceOnCancelListenerC1092d.this.f3497g = bundle2.getString("authtoken");
            DialogInterfaceOnCancelListenerC1092d.this.m3500a(DialogInterfaceOnCancelListenerC1092d.this.f3494d);
        }
    }

    public DialogInterfaceOnCancelListenerC1092d(Activity activity, String str, String str2) {
        str2 = InterfaceC1108d.f3728E.equals(str2) ? PreferenceManager.getDefaultSharedPreferences(activity).getString(InterfaceC1108d.f3728E, null) : str2;
        this.f3494d = activity;
        this.f3493c = str.substring(2);
        this.f3495e = str2;
        this.f3491a = AccountManager.get(activity);
    }

    /* renamed from: a */
    private void m3550a(Account account) {
        this.f3492b = account;
        new a(this, (byte) 0).execute(new String[0]);
    }

    /* renamed from: a */
    private static void m3551a(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(InterfaceC1108d.f3728E, str).commit();
    }

    /* renamed from: b */
    private static String m3554b(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(InterfaceC1108d.f3728E, null);
    }

    /* renamed from: d */
    private String m3557d() {
        return this.f3493c;
    }

    /* renamed from: e */
    private void m3558e() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f3494d);
        this.f3496f = this.f3491a.getAccountsByType("com.google");
        int length = this.f3496f.length;
        if (length == 1) {
            m3550a(this.f3496f[0]);
            return;
        }
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = this.f3496f[i].name;
        }
        builder.setItems(strArr, this);
        builder.setOnCancelListener(this);
        new C1088a(this.f3494d).m3741a((Dialog) builder.create());
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final void mo3503a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, HttpRequest httpRequest) {
        httpRequest.addHeader("Authorization", "GoogleLogin auth=" + this.f3497g);
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3504a() {
        return this.f3497g != null;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: a */
    public final boolean mo3505a(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a, C1097c c1097c) {
        int i = c1097c.f3595i;
        return i == 401 || i == 403;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final String mo3506b(String str) {
        return String.valueOf(str) + "#" + this.f3497g;
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    protected final void mo3507b() {
        int i = 0;
        if (this.f3495e != null) {
            Account[] accountsByType = this.f3491a.getAccountsByType("com.google");
            while (i < accountsByType.length) {
                Account account = accountsByType[i];
                if (this.f3495e.equals(account.name)) {
                    m3550a(account);
                    return;
                }
                i++;
            }
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f3494d);
        this.f3496f = this.f3491a.getAccountsByType("com.google");
        int length = this.f3496f.length;
        if (length == 1) {
            m3550a(this.f3496f[0]);
            return;
        }
        String[] strArr = new String[length];
        while (i < length) {
            strArr[i] = this.f3496f[i].name;
            i++;
        }
        builder.setItems(strArr, this);
        builder.setOnCancelListener(this);
        new C1088a(this.f3494d).m3741a((Dialog) builder.create());
    }

    @Override // com.p058c.p059a.AbstractC1089a
    /* renamed from: b */
    public final boolean mo3508b(AbstractRunnableC1095a<?, ?> abstractRunnableC1095a) {
        this.f3491a.invalidateAuthToken(this.f3492b.type, this.f3497g);
        try {
            this.f3497g = this.f3491a.blockingGetAuthToken(this.f3492b, this.f3493c, true);
            C1105a.m4061b((Object) "re token", (Object) this.f3497g);
        } catch (Exception e) {
            C1105a.m4049a((Throwable) e);
            this.f3497g = null;
        }
        return this.f3497g != null;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m3499a(C1097c.f3593g, "cancel");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Account account = this.f3496f[i];
        C1105a.m4061b((Object) "acc", (Object) account.name);
        Activity activity = this.f3494d;
        PreferenceManager.getDefaultSharedPreferences(activity).edit().putString(InterfaceC1108d.f3728E, account.name).commit();
        m3550a(account);
    }
}
