.class final Lcom/cyjh/mobileanjian/ipc/d$2;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/d;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/d;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->b:Lcom/cyjh/mobileanjian/ipc/d;

    iput-boolean p3, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->a:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->b:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v2, v2, Lcom/cyjh/mobileanjian/ipc/d;->f:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    const-string v2, "rootOK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->b:Lcom/cyjh/mobileanjian/ipc/d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/d;->d:Z

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->b:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->b:Lcom/cyjh/mobileanjian/ipc/d;

    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/d;->b:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;

    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;->onObtained()V

    :cond_2e
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/d$2;->a:Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_30} :catch_3d
    .catchall {:try_start_e .. :try_end_30} :catchall_3b

    if-nez v1, :cond_e

    :cond_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_3b
    move-exception v1

    goto :goto_4a

    :catch_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    :try_start_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_52
    throw v1
.end method
