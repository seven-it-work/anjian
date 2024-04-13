.class public final Lb/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/d$a;->c:I

    iput v0, p0, Lb/d$a;->d:I

    iput v0, p0, Lb/d$a;->e:I

    return-void
.end method

.method private a(ILjava/util/concurrent/TimeUnit;)Lb/d$a;
    .registers 6

    if-gez p1, :cond_16

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxAge < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_16
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_26

    const p1, 0x7fffffff

    goto :goto_27

    :cond_26
    long-to-int p1, p1

    :goto_27
    iput p1, p0, Lb/d$a;->c:I

    return-object p0
.end method

.method private a(Ljava/util/concurrent/TimeUnit;)Lb/d$a;
    .registers 6

    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_f

    const p1, 0x7fffffff

    goto :goto_10

    :cond_f
    long-to-int p1, v2

    :goto_10
    iput p1, p0, Lb/d$a;->d:I

    return-object p0
.end method

.method private b()Lb/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d$a;->a:Z

    return-object p0
.end method

.method private b(ILjava/util/concurrent/TimeUnit;)Lb/d$a;
    .registers 6

    if-gez p1, :cond_16

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minFresh < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_16
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_26

    const p1, 0x7fffffff

    goto :goto_27

    :cond_26
    long-to-int p1, p1

    :goto_27
    iput p1, p0, Lb/d$a;->e:I

    return-object p0
.end method

.method private c()Lb/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d$a;->b:Z

    return-object p0
.end method

.method private d()Lb/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d$a;->f:Z

    return-object p0
.end method

.method private e()Lb/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d$a;->g:Z

    return-object p0
.end method

.method private f()Lb/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/d$a;->h:Z

    return-object p0
.end method


# virtual methods
.method public final a()Lb/d;
    .registers 2

    new-instance v0, Lb/d;

    invoke-direct {v0, p0}, Lb/d;-><init>(Lb/d$a;)V

    return-object v0
.end method
