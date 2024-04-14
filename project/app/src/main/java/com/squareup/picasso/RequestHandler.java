package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class RequestHandler {

    /* loaded from: classes.dex */
    public static final class Result {
        private final Bitmap bitmap;
        private final int exifOrientation;
        private final Picasso.LoadedFrom loadedFrom;
        private final InputStream stream;

        public Result(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) Utils.checkNotNull(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Result(Bitmap bitmap, InputStream inputStream, Picasso.LoadedFrom loadedFrom, int i) {
            if (!((inputStream != null) ^ (bitmap != null))) {
                throw new AssertionError();
            }
            this.bitmap = bitmap;
            this.stream = inputStream;
            this.loadedFrom = (Picasso.LoadedFrom) Utils.checkNotNull(loadedFrom, "loadedFrom == null");
            this.exifOrientation = i;
        }

        public Result(InputStream inputStream, Picasso.LoadedFrom loadedFrom) {
            this(null, (InputStream) Utils.checkNotNull(inputStream, "stream == null"), loadedFrom, 0);
        }

        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int getExifOrientation() {
            return this.exifOrientation;
        }

        public final Picasso.LoadedFrom getLoadedFrom() {
            return this.loadedFrom;
        }

        public final InputStream getStream() {
            return this.stream;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void calculateInSampleSize(int i, int i2, int i3, int i4, BitmapFactory.Options options, Request request) {
        int max;
        double d;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                d = i3 / i;
            } else if (i == 0) {
                d = i4 / i2;
            } else {
                int floor = (int) Math.floor(i4 / i2);
                int floor2 = (int) Math.floor(i3 / i);
                max = request.centerInside ? Math.max(floor, floor2) : Math.min(floor, floor2);
            }
            max = (int) Math.floor(d);
        } else {
            max = 1;
        }
        options.inSampleSize = max;
        options.inJustDecodeBounds = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void calculateInSampleSize(int i, int i2, BitmapFactory.Options options, Request request) {
        calculateInSampleSize(i, i2, options.outWidth, options.outHeight, options, request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitmapFactory.Options createBitmapOptions(Request request) {
        boolean hasSize = request.hasSize();
        boolean z = request.config != null;
        BitmapFactory.Options options = null;
        if (hasSize || z) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = hasSize;
            if (z) {
                options.inPreferredConfig = request.config;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean requiresInSampleSize(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public abstract boolean canHandleRequest(Request request);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRetryCount() {
        return 0;
    }

    public abstract Result load(Request request, int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean supportsReplay() {
        return false;
    }
}
