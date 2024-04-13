.class final Lcom/google/a/f/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/f/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/a/i/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/f/a/a/b$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/a/f/a/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/a/i/b/d;Lcom/google/a/i/b/d;)I
    .registers 6

    iget p2, p2, Lcom/google/a/i/b/d;->c:F

    iget p1, p1, Lcom/google/a/i/b/d;->c:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    cmpl-double v2, p1, v0

    if-lez v2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/a/i/b/d;

    check-cast p2, Lcom/google/a/i/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/f/a/a/b$a;->compare(Lcom/google/a/i/b/d;Lcom/google/a/i/b/d;)I

    move-result p1

    return p1
.end method
