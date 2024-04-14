package com.android.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.volley.C0588a;

/* renamed from: com.android.volley.toolbox.a */
/* loaded from: classes.dex */
public final class C0610a implements InterfaceC0611b {

    /* renamed from: a */
    private final AccountManager f1315a;

    /* renamed from: b */
    private final Account f1316b;

    /* renamed from: c */
    private final String f1317c;

    /* renamed from: d */
    private final boolean f1318d;

    private C0610a(AccountManager accountManager, Account account, String str) {
        this.f1315a = accountManager;
        this.f1316b = account;
        this.f1317c = str;
        this.f1318d = false;
    }

    private C0610a(Context context, Account account, String str) {
        this(context, account, str, (byte) 0);
    }

    private C0610a(Context context, Account account, String str, byte b2) {
        this(AccountManager.get(context), account, str);
    }

    /* renamed from: b */
    private Account m1428b() {
        return this.f1316b;
    }

    @Override // com.android.volley.toolbox.InterfaceC0611b
    /* renamed from: a */
    public final String mo1429a() throws C0588a {
        AccountManagerFuture<Bundle> authToken = this.f1315a.getAuthToken(this.f1316b, this.f1317c, this.f1318d, null, null);
        try {
            Bundle result = authToken.getResult();
            String str = null;
            if (authToken.isDone() && !authToken.isCancelled()) {
                if (result.containsKey("intent")) {
                    throw new C0588a((Intent) result.getParcelable("intent"));
                }
                str = result.getString("authtoken");
            }
            if (str != null) {
                return str;
            }
            throw new C0588a("Got null auth token for type: " + this.f1317c);
        } catch (Exception e) {
            throw new C0588a("Error while retrieving auth token", e);
        }
    }

    @Override // com.android.volley.toolbox.InterfaceC0611b
    /* renamed from: a */
    public final void mo1430a(String str) {
        this.f1315a.invalidateAuthToken(this.f1316b.type, str);
    }
}
