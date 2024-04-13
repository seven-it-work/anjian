.class final Lcom/elfin/ad/e/e$6;
.super Lcom/android/volley/toolbox/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elfin/ad/e/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/elfin/ad/e/e;


# direct methods
.method constructor <init>(Lcom/elfin/ad/e/e;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 12

    iput-object p1, p0, Lcom/elfin/ad/e/e$6;->n:Lcom/elfin/ad/e/e;

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/n;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

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

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/elfin/ad/e/e$6;->n:Lcom/elfin/ad/e/e;

    invoke-static {v2}, Lcom/elfin/ad/e/e;->a(Lcom/elfin/ad/e/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
