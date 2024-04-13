.class final Lb/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/c;


# direct methods
.method constructor <init>(Lb/c;)V
    .registers 2

    iput-object p1, p0, Lb/c$1;->a:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/ae;)Lb/a/a/b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c$1;->a:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->a(Lb/ae;)Lb/a/a/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/ac;)Lb/ae;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c$1;->a:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->a(Lb/ac;)Lb/ae;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lb/c$1;->a:Lb/c;

    invoke-virtual {v0}, Lb/c;->a()V

    return-void
.end method

.method public final a(Lb/a/a/c;)V
    .registers 3

    iget-object v0, p0, Lb/c$1;->a:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->a(Lb/a/a/c;)V

    return-void
.end method

.method public final a(Lb/ae;Lb/ae;)V
    .registers 7

    new-instance v0, Lb/c$c;

    invoke-direct {v0, p2}, Lb/c$c;-><init>(Lb/ae;)V

    iget-object p1, p1, Lb/ae;->g:Lb/af;

    check-cast p1, Lb/c$b;

    iget-object p1, p1, Lb/c$b;->a:Lb/a/a/d$c;

    :try_start_b
    iget-object p2, p1, Lb/a/a/d$c;->d:Lb/a/a/d;

    iget-object v1, p1, Lb/a/a/d$c;->a:Ljava/lang/String;

    iget-wide v2, p1, Lb/a/a/d$c;->b:J

    invoke-virtual {p2, v1, v2, v3}, Lb/a/a/d;->a(Ljava/lang/String;J)Lb/a/a/d$a;

    move-result-object p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_1e

    if-eqz p1, :cond_1d

    :try_start_17
    invoke-virtual {v0, p1}, Lb/c$c;->a(Lb/a/a/d$a;)V

    invoke-virtual {p1}, Lb/a/a/d$a;->b()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1f

    :cond_1d
    return-void

    :catch_1e
    const/4 p1, 0x0

    :catch_1f
    invoke-static {p1}, Lb/c;->a(Lb/a/a/d$a;)V

    return-void
.end method

.method public final b(Lb/ac;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c$1;->a:Lb/c;

    invoke-virtual {v0, p1}, Lb/c;->b(Lb/ac;)V

    return-void
.end method
