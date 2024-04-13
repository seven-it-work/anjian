.class final Lc/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lc/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;->a(Lc/x;)Lc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/x;

.field final synthetic b:Lc/a;


# direct methods
.method constructor <init>(Lc/a;Lc/x;)V
    .registers 3

    iput-object p1, p0, Lc/a$1;->b:Lc/a;

    iput-object p2, p0, Lc/a$1;->a:Lc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lc/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc/ab;->a(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_51

    iget-object v2, p1, Lc/c;->b:Lc/u;

    :goto_10
    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-gez v4, :cond_2b

    iget-object v2, p1, Lc/c;->b:Lc/u;

    iget v2, v2, Lc/u;->e:I

    iget-object v3, p1, Lc/c;->b:Lc/u;

    iget v3, v3, Lc/u;->d:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    cmp-long v0, v4, p2

    if-ltz v0, :cond_29

    move-wide v0, p2

    goto :goto_2b

    :cond_29
    move-wide v0, v4

    goto :goto_10

    :cond_2b
    :goto_2b
    iget-object v2, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {v2}, Lc/a;->j_()V

    :try_start_30
    iget-object v2, p0, Lc/a$1;->a:Lc/x;

    invoke-interface {v2, p1, v0, v1}, Lc/x;->a(Lc/c;J)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_42
    .catchall {:try_start_30 .. :try_end_35} :catchall_40

    const/4 v2, 0x0

    sub-long v2, p2, v0

    iget-object p2, p0, Lc/a$1;->b:Lc/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lc/a;->a(Z)V

    move-wide p2, v2

    goto :goto_8

    :catchall_40
    move-exception p1

    goto :goto_4a

    :catch_42
    move-exception p1

    :try_start_43
    iget-object p2, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {p2, p1}, Lc/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    :goto_4a
    iget-object p2, p0, Lc/a$1;->b:Lc/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lc/a;->a(Z)V

    throw p1

    :cond_51
    return-void
.end method

.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {v0}, Lc/a;->j_()V

    :try_start_5
    iget-object v0, p0, Lc/a$1;->a:Lc/x;

    invoke-interface {v0}, Lc/x;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    iget-object v0, p0, Lc/a$1;->b:Lc/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a;->a(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {v1, v0}, Lc/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lc/a$1;->b:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {v0}, Lc/a;->j_()V

    :try_start_5
    iget-object v0, p0, Lc/a$1;->a:Lc/x;

    invoke-interface {v0}, Lc/x;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    iget-object v0, p0, Lc/a$1;->b:Lc/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a;->a(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    :try_start_14
    iget-object v1, p0, Lc/a$1;->b:Lc/a;

    invoke-virtual {v1, v0}, Lc/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    :goto_1b
    iget-object v1, p0, Lc/a$1;->b:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a;->a(Z)V

    throw v0
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/a$1;->b:Lc/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a$1;->a:Lc/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
