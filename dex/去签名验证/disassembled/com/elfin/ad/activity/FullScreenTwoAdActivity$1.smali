.class final Lcom/elfin/ad/activity/FullScreenTwoAdActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->onResume()V
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

    iput-object p1, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$1;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/activity/FullScreenTwoAdActivity$1;->a:Lcom/elfin/ad/activity/FullScreenTwoAdActivity;

    invoke-static {v0}, Lcom/elfin/ad/activity/FullScreenTwoAdActivity;->a(Lcom/elfin/ad/activity/FullScreenTwoAdActivity;)V

    return-void
.end method
