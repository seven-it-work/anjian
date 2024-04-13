.class public final Lcom/cyjh/elfin/sweepcode/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/sweepcode/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "yanzi"

.field private static c:Lcom/cyjh/elfin/sweepcode/a;


# instance fields
.field a:Lcom/cyjh/elfin/sweepcode/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/sweepcode/a$a;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/sweepcode/a$a;-><init>(Lcom/cyjh/elfin/sweepcode/a;)V

    iput-object v0, p0, Lcom/cyjh/elfin/sweepcode/a;->a:Lcom/cyjh/elfin/sweepcode/a$a;

    return-void
.end method

.method private a(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;FI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/a;->a:Lcom/cyjh/elfin/sweepcode/a$a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const-string v5, "yanzi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ratioPreview:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "yanzi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PreviewSize:w = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    if-lt v4, p3, :cond_95

    invoke-static {v3, p2}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Size;F)Z

    move-result v4

    if-eqz v4, :cond_95

    const-string v0, "yanzi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ratioPreview2:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   minH:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "yanzi"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "PreviewSize:w = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_99
    :goto_99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v2, p2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v1, v2

    :goto_a1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public static a()Lcom/cyjh/elfin/sweepcode/a;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/sweepcode/a;->c:Lcom/cyjh/elfin/sweepcode/a;

    if-nez v0, :cond_c

    new-instance v0, Lcom/cyjh/elfin/sweepcode/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/sweepcode/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/sweepcode/a;->c:Lcom/cyjh/elfin/sweepcode/a;

    return-object v0

    :cond_c
    sget-object v0, Lcom/cyjh/elfin/sweepcode/a;->c:Lcom/cyjh/elfin/sweepcode/a;

    return-object v0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Size;F)Z
    .registers 5

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "r:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "r2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/util/List;FI)Landroid/hardware/Camera$Size;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;FI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/a;->a:Lcom/cyjh/elfin/sweepcode/a$a;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    if-lt v4, p3, :cond_41

    invoke-static {v3, p2}, Lcom/cyjh/elfin/sweepcode/a;->a(Landroid/hardware/Camera$Size;F)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string p2, "yanzi"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "PictureSize : w = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v2, p2, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .registers 6

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    const-string v2, "yanzi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pictureSizes:width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method private static c(Landroid/hardware/Camera$Parameters;)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "yanzi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "focusModes--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_28
    return-void
.end method
