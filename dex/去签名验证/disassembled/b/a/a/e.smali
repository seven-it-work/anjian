.class Lb/a/a/e;
.super Lc/h;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lc/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/h;-><init>(Lc/x;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public final a(Lc/c;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/a/e;->a:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2, p3}, Lc/c;->h(J)V

    return-void

    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lc/h;->a(Lc/c;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a/a/e;->a:Z

    invoke-virtual {p0}, Lb/a/a/e;->a()V

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/a/e;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lc/h;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/e;->a:Z

    invoke-virtual {p0}, Lb/a/a/e;->a()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/a/e;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lc/h;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/e;->a:Z

    invoke-virtual {p0}, Lb/a/a/e;->a()V

    return-void
.end method
