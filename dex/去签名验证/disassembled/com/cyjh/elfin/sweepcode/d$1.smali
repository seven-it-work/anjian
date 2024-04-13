.class final Lcom/cyjh/elfin/sweepcode/d$1;
.super Lcom/cyjh/elfin/e/c/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/sweepcode/d;->a(Ljava/lang/String;Lcom/cyjh/elfin/sweepcode/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyjh/elfin/e/c/q$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/sweepcode/d$a;

.field final synthetic c:Lcom/cyjh/elfin/sweepcode/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/sweepcode/d;Ljava/lang/String;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/d$1;->c:Lcom/cyjh/elfin/sweepcode/d;

    iput-object p2, p0, Lcom/cyjh/elfin/sweepcode/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/elfin/sweepcode/d$1;->b:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-direct {p0}, Lcom/cyjh/elfin/e/c/q$b;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/d$1;->b:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$1;->b:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-interface {v0, p1}, Lcom/cyjh/elfin/sweepcode/d$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v0, Lnet/sourceforge/zbar/Image;

    const-string v2, "RGB4"

    invoke-direct {v0, v7, v8, v2}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    mul-int v2, v7, v8

    new-array v9, v2, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0, v9}, Lnet/sourceforge/zbar/Image;->setData([I)V

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/d$1;->c:Lcom/cyjh/elfin/sweepcode/d;

    const-string v2, "Y800"

    invoke-virtual {v0, v2}, Lnet/sourceforge/zbar/Image;->convert(Ljava/lang/String;)Lnet/sourceforge/zbar/Image;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/elfin/sweepcode/d;->a(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    new-instance v0, Lnet/sourceforge/zbar/Image;

    const-string v2, "RGB4"

    invoke-direct {v0, v7, v8, v2}, Lnet/sourceforge/zbar/Image;-><init>(IILjava/lang/String;)V

    mul-int v2, v7, v8

    new-array v9, v2, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v0, v9}, Lnet/sourceforge/zbar/Image;->setData([I)V

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/d$1;->c:Lcom/cyjh/elfin/sweepcode/d;

    const-string v2, "Y800"

    invoke-virtual {v0, v2}, Lnet/sourceforge/zbar/Image;->convert(Ljava/lang/String;)Lnet/sourceforge/zbar/Image;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cyjh/elfin/sweepcode/d;->a(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/d$1;->b:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$1;->b:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-interface {v0, p1}, Lcom/cyjh/elfin/sweepcode/d$a;->a(Ljava/lang/String;)V

    return-void
.end method
