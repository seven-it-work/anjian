.class final Lcom/elfin/ad/e/b$2;
.super Lcom/elfin/ad/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    invoke-direct {p0}, Lcom/elfin/ad/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
    .registers 5

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IFLYADListener --> onAdFailed message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    const/16 v0, 0x65

    iput v0, p1, Lcom/elfin/ad/e/b;->k:I

    iget-object p1, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    invoke-virtual {p1}, Lcom/elfin/ad/e/b;->a()V

    return-void
.end method

.method public final onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V
    .registers 4

    const-string v0, "AdManager"

    const-string v1, "IFLYADListener --> onAdLoaded"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    iput-object p1, v0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object p1, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    iget-object p1, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    iget-object p1, p1, Lcom/elfin/ad/e/b;->i:Lcom/elfin/ad/c/a;

    iget-object v0, p0, Lcom/elfin/ad/e/b$2;->a:Lcom/elfin/ad/e/b;

    iget-object v0, v0, Lcom/elfin/ad/e/b;->h:Lcom/iflytek/voiceads/conn/NativeDataRef;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method
