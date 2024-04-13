.class final Lcom/umeng/commonsdk/proguard/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/e$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_87

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/e$1;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/e$1;->b:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/stateless/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "umpx_crash"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    const/16 v3, 0x32

    invoke-static {v2, v1, v3}, Lcom/umeng/commonsdk/stateless/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    invoke-direct {v1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_84

    :try_start_4c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "crash"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "tp"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/e$1;->a:Landroid/content/Context;

    const-string v4, "umpx_internal"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_82

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_82} :catch_82
    .catchall {:try_start_4c .. :try_end_82} :catchall_84

    :catch_82
    :cond_82
    :try_start_82
    monitor-exit p0

    return-void

    :catchall_84
    move-exception v0

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_84

    :try_start_86
    throw v0
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_87} :catch_87

    :catch_87
    return-void
.end method
