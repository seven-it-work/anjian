.class final Lcom/elfin/engin/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/RootProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/engin/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/engin/c;


# direct methods
.method constructor <init>(Lcom/elfin/engin/c;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/engin/c$2;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRootProgress(Ljava/lang/String;I)V
    .registers 3

    iget-object p1, p0, Lcom/elfin/engin/c$2;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    return-void
.end method
