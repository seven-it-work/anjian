.class final Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/goldcoast/sdk/domain/AnalyseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onProgress(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method
