.class final Lcom/core/util/share/SharedPreferenceProvider$1;
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

    iput-object p1, p0, Lcom/core/util/share/SharedPreferenceProvider$1;->a:Lcom/core/util/share/SharedPreferenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "key_result"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
