.class public Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindRegCodeBus"
.end annotation


# instance fields
.field private expireTime:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/elfin/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-wide v0
.end method
