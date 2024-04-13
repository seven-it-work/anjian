.class final Lcom/elfin/engin/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mq/sdk/inf/OnElfCallback;


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

    iput-object p1, p0, Lcom/elfin/engin/c$5;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/elfin/engin/c$5;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$5;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/elfin/engin/e;->a(ILjava/lang/String;)V

    :cond_11
    return-void
.end method
