package com.squareup.picasso;

import android.content.Context;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import com.umeng.analytics.pro.C2427b;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ContentStreamRequestHandler extends RequestHandler {
    final Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentStreamRequestHandler(Context context) {
        this.context = context;
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        return C2427b.f8956W.equals(request.uri.getScheme());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream getInputStream(Request request) throws FileNotFoundException {
        return this.context.getContentResolver().openInputStream(request.uri);
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        return new RequestHandler.Result(getInputStream(request), Picasso.LoadedFrom.DISK);
    }
}
