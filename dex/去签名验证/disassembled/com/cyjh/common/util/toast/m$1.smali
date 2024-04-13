.class final Lcom/cyjh/common/util/toast/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/m;->a(Landroid/view/View;Lcom/cyjh/common/util/toast/m$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/toast/m$a;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/m$a;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/toast/m$1;->a:Lcom/cyjh/common/util/toast/m$a;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/m$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    return-void
.end method
