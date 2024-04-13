.class public final Lc/q;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lc/f;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:[Lc/f;


# direct methods
.method private constructor <init>([Lc/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lc/q;->a:[Lc/f;

    return-void
.end method

.method private a(I)Lc/f;
    .registers 3

    iget-object v0, p0, Lc/q;->a:[Lc/f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static varargs a([Lc/f;)Lc/q;
    .registers 2

    new-instance v0, Lc/q;

    invoke-virtual {p0}, [Lc/f;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lc/f;

    invoke-direct {v0, p0}, Lc/q;-><init>([Lc/f;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lc/q;->a:[Lc/f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lc/q;->a:[Lc/f;

    array-length v0, v0

    return v0
.end method
