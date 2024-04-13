.class public final Lcom/bumptech/glide/request/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private c:Lcom/bumptech/glide/request/a/d;


# direct methods
.method protected constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/a/c;->a:I

    iput-boolean p2, p0, Lcom/bumptech/glide/request/a/c;->b:Z

    return-void
.end method

.method private a()Lcom/bumptech/glide/request/a/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/a/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    if-nez v0, :cond_f

    new-instance v0, Lcom/bumptech/glide/request/a/d;

    iget v1, p0, Lcom/bumptech/glide/request/a/c;->a:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/a/c;->b:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/a/d;-><init>(IZ)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/a;Z)Lcom/bumptech/glide/request/a/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a;",
            "Z)",
            "Lcom/bumptech/glide/request/a/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    if-ne p1, p2, :cond_9

    invoke-static {}, Lcom/bumptech/glide/request/a/e;->b()Lcom/bumptech/glide/request/a/f;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    if-nez p1, :cond_18

    new-instance p1, Lcom/bumptech/glide/request/a/d;

    iget p2, p0, Lcom/bumptech/glide/request/a/c;->a:I

    iget-boolean v0, p0, Lcom/bumptech/glide/request/a/c;->b:Z

    invoke-direct {p1, p2, v0}, Lcom/bumptech/glide/request/a/d;-><init>(IZ)V

    iput-object p1, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    :cond_18
    iget-object p1, p0, Lcom/bumptech/glide/request/a/c;->c:Lcom/bumptech/glide/request/a/d;

    return-object p1
.end method
