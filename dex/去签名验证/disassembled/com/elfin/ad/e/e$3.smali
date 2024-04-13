.class final Lcom/elfin/ad/e/e$3;
.super Lcom/android/volley/toolbox/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/elfin/ad/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/elfin/ad/e/e;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 5

    iput-object p1, p0, Lcom/elfin/ad/e/e$3;->m:Lcom/elfin/ad/e/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/toolbox/s;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/x-javascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip,deflate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/elfin/ad/e/e$3;->m:Lcom/elfin/ad/e/e;

    invoke-static {v2}, Lcom/elfin/ad/e/e;->a(Lcom/elfin/ad/e/e;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
