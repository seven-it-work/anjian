.class public final synthetic Lcom/cyjh/elfin/floatingwindowprocess/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;


# instance fields
.field private final a:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

.field private final b:Landroid/os/Vibrator;

.field private final c:Lcom/cyjh/elfin/floatingwindowprocess/b/a;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->a:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->b:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->c:Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->a:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    iget-object v1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->b:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/e;->c:Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v3

    const-string v4, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_46

    if-eqz v1, :cond_46

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    iget-object v3, v2, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_48

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_46
    return-void

    nop

    :array_48
    .array-data 8
        0x1f4
        0xc8
        0x1f4
        0xc8
    .end array-data
.end method
