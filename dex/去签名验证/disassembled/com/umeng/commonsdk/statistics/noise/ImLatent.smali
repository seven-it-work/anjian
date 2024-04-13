.class public Lcom/umeng/commonsdk/statistics/noise/ImLatent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;


# instance fields
.field private final LATENT_MAX:I

.field private final LATENT_WINDOW:I

.field private final _360HOURS_IN_MS:J

.field private final _36HOURS_IN_MS:J

.field private final _DEFAULT_HOURS:I

.field private final _DEFAULT_MAX_LATENT:I

.field private final _DEFAULT_MIN_HOURS:I

.field private final _DEFAULT_MIN_LATENT:I

.field private final _ONE_HOURS_IN_MS:J

.field private context:Landroid/content/Context;

.field private latentHour:J

.field private latentWindow:I

.field private mDelay:J

.field private mElapsed:J

.field private mLatentActivite:Z

.field private mLatentLock:Ljava/lang/Object;

.field private statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private storeHelper:Lcom/umeng/commonsdk/statistics/common/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x168

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_HOURS:I

    const/16 v0, 0x24

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_HOURS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_LATENT:I

    const/16 v0, 0x708

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MAX_LATENT:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_ONE_HOURS_IN_MS:J

    const-wide/32 v0, 0x4d3f6400

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_360HOURS_IN_MS:J

    const-wide/32 v2, 0x7b98a00

    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_36HOURS_IN_MS:J

    const v2, 0x1b7740

    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_MAX:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_WINDOW:I

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .registers 4

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-nez v1, :cond_19

    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b()Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V

    :cond_19
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDelayTime()J
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getElapsedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    return-wide v0
.end method

.method public isLatentActivite()Z
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public latentDeactivite()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V
    .registers 6

    const-string v0, "latent_hours"

    const-string v1, "360"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x24

    if-gt v0, v1, :cond_16

    const/16 v0, 0x168

    :cond_16
    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    const-string v0, "latent"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_34

    const/16 v0, 0x708

    if-le p1, v0, :cond_35

    :cond_34
    const/4 p1, 0x0

    :cond_35
    if-nez p1, :cond_4b

    sget p1, Lcom/umeng/commonsdk/statistics/a;->a:I

    if-lez p1, :cond_48

    sget p1, Lcom/umeng/commonsdk/statistics/a;->a:I

    const v0, 0x1b7740

    if-le p1, v0, :cond_43

    goto :goto_48

    :cond_43
    sget p1, Lcom/umeng/commonsdk/statistics/a;->a:I

    :goto_45
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    return-void

    :cond_48
    :goto_48
    const/16 p1, 0xa

    goto :goto_45

    :cond_4b
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    return-void
.end method

.method public shouldStartLatency()Z
    .registers 9

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->isFirstRequest()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    iget-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    if-eqz v2, :cond_1c

    monitor-exit v0

    return v1

    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_63

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    cmp-long v0, v6, v2

    const/4 v2, 0x1

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_39
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->random(ILjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v3

    return v2

    :catchall_48
    move-exception v0

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    const-wide/32 v3, 0x7b98a00

    cmp-long v0, v6, v3

    if-lez v0, :cond_62

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v3, 0x0

    :try_start_57
    iput-wide v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v0

    return v2

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_5f

    throw v1

    :cond_62
    return v1

    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method
