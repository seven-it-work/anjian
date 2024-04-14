package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;

/* loaded from: classes.dex */
public class StringDownloadHandler {
    public String handleEntity(HttpEntity httpEntity, RequestCallBackHandler requestCallBackHandler, String str) throws IOException {
        Throwable th;
        InputStream inputStream;
        long j;
        if (httpEntity == null) {
            return null;
        }
        long j2 = 0;
        long contentLength = httpEntity.getContentLength();
        if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, 0L, true)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            inputStream = httpEntity.getContent();
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    j = j2;
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
                long sizeOfString = j2 + OtherUtils.sizeOfString(readLine, str);
                if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, sizeOfString, false)) {
                    j = sizeOfString;
                    break;
                }
                j2 = sizeOfString;
            }
            if (requestCallBackHandler != null) {
                requestCallBackHandler.updateProgress(contentLength, j, true);
            }
            IOUtils.closeQuietly(inputStream);
            return sb.toString().trim();
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }
}
