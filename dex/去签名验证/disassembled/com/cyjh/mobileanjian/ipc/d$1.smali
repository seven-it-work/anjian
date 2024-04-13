.class final Lcom/cyjh/mobileanjian/ipc/d$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/Process;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Process;

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/d;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Ljava/lang/Process;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d$1;->b:Lcom/cyjh/mobileanjian/ipc/d;

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/d$1;->a:Ljava/lang/Process;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$1;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_29
    .catchall {:try_start_10 .. :try_end_14} :catchall_1f

    if-nez v0, :cond_10

    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_28
    throw v0

    :catch_29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
