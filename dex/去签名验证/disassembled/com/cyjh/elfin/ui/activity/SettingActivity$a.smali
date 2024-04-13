.class final Lcom/cyjh/elfin/ui/activity/SettingActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/SettingActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/SettingActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/SettingActivity$a;->a:Lcom/cyjh/elfin/ui/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/SettingActivity;->finish()V

    return-void
.end method
