.class final Lcom/elfin/ad/e/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/elfin/ad/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/c/a;

.field final synthetic b:Lcom/elfin/ad/e/e;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V
    .registers 3

    iput-object p1, p0, Lcom/elfin/ad/e/e$2;->b:Lcom/elfin/ad/e/e;

    iput-object p2, p0, Lcom/elfin/ad/e/e$2;->a:Lcom/elfin/ad/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/s;)V
    .registers 4

    invoke-static {}, Lcom/elfin/ad/e/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/s;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/elfin/ad/e/e$2;->a:Lcom/elfin/ad/c/a;

    invoke-virtual {p1}, Lcom/android/volley/s;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void
.end method
