.class public final Lcom/bumptech/glide/load/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Lcom/bumptech/glide/load/c/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/load/c/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/m<",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/b;->a:Lcom/bumptech/glide/load/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/c/a/b;-><init>(Lcom/bumptech/glide/load/c/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/c/m;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/c/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/m<",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/c/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/c/g;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c/n$a;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/c/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/g;",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/g;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_16

    :cond_15
    move-object p1, v0

    :cond_16
    :goto_16
    sget-object v0, Lcom/bumptech/glide/load/c/a/b;->a:Lcom/bumptech/glide/load/i;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v0, Lcom/bumptech/glide/load/c/n$a;

    new-instance v1, Lcom/bumptech/glide/load/a/j;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/a/j;-><init>(Lcom/bumptech/glide/load/c/g;I)V

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

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

    check-cast p1, Lcom/bumptech/glide/load/c/g;

    iget-object p2, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/c/g;

    if-nez p2, :cond_17

    iget-object p2, p0, Lcom/bumptech/glide/load/c/a/b;->b:Lcom/bumptech/glide/load/c/m;

    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/bumptech/glide/load/c/m;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_18

    :cond_17
    move-object p1, p2

    :cond_18
    :goto_18
    sget-object p2, Lcom/bumptech/glide/load/c/a/b;->a:Lcom/bumptech/glide/load/i;

    invoke-virtual {p4, p2}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance p3, Lcom/bumptech/glide/load/c/n$a;

    new-instance p4, Lcom/bumptech/glide/load/a/j;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/a/j;-><init>(Lcom/bumptech/glide/load/c/g;I)V

    invoke-direct {p3, p1, p4}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a/d;)V

    return-object p3
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
