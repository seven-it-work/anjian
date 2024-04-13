.class public final Lb/a/a/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:[Lc/y;

.field public final synthetic d:Lb/a/a/d;

.field private final e:[J


# direct methods
.method constructor <init>(Lb/a/a/d;Ljava/lang/String;J[Lc/y;[J)V
    .registers 7

    iput-object p1, p0, Lb/a/a/d$c;->d:Lb/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/a/a/d$c;->a:Ljava/lang/String;

    iput-wide p3, p0, Lb/a/a/d$c;->b:J

    iput-object p5, p0, Lb/a/a/d$c;->c:[Lc/y;

    iput-object p6, p0, Lb/a/a/d$c;->e:[J

    return-void
.end method

.method private a(I)Lc/y;
    .registers 3

    iget-object v0, p0, Lb/a/a/d$c;->c:[Lc/y;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/a/a/d$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lb/a/a/d$c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lb/a/a/d$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(I)J
    .registers 5

    iget-object v0, p0, Lb/a/a/d$c;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private b()Lb/a/a/d$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/a/a/d$c;->d:Lb/a/a/d;

    iget-object v1, p0, Lb/a/a/d$c;->a:Ljava/lang/String;

    iget-wide v2, p0, Lb/a/a/d$c;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/d;->a(Ljava/lang/String;J)Lb/a/a/d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .registers 5

    iget-object v0, p0, Lb/a/a/d$c;->c:[Lc/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-static {v3}, Lb/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
