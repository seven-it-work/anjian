.class public abstract Lcom/b/a/aq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/b/a/aq;
    .registers 6

    array-length v0, p0

    if-nez p0, :cond_b

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "content == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    array-length v1, p0

    int-to-long v1, v1

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/b/a/a/c;->a(JJ)V

    new-instance v1, Lcom/b/a/ar;

    invoke-direct {v1, v0, p0}, Lcom/b/a/ar;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Lcom/b/a/ah;
.end method

.method public abstract a(Lcom/b/b/g;)V
.end method

.method public b()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
