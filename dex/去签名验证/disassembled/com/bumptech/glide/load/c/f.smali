.class public final Lcom/bumptech/glide/load/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/f$b;,
        Lcom/bumptech/glide/load/c/f$e;,
        Lcom/bumptech/glide/load/c/f$a;,
        Lcom/bumptech/glide/load/c/f$c;,
        Lcom/bumptech/glide/load/c/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FileLoader"


# instance fields
.field private final b:Lcom/bumptech/glide/load/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/f$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/f;->b:Lcom/bumptech/glide/load/c/f$d;

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/bumptech/glide/load/c/n$a;
    .registers 6
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/c/n$a;

    new-instance v1, Lcom/bumptech/glide/f/d;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/c/f$c;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/f;->b:Lcom/bumptech/glide/load/c/f$d;

    invoke-direct {v2, p1, v3}, Lcom/bumptech/glide/load/c/f$c;-><init>(Ljava/io/File;Lcom/bumptech/glide/load/c/f$d;)V

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
    .registers 6
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

    new-instance p4, Lcom/bumptech/glide/load/c/f$c;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/f;->b:Lcom/bumptech/glide/load/c/f$d;

    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/c/f$c;-><init>(Ljava/io/File;Lcom/bumptech/glide/load/c/f$d;)V

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
