.class public Lcom/umeng/commonsdk/framework/UMWorkDispatch;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Quit()V
    .registers 0

    invoke-static {}, Lcom/umeng/commonsdk/framework/e;->a()V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/commonsdk/framework/e;->a(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method
