.class final Lcom/bumptech/glide/load/d/a/n$d;
.super Lcom/bumptech/glide/load/d/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final a()I
    .registers 2

    sget v0, Lcom/bumptech/glide/load/d/a/n$g;->QUALITY$3973276c:I

    return v0
.end method
