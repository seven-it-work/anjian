.class public Lcom/bumptech/glide/request/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:I = 0x8

.field private static final B:I = 0x10

.field private static final C:I = 0x20

.field private static final D:I = 0x40

.field private static final E:I = 0x80

.field private static final F:I = 0x100

.field private static final G:I = 0x200

.field private static final H:I = 0x400

.field private static final I:I = 0x800

.field private static final J:I = 0x1000

.field private static final K:I = 0x2000

.field private static final L:I = 0x4000

.field private static final M:I = 0x8000

.field private static final N:I = 0x10000

.field private static final O:I = 0x20000

.field private static final P:I = 0x40000

.field private static final Q:I = 0x80000

.field private static final R:I = 0x100000

.field private static S:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static T:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static U:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static V:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static W:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static X:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static Y:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static Z:Lcom/bumptech/glide/request/g; = null
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final x:I = -0x1

.field private static final y:I = 0x2

.field private static final z:I = 0x4


# instance fields
.field a:F

.field private aa:I

.field private ab:Z

.field private ac:Z

.field b:Lcom/bumptech/glide/load/b/i;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public c:Lcom/bumptech/glide/l;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field d:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field e:I

.field f:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field g:I

.field public h:Z

.field public i:I

.field public j:I

.field k:Lcom/bumptech/glide/load/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field l:Z

.field public m:Z

.field n:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field o:I

.field public p:Lcom/bumptech/glide/load/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field q:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field r:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field s:Landroid/content/res/Resources$Theme;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field t:Z

.field u:Z

.field v:Z

.field w:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/request/g;->a:F

    sget-object v0, Lcom/bumptech/glide/load/b/i;->e:Lcom/bumptech/glide/load/b/i;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    sget-object v0, Lcom/bumptech/glide/l;->NORMAL:Lcom/bumptech/glide/l;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->h:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/request/g;->i:I

    iput v1, p0, Lcom/bumptech/glide/request/g;->j:I

    invoke-static {}, Lcom/bumptech/glide/f/b;->a()Lcom/bumptech/glide/f/b;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    new-instance v1, Lcom/bumptech/glide/load/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/j;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->v:Z

    return-void
.end method

.method private A()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    return v0
.end method

.method private B()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    return v0
.end method

.method private C()Z
    .registers 2

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    return v0
.end method

.method private D()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    return-object v0
.end method

.method private E()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->l:Z

    return v0
.end method

.method private F()Lcom/bumptech/glide/load/j;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    return-object v0
.end method

.method private G()Ljava/lang/Class;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    return-object v0
.end method

.method private H()Lcom/bumptech/glide/load/b/i;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    return-object v0
.end method

.method private I()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private J()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->e:I

    return v0
.end method

.method private K()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->g:I

    return v0
.end method

.method private L()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private M()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->o:I

    return v0
.end method

.method private N()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private O()Landroid/content/res/Resources$Theme;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method private P()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->h:Z

    return v0
.end method

.method private Q()Lcom/bumptech/glide/load/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method private R()Z
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    return v0
.end method

.method private S()Lcom/bumptech/glide/l;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    return-object v0
.end method

.method private T()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->j:I

    return v0
.end method

.method private U()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->i:I

    return v0
.end method

.method private V()F
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/request/g;->a:F

    return v0
.end method

.method private W()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->v:Z

    return v0
.end method

.method private X()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->t:Z

    return v0
.end method

.method private Y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->w:Z

    return v0
.end method

.method private Z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->u:Z

    return v0
.end method

.method public static a()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->S:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_14

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->S:Lcom/bumptech/glide/request/g;

    :cond_14
    sget-object v0, Lcom/bumptech/glide/request/g;->S:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    iget-boolean v1, v0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;

    const/4 p1, 0x0

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    if-eqz p3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    :goto_b
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/bumptech/glide/request/g;->v:Z

    return-object p1
.end method

.method public static a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;
    .registers 6
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    iget-boolean v1, v0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_1

    :cond_a
    new-instance v1, Lcom/bumptech/glide/load/d/a/q;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/d/a/q;-><init>(Lcom/bumptech/glide/load/m;Z)V

    const-class v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, p1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    const-class v1, Lcom/bumptech/glide/load/d/e/c;

    new-instance v2, Lcom/bumptech/glide/load/d/e/f;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/d/e/f;-><init>(Lcom/bumptech/glide/load/m;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/m<",
            "TT;>;Z)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    iget-boolean v1, v0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Argument must not be null"

    invoke-static {p2, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/bumptech/glide/request/g;->m:Z

    iget p2, v0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    iput p2, v0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/bumptech/glide/request/g;->v:Z

    if-eqz p3, :cond_37

    iget p2, v0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, v0, Lcom/bumptech/glide/request/g;->aa:I

    iput-boolean p1, v0, Lcom/bumptech/glide/request/g;->l:Z

    :cond_37
    invoke-direct {v0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private static b(F)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(F)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(J)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->a(J)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    iget-boolean v1, v0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p0    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private static c(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static c(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d/a/n;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method private static e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static h(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static i(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static j(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0, p0}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static k(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->f(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static l(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/g;->e(I)Lcom/bumptech/glide/request/g;

    move-result-object p0

    return-object p0
.end method

.method private static q()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->U:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->g()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->U:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->U:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private static r()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->V:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->i()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->V:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->V:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private static s()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->W:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->e()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->W:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->W:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private static t()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->X:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->k()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->X:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->X:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private static u()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->Y:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->Y:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->Y:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private static v()Lcom/bumptech/glide/request/g;
    .registers 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/g;->Z:Lcom/bumptech/glide/request/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->m()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/g;->Z:Lcom/bumptech/glide/request/g;

    :cond_13
    sget-object v0, Lcom/bumptech/glide/request/g;->Z:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method private w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    return v0
.end method

.method private x()Z
    .registers 2

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    return v0
.end method

.method private y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    return v0
.end method

.method private z()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(F)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_26

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_19

    goto :goto_26

    :cond_19
    iput p1, p0, Lcom/bumptech/glide/request/g;->a:F

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_26
    :goto_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->g:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(II)Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->j:I

    iput p2, p0, Lcom/bumptech/glide/request/g;->i:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/ac;->c:Lcom/bumptech/glide/load/i;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/e;->b:Lcom/bumptech/glide/load/i;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/request/g;->g:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/l;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/bumptech/glide/load/d/a/o;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/d/e/i;->a:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/d/a/n;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/d/a/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->h:Lcom/bumptech/glide/load/i;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/load/j;

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;
    .registers 6
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p1, Lcom/bumptech/glide/request/g;->a:F

    iput v0, p0, Lcom/bumptech/glide/request/g;->a:F

    :cond_1a
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->t:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->t:Z

    :cond_28
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->w:Z

    :cond_36
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    :cond_43
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    :cond_51
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/g;->e:I

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_68
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    iget v0, p1, Lcom/bumptech/glide/request/g;->e:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->e:I

    iput-object v2, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_7f
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/g;->g:I

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_95
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget v0, p1, Lcom/bumptech/glide/request/g;->g:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->g:I

    iput-object v2, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_ab
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->h:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->h:Z

    :cond_b9
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget v0, p1, Lcom/bumptech/glide/request/g;->j:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->j:I

    iget v0, p1, Lcom/bumptech/glide/request/g;->i:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->i:I

    :cond_cb
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    :cond_d9
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    :cond_e7
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/g;->o:I

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_fd
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p1, Lcom/bumptech/glide/request/g;->o:I

    iput v0, p0, Lcom/bumptech/glide/request/g;->o:I

    iput-object v2, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    :cond_113
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p1, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    :cond_122
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    :cond_130
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->l:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->l:Z

    :cond_13e
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->v:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->v:Z

    :cond_153
    iget v0, p1, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result v0

    if-eqz v0, :cond_161

    iget-boolean v0, p1, Lcom/bumptech/glide/request/g;->u:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->u:Z

    :cond_161
    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    if-nez v0, :cond_17d

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    iput-boolean v1, p0, Lcom/bumptech/glide/request/g;->l:Z

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->v:Z

    :cond_17d
    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    iget v1, p1, Lcom/bumptech/glide/request/g;->aa:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    iget-object p1, p1, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/j;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/m<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->t:Z

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public varargs a([Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # [Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/h;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/h;-><init>([Lcom/bumptech/glide/load/m;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/g;

    new-instance v1, Lcom/bumptech/glide/load/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/j;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    iget-object v1, v0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    iget-object v2, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/j;)V

    new-instance v1, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    iget-object v1, v0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/request/g;->ab:Z

    iput-boolean v1, v0, Lcom/bumptech/glide/request/g;->ac:Z
    :try_end_27
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->o:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/request/g;->o:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/i;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/g;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/load/m<",
            "TT;>;)",
            "Lcom/bumptech/glide/request/g;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/request/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->b(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->w:Z

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/o;->e:Lcom/bumptech/glide/load/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->c(I)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput p1, p0, Lcom/bumptech/glide/request/g;->e:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-object p1, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/request/g;->e:I

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->c(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_d
    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->u:Z

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->b:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/g;->a(II)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1

    :cond_e
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/bumptech/glide/request/g;->h:Z

    iget p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->b:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/e;->a:Lcom/bumptech/glide/load/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/request/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_af

    check-cast p1, Lcom/bumptech/glide/request/g;

    iget v0, p1, Lcom/bumptech/glide/request/g;->a:F

    iget v2, p0, Lcom/bumptech/glide/request/g;->a:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_af

    iget v0, p0, Lcom/bumptech/glide/request/g;->e:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->e:I

    if-ne v0, v2, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget v0, p0, Lcom/bumptech/glide/request/g;->g:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->g:I

    if-ne v0, v2, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget v0, p0, Lcom/bumptech/glide/request/g;->o:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->o:I

    if-ne v0, v2, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->h:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->h:Z

    if-ne v0, v2, :cond_af

    iget v0, p0, Lcom/bumptech/glide/request/g;->i:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->i:I

    if-ne v0, v2, :cond_af

    iget v0, p0, Lcom/bumptech/glide/request/g;->j:I

    iget v2, p1, Lcom/bumptech/glide/request/g;->j:I

    if-ne v0, v2, :cond_af

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->l:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->l:Z

    if-ne v0, v2, :cond_af

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->m:Z

    if-ne v0, v2, :cond_af

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->t:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->t:Z

    if-ne v0, v2, :cond_af

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->u:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/request/g;->u:Z

    if-ne v0, v2, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    if-ne v0, v2, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    invoke-static {v0, v2}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 p1, 0x1

    return p1

    :cond_af
    return v1
.end method

.method public f()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->a:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/s;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/s;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/bumptech/glide/request/g;
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/c/a/b;->a:Lcom/bumptech/glide/load/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->a:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/s;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/s;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/request/g;->c(II)Z

    move-result p1

    return p1
.end method

.method public h()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->e:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/k;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/request/g;->a:F

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(F)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/g;->e:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/g;->g:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/g;->o:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->h:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(ZI)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/g;->i:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/request/g;->j:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->l:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->m:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->t:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/g;->u:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->r:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->k:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/g;->s:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->e:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/k;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/k;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->b:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/l;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->e:Lcom/bumptech/glide/load/d/a/n;

    new-instance v1, Lcom/bumptech/glide/load/d/a/l;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/l;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/d/a/n;Lcom/bumptech/glide/load/m;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/bumptech/glide/request/g;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->l()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/g;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->l:Z

    iget v1, p0, Lcom/bumptech/glide/request/g;->aa:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/request/g;->aa:I

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->m:Z

    iget v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/request/g;->aa:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->v:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/g;->z()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/e/i;->b:Lcom/bumptech/glide/load/i;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/bumptech/glide/request/g;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    return-object p0
.end method

.method public o()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ab:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/g;->ac:Z

    invoke-virtual {p0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/request/g;->j:I

    iget v1, p0, Lcom/bumptech/glide/request/g;->i:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/k;->a(II)Z

    move-result v0

    return v0
.end method
