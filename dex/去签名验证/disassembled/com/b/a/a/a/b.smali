.class final Lcom/b/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/b/x;


# instance fields
.field a:Z

.field final synthetic b:Lcom/b/b/h;

.field final synthetic c:Lcom/b/a/a/a/c;

.field final synthetic d:Lcom/b/b/g;

.field final synthetic e:Lcom/b/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a;Lcom/b/b/h;Lcom/b/a/a/a/c;Lcom/b/b/g;)V
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/a/b;->e:Lcom/b/a/a/a/a;

    iput-object p2, p0, Lcom/b/a/a/a/b;->b:Lcom/b/b/h;

    iput-object p3, p0, Lcom/b/a/a/a/b;->c:Lcom/b/a/a/a/c;

    iput-object p4, p0, Lcom/b/a/a/a/b;->d:Lcom/b/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/f;J)J
    .registers 12

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/b/a/a/a/b;->b:Lcom/b/b/h;

    invoke-interface {v1, p1, p2, p3}, Lcom/b/b/h;->a(Lcom/b/b/f;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    iget-boolean p1, p0, Lcom/b/a/a/a/b;->a:Z

    if-nez p1, :cond_18

    iput-boolean v0, p0, Lcom/b/a/a/a/b;->a:Z

    iget-object p1, p0, Lcom/b/a/a/a/b;->d:Lcom/b/b/g;

    invoke-interface {p1}, Lcom/b/b/g;->close()V

    :cond_18
    return-wide v1

    :cond_19
    iget-object v0, p0, Lcom/b/a/a/a/b;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->c()Lcom/b/b/f;

    move-result-object v3

    invoke-virtual {p1}, Lcom/b/b/f;->b()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/b/b/f;->a(Lcom/b/b/f;JJ)Lcom/b/b/f;

    iget-object p1, p0, Lcom/b/a/a/a/b;->d:Lcom/b/b/g;

    invoke-interface {p1}, Lcom/b/b/g;->p()Lcom/b/b/g;

    return-wide p2

    :catch_30
    move-exception p1

    iget-boolean p2, p0, Lcom/b/a/a/a/b;->a:Z

    if-nez p2, :cond_37

    iput-boolean v0, p0, Lcom/b/a/a/a/b;->a:Z

    :cond_37
    throw p1
.end method

.method public final a()Lcom/b/b/y;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b;->b:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/a/b;->a:Z

    if-nez v0, :cond_f

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lcom/b/a/a/c;->a(Lcom/b/b/x;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/a/b;->a:Z

    :cond_f
    iget-object v0, p0, Lcom/b/a/a/a/b;->b:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->close()V

    return-void
.end method
