package com.squareup.picasso;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import com.umeng.analytics.pro.C2427b;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ContactsPhotoRequestHandler extends RequestHandler {
    private static final int ID_CONTACT = 3;
    private static final int ID_DISPLAY_PHOTO = 4;
    private static final int ID_LOOKUP = 1;
    private static final int ID_THUMBNAIL = 2;
    private static final UriMatcher matcher;
    private final Context context;

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(14)
    /* loaded from: classes.dex */
    public static class ContactPhotoStreamIcs {
        private ContactPhotoStreamIcs() {
        }

        static InputStream get(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        matcher = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        matcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        matcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        matcher.addURI("com.android.contacts", "contacts/#", 3);
        matcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContactsPhotoRequestHandler(Context context) {
        this.context = context;
    }

    private InputStream getInputStream(Request request) throws IOException {
        ContentResolver contentResolver = this.context.getContentResolver();
        Uri uri = request.uri;
        switch (matcher.match(uri)) {
            case 1:
                uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
                if (uri == null) {
                    return null;
                }
                break;
            case 2:
            case 4:
                return contentResolver.openInputStream(uri);
            case 3:
                break;
            default:
                throw new IllegalStateException("Invalid uri: " + uri);
        }
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri) : ContactPhotoStreamIcs.get(contentResolver, uri);
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        return C2427b.f8956W.equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && matcher.match(request.uri) != -1;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        InputStream inputStream = getInputStream(request);
        if (inputStream != null) {
            return new RequestHandler.Result(inputStream, Picasso.LoadedFrom.DISK);
        }
        return null;
    }
}
