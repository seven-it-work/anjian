.class public final Lcom/bumptech/glide/manager/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/k$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.bumptech.glide.manager"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final f:Ljava/lang/String; = "RMRetriever"

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:Ljava/lang/String; = "key"

.field private static final n:Lcom/bumptech/glide/manager/k$a;


# instance fields
.field final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Lcom/bumptech/glide/o;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/bumptech/glide/manager/k$a;

.field private final m:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/manager/k$1;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/k$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/k;->n:Lcom/bumptech/glide/manager/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/k$a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/manager/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    sget-object p1, Lcom/bumptech/glide/manager/k;->n:Lcom/bumptech/glide/manager/k$a;

    :goto_2b
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->l:Lcom/bumptech/glide/manager/k$a;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->k:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-nez v0, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_16

    :cond_35
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/bumptech/glide/manager/k;->a(Ljava/util/Collection;Ljava/util/Map;)V

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1a

    :cond_39
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/o;
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object p2

    iget-object p3, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/o;

    if-nez p3, :cond_18

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p3

    iget-object p4, p0, Lcom/bumptech/glide/manager/k;->l:Lcom/bumptech/glide/manager/k$a;

    iget-object v0, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    iget-object v1, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/l;

    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/manager/k$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p3

    iput-object p3, p2, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/o;

    :cond_18
    return-object p3
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/o;
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object p2

    iget-object p3, p2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/o;

    if-nez p3, :cond_18

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p3

    iget-object p4, p0, Lcom/bumptech/glide/manager/k;->l:Lcom/bumptech/glide/manager/k$a;

    iget-object v0, p2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    iget-object v1, p2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/l;

    invoke-interface {p4, p3, v0, v1, p1}, Lcom/bumptech/glide/manager/k$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p3

    iput-object p3, p2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/o;

    :cond_18
    return-object p3
.end method

.method private a(Landroid/view/View;)Lcom/bumptech/glide/o;
    .registers 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_6

    :cond_2c
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    const v2, 0x1020002

    const/4 v3, 0x0

    if-eqz v1, :cond_7e

    move-object v1, v0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Lcom/bumptech/glide/manager/k;->a(Ljava/util/Collection;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_4d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_6d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_4d

    :cond_6d
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    if-eqz v3, :cond_79

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_79
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_7e
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, v1, v4}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_90
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Fragment;

    if-nez v3, :cond_b0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_b0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_90

    :cond_b0
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    if-nez v3, :cond_bc

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_bc
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Map;)V
    .registers 4
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/manager/k;->a(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_7

    :cond_2e
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_7
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .registers 7
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->m:Landroid/os/Bundle;

    const-string v2, "key"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->m:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {p1, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    move-object v0, v1

    :catch_14
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_30

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    :cond_30
    move v0, v3

    goto :goto_1

    :cond_32
    return-void
.end method

.method static b(Landroid/app/Activity;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private c(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->j:Lcom/bumptech/glide/o;

    if-nez v0, :cond_2c

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->j:Lcom/bumptech/glide/o;

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->l:Lcom/bumptech/glide/manager/k$a;

    new-instance v2, Lcom/bumptech/glide/manager/b;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/b;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/g;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/g;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/k$a;->a(Lcom/bumptech/glide/f;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->j:Lcom/bumptech/glide/o;

    :cond_27
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->j:Lcom/bumptech/glide/o;

    return-object p1
.end method

.method private static c(Landroid/app/Activity;)V
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    return-void
.end method

.method private d(Landroid/app/Activity;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final a(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .registers 6
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_4d

    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    iput-object p2, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Landroid/app/Fragment;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Landroid/app/Activity;)V

    :cond_2a
    if-eqz p3, :cond_31

    iget-object p2, v0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {p2}, Lcom/bumptech/glide/manager/a;->a()V

    :cond_31
    iget-object p2, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    const-string p3, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p2, p0, Lcom/bumptech/glide/manager/k;->k:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4d
    return-object v0
.end method

.method final a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .registers 6
    .param p1    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_4d

    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    iput-object p2, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    :cond_2a
    if-eqz p3, :cond_31

    iget-object p2, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {p2}, Lcom/bumptech/glide/manager/a;->a()V

    :cond_31
    iget-object p2, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string p3, "com.bumptech.glide.manager"

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p2, p0, Lcom/bumptech/glide/manager/k;->k:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4d
    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/bumptech/glide/o;
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;
    .registers 5
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v0

    if-nez v0, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1b

    goto :goto_2c

    :cond_1b
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :goto_0
    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {}, Lcom/bumptech/glide/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_35

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_35

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1f

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_1f
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2a

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_2a
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_35

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_35
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/k;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;
    .registers 5
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;
    .registers 5
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1

    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->c(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/o;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V
    .registers 7
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/util/ArrayMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_30

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_e

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->m:Landroid/os/Bundle;

    const-string v2, "key"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_3b
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->m:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {p1, v1, v2}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    move-object v0, v1

    :catch_44
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_60

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    :cond_60
    move v0, v3

    goto :goto_31

    :cond_62
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3e

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1d

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentManager;

    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Map;

    goto :goto_19

    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->b:Ljava/util/Map;

    :goto_19
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1d
    if-eqz v2, :cond_3d

    if-nez p1, :cond_3d

    const-string p1, "RMRetriever"

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "RMRetriever"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v2

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
