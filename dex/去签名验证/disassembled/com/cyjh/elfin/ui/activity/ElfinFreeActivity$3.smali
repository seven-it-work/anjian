.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$3;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$3;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->b(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Z

    return-void
.end method
