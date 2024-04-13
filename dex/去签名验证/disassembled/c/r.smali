.class public final Lc/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/r$b;,
        Lc/r$a;
    }
.end annotation


# instance fields
.field final a:J

.field final b:Lc/c;

.field c:Z

.field d:Z

.field private final e:Lc/x;

.field private final f:Lc/y;


# direct methods
.method private constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    iput-object v0, p0, Lc/r;->b:Lc/c;

    new-instance v0, Lc/r$a;

    invoke-direct {v0, p0}, Lc/r$a;-><init>(Lc/r;)V

    iput-object v0, p0, Lc/r;->e:Lc/x;

    new-instance v0, Lc/r$b;

    invoke-direct {v0, p0}, Lc/r$b;-><init>(Lc/r;)V

    iput-object v0, p0, Lc/r;->f:Lc/y;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxBufferSize < 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iput-wide p1, p0, Lc/r;->a:J

    return-void
.end method

.method private a()Lc/y;
    .registers 2

    iget-object v0, p0, Lc/r;->f:Lc/y;

    return-object v0
.end method

.method private b()Lc/x;
    .registers 2

    iget-object v0, p0, Lc/r;->e:Lc/x;

    return-object v0
.end method
