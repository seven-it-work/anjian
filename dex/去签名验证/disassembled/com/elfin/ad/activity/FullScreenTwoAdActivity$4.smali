.class final Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;
.super Lcom/elfin/ad/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0}, Lcom/elfin/ad/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
    .registers 5

    invoke-static {}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IFLYADListener --> adError message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8baf\u98de\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25 message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->g(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V
    .registers 4

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    const-string v1, "\u8baf\u98de\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0, p1}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    iget-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$4;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->f(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;Ljava/lang/String;)V

    return-void
.end method
