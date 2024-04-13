.class final Lcom/cyjh/mq/d/f$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Process;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Process;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mq/d/f$b;->a:Ljava/lang/Process;

    iput p2, p0, Lcom/cyjh/mq/d/f$b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget v0, p0, Lcom/cyjh/mq/d/f$b;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cyjh/mq/d/f$b;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_d
    invoke-static {}, Lcom/cyjh/mq/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/cyjh/mq/d/f$b;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_18
    return-void
.end method
