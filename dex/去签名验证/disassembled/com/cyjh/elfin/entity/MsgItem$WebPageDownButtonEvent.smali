.class public Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPageDownButtonEvent"
.end annotation


# instance fields
.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return v0
.end method
