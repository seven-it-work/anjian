.class final Lb/af$a;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lc/e;

.field private final b:Ljava/nio/charset/Charset;

.field private c:Z

.field private d:Ljava/io/Reader;


# direct methods
.method constructor <init>(Lc/e;Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lb/af$a;->a:Lc/e;

    iput-object p2, p0, Lb/af$a;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/af$a;->c:Z

    iget-object v0, p0, Lb/af$a;->d:Ljava/io/Reader;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lb/af$a;->d:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void

    :cond_d
    iget-object v0, p0, Lb/af$a;->a:Lc/e;

    invoke-interface {v0}, Lc/e;->close()V

    return-void
.end method

.method public final read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/af$a;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-object v0, p0, Lb/af$a;->d:Ljava/io/Reader;

    if-nez v0, :cond_26

    iget-object v0, p0, Lb/af$a;->a:Lc/e;

    iget-object v1, p0, Lb/af$a;->b:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lb/a/c;->a(Lc/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lb/af$a;->a:Lc/e;

    invoke-interface {v2}, Lc/e;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lb/af$a;->d:Ljava/io/Reader;

    move-object v0, v1

    :cond_26
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1
.end method
