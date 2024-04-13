.class final Lb/a/e/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lc/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lb/a/e/a;

.field private final b:Lc/j;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Lb/a/e/a;J)V
    .registers 5

    iput-object p1, p0, Lb/a/e/a$d;->a:Lb/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/j;

    iget-object v0, p0, Lb/a/e/a$d;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->timeout()Lc/z;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/j;-><init>(Lc/z;)V

    iput-object p1, p0, Lb/a/e/a$d;->b:Lc/j;

    iput-wide p2, p0, Lb/a/e/a$d;->d:J

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

    iget-boolean v0, p0, Lb/a/e/a$d;->c:Z

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    iget-wide v0, p1, Lc/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lb/a/c;->a(JJJ)V

    iget-wide v0, p0, Lb/a/e/a$d;->d:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_38

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lb/a/e/a$d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v0, p0, Lb/a/e/a$d;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0, p1, p2, p3}, Lc/d;->a(Lc/c;J)V

    iget-wide v0, p0, Lb/a/e/a$d;->d:J

    sub-long v2, v0, p2

    iput-wide v2, p0, Lb/a/e/a$d;->d:J

    return-void
.end method

.method public final close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/e/a$d;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/e/a$d;->c:Z

    iget-wide v0, p0, Lb/a/e/a$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lb/a/e/a$d;->b:Lc/j;

    invoke-static {v0}, Lb/a/e/a;->a(Lc/j;)V

    iget-object v0, p0, Lb/a/e/a$d;->a:Lb/a/e/a;

    const/4 v1, 0x3

    iput v1, v0, Lb/a/e/a;->f:I

    return-void
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/e/a$d;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lb/a/e/a$d;->a:Lb/a/e/a;

    iget-object v0, v0, Lb/a/e/a;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    return-void
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lb/a/e/a$d;->b:Lc/j;

    return-object v0
.end method
