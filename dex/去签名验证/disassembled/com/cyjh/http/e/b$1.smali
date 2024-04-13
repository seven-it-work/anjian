.class public final Lcom/cyjh/http/e/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/http/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/http/e/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/e/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cyjh/http/e/b;


# direct methods
.method public constructor <init>(Lcom/cyjh/http/e/b;Lcom/cyjh/http/e/b$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    iput-object p2, p0, Lcom/cyjh/http/e/b$1;->a:Lcom/cyjh/http/e/b$a;

    iput-object p3, p0, Lcom/cyjh/http/e/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyjh/http/e/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/e;Lb/ae;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x800

    new-array p1, p1, [B

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cyjh/http/e/b$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cyjh/http/e/b$1;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1c
    iget-object v2, p2, Lb/ae;->g:Lb/af;

    invoke-virtual {v2}, Lb/af;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_9c
    .catchall {:try_start_1c .. :try_end_22} :catchall_98

    :try_start_22
    iget-object p2, p2, Lb/ae;->g:Lb/af;

    invoke-virtual {p2}, Lb/af;->contentLength()J

    move-result-wide v3

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2d} :catch_94
    .catchall {:try_start_22 .. :try_end_2d} :catchall_91

    const-wide/16 v5, 0x0

    :goto_2f
    :try_start_2f
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v0, v7, :cond_5c

    invoke-virtual {p2, p1, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, v0

    add-long v9, v5, v7

    iget-object v5, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    iget-object v6, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    invoke-static {v6}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;I)I

    long-to-float v0, v9

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v0, v0, v5

    long-to-float v5, v3

    div-float/2addr v0, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v0, v0, v5

    float-to-int v0, v0

    iget-object v5, p0, Lcom/cyjh/http/e/b$1;->a:Lcom/cyjh/http/e/b$a;

    invoke-interface {v5, v0}, Lcom/cyjh/http/e/b$a;->a(I)V

    move-wide v5, v9

    goto :goto_2f

    :cond_5c
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    iget-object p1, p0, Lcom/cyjh/http/e/b$1;->a:Lcom/cyjh/http/e/b$a;

    invoke-interface {p1, v1}, Lcom/cyjh/http/e/b$a;->a(Ljava/io/File;)V

    iget-object p1, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    invoke-static {p1, v8}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;I)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_69} :catch_8f
    .catchall {:try_start_2f .. :try_end_69} :catchall_8d

    if-eqz v2, :cond_6e

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lcom/cyjh/http/e/b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "download 3 --> downLoadLength="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    invoke-static {v0}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_8c} :catch_8c

    :catch_8c
    return-void

    :catchall_8d
    move-exception p1

    goto :goto_cb

    :catch_8f
    move-exception p1

    goto :goto_96

    :catchall_91
    move-exception p1

    move-object p2, v0

    goto :goto_cb

    :catch_94
    move-exception p1

    move-object p2, v0

    :goto_96
    move-object v0, v2

    goto :goto_9e

    :catchall_98
    move-exception p1

    move-object p2, v0

    move-object v2, p2

    goto :goto_cb

    :catch_9c
    move-exception p1

    move-object p2, v0

    :goto_9e
    :try_start_9e
    iget-object v1, p0, Lcom/cyjh/http/e/b$1;->a:Lcom/cyjh/http/e/b$a;

    invoke-interface {v1, p1}, Lcom/cyjh/http/e/b$a;->a(Ljava/lang/Exception;)V
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_c9

    if-eqz v0, :cond_a8

    :try_start_a5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a8
    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_ad
    invoke-static {}, Lcom/cyjh/http/e/b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "download 3 --> downLoadLength="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    invoke-static {v0}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_c8} :catch_c8

    :catch_c8
    return-void

    :catchall_c9
    move-exception p1

    move-object v2, v0

    :goto_cb
    if-eqz v2, :cond_d0

    :try_start_cd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d0
    if-eqz p2, :cond_d5

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_d5
    invoke-static {}, Lcom/cyjh/http/e/b;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download 3 --> downLoadLength="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/http/e/b$1;->d:Lcom/cyjh/http/e/b;

    invoke-static {v1}, Lcom/cyjh/http/e/b;->a(Lcom/cyjh/http/e/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_f0} :catch_f0

    :catch_f0
    throw p1
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/e/b$1;->a:Lcom/cyjh/http/e/b$a;

    invoke-interface {v0, p1}, Lcom/cyjh/http/e/b$a;->a(Ljava/lang/Exception;)V

    return-void
.end method
