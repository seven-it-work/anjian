.class final Lcom/elfin/ad/e/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/ad/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/b;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/elfin/ad/c/a<",
        "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iput-object p1, v0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object p1, p1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    iget-object p1, p1, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iput-object p1, v0, Lcom/elfin/ad/e/b;->g:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    iget-object p1, p1, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    iget-object p1, p1, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFeLingAdInfoOperate --> error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    const/16 v0, 0x66

    iput v0, p1, Lcom/elfin/ad/e/b;->k:I

    iget-object p1, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget-object v0, p0, Lcom/elfin/ad/e/b$3;->a:Lcom/elfin/ad/e/b;

    iget v0, v0, Lcom/elfin/ad/e/b;->c:I

    const-string v1, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadBackgroundAd index\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/elfin/ad/e/a;->a(I)Z

    move-result v0

    const-string v1, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> isDisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7f

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v0, v0, Lcom/elfin/ad/e/a;->b:Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;

    iget-object v0, v0, Lcom/cyjh/http/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    goto :goto_62

    :cond_60
    const-string v0, ""

    :goto_62
    const-string v1, "AdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u52a0\u8f7d\u540e\u53f0\u5e7f\u544a handleMessage --> imageUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v1, :cond_7e

    iget-object p1, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_7e
    return-void

    :cond_7f
    iget-object v0, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz v0, :cond_8a

    iget-object p1, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_8a
    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
