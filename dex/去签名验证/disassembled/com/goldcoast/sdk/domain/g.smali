.class final Lcom/goldcoast/sdk/domain/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/h;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/os/ConditionVariable;

.field final synthetic c:Lcom/goldcoast/sdk/domain/EntryPoint;


# direct methods
.method constructor <init>(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/util/List;Landroid/os/ConditionVariable;)V
    .registers 4

    iput-object p1, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    iput-object p2, p0, Lcom/goldcoast/sdk/domain/g;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/goldcoast/sdk/domain/g;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/as;)V
    .registers 8

    invoke-virtual {p1}, Lcom/b/a/as;->e()Lcom/b/a/au;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/au;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    :try_start_e
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/g;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;Ljava/util/List;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_45

    :catch_16
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "Exception:\n %s\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v3}, Lcom/goldcoast/sdk/domain/EntryPoint;->d(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_40

    const-string v0, "Exception:\n %s\n$$$ failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_40
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {p1, v1, v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    :cond_45
    :goto_45
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/g;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stack"

    iget-object v2, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v2, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-static {v0}, Lcom/goldcoast/sdk/domain/EntryPoint;->d(Lcom/goldcoast/sdk/domain/EntryPoint;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v2, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n$$$ failed\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    :goto_33
    invoke-static {v0, p1, v1}, Lcom/goldcoast/sdk/domain/EntryPoint;->a(Lcom/goldcoast/sdk/domain/EntryPoint;Ljava/lang/String;I)V

    goto :goto_41

    :cond_37
    iget-object v0, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    iget-object v1, p0, Lcom/goldcoast/sdk/domain/g;->c:Lcom/goldcoast/sdk/domain/EntryPoint;

    invoke-virtual {v1, p1}, Lcom/goldcoast/sdk/domain/EntryPoint;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    goto :goto_33

    :goto_41
    iget-object p1, p0, Lcom/goldcoast/sdk/domain/g;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
