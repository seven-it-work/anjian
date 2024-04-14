package com.bumptech.glide.load.p040a;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.a.n */
/* loaded from: classes.dex */
public final class C0868n extends AbstractC0866l<InputStream> {

    /* renamed from: a */
    private static final int f2476a = 1;

    /* renamed from: b */
    private static final int f2477b = 2;

    /* renamed from: c */
    private static final int f2478c = 3;

    /* renamed from: d */
    private static final int f2479d = 4;

    /* renamed from: e */
    private static final int f2480e = 5;

    /* renamed from: f */
    private static final UriMatcher f2481f;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f2481f = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f2481f.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f2481f.addURI("com.android.contacts", "contacts/#/photo", 2);
        f2481f.addURI("com.android.contacts", "contacts/#", 3);
        f2481f.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        f2481f.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public C0868n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* renamed from: a */
    private static InputStream m2426a(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.io.InputStream m2427b(android.net.Uri r3, android.content.ContentResolver r4) throws java.io.FileNotFoundException {
        /*
            android.content.UriMatcher r0 = com.bumptech.glide.load.p040a.C0868n.f2481f
            int r0 = r0.match(r3)
            r1 = 1
            if (r0 == r1) goto L19
            r2 = 3
            if (r0 == r2) goto L14
            r2 = 5
            if (r0 == r2) goto L19
            java.io.InputStream r4 = r4.openInputStream(r3)
            goto L2b
        L14:
            java.io.InputStream r4 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r3, r1)
            goto L2b
        L19:
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r4, r3)
            if (r0 != 0) goto L27
            java.io.FileNotFoundException r3 = new java.io.FileNotFoundException
            java.lang.String r4 = "Contact cannot be found"
            r3.<init>(r4)
            throw r3
        L27:
            java.io.InputStream r4 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r4, r0, r1)
        L2b:
            if (r4 != 0) goto L41
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "InputStream is null for "
            r0.<init>(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r4.<init>(r3)
            throw r4
        L41:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p040a.C0868n.m2427b(android.net.Uri, android.content.ContentResolver):java.io.InputStream");
    }

    /* renamed from: c */
    private static InputStream m2428c(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int match = f2481f.match(uri);
        if (match != 1) {
            if (match == 3) {
                return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact == null) {
            throw new FileNotFoundException("Contact cannot be found");
        }
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, lookupContact, true);
    }

    @Override // com.bumptech.glide.load.p040a.InterfaceC0858d
    @NonNull
    /* renamed from: a */
    public final Class<InputStream> mo2380a() {
        return InputStream.class;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final /* synthetic */ java.io.InputStream mo2381a(android.net.Uri r4, android.content.ContentResolver r5) throws java.io.FileNotFoundException {
        /*
            r3 = this;
            android.content.UriMatcher r0 = com.bumptech.glide.load.p040a.C0868n.f2481f
            int r0 = r0.match(r4)
            r1 = 1
            if (r0 == r1) goto L19
            r2 = 3
            if (r0 == r2) goto L14
            r2 = 5
            if (r0 == r2) goto L19
            java.io.InputStream r5 = r5.openInputStream(r4)
            goto L2b
        L14:
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r5, r4, r1)
            goto L2b
        L19:
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r5, r4)
            if (r0 != 0) goto L27
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.String r5 = "Contact cannot be found"
            r4.<init>(r5)
            throw r4
        L27:
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r5, r0, r1)
        L2b:
            if (r5 != 0) goto L41
            java.io.FileNotFoundException r5 = new java.io.FileNotFoundException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "InputStream is null for "
            r0.<init>(r1)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5.<init>(r4)
            throw r5
        L41:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p040a.C0868n.mo2381a(android.net.Uri, android.content.ContentResolver):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.p040a.AbstractC0866l
    /* renamed from: a */
    protected final /* synthetic */ void mo2382a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
