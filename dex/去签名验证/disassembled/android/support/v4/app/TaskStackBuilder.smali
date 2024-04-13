.class public final Landroid/support/v4/app/TaskStackBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderApi16Impl;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;,
        Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;

.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderApi16Impl;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;

    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;-><init>()V

    goto :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/support/v4/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_10
    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    :cond_15
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    return-object p0
.end method

.method public final addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    invoke-interface {v0}, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_13

    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_25

    iget-object p1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    :cond_25
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    :cond_2b
    return-object p0
.end method

.method public final addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :try_start_6
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    :goto_8
    invoke-static {v1, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_19} :catch_1b

    goto :goto_8

    :cond_1a
    return-object p0

    :catch_1b
    move-exception p1

    const-string v0, "TaskStackBuilder"

    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/support/v4/app/TaskStackBuilder;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final editIntentAt(I)Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method public final getIntent(I)Landroid/content/Intent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final getIntentCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getIntents()[Landroid/content/Intent;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    array-length v1, v0

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_39

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_39
    return-object v0
.end method

.method public final getPendingIntent(II)Landroid/app/PendingIntent;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 11
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, v3, v1

    sget-object v1, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;

    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderBaseImpl;->getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final startActivities()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    return-void
.end method

.method public final startActivities(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_4d

    new-instance p1, Landroid/content/Intent;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4d
    return-void
.end method
