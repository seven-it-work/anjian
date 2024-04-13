.class final Lcom/bumptech/glide/load/b/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/h$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/g;

.field private final b:Lcom/bumptech/glide/load/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bumptech/glide/load/b/g$b;->a:Lcom/bumptech/glide/load/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/g$b;->b:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;
    .registers 15
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/b/u<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/g$b;->a:Lcom/bumptech/glide/load/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/g$b;->b:Lcom/bumptech/glide/load/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v2, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_24

    iget-object v2, v0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/load/b/f;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    move-result-object v2

    iget-object v4, v0, Lcom/bumptech/glide/load/b/g;->e:Lcom/bumptech/glide/h;

    iget v5, v0, Lcom/bumptech/glide/load/b/g;->i:I

    iget v6, v0, Lcom/bumptech/glide/load/b/g;->j:I

    invoke-interface {v2, v4, p1, v5, v6}, Lcom/bumptech/glide/load/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/b/u;II)Lcom/bumptech/glide/load/b/u;

    move-result-object v4

    move-object v9, v2

    move-object v2, v4

    goto :goto_26

    :cond_24
    move-object v2, p1

    move-object v9, v3

    :goto_26
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->d()V

    :cond_2f
    iget-object p1, v0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object p1, p1, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object p1, p1, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_45

    const/4 p1, 0x1

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    if-eqz p1, :cond_6b

    iget-object p1, v0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object p1, p1, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object p1, p1, Lcom/bumptech/glide/m;->e:Lcom/bumptech/glide/e/f;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/e/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/l;

    move-result-object v3

    if-eqz v3, :cond_61

    iget-object p1, v0, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/j;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/l;->a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    goto :goto_6d

    :cond_61
    new-instance p1, Lcom/bumptech/glide/m$d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/m$d;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_6b
    sget-object p1, Lcom/bumptech/glide/load/c;->NONE:Lcom/bumptech/glide/load/c;

    :goto_6d
    move-object v12, v3

    iget-object v3, v0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object v6, v0, Lcom/bumptech/glide/load/b/g;->r:Lcom/bumptech/glide/load/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_7b
    if-ge v8, v7, :cond_90

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/load/c/n$a;

    iget-object v11, v11, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v11, v6}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    const/4 v4, 0x1

    goto :goto_90

    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_90
    :goto_90
    xor-int/lit8 v3, v4, 0x1

    iget-object v4, v0, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v4, v3, v1, p1}, Lcom/bumptech/glide/load/b/i;->a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    move-result v1

    if-eqz v1, :cond_f5

    if-nez v12, :cond_aa

    new-instance p1, Lcom/bumptech/glide/m$d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/m$d;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_aa
    sget-object v1, Lcom/bumptech/glide/load/b/g$1;->c:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/c;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_f6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown strategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c9
    new-instance p1, Lcom/bumptech/glide/load/b/w;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v4, v1, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/b/a/b;

    iget-object v5, v0, Lcom/bumptech/glide/load/b/g;->r:Lcom/bumptech/glide/load/g;

    iget-object v6, v0, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/g;

    iget v7, v0, Lcom/bumptech/glide/load/b/g;->i:I

    iget v8, v0, Lcom/bumptech/glide/load/b/g;->j:I

    iget-object v11, v0, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/j;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/bumptech/glide/load/b/w;-><init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)V

    goto :goto_e9

    :pswitch_e0
    new-instance p1, Lcom/bumptech/glide/load/b/c;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/g;->r:Lcom/bumptech/glide/load/g;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/g;

    invoke-direct {p1, v1, v3}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    :goto_e9
    invoke-static {v2}, Lcom/bumptech/glide/load/b/t;->a(Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/t;

    move-result-object v2

    iget-object v0, v0, Lcom/bumptech/glide/load/b/g;->c:Lcom/bumptech/glide/load/b/g$c;

    iput-object p1, v0, Lcom/bumptech/glide/load/b/g$c;->a:Lcom/bumptech/glide/load/g;

    iput-object v12, v0, Lcom/bumptech/glide/load/b/g$c;->b:Lcom/bumptech/glide/load/l;

    iput-object v2, v0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    :cond_f5
    return-object v2

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_c9
    .end packed-switch
.end method
