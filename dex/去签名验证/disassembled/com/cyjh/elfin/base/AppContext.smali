.class public Lcom/cyjh/elfin/base/AppContext;
.super Lbin/mt/signature/KillerApplication;

# interfaces
.implements Lcom/cyjh/elfin/a/a;


# static fields
.field private static final K:Ljava/lang/String; = "AppContext"

.field protected static d:Lcom/cyjh/elfin/base/AppContext;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->f:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->g:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyjh/elfin/base/AppContext;->i:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->j:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->k:Z

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->m:Z

    return-void
.end method

.method public static a()Lcom/cyjh/elfin/base/AppContext;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/base/AppContext;->d:Lcom/cyjh/elfin/base/AppContext;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_39
    .catchall {:try_start_1 .. :try_end_1e} :catchall_37

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2c} :catch_35
    .catchall {:try_start_1e .. :try_end_2c} :catchall_49

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p0

    :catch_35
    move-exception p0

    goto :goto_3b

    :catchall_37
    move-exception p0

    goto :goto_4b

    :catch_39
    move-exception p0

    move-object v1, v0

    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    if-eqz v1, :cond_48

    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_48
    return-object v0

    :catchall_49
    move-exception p0

    move-object v0, v1

    :goto_4b
    if-eqz v0, :cond_55

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_55
    :goto_55
    throw p0
.end method

.method private b()V
    .registers 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/cyjh/elfin/base/AppContext;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->M:Ljava/lang/String;

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initProcess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cyjh/elfin/base/AppContext;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iput-boolean v1, p0, Lcom/cyjh/elfin/base/AppContext;->j:Z

    :cond_34
    iget-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    const-string v2, ":enginfloat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iput-boolean v1, p0, Lcom/cyjh/elfin/base/AppContext;->k:Z

    :cond_40
    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-void
.end method

.method private d()V
    .registers 10

    invoke-static {}, Lcom/cyjh/elfin/base/a;->a()Lcom/cyjh/elfin/base/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/a;->a(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/litepal/f;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/cyjh/elfin/a/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090097

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09010f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "6.1.1"

    const-string v6, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB"

    const-string v7, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ=="

    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/http/b/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/elfin/ad/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->g()V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->f()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method private e()V
    .registers 10

    invoke-static {}, Lcom/cyjh/elfin/base/a;->a()Lcom/cyjh/elfin/base/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/a;->a(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/cyjh/elfin/a/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090097

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09010f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "6.1.1"

    const-string v6, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB"

    const-string v7, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ=="

    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/http/b/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/elfin/ad/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->g()V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->f()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    return-void
.end method

.method private f()V
    .registers 4

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    new-instance v1, Lcom/cyjh/common/util/ah;

    invoke-direct {v1, p0}, Lcom/cyjh/common/util/ah;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/cyjh/common/util/ab;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/cyjh/common/util/af;->a()Lcom/cyjh/common/util/af;

    move-result-object v0

    const-string v1, "small_red_dot"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/common/util/af;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v0

    iget-object v1, v0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-nez v1, :cond_26

    invoke-static {p0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    :cond_26
    invoke-static {}, Lcom/cyjh/elfin/entity/ParamsWrap;->getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/entity/ParamsWrap;->init(Lcom/cyjh/elfin/base/AppContext;)V

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "log"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    return-void
.end method

.method private g()V
    .registers 5

    const-string v0, "579ad79de0f55a8b3c001633"

    const-string v1, "Umeng"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    return-void
.end method

.method private h()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-void
.end method

.method private i()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cyjh/elfin/base/AppContext;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-void
.end method

.method private j()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/base/AppContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private k()V
    .registers 1

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onKillProcess(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/cyjh/elfin/base/AppContext;->d:Lcom/cyjh/elfin/base/AppContext;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lcom/cyjh/elfin/base/AppContext;->b(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/elfin/base/AppContext;->M:Ljava/lang/String;

    const-string p1, "TAG"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/base/AppContext;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_39

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->j:Z

    :cond_39
    iget-object p1, p0, Lcom/cyjh/elfin/base/AppContext;->L:Ljava/lang/String;

    const-string v1, ":enginfloat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    iput-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->k:Z

    :cond_45
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->c()V

    :cond_14
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/b;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2a

    iput-boolean v2, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    if-eqz p1, :cond_38

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;->a()V

    return-void

    :cond_2a
    if-ne p1, v2, :cond_38

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->a:Z

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    if-eqz p1, :cond_38

    iget-object p1, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/b;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/c/b$a;->b()V

    :cond_38
    return-void
.end method

.method public onCreate()V
    .registers 13

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "AppContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/cyjh/elfin/base/AppContext;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/elfin/engin/a/c;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->j:Z

    const v1, 0x7f090098

    const v2, 0x7f09010f

    const v3, 0x7f090097

    if-eqz v0, :cond_93

    invoke-static {}, Lcom/cyjh/elfin/base/a;->a()Lcom/cyjh/elfin/base/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/a;->a(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/litepal/f;->a(Landroid/content/Context;)V

    :goto_41
    sget-object v4, Lcom/cyjh/elfin/a/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/cyjh/elfin/base/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "6.1.1"

    const-string v9, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDQ6aF1yXQM2dS6Wl5IUkpIAPadPpyt8qkhWSFw0OpmDxTPBOnnF/3V0HUbcu0E+xO542sbHX1PYZD1OStHBYOcvc2IuKa7dl/A/uywHZ4fVxSKXrge3MuvDZ6kefbJEcDaCLuc+TOtj7/HlDpblJE7sRVtCYxNQp0T3b3OokyDnwIDAQAB"

    const-string v10, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJU0ITFmX5JkBA2GRHUpd1p+3rigbzwWPKY/6Ir2XlNW3v5WlTBsnj+GX1ReqsUxCysCb13b/g03ctrP4q2FY4KM1ENaAyDTGFdGDqezSEpEVkIRqxwxfmKhbQgV/9aoWRpgScy2Cclas688VL8U80iTzhNkAN8CS3NJEnD5o3MXAgMBAAECgYAh0Je5P29nmR1GB2kaeJRhQSGvDEVJg+yo7REB9YY5MxYE5JCZUfSnhwex8maXnF7gl4Ov7Pzt9+Qi7Tx9gR6lDhjl4w0nxPg7dXwyWGooCkk/JXAs3N3Z8Jdve8mORQLT4IkHrvrt4cahG+U9PZORQ6yww0+uIzRcri32I8rPOQJBAM4ri71N7bczshAx/dJBMG3BP5KKM4c/HpBJo56a8a87yDGbSxrftHV9NSQzll5XNq9nlKcsadgOK1zG8K1DoE0CQQC5Q99FpnL28KaykTn1OBxu402zam49caGu1lkfHOIaK7KKSlRPk2kdDBi9GjpdoCy5S4OL2yMo/WQB91oBUHLzAkEAqr6dqFXVvZfurEL6txqOBRe6kp4qNqQrp8uU2lHwPvP/xDWcadFDHtpnHGgs7EzGWVYrYpgBwJFbkCaiRJxxMQJAbffortonQYcFG9dyVKlyzytjMs1JFHW/qB0Zl4s4dppbhxSpyPZSHWjRwmWwIWTzRyWYtspjq3AFDdm59i+/mwJAJpafiQO32OOG4/T49uPNyXvkyLF+dk8tKNaSGqC/RM44ZbiI7EqkMXtDUwGIxyTKbOK1pvcYHLg7B3dAL/CeTQ=="

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/base/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v4 .. v11}, Lcom/cyjh/common/a/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/http/b/a;->a()Lcom/cyjh/http/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/http/b/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/elfin/ad/a;->a()Lcom/elfin/ad/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/elfin/ad/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->g()V

    invoke-direct {p0}, Lcom/cyjh/elfin/base/AppContext;->f()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/a;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/elfin/floatingwindowprocess/c/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->f()Lcom/cyjh/elfin/floatingwindowprocess/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/c;->b()V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a()V

    invoke-static {}, Lcom/cyjh/http/a/d;->a()Lcom/cyjh/http/a/d;

    move-result-object v0

    iput-object p0, v0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    goto :goto_ce

    :cond_93
    iget-boolean v0, p0, Lcom/cyjh/elfin/base/AppContext;->k:Z

    if-eqz v0, :cond_a4

    invoke-static {}, Lcom/cyjh/elfin/base/a;->a()Lcom/cyjh/elfin/base/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/base/a;->a(Lcom/cyjh/elfin/base/AppContext;)V

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_41

    :cond_a4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyjh/elfin/services/PhoneStateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cyjh/elfin/base/AppContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    new-instance v2, Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    sget-object v3, Lcom/cyjh/elfin/base/AppContext;->d:Lcom/cyjh/elfin/base/AppContext;

    invoke-direct {v2, v3}, Lcom/cyjh/elfin/floatingwindowprocess/b/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cyjh/elfin/floatingwindowprocess/c/e;

    invoke-direct {v3, v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/c/e;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V

    iput-object v3, v2, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {p0}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->a(Landroid/app/Application;)V

    :goto_ce
    invoke-static {p0}, Lcom/cyjh/common/util/toast/q;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onTerminate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {}, Lcom/cyjh/http/a/b;->a()Lcom/cyjh/http/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/a/b;->b()V

    return-void
.end method
