.class public final Lcom/core/util/share/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/core/util/share/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/core/util/share/c;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/core/util/share/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/core/util/share/c;)V
    .registers 2

    iput-object p1, p0, Lcom/core/util/share/c$a;->a:Lcom/core/util/share/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/core/util/share/c$a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/core/util/share/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private a()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/core/util/share/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/core/util/share/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/core/util/share/a;

    iget-object v2, v2, Lcom/core/util/share/a;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method public final apply()V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_result"

    invoke-direct {p0}, Lcom/core/util/share/c$a;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "key_op_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_14
    iget-object v1, p0, Lcom/core/util/share/c$a;->a:Lcom/core/util/share/c;

    invoke-static {v1}, Lcom/core/util/share/c;->b(Lcom/core/util/share/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/core/util/share/b;->c:Landroid/net/Uri;

    const-string v3, "method_edit"

    iget-object v4, p0, Lcom/core/util/share/c$a;->a:Lcom/core/util/share/c;

    invoke-static {v4}, Lcom/core/util/share/c;->a(Lcom/core/util/share/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final clear()Landroid/content/SharedPreferences$Editor;
    .registers 3

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final commit()Z
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_result"

    invoke-direct {p0}, Lcom/core/util/share/c$a;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "key_op_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_14
    iget-object v1, p0, Lcom/core/util/share/c$a;->a:Lcom/core/util/share/c;

    invoke-static {v1}, Lcom/core/util/share/c;->b(Lcom/core/util/share/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/core/util/share/b;->c:Landroid/net/Uri;

    const-string v3, "method_edit"

    iget-object v4, p0, Lcom/core/util/share/c$a;->a:Lcom/core/util/share/c;

    invoke-static {v4}, Lcom/core/util/share/c;->a(Lcom/core/util/share/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_32
    const/4 v1, 0x0

    if-nez v0, :cond_36

    return v1

    :cond_36
    const-string v2, "key_result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/core/util/share/a;->a(Z)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/core/util/share/a;->a(F)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/core/util/share/a;->b(I)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 4

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/core/util/share/a;->a(J)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/core/util/share/a;->b(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    invoke-static {p1}, Lcom/core/util/share/a;->d(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/core/util/share/a;->a(Ljava/util/Set;)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    new-instance v0, Lcom/core/util/share/a;

    invoke-direct {v0}, Lcom/core/util/share/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/core/util/share/a;->a(Ljava/lang/String;)Lcom/core/util/share/a;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/core/util/share/a;->a(I)Lcom/core/util/share/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/core/util/share/c$a;->a(Lcom/core/util/share/a;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method
