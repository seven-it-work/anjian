.class final Lcom/goldcoast/sdk/domain/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/domain/i;->a:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lcom/goldcoast/sdk/c/h;->a()Lcom/goldcoast/sdk/c/h;

    const-string v0, "refer"

    invoke-static {v0}, Lcom/goldcoast/sdk/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    :try_start_f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_31

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_31

    iget-object v2, p0, Lcom/goldcoast/sdk/domain/i;->a:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->b(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    return-void
.end method
