.class public final Lcom/cyjh/mobileanjian/ipc/utils/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/FileWriter;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->a:Ljava/io/File;

    :try_start_e
    new-instance p1, Ljava/io/FileWriter;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->a:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->b:Ljava/io/FileWriter;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_17} :catch_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->b:Ljava/io/FileWriter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "yyyy-MM-hh HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->b:Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/utils/f;->b:Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/FileWriter;->flush()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
