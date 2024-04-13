.class public Lcom/cyjh/elfin/floatingwindowprocess/c/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/cyjh/elfin/floatingwindowprocess/c/d;


# instance fields
.field a:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/elfin/floatingwindowprocess/c/d;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    invoke-direct {v1}, Lcom/cyjh/elfin/floatingwindowprocess/c/d;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/elfin/floatingwindowprocess/c/d;->b:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/floatingwindowprocess/b/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/c/e;

    invoke-direct {v1, p0, p1, v0}, Lcom/cyjh/elfin/floatingwindowprocess/c/e;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V

    iput-object v1, v0, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a$a;

    return-void
.end method

.method private synthetic a(Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V
    .registers 6

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v0

    const-string v1, "com.cyjh.elfin.ui.activity.SettingActivity.swtWaggleStop"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->d()V

    iget-object v0, p2, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->j()Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_42

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V

    const-wide/16 p1, 0x5dc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    return-void

    nop

    :array_42
    .array-data 8
        0x1f4
        0xc8
        0x1f4
        0xc8
    .end array-data
.end method

.method public static b()V
    .registers 4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/base/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "com.cyjh.elfin.ui.activity.SettingActivity.swtVibration"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/common/util/ab;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_22
    return-void
.end method
