.class public final Lcom/c/b/f;
.super Lcom/c/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/b/a<",
        "Landroid/location/Location;",
        "Lcom/c/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Lcom/c/b/f$a;

.field private E:Lcom/c/b/f$a;

.field private F:J

.field private u:Landroid/location/LocationManager;

.field private v:J

.field private w:J

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/c/b/a;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/c/b/f;->v:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/c/b/f;->w:J

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/c/b/f;->x:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/c/b/f;->y:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/c/b/f;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b/f;->A:I

    iput-boolean v0, p0, Lcom/c/b/f;->B:Z

    iput-boolean v0, p0, Lcom/c/b/f;->C:Z

    const-class v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v0, p0

    check-cast v0, Lcom/c/b/f;

    const-string v1, "device"

    iput-object v1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(DDDD)F
    .registers 12

    sub-double v0, p4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p6, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p0, p0, p4

    div-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double p0, p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, p6

    const-wide p2, 0x40aeed8000000000L    # 3958.75

    mul-double p0, p0, p2

    double-to-float p0, p0

    const p1, 0x44c92000    # 1609.0f

    mul-float p0, p0, p1

    return p0
.end method

.method static synthetic a(Lcom/c/b/f;)Landroid/location/Location;
    .registers 1

    invoke-direct {p0}, Lcom/c/b/f;->g()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method private a(F)Lcom/c/b/f;
    .registers 2

    iput p1, p0, Lcom/c/b/f;->y:F

    return-object p0
.end method

.method private a(I)Lcom/c/b/f;
    .registers 2

    iput p1, p0, Lcom/c/b/f;->z:I

    return-object p0
.end method

.method private a(J)Lcom/c/b/f;
    .registers 3

    iput-wide p1, p0, Lcom/c/b/f;->v:J

    return-object p0
.end method

.method private a(Landroid/location/Location;)V
    .registers 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_120

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/c/b/f;->F:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3b

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v4, "network"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "inferior location"

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x1

    :goto_3c
    if-eqz v1, :cond_120

    iget v1, v0, Lcom/c/b/f;->A:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/c/b/f;->A:I

    iget v1, v0, Lcom/c/b/f;->A:I

    iget v4, v0, Lcom/c/b/f;->z:I

    if-lt v1, v4, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    iget v5, v0, Lcom/c/b/f;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_58

    const/4 v4, 0x1

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    iget-object v5, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    if-eqz v5, :cond_d8

    iget-object v5, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v7, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v7, Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    sub-double v13, v9, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    sub-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v15, v15, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    div-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double v5, v5, v11

    const-wide v7, 0x40aeed8000000000L    # 3958.75

    mul-double v5, v5, v7

    double-to-float v5, v5

    const v6, 0x44c92000    # 1609.0f

    mul-float v5, v5, v6

    iget v6, v0, Lcom/c/b/f;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d8

    const-string v5, "duplicate location"

    invoke-static {v5}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_d9

    :cond_d8
    const/4 v5, 0x1

    :goto_d9
    iget-boolean v6, v0, Lcom/c/b/f;->C:Z

    if-eqz v6, :cond_ea

    const-string v6, "gps"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v2, 0x1

    :goto_eb
    iget v3, v0, Lcom/c/b/f;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v6, v0, Lcom/c/b/f;->z:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "acc"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "best"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_120

    if-eqz v1, :cond_118

    if-eqz v4, :cond_120

    if-eqz v2, :cond_120

    :goto_114
    invoke-direct/range {p0 .. p0}, Lcom/c/b/f;->e()V

    goto :goto_11d

    :cond_118
    if-eqz v4, :cond_11d

    if-eqz v2, :cond_11d

    goto :goto_114

    :cond_11d
    :goto_11d
    invoke-direct/range {p0 .. p1}, Lcom/c/b/f;->b(Landroid/location/Location;)V

    :cond_120
    return-void
.end method

.method private a(Landroid/location/Location;I)V
    .registers 7

    iget-object v0, p0, Lcom/c/b/f;->m:Lcom/c/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/c/b/c;

    invoke-direct {v0}, Lcom/c/b/c;-><init>()V

    iput-object v0, p0, Lcom/c/b/f;->m:Lcom/c/b/c;

    :cond_b
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/c/b/f;->m:Lcom/c/b/c;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/c/b/c;->n:Ljava/util/Date;

    :cond_1a
    iget-object p1, p0, Lcom/c/b/f;->m:Lcom/c/b/c;

    iput p2, p1, Lcom/c/b/c;->i:I

    invoke-virtual {p1}, Lcom/c/b/c;->a()Lcom/c/b/c;

    move-result-object p1

    const/4 p2, 0x5

    iput p2, p1, Lcom/c/b/c;->r:I

    return-void
.end method

.method static synthetic a(Lcom/c/b/f;Landroid/location/Location;)V
    .registers 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_120

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/c/b/f;->F:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_3b

    iget-object v1, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gps"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v4, "network"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "inferior location"

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x1

    :goto_3c
    if-eqz v1, :cond_120

    iget v1, v0, Lcom/c/b/f;->A:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/c/b/f;->A:I

    iget v1, v0, Lcom/c/b/f;->A:I

    iget v4, v0, Lcom/c/b/f;->z:I

    if-lt v1, v4, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    iget v5, v0, Lcom/c/b/f;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_58

    const/4 v4, 0x1

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    iget-object v5, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    if-eqz v5, :cond_d8

    iget-object v5, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v7, v0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v7, Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    sub-double v13, v9, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    sub-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v15, v15, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    div-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v5, v5, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double v5, v5, v11

    const-wide v7, 0x40aeed8000000000L    # 3958.75

    mul-double v5, v5, v7

    double-to-float v5, v5

    const v6, 0x44c92000    # 1609.0f

    mul-float v5, v5, v6

    iget v6, v0, Lcom/c/b/f;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d8

    const-string v5, "duplicate location"

    invoke-static {v5}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_d9

    :cond_d8
    const/4 v5, 0x1

    :goto_d9
    iget-boolean v6, v0, Lcom/c/b/f;->C:Z

    if-eqz v6, :cond_ea

    const-string v6, "gps"

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v2, 0x1

    :goto_eb
    iget v3, v0, Lcom/c/b/f;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v6, v0, Lcom/c/b/f;->z:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "acc"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "best"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_120

    if-eqz v1, :cond_118

    if-eqz v4, :cond_120

    if-eqz v2, :cond_120

    :goto_114
    invoke-direct/range {p0 .. p0}, Lcom/c/b/f;->e()V

    goto :goto_11d

    :cond_118
    if-eqz v4, :cond_11d

    if-eqz v2, :cond_11d

    goto :goto_114

    :cond_11d
    :goto_11d
    invoke-direct/range {p0 .. p1}, Lcom/c/b/f;->b(Landroid/location/Location;)V

    :cond_120
    return-void
.end method

.method static synthetic b(Lcom/c/b/f;)Landroid/location/LocationManager;
    .registers 1

    iget-object p0, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    return-object p0
.end method

.method private b(F)Lcom/c/b/f;
    .registers 2

    iput p1, p0, Lcom/c/b/f;->x:F

    return-object p0
.end method

.method private b(Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/c/b/f;->a(Landroid/location/Location;I)V

    invoke-virtual {p0}, Lcom/c/b/f;->a()V

    return-void
.end method

.method static synthetic c(Lcom/c/b/f;)V
    .registers 3

    iget-object v0, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    if-eqz v0, :cond_1b

    :cond_8
    const-string v0, "fail"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/16 v1, -0x67

    invoke-direct {p0, v0, v1}, Lcom/c/b/f;->a(Landroid/location/Location;I)V

    invoke-direct {p0}, Lcom/c/b/f;->e()V

    invoke-virtual {p0}, Lcom/c/b/f;->a()V

    :cond_1b
    return-void
.end method

.method private c(Landroid/location/Location;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget v0, p0, Lcom/c/b/f;->y:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "fail"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/16 v1, -0x67

    invoke-direct {p0, v0, v1}, Lcom/c/b/f;->a(Landroid/location/Location;I)V

    invoke-direct {p0}, Lcom/c/b/f;->e()V

    invoke-virtual {p0}, Lcom/c/b/f;->a()V

    return-void
.end method

.method private d(Landroid/location/Location;)Z
    .registers 16

    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sub-double v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v12, v12, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double v2, v2, v8

    const-wide v4, 0x40aeed8000000000L    # 3958.75

    mul-double v2, v2, v4

    double-to-float p1, v2

    const v0, 0x44c92000    # 1609.0f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/c/b/f;->x:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_81

    const-string p1, "duplicate location"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_81
    return v1
.end method

.method private e()V
    .registers 3

    const-string v0, "stop"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v0}, Lcom/c/b/f$a;->cancel()Z

    :cond_11
    iget-object v0, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v0}, Lcom/c/b/f$a;->cancel()Z

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    iput-object v0, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    return-void
.end method

.method private e(Landroid/location/Location;)Z
    .registers 8

    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/c/b/f;->F:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/c/b/f;->i:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "inferior location"

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_37
    return v1
.end method

.method private f()V
    .registers 12

    invoke-direct {p0}, Lcom/c/b/f;->g()Landroid/location/Location;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iget-boolean v3, p0, Lcom/c/b/f;->B:Z

    if-eqz v3, :cond_31

    const-string v3, "register net"

    invoke-static {v3}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/c/b/f$a;

    invoke-direct {v3, p0, v2}, Lcom/c/b/f$a;-><init>(Lcom/c/b/f;B)V

    iput-object v3, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    iget-object v4, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v5, "network"

    iget-wide v6, p0, Lcom/c/b/f;->w:J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    iget-wide v4, p0, Lcom/c/b/f;->v:J

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_31
    iget-boolean v3, p0, Lcom/c/b/f;->C:Z

    if-eqz v3, :cond_58

    const-string v3, "register gps"

    invoke-static {v3}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v3, Lcom/c/b/f$a;

    invoke-direct {v3, p0, v2}, Lcom/c/b/f$a;-><init>(Lcom/c/b/f;B)V

    iput-object v3, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    iget-object v4, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v5, "gps"

    iget-wide v6, p0, Lcom/c/b/f;->w:J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    iget-wide v3, p0, Lcom/c/b/f;->v:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_58
    iget v1, p0, Lcom/c/b/f;->z:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_67

    if-eqz v0, :cond_67

    iget v1, p0, Lcom/c/b/f;->A:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/c/b/f;->A:I

    invoke-direct {p0, v0}, Lcom/c/b/f;->b(Landroid/location/Location;)V

    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/f;->F:J

    return-void
.end method

.method private g()Landroid/location/Location;
    .registers 8

    iget-object v0, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_23

    return-object v0

    :cond_23
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 12

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    iget-object p1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/c/b/f;->C:Z

    iget-object p1, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/c/b/f;->B:Z

    invoke-direct {p0}, Lcom/c/b/f;->g()Landroid/location/Location;

    move-result-object p1

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iget-boolean v2, p0, Lcom/c/b/f;->B:Z

    if-eqz v2, :cond_4f

    const-string v2, "register net"

    invoke-static {v2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/c/b/f$a;

    invoke-direct {v2, p0, v1}, Lcom/c/b/f$a;-><init>(Lcom/c/b/f;B)V

    iput-object v2, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    iget-object v3, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v4, "network"

    iget-wide v5, p0, Lcom/c/b/f;->w:J

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/c/b/f;->D:Lcom/c/b/f$a;

    iget-wide v3, p0, Lcom/c/b/f;->v:J

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_4f
    iget-boolean v2, p0, Lcom/c/b/f;->C:Z

    if-eqz v2, :cond_76

    const-string v2, "register gps"

    invoke-static {v2}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    new-instance v2, Lcom/c/b/f$a;

    invoke-direct {v2, p0, v1}, Lcom/c/b/f$a;-><init>(Lcom/c/b/f;B)V

    iput-object v2, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    iget-object v3, p0, Lcom/c/b/f;->u:Landroid/location/LocationManager;

    const-string v4, "gps"

    iget-wide v5, p0, Lcom/c/b/f;->w:J

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/c/b/f;->E:Lcom/c/b/f$a;

    iget-wide v2, p0, Lcom/c/b/f;->v:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_76
    iget v0, p0, Lcom/c/b/f;->z:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_85

    if-eqz p1, :cond_85

    iget v0, p0, Lcom/c/b/f;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/c/b/f;->A:I

    invoke-direct {p0, p1}, Lcom/c/b/f;->b(Landroid/location/Location;)V

    :cond_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/b/f;->F:J

    return-void
.end method
