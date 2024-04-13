.class public Lcom/umeng/commonsdk/statistics/d;
.super Ljava/lang/Object;


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final p:Ljava/lang/String; = "thtstart"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"


# instance fields
.field a:Ljava/lang/String;

.field private final e:I

.field private f:Lcom/umeng/commonsdk/statistics/internal/c;

.field private g:Lcom/umeng/commonsdk/statistics/idtracking/g;

.field private h:Lcom/umeng/commonsdk/statistics/idtracking/e;

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

.field private j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

.field private k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

.field private m:J

.field private n:I

.field private o:I

.field private s:Landroid/content/Context;

.field private t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/d;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/d;->m:J

    const/4 v3, 0x0

    iput v3, p0, Lcom/umeng/commonsdk/statistics/d;->n:I

    iput v3, p0, Lcom/umeng/commonsdk/statistics/d;->o:I

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b()Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->i:Lcom/umeng/commonsdk/statistics/idtracking/g$a;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v4, "thtstart"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/d;->m:J

    const-string v1, "gkvc"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/d;->n:I

    const-string v1, "ekvc"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/d;->o:I

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    const-string v1, "track_list"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/g;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    new-instance v0, Lcom/umeng/commonsdk/statistics/d$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/d$1;-><init>(Lcom/umeng/commonsdk/statistics/d;)V

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/g;->a(Lcom/umeng/commonsdk/statistics/internal/d;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance p1, Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/internal/c;->a(Lcom/umeng/commonsdk/statistics/internal/b;)V

    return-void
.end method

.method private a([B)I
    .registers 5

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;-><init>()V

    new-instance v1, Lcom/umeng/commonsdk/proguard/ad;

    new-instance v2, Lcom/umeng/commonsdk/proguard/as$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/proguard/as$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Lcom/umeng/commonsdk/proguard/bb;)V

    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v1, v0, p1}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V

    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_25

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getImprint()Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->b(Lcom/umeng/commonsdk/statistics/proto/d;)V

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/d;->g:Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/g;->c()V

    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "send log:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/Response;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception p1

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_41
    iget p1, v0, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    if-ne p1, v2, :cond_47

    const/4 p1, 0x2

    return p1

    :cond_47
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->j:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-object p0
.end method

.method static synthetic b(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    return-object p0
.end method

.method static synthetic c(Lcom/umeng/commonsdk/statistics/d;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    return-object p0
.end method

.method static synthetic d(Lcom/umeng/commonsdk/statistics/d;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .registers 6

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->l:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->shouldStartLatency()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$LatentPolicy;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->t:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return v2

    :cond_34
    return v1
.end method

.method public a(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p1

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->f:Lcom/umeng/commonsdk/statistics/internal/c;

    invoke-virtual {v2, v1, p1}, Lcom/umeng/commonsdk/statistics/internal/c;->a([BZ)[B

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_35

    const/4 p1, 0x1

    goto :goto_39

    :cond_35
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/d;->a([B)I

    move-result p1

    :goto_39
    packed-switch p1, :pswitch_data_58

    goto :goto_4b

    :pswitch_3d
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->h:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->d()V

    :pswitch_42
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->saveSate()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_50

    :goto_4b
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4f

    return v1

    :cond_4f
    return v0

    :catch_50
    move-exception p1

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return v0

    nop

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_42
    .end packed-switch
.end method

.method public b()I
    .registers 7

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/d;->k:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/d;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    long-to-int v0, v4

    return v0
.end method
