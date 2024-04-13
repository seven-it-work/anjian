.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field final a:Lcom/bumptech/glide/manager/a;

.field final b:Lcom/bumptech/glide/manager/l;

.field c:Lcom/bumptech/glide/o;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/manager/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$a;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/l;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    :cond_11
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/bumptech/glide/o;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/o;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/o;

    return-void
.end method

.method private b()Lcom/bumptech/glide/manager/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;)Z
    .registers 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_4

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private c()Lcom/bumptech/glide/o;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->c:Lcom/bumptech/glide/o;

    return-object v0
.end method

.method private d()Lcom/bumptech/glide/manager/l;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b:Lcom/bumptech/glide/manager/l;

    return-object v0
.end method

.method private e()Landroid/support/v4/app/Fragment;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    iget-object v0, v0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    :cond_e
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Set;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e()Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 5
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f()V

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/manager/k;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Activity;)Z

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Z)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    iget-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->g:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    iget-object p1, p1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a(Landroid/support/v4/app/FragmentActivity;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "SupportRMFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "SupportRMFragment"

    const-string v1, "Unable to register fragment with root"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->d:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->f()V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->e()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
