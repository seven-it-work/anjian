.class public Lcom/core/util/share/SharedPreferenceProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/core/util/share/SharedPreferenceProvider$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/core/util/share/SharedPreferenceProvider$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/core/util/share/SharedPreferenceProvider$a;

.field private c:Lcom/core/util/share/SharedPreferenceProvider$a;

.field private d:Lcom/core/util/share/SharedPreferenceProvider$a;

.field private e:Lcom/core/util/share/SharedPreferenceProvider$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$1;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$1;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->b:Lcom/core/util/share/SharedPreferenceProvider$a;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$2;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$2;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->c:Lcom/core/util/share/SharedPreferenceProvider$a;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$3;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$3;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->d:Lcom/core/util/share/SharedPreferenceProvider$a;

    new-instance v0, Lcom/core/util/share/SharedPreferenceProvider$4;

    invoke-direct {v0, p0}, Lcom/core/util/share/SharedPreferenceProvider$4;-><init>(Lcom/core/util/share/SharedPreferenceProvider;)V

    iput-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->e:Lcom/core/util/share/SharedPreferenceProvider$a;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/core/util/share/SharedPreferenceProvider$a;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-interface {p1, p2, p3}, Lcom/core/util/share/SharedPreferenceProvider$a;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 4

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    const-string v1, "method_query_value"

    iget-object v2, p0, Lcom/core/util/share/SharedPreferenceProvider;->c:Lcom/core/util/share/SharedPreferenceProvider$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    const-string v1, "method_contain_key"

    iget-object v2, p0, Lcom/core/util/share/SharedPreferenceProvider;->d:Lcom/core/util/share/SharedPreferenceProvider$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    const-string v1, "method_edit"

    iget-object v2, p0, Lcom/core/util/share/SharedPreferenceProvider;->e:Lcom/core/util/share/SharedPreferenceProvider$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider;->a:Ljava/util/Map;

    const-string v1, "method_query_pid"

    iget-object v2, p0, Lcom/core/util/share/SharedPreferenceProvider;->b:Lcom/core/util/share/SharedPreferenceProvider$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
