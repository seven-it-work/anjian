.class Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/view/AdLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdLayoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/voiceads/view/AdLayout;


# direct methods
.method public constructor <init>(Lcom/iflytek/voiceads/view/AdLayout;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/view/AdLayout;->destroy()V

    return-void
.end method
