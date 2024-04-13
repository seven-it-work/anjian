.class public Lcom/cyjh/elfin/entity/FeLingAdReportInfo;
.super Lorg/litepal/b/e;


# instance fields
.field public adPid:Ljava/lang/String;

.field public apkPageName:Ljava/lang/String;

.field public postState:I

.field public state:I

.field public type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Lorg/litepal/b/e;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    iput p3, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    iput p4, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    iput p5, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    return-void
.end method


# virtual methods
.method public getAdPid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostState()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAdPid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    return-void
.end method

.method public setApkPageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    return-void
.end method

.method public setPostState(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->postState:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->state:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    return-void
.end method
