.class public abstract Lcom/github/kevinsawicki/http/HttpRequest$Operation;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->run()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_15
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    :try_start_5
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->done()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_10
    move-exception v0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_1f

    :catch_15
    move-exception v1

    :try_start_16
    new-instance v2, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_1c
    move-exception v1

    throw v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    :goto_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest$Operation;->done()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception v2

    if-nez v0, :cond_2c

    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;

    invoke-direct {v0, v2}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2c
    :goto_2c
    throw v1
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
