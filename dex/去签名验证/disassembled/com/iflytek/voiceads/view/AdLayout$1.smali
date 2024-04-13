.class Lcom/iflytek/voiceads/view/AdLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/listener/InternalListener;


# instance fields
.field final synthetic this$0:Lcom/iflytek/voiceads/view/AdLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/view/AdLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/voiceads/view/AdLayout$1;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDestroy()Z
    .registers 3

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout$1;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    # getter for: Lcom/iflytek/voiceads/view/AdLayout;->hasDestroyed:Z
    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdLayout;->access$000(Lcom/iflytek/voiceads/view/AdLayout;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout$1;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    const/4 v1, 0x1

    # setter for: Lcom/iflytek/voiceads/view/AdLayout;->hasDestroyed:Z
    invoke-static {v0, v1}, Lcom/iflytek/voiceads/view/AdLayout;->access$002(Lcom/iflytek/voiceads/view/AdLayout;Z)Z

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout$1;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    # getter for: Lcom/iflytek/voiceads/view/AdLayout;->layoutHandler:Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;
    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdLayout;->access$100(Lcom/iflytek/voiceads/view/AdLayout;)Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/iflytek/voiceads/view/AdLayout$1;->this$0:Lcom/iflytek/voiceads/view/AdLayout;

    # getter for: Lcom/iflytek/voiceads/view/AdLayout;->layoutHandler:Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;
    invoke-static {v0}, Lcom/iflytek/voiceads/view/AdLayout;->access$100(Lcom/iflytek/voiceads/view/AdLayout;)Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/view/AdLayout$AdLayoutHandler;->sendEmptyMessage(I)Z

    :cond_1f
    return v1

    :cond_20
    const/4 v0, 0x0

    return v0
.end method
