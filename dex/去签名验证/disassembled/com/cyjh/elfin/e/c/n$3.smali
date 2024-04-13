.class final Lcom/cyjh/elfin/e/c/n$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/n;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/e/c/n;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/n;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/n$3;->a:Lcom/cyjh/elfin/e/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string v0, "\u811a\u672c\u66f4\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u542f\u5c0f\u7cbe\u7075\u8fdb\u884c\u66f4\u65b0"

    invoke-static {v0}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
