.class public final Lcom/bumptech/glide/load/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/d$a;,
        Lcom/bumptech/glide/load/c/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ByteBufferFileLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Lcom/bumptech/glide/load/c/n$a;
    .registers 4
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/n$a;

    new-instance v1, Lcom/bumptech/glide/f/d;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/c/d$a;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/c/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object v0
.end method

.method private static a()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/c/d$a;

    invoke-direct {p4, p1}, Lcom/bumptech/glide/load/c/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
