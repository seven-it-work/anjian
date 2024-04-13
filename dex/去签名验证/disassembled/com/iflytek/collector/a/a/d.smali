.class public Lcom/iflytek/collector/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lcom/iflytek/collector/a/a/g$a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/collector/a/a/e;

    invoke-direct {v0, p0}, Lcom/iflytek/collector/a/a/e;-><init>(Lcom/iflytek/collector/a/a/d;)V

    iput-object v0, p0, Lcom/iflytek/collector/a/a/d;->b:Lcom/iflytek/collector/a/a/g$a;

    iput-object p1, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/iflytek/collector/a/a/d;->c:Z

    return-void
.end method

.method private a()V
    .registers 6

    const-wide/16 v0, 0x2710

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct {p0}, Lcom/iflytek/collector/a/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lcom/iflytek/collector/a/a/g;

    invoke-direct {v0}, Lcom/iflytek/collector/a/a/g;-><init>()V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/iflytek/collector/a/a/g;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/collector/a/a/g;->a(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/collector/a/a/b;->a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/collector/a/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/collector/a/a/b;->a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/collector/a/a/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ver"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "https://logconf.iflytek.com/hotupdate"

    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/iflytek/collector/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/iflytek/collector/a/a/d;->b:Lcom/iflytek/collector/a/a/g$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/collector/a/a/g;->b(Lcom/iflytek/collector/a/a/g$a;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    :cond_59
    return-void

    :catch_5a
    const-string v0, "Collector"

    const-string v1, "exception occur while update dex"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/collector/a/a/d;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/collector/a/a/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "dex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iflytek/collector/a/a/d;->a([B)V

    goto :goto_2a

    :cond_23
    const-string p1, "Collector"

    const-string v0, "no need to update"

    invoke-static {p1, v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/iflytek/collector/a/a/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private a([B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/b;->a(Landroid/content/Context;)Lcom/iflytek/collector/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/b;->d()V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_3f
    .catchall {:try_start_20 .. :try_end_25} :catchall_3c

    :try_start_25
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_3a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_48

    :try_start_2a
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_37
    .catchall {:try_start_2a .. :try_end_2d} :catchall_34

    invoke-static {v1}, Lcom/iflytek/collector/a/a/d;->a(Ljava/io/Closeable;)V

    :goto_30
    invoke-static {v2}, Lcom/iflytek/collector/a/a/d;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_34
    move-exception p1

    move-object v0, v1

    goto :goto_49

    :catch_37
    move-exception p1

    move-object v0, v1

    goto :goto_41

    :catch_3a
    move-exception p1

    goto :goto_41

    :catchall_3c
    move-exception p1

    move-object v2, v0

    goto :goto_49

    :catch_3f
    move-exception p1

    move-object v2, v0

    :goto_41
    :try_start_41
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    invoke-static {v0}, Lcom/iflytek/collector/a/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_30

    :catchall_48
    move-exception p1

    :goto_49
    invoke-static {v0}, Lcom/iflytek/collector/a/a/d;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/iflytek/collector/a/a/d;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private b()Z
    .registers 9

    iget-boolean v0, p0, Lcom/iflytek/collector/a/a/d;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/iflytek/collector/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/collector/a/a/k;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v2, "last_check_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v6, v2

    if-lez v0, :cond_24

    return v1

    :cond_24
    const/4 v0, 0x0

    return v0

    :cond_26
    return v1
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/collector/a/a/d;->a()V

    return-void
.end method
