.class public final Lcom/zbar/a/a/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "b"

.field private static final g:I = 0x1b

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/graphics/Point;

.field public d:Landroid/graphics/Point;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zbar/a/a/b;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zbar/a/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static a(Ljava/lang/CharSequence;I)I
    .registers 11

    sget-object v0, Lcom/zbar/a/a/b;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_30

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_11
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_2f

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v6, p1

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-int v6, p1, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_2c

    move v2, v5

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_2f
    return p1

    :cond_30
    return v2
.end method

.method private a()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 3

    const-string v0, "preview-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "preview-size-value"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    const/4 p0, 0x0

    if-eqz v0, :cond_15

    invoke-static {v0, p1}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    :cond_15
    if-nez p0, :cond_28

    new-instance p0, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    :cond_28
    return-object p0
.end method

.method static a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 12

    sget-object v0, Lcom/zbar/a/a/b;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_11
    if-ge v2, v0, :cond_51

    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4e

    :try_start_21
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_33} :catch_4e

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int v7, v8, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    if-nez v7, :cond_49

    move v4, v6

    move v3, v8

    goto :goto_51

    :cond_49
    if-ge v7, v5, :cond_4e

    move v4, v6

    move v5, v7

    move v3, v8

    :catch_4e
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_51
    :goto_51
    if-lez v3, :cond_5b

    if-lez v4, :cond_5b

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_5b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Behold II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/zbar/a/a/c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    const-string v0, "flash-value"

    const/4 v1, 0x1

    goto :goto_16

    :cond_13
    const-string v0, "flash-value"

    const/4 v1, 0x2

    :goto_16
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v0, "flash-mode"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/hardware/Camera;)V
    .registers 5

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lcom/zbar/a/a/b;->e:I

    const-string v0, "preview-format"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zbar/a/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/zbar/a/a/b;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_56

    iget-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_56
    const-string v1, "preview-size-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    const-string v1, "preview-size-value"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_64
    const/4 p1, 0x0

    if-eqz v1, :cond_6b

    invoke-static {v1, v0}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    :cond_6b
    if-nez p1, :cond_7e

    new-instance p1, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    shr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    iget v0, v0, Landroid/graphics/Point;->y:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_7e
    iput-object p1, p0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    return-void
.end method

.method private b()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/b;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public static b(Landroid/hardware/Camera$Parameters;)V
    .registers 9

    const-string v0, "zoom-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string v0, "max-zoom"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-eqz v0, :cond_39

    :try_start_1b
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_26

    mul-double v4, v4, v2

    double-to-int v4, v4

    if-le v1, v4, :cond_39

    move v1, v4

    goto :goto_39

    :catch_26
    sget-object v4, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad max-zoom: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    const-string v4, "taking-picture-zoom-max"

    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5c

    :try_start_41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_49

    if-le v1, v5, :cond_5c

    move v1, v5

    goto :goto_5c

    :catch_49
    sget-object v5, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad taking-picture-zoom-max: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    const-string v5, "mot-zoom-values"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_68

    invoke-static {v5, v1}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    :cond_68
    const-string v6, "mot-zoom-step"

    invoke-virtual {p0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_81

    :try_start_70
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_81

    rem-int v6, v1, v6
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_80} :catch_81

    sub-int/2addr v1, v6

    :catch_81
    :cond_81
    if-nez v0, :cond_85

    if-eqz v5, :cond_90

    :cond_85
    const-string v0, "zoom"

    int-to-double v5, v1

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    if-eqz v4, :cond_97

    const-string v0, "taking-picture-zoom"

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_97
    return-void
.end method

.method private b(Landroid/hardware/Camera;)V
    .registers 12

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Behold II"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    sget v1, Lcom/zbar/a/a/c;->a:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_25

    const-string v1, "flash-value"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2b

    :cond_25
    const-string v1, "flash-value"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_2b
    const-string v1, "flash-mode"

    const-string v3, "off"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "zoom-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    :cond_40
    const-string v1, "max-zoom"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1b

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_6a

    :try_start_4c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_50} :catch_57

    mul-double v6, v6, v4

    double-to-int v6, v6

    if-le v3, v6, :cond_6a

    move v3, v6

    goto :goto_6a

    :catch_57
    sget-object v6, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad max-zoom: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    const-string v6, "taking-picture-zoom-max"

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8d

    :try_start_72
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_76} :catch_7a

    if-le v3, v7, :cond_8d

    move v3, v7

    goto :goto_8d

    :catch_7a
    sget-object v7, Lcom/zbar/a/a/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bad taking-picture-zoom-max: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    :goto_8d
    const-string v7, "mot-zoom-values"

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_99

    invoke-static {v7, v3}, Lcom/zbar/a/a/b;->a(Ljava/lang/CharSequence;I)I

    move-result v3

    :cond_99
    const-string v8, "mot-zoom-step"

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b1

    :try_start_a1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    mul-double v8, v8, v4

    double-to-int v8, v8

    if-le v8, v2, :cond_b1

    rem-int v2, v3, v8
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_b0} :catch_b1

    sub-int/2addr v3, v2

    :catch_b1
    :cond_b1
    if-nez v1, :cond_b5

    if-eqz v7, :cond_c0

    :cond_b5
    const-string v1, "zoom"

    int-to-double v7, v3

    div-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    if-eqz v6, :cond_c7

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_c7
    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/zbar/a/a/b;->e:I

    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/zbar/a/a/b;->f:Ljava/lang/String;

    return-object v0
.end method
