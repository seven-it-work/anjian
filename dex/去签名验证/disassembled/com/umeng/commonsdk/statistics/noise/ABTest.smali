.class public Lcom/umeng/commonsdk/statistics/noise/ABTest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# instance fields
.field private context:Landroid/content/Context;

.field private isInTest:Z

.field private mGroup:I

.field private mInterval:I

.field private mPoli:Ljava/lang/String;

.field private mPolicy:I

.field private mProb07:F

.field private mProb13:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    if-nez v1, :cond_25

    const-string v1, "client_test"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "test_report_interval"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-direct {v3, p0, v1, v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    :cond_25
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseFIXED(Ljava/lang/String;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    const-string v2, "SIG13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_20
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_2a

    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void

    :cond_2a
    aget-object v0, p1, v1

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_42

    :cond_41
    const/4 v0, -0x1

    :goto_42
    const/4 v4, 0x0

    const/4 v5, 0x4

    aget-object v6, p1, v5

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    if-eqz v6, :cond_71

    const-string v4, "RPT"

    iput-object v4, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    aget-object p1, p1, v7

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_5f
    array-length v6, p1

    if-ge v5, v6, :cond_a0

    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    :cond_71
    aget-object v5, p1, v5

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    const-string v5, "DOM"

    iput-object v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    :try_start_81
    aget-object p1, p1, v7

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    new-array v5, v5, [I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_a0

    const/4 v4, 0x0

    :goto_8d
    :try_start_8d
    array-length v6, p1

    if-ge v4, v6, :cond_9f

    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9c} :catch_9f

    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :catch_9f
    :cond_9f
    move-object v4, v5

    :catch_a0
    :cond_a0
    if-eq v0, v2, :cond_ae

    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    if-eqz v4, :cond_b0

    sub-int/2addr v0, v3

    aget p1, v4, v0

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return-void

    :cond_ae
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    :cond_b0
    return-void
.end method

.method private parseSig7(Ljava/lang/String;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const-string v1, "SIG13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    cmpl-float v0, v2, v0

    const/4 v2, 0x0

    if-lez v0, :cond_2c

    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void

    :cond_2c
    aget-object v0, p1, v2

    const-string v3, "SIG7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_56

    aget-object v0, p1, v4

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [F

    const/4 v6, 0x0

    :goto_44
    array-length v7, v0

    if-ge v6, v7, :cond_57

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_56
    move-object v5, v3

    :cond_57
    const/4 v0, 0x4

    aget-object v6, p1, v0

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    if-eqz v6, :cond_85

    const-string v0, "RPT"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    aget-object p1, p1, v7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_73
    array-length v6, p1

    if-ge v0, v6, :cond_b4

    aget-object v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_85
    aget-object v0, p1, v0

    const-string v6, "DOM"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iput-boolean v4, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    const-string v0, "DOM"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    :try_start_95
    aget-object p1, p1, v7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a0} :catch_b4

    const/4 v3, 0x0

    :goto_a1
    :try_start_a1
    array-length v6, p1

    if-ge v3, v6, :cond_b3

    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v3
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b0} :catch_b3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    :catch_b3
    :cond_b3
    move-object v3, v0

    :catch_b4
    :cond_b4
    const/4 p1, 0x0

    :goto_b5
    array-length v0, v5

    const/4 v6, -0x1

    if-ge p1, v0, :cond_c6

    aget v0, v5, p1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c3

    goto :goto_c7

    :cond_c3
    add-int/lit8 p1, p1, 0x1

    goto :goto_b5

    :cond_c6
    const/4 p1, -0x1

    :goto_c7
    if-eq p1, v6, :cond_d6

    iput-boolean v4, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    if-eqz v3, :cond_d8

    aget p1, v3, p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return-void

    :cond_d6
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    :cond_d8
    return-void
.end method

.method private prob(Ljava/lang/String;I)F
    .registers 4

    mul-int/lit8 p2, p2, 0x2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    add-int/lit8 v0, p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public static validate(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_13

    return v1

    :cond_13
    aget-object v0, p0, v1

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_34

    aget-object v0, p0, v3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    aget-object v4, p0, v2

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v0, v4, :cond_34

    return v3

    :cond_34
    aget-object v0, p0, v1

    const-string v4, "FIXED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    aget-object v0, p0, v2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt v0, p0, :cond_52

    if-lez p0, :cond_52

    return v3

    :cond_52
    return v1
.end method


# virtual methods
.method public getGroup()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    return v0
.end method

.method public getGroupInfo()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-nez v0, :cond_7

    const-string v0, "error"

    return-object v0

    :cond_7
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestInterval()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    return v0
.end method

.method public getTestName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPolicy()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return v0
.end method

.method public isInTest()Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return v0
.end method

.method public onExperimentChanged(Ljava/lang/String;I)V
    .registers 5

    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_52

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_52

    :cond_16
    const/16 v0, 0xc

    :try_start_18
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v0, 0x6

    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result p2

    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    const-string p2, "SIG7"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseSig7(Ljava/lang/String;)V

    return-void

    :cond_31
    const-string p2, "FIXED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseFIXED(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    :cond_3c
    return-void

    :catch_3d
    move-exception p2

    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_52
    :goto_52
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return-void
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/g$a;)V
    .registers 5

    const-string v0, "client_test"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
