.class final Lcom/cyjh/elfin/e/c/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/e/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/hardware/SensorManager;

.field final synthetic b:Lcom/cyjh/elfin/e/c/e;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/e;Landroid/hardware/SensorManager;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/e$b;->b:Lcom/cyjh/elfin/e/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyjh/elfin/e/c/e$b;->a:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/e/c/e$b;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/e$b;->a:Landroid/hardware/SensorManager;

    return-void
.end method
