.class final Lcom/google/a/i/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/i/b/e;
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


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/i/b/e$a;->average:F

    return-void
.end method

.method synthetic constructor <init>(FLcom/google/a/i/b/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/a/i/b/e$a;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/a/i/b/d;Lcom/google/a/i/b/d;)I
    .registers 5

    iget v0, p2, Lcom/google/a/i/b/d;->d:I

    iget v1, p1, Lcom/google/a/i/b/d;->d:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_21

    iget p1, p1, Lcom/google/a/i/b/d;->c:F

    iget v0, p0, Lcom/google/a/i/b/e$a;->average:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p2, Lcom/google/a/i/b/d;->c:F

    iget v0, p0, Lcom/google/a/i/b/e$a;->average:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    :cond_21
    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/a/i/b/d;

    check-cast p2, Lcom/google/a/i/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/i/b/e$a;->compare(Lcom/google/a/i/b/d;Lcom/google/a/i/b/d;)I

    move-result p1

    return p1
.end method
