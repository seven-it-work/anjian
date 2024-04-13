.class public Lcom/iflytek/voiceads/IFLYInterstitialAd;
.super Lcom/iflytek/voiceads/view/AdLayout;


# static fields
.field private static cIFLYInterstitialAdImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

.field private static isClassLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iflytek/voiceads/view/AdLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createInterstitialAd(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/voiceads/IFLYInterstitialAd;
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->isClassLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string v0, "com.iflytek.voiceads.IFLYInterstitialAdImpl"

    invoke-static {p0, v0}, Lcom/iflytek/voiceads/dex/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->cIFLYInterstitialAdImpl:Ljava/lang/Class;

    sput-boolean v1, Lcom/iflytek/voiceads/IFLYInterstitialAd;->isClassLoaded:Z

    :cond_f
    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->cIFLYInterstitialAdImpl:Ljava/lang/Class;

    const-string v2, "createInterstitialAd"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iflytek/voiceads/IFLYInterstitialAd;

    sput-object p1, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_32} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_32} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_32} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_32} :catch_33

    return-object p1

    :catch_33
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    :catch_40
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    :catch_4d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    :catch_5a
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/iflytek/voiceads/IFLYInterstitialAd;

    invoke-direct {p1, p0}, Lcom/iflytek/voiceads/IFLYInterstitialAd;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V
    .registers 4

    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    if-nez v0, :cond_17

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_16

    new-instance v0, Lcom/iflytek/voiceads/config/AdError;

    const v1, 0x1155a

    invoke-direct {v0, v1}, Lcom/iflytek/voiceads/config/AdError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V

    :cond_16
    return-void

    :cond_17
    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    invoke-virtual {v0, p1}, Lcom/iflytek/voiceads/IFLYInterstitialAd;->loadAd(Lcom/iflytek/voiceads/listener/IFLYAdListener;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    if-nez v0, :cond_a

    const-string p1, "can\'t find AdDex file in assets"

    invoke-static {p1}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/voiceads/IFLYInterstitialAd;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public showAd()V
    .registers 2

    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    if-nez v0, :cond_a

    const-string v0, "can\'t find AdDex file in assets"

    invoke-static {v0}, Lcom/iflytek/voiceads/config/SDKLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    sget-object v0, Lcom/iflytek/voiceads/IFLYInterstitialAd;->iFLYInterstitialAdImpl:Lcom/iflytek/voiceads/IFLYInterstitialAd;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/IFLYInterstitialAd;->showAd()V

    return-void
.end method
