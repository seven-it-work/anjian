.class public final Lcom/elfin/engin/c$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/engin/c;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/elfin/engin/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/elfin/engin/c;


# direct methods
.method public constructor <init>(Lcom/elfin/engin/c;Landroid/app/Application;)V
    .registers 3

    iput-object p1, p0, Lcom/elfin/engin/c$7;->b:Lcom/elfin/engin/c;

    iput-object p2, p0, Lcom/elfin/engin/c$7;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRootProgress(Ljava/lang/String;I)V
    .registers 3

    const/4 p1, 0x6

    if-ne p2, p1, :cond_a

    sget-object p1, Lcom/cyjh/common/util/aj;->INSTANCE:Lcom/cyjh/common/util/aj;

    iget-object p2, p0, Lcom/elfin/engin/c$7;->a:Landroid/app/Application;

    invoke-virtual {p1, p2}, Lcom/cyjh/common/util/aj;->copyWebInjectFile(Landroid/content/Context;)V

    :cond_a
    return-void
.end method
