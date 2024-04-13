.class public abstract Lcom/bumptech/glide/util/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/a/c$a;,
        Lcom/bumptech/glide/util/a/c$b;
    }
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/bumptech/glide/util/a/c;-><init>()V

    return-void
.end method

.method private static b()Lcom/bumptech/glide/util/a/c;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/util/a/c$b;

    invoke-direct {v0}, Lcom/bumptech/glide/util/a/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method abstract a(Z)V
.end method
