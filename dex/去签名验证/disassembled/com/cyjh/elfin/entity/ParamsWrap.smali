.class public Lcom/cyjh/elfin/entity/ParamsWrap;
.super Ljava/lang/Object;


# static fields
.field private static final ILFY_KEY_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ParamsWrap"

.field private static sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;


# instance fields
.field private ScriptEncryptKey:Ljava/lang/String;

.field public dailyTryTimes:I

.field public engineToken:Ljava/lang/String;

.field public feedbackTips:Ljava/lang/String;

.field public mAdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBuyRegCodeConfigInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/BuyRegCodeConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Lcom/cyjh/elfin/base/AppContext;

.field public mFlySettingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecommendSettingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/response/RecommendSettingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStartRunResponseInfo:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

.field public onceTryMinute:I

.field public unbindDeductHours:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanCollect()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    return-void
.end method

.method public static getParamsWrap()Lcom/cyjh/elfin/entity/ParamsWrap;
    .registers 2

    sget-object v0, Lcom/cyjh/elfin/entity/ParamsWrap;->sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/elfin/entity/ParamsWrap;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/elfin/entity/ParamsWrap;->sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/elfin/entity/ParamsWrap;

    invoke-direct {v1}, Lcom/cyjh/elfin/entity/ParamsWrap;-><init>()V

    sput-object v1, Lcom/cyjh/elfin/entity/ParamsWrap;->sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;

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
    sget-object v0, Lcom/cyjh/elfin/entity/ParamsWrap;->sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;

    return-object v0
.end method


# virtual methods
.method public cleanData()V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/elfin/entity/ParamsWrap;->cleanCollect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mContext:Lcom/cyjh/elfin/base/AppContext;

    sput-object v0, Lcom/cyjh/elfin/entity/ParamsWrap;->sParamsWrap:Lcom/cyjh/elfin/entity/ParamsWrap;

    return-void
.end method

.method public crateCollect()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mBuyRegCodeConfigInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mFlySettingInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mRecommendSettingInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mAdInfos:Ljava/util/List;

    return-void
.end method

.method public getScriptEncryptKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->ScriptEncryptKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->ScriptEncryptKey:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/cyjh/elfin/base/AppContext;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->mContext:Lcom/cyjh/elfin/base/AppContext;

    return-void
.end method

.method public setScriptEncryptKey(Ljava/lang/String;)V
    .registers 5

    const-string v0, "SplashModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scriptEncryptKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/cyjh/elfin/entity/ParamsWrap;->ScriptEncryptKey:Ljava/lang/String;

    return-void
.end method
