.class final Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;->getControlId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET UIP Command -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->GET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    if-ne v0, v2, :cond_29

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-static {p1, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;)V

    return-void

    :cond_29
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->SET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    if-ne v0, v2, :cond_36

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;->getUipAttributeData()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$2;->a:Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;

    invoke-static {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->a(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_36} :catch_3c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_36} :catch_37

    :cond_36
    return-void

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    return-void
.end method
