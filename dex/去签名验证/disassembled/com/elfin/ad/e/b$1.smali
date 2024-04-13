.class final Lcom/elfin/ad/e/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/ad/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/elfin/ad/c/a<",
        "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/e/b;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/e/b$1;->a:Lcom/elfin/ad/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()V
    .registers 2

    const-string v0, "AdManager"

    const-string v1, "reportLogInfo --> finish "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    const-string p1, "AdManager"

    const-string v0, "reportLogInfo --> finish "

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "AdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportLogInfo --> error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
