.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public shouldSendMessage(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
