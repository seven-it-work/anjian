.class final Lc/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a;->a(Lc/y;)Lc/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/y;

.field final synthetic b:Lc/a;


# direct methods
.method constructor <init>(Lc/a;Lc/y;)V
    .registers 3

    iput-object p1, p0, Lc/a$2;->b:Lc/a;

    iput-object p2, p0, Lc/a$2;->a:Lc/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lc/a$2;->a:Lc/y;

    invoke-interface {v0}, Lc/y;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a;->a(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {v1, v0}, Lc/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    :goto_16
    iget-object v1, p0, Lc/a$2;->b:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a;->a(Z)V

    throw v0
.end method

.method public final read(Lc/c;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {v0}, Lc/a;->j_()V

    :try_start_5
    iget-object v0, p0, Lc/a$2;->a:Lc/y;

    invoke-interface {v0, p1, p2, p3}, Lc/y;->read(Lc/c;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    iget-object p3, p0, Lc/a$2;->b:Lc/a;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lc/a;->a(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    :try_start_15
    iget-object p2, p0, Lc/a$2;->b:Lc/a;

    invoke-virtual {p2, p1}, Lc/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    :goto_1c
    iget-object p2, p0, Lc/a$2;->b:Lc/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lc/a;->a(Z)V

    throw p1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/a$2;->b:Lc/a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a$2;->a:Lc/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
