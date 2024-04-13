.class final Lcom/elfin/ad/e/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/elfin/ad/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/n$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/ad/c/a;

.field final synthetic b:Lcom/elfin/ad/e/e;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/e;Lcom/elfin/ad/c/a;)V
    .registers 3

    iput-object p1, p0, Lcom/elfin/ad/e/e$1;->b:Lcom/elfin/ad/e/e;

    iput-object p2, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/elfin/ad/e/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_19
    const-string v0, "OK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    new-instance p1, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>()V

    iget-object v0, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_2c
    iget-object p1, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/elfin/ad/e/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string v0, "OK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>()V

    iget-object v0, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    invoke-interface {v0, p1}, Lcom/elfin/ad/c/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_2e
    iget-object p1, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/elfin/ad/e/e$1;->a:Lcom/elfin/ad/c/a;

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/elfin/ad/c/a;->a(Ljava/lang/String;)V

    return-void
.end method
