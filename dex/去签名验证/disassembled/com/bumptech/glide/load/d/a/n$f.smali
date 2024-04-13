.class final Lcom/bumptech/glide/load/d/a/n$f;
.super Lcom/bumptech/glide/load/d/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
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

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final a()I
    .registers 2

    sget v0, Lcom/bumptech/glide/load/d/a/n$g;->QUALITY$3973276c:I

    return v0
.end method
