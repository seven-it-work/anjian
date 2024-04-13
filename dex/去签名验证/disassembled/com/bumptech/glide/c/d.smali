.class public final Lcom/bumptech/glide/c/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1


# instance fields
.field c:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public d:I

.field public e:I

.field f:Lcom/bumptech/glide/c/c;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field o:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/d;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/c/d;->d:I

    iput v0, p0, Lcom/bumptech/glide/c/d;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/c/d;->o:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/d;->i:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/d;->h:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/d;->e:I

    return v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/d;->d:I

    return v0
.end method
