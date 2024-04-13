.class final Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;->a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity$a;->a:Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/BindRegisterCodeActivity;->finish()V

    return-void
.end method
