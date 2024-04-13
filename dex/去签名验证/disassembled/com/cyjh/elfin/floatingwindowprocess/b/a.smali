.class public final Lcom/cyjh/elfin/floatingwindowprocess/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;
    }
.end annotation


# static fields
.field private static final c:I = 0xbb8

.field private static final d:I = 0x64


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public b:Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/content/Context;

.field private g:F

.field private h:F

.field private i:F

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a()V

    return-void
.end method

.method private a(Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->f:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->e:Landroid/hardware/Sensor;

    :cond_19
    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_24
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->j:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x64

    cmp-long v6, v4, v2

    if-gez v6, :cond_f

    return-void

    :cond_f
    iput-wide v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->j:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    iget v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->g:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->h:F

    sub-float v3, v1, v3

    iget v6, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->i:F

    sub-float v6, p1, v6

    iput v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->g:F

    iput v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->h:F

    iput p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->i:F

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-float v6, v6, v6

    add-float/2addr v2, v6

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_56

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;

    invoke-interface {p1}, Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;->a()V

    :cond_56
    return-void
.end method
