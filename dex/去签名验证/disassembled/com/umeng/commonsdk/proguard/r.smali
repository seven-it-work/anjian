.class public Lcom/umeng/commonsdk/proguard/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/r$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "info"

.field private static final b:Ljava/lang/String; = "stat"

.field private static c:Z = false

.field private static d:Landroid/os/HandlerThread; = null

.field private static e:Landroid/content/Context; = null

.field private static f:I = 0x0

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static i:I = 0x1

.field private static j:J = 0x0L

.field private static k:J = 0x0L

.field private static final l:I = 0x28

.field private static final m:I = 0xc350

.field private static n:Landroid/hardware/SensorManager;

.field private static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private static p:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/umeng/commonsdk/proguard/r$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/r$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/r;->p:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/umeng/commonsdk/proguard/r;->f:I

    return p0
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/umeng/commonsdk/proguard/r;->j:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Z
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/proguard/r;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/proguard/r;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/umeng/commonsdk/proguard/r;->g:I

    return v0
.end method

.method static synthetic b(J)J
    .registers 2

    sput-wide p0, Lcom/umeng/commonsdk/proguard/r;->k:J

    return-wide p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/proguard/r;->c:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/proguard/r;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_80

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sget-object v2, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0xc350

    if-eqz p0, :cond_47

    sput v1, Lcom/umeng/commonsdk/proguard/r;->h:I

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/umeng/commonsdk/proguard/r;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, p0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_52

    :cond_47
    if-eqz v2, :cond_52

    sput v0, Lcom/umeng/commonsdk/proguard/r;->h:I

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/umeng/commonsdk/proguard/r;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_52
    :goto_52
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0xfa0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "sensor_thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/proguard/r;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/umeng/commonsdk/proguard/r;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/umeng/commonsdk/proguard/r$2;

    invoke-direct {v3, p0, v2}, Lcom/umeng/commonsdk/proguard/r$2;-><init>(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_80
    return-void
.end method

.method static synthetic c()I
    .registers 2

    sget v0, Lcom/umeng/commonsdk/proguard/r;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/proguard/r;->g:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    const-string v1, "stat"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    :try_start_16
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-object v0, v1

    return-object v0

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_21
    return-object v0
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/umeng/commonsdk/proguard/r;->f:I

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "stat"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic e()I
    .registers 2

    sget v0, Lcom/umeng/commonsdk/proguard/r;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/proguard/r;->f:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/proguard/r$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5a

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_25
    array-length v3, v1

    if-ge v2, v3, :cond_5a

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    if-eqz v3, :cond_52

    new-instance v4, Lcom/umeng/commonsdk/proguard/r$a;

    invoke-direct {v4}, Lcom/umeng/commonsdk/proguard/r$a;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/umeng/commonsdk/proguard/r$a;->a:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v4, Lcom/umeng/commonsdk/proguard/r$a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/umeng/commonsdk/proguard/r$a;->c:J

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_52} :catch_55

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :catch_55
    const-string p0, "camera access exception"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    :cond_5a
    return-object v0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)V
    .registers 14

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_99

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/16 v6, 0x14

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1f

    const/16 v8, 0x28

    goto :goto_22

    :cond_1f
    const/4 v6, 0x0

    const/16 v8, 0x14

    :goto_22
    if-ge v6, v8, :cond_5f

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "x"

    sget-object v11, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v1

    float-to-double v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "y"

    sget-object v11, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v7

    float-to-double v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "z"

    sget-object v11, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    aget v11, v11, v3

    float-to-double v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_5f
    sget v3, Lcom/umeng/commonsdk/proguard/r;->h:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6a

    const-string v3, "g"

    :goto_66
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_71

    :cond_6a
    sget v3, Lcom/umeng/commonsdk/proguard/r;->h:I

    if-ne v3, v7, :cond_71

    const-string v3, "a"

    goto :goto_66

    :cond_71
    :goto_71
    if-nez v2, :cond_7b

    const-string v3, "ts"

    sget-wide v5, Lcom/umeng/commonsdk/proguard/r;->j:J

    :goto_77
    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_80

    :cond_7b
    const-string v3, "ts"

    sget-wide v5, Lcom/umeng/commonsdk/proguard/r;->k:J

    goto :goto_77

    :goto_80
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const v3, 0x8008

    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/proguard/b;->a()Lcom/umeng/commonsdk/proguard/c;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4, v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_95} :catch_9a

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_99
    return-void

    :catch_9a
    move-exception v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic g()I
    .registers 1

    sget v0, Lcom/umeng/commonsdk/proguard/r;->i:I

    return v0
.end method

.method static synthetic h()I
    .registers 2

    sget v0, Lcom/umeng/commonsdk/proguard/r;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/proguard/r;->i:I

    return v0
.end method

.method static synthetic i()V
    .registers 0

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->l()V

    return-void
.end method

.method static synthetic j()Landroid/hardware/SensorEventListener;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->p:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic k()Landroid/hardware/SensorManager;
    .registers 1

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private static l()V
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->n:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/umeng/commonsdk/proguard/r;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_b
    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_34

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/r;->f(Landroid/content/Context;)V

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_23
    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->d:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/umeng/commonsdk/proguard/r;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sput-object v1, Lcom/umeng/commonsdk/proguard/r;->d:Landroid/os/HandlerThread;

    :cond_2f
    sput-object v1, Lcom/umeng/commonsdk/proguard/r;->e:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/proguard/r;->c:Z

    :cond_34
    return-void
.end method
