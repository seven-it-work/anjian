package com.lidroid.xutils.exception;

/* loaded from: classes.dex */
public class DbException extends BaseException {
    private static final long serialVersionUID = 1;

    public DbException() {
    }

    public DbException(String str) {
        super(str);
    }

    public DbException(String str, Throwable th) {
        super(str, th);
    }

    public DbException(Throwable th) {
        super(th);
    }
}
