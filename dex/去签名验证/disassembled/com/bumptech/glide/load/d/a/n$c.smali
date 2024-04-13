.class final Lcom/bumptech/glide/load/d/a/n$c;
.super Lcom/bumptech/glide/load/d/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .registers 6

    sget-object v0, Lcom/bumptech/glide/load/d/a/n$c;->a:Lcom/bumptech/glide/load/d/a/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public final a()I
    .registers 2

    sget v0, Lcom/bumptech/glide/load/d/a/n$g;->QUALITY$3973276c:I

    return v0
.end method
