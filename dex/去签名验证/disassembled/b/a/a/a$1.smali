.class final Lb/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a;->a(Lb/a/a/b;Lb/ae;)Lb/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lc/e;

.field final synthetic c:Lb/a/a/b;

.field final synthetic d:Lc/d;

.field final synthetic e:Lb/a/a/a;


# direct methods
.method constructor <init>(Lb/a/a/a;Lc/e;Lb/a/a/b;Lc/d;)V
    .registers 5

    iput-object p1, p0, Lb/a/a/a$1;->e:Lb/a/a/a;

    iput-object p2, p0, Lb/a/a/a$1;->b:Lc/e;

    iput-object p3, p0, Lb/a/a/a$1;->c:Lb/a/a/b;

    iput-object p4, p0, Lb/a/a/a$1;->d:Lc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-boolean v0, p0, Lb/a/a/a$1;->a:Z

    if-nez v0, :cond_14

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lb/a/c;->a(Lc/y;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a$1;->a:Z

    iget-object v0, p0, Lb/a/a/a$1;->c:Lb/a/a/b;

    invoke-interface {v0}, Lb/a/a/b;->a()V

    :cond_14
    iget-object v0, p0, Lb/a/a/a$1;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->close()V

    return-void
.end method

.method public final read(Lc/c;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lb/a/a/a$1;->b:Lc/e;

    invoke-interface {v1, p1, p2, p3}, Lc/e;->read(Lc/c;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_2e

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lb/a/a/a$1;->a:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lb/a/a/a$1;->a:Z

    iget-object p1, p0, Lb/a/a/a$1;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lb/a/a/a$1;->d:Lc/d;

    invoke-interface {v0}, Lc/d;->a()Lc/c;

    move-result-object v3

    iget-wide v0, p1, Lc/c;->c:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lc/c;->a(Lc/c;JJ)Lc/c;

    iget-object p1, p0, Lb/a/a/a$1;->d:Lc/d;

    invoke-interface {p1}, Lc/d;->y()Lc/d;

    return-wide p2

    :catch_2e
    move-exception p1

    iget-boolean p2, p0, Lb/a/a/a$1;->a:Z

    if-nez p2, :cond_3a

    iput-boolean v0, p0, Lb/a/a/a$1;->a:Z

    iget-object p2, p0, Lb/a/a/a$1;->c:Lb/a/a/b;

    invoke-interface {p2}, Lb/a/a/b;->a()V

    :cond_3a
    throw p1
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/a/a$1;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method
