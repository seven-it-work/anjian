.class public Lcom/umeng/commonsdk/proguard/bl;
.super Lcom/umeng/commonsdk/proguard/bn;


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/bn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    if-nez v0, :cond_d

    new-instance p1, Lcom/umeng/commonsdk/proguard/bo;

    const/4 p2, 0x1

    const-string p3, "Cannot read from null inputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_1d

    if-gez p1, :cond_1c

    new-instance p1, Lcom/umeng/commonsdk/proguard/bo;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/bo;-><init>(I)V

    throw p1

    :cond_1c
    return p1

    :catch_1d
    move-exception p1

    new-instance p2, Lcom/umeng/commonsdk/proguard/bo;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    return-void
.end method

.method public b([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    new-instance p1, Lcom/umeng/commonsdk/proguard/bo;

    const/4 p2, 0x1

    const-string p3, "Cannot write to null outputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    new-instance p2, Lcom/umeng/commonsdk/proguard/bo;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_5
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_f
    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/bl;->a:Ljava/io/InputStream;

    :cond_11
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_21

    :try_start_15
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1f
    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    :cond_21
    return-void
.end method

.method public d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    new-instance v0, Lcom/umeng/commonsdk/proguard/bo;

    const/4 v1, 0x1

    const-string v2, "Cannot flush null outputStream"

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/bl;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    new-instance v1, Lcom/umeng/commonsdk/proguard/bo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/umeng/commonsdk/proguard/bo;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
