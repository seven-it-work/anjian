.class public final Lcom/cyjh/elfin/e/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/e/c/i$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field private static c:Lcom/cyjh/elfin/e/c/i;


# instance fields
.field public b:Landroid/location/LocationListener;

.field private d:Landroid/content/Context;

.field private e:Landroid/location/LocationManager;

.field private f:Lcom/cyjh/elfin/e/c/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/elfin/e/c/i;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/elfin/e/c/i$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/e/c/i$1;-><init>(Lcom/cyjh/elfin/e/c/i;)V

    iput-object v0, p0, Lcom/cyjh/elfin/e/c/i;->b:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/i;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/elfin/e/c/i;)Lcom/cyjh/elfin/e/c/i$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/elfin/e/c/i;->f:Lcom/cyjh/elfin/e/c/i$a;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Lcom/cyjh/elfin/e/c/i;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/e/c/i;->c:Lcom/cyjh/elfin/e/c/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/elfin/e/c/i;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/e/c/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cyjh/elfin/e/c/i;->c:Lcom/cyjh/elfin/e/c/i;

    :cond_b
    sget-object p0, Lcom/cyjh/elfin/e/c/i;->c:Lcom/cyjh/elfin/e/c/i;

    return-object p0
.end method

.method private a()[Ljava/lang/String;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "0.0"

    const-string v1, "0.0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/e/c/i;->d:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/cyjh/elfin/e/c/i;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/cyjh/elfin/e/c/i;->e:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    const-string v3, "gps"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v1, "gps"

    :goto_25
    move-object v4, v1

    goto :goto_32

    :cond_27
    const-string v3, "network"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "network"

    goto :goto_25

    :goto_32
    iget-object v1, p0, Lcom/cyjh/elfin/e/c/i;->e:Landroid/location/LocationManager;

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4f

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_4f
    iget-object v3, p0, Lcom/cyjh/elfin/e/c/i;->e:Landroid/location/LocationManager;

    const-wide/16 v5, 0xbb8

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/cyjh/elfin/e/c/i;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_5a
    return-object v0
.end method

.method private a(Lcom/cyjh/elfin/e/c/i$a;)[Ljava/lang/String;
    .registers 6

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/i;->f:Lcom/cyjh/elfin/e/c/i$a;

    const-string p1, "0.0"

    const-string v0, "0.0"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_31

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    sget-object v2, Lcom/cyjh/elfin/e/c/i;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Lcom/cyjh/elfin/e/c/i;->d:Landroid/content/Context;

    sget-object v3, Lcom/cyjh/elfin/e/c/i;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    const/4 v0, 0x1

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    if-eqz v0, :cond_2c

    return-object p1

    :cond_2c
    invoke-direct {p0}, Lcom/cyjh/elfin/e/c/i;->a()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-direct {p0}, Lcom/cyjh/elfin/e/c/i;->a()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/cyjh/elfin/e/c/i;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lcom/cyjh/elfin/e/c/i;->d:Landroid/content/Context;

    sget-object v3, Lcom/cyjh/elfin/e/c/i;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/i;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/cyjh/elfin/e/c/i;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
