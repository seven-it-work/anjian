.class public final Lcom/google/a/i/a/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    return-void
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    return v0
.end method


# virtual methods
.method public final a([Lcom/google/a/t;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x2

    aget-object v3, p1, v2

    aput-object v3, p1, v0

    aput-object v1, p1, v2

    :cond_15
    return-void
.end method
