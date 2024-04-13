.class final Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;


# direct methods
.method constructor <init>(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/cyjh/http/c/c/c;->a()Lcom/cyjh/http/c/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/http/c/c/c;->d()V

    invoke-static {}, Lcom/elfin/ad/e/a;->a()Lcom/elfin/ad/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$3;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-virtual {v0, v1}, Lcom/elfin/ad/e/a;->a(Landroid/content/Context;)V

    return-void
.end method
