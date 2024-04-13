.class final Lcom/core/util/share/SharedPreferenceProvider$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/core/util/share/SharedPreferenceProvider$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/core/util/share/SharedPreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/core/util/share/SharedPreferenceProvider;


# direct methods
.method constructor <init>(Lcom/core/util/share/SharedPreferenceProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/core/util/share/SharedPreferenceProvider$3;->a:Lcom/core/util/share/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "methodQueryValues, extras is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iget-object v0, p0, Lcom/core/util/share/SharedPreferenceProvider$3;->a:Lcom/core/util/share/SharedPreferenceProvider;

    invoke-virtual {v0}, Lcom/core/util/share/SharedPreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "methodQueryValues, ctx is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    const-string v1, "key_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_result"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
