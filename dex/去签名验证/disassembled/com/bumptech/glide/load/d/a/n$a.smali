.class final Lcom/bumptech/glide/load/d/a/n$a;
.super Lcom/bumptech/glide/load/d/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .registers 5

    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_b

    return p2

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public final a()I
    .registers 2

    sget v0, Lcom/bumptech/glide/load/d/a/n$g;->QUALITY$3973276c:I

    return v0
.end method
