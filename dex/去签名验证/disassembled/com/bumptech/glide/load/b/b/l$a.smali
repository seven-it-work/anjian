.class public final Lcom/bumptech/glide/load/b/b/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final b:I

.field static final c:F = 0.4f

.field static final d:F = 0.33f

.field static final e:I = 0x400000


# instance fields
.field final f:Landroid/content/Context;

.field g:Landroid/app/ActivityManager;

.field h:Lcom/bumptech/glide/load/b/b/l$c;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    const/4 v0, 0x4

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    sput v0, Lcom/bumptech/glide/load/b/b/l$a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->i:F

    sget v0, Lcom/bumptech/glide/load/b/b/l$a;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->k:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->l:F

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->m:I

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->f:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    new-instance v0, Lcom/bumptech/glide/load/b/b/l$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/l$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/l$a;->h:Lcom/bumptech/glide/load/b/b/l$c;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_46

    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/b/b/l;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x0

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    :cond_46
    return-void
.end method

.method private a(F)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->i:F

    return-object p0
.end method

.method private a(I)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 2

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->m:I

    return-object p0
.end method

.method private a(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->g:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/b/l$c;)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->h:Lcom/bumptech/glide/load/b/b/l$c;

    return-object p0
.end method

.method private b(F)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->j:F

    return-object p0
.end method

.method private c(F)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->k:F

    return-object p0
.end method

.method private d(F)Lcom/bumptech/glide/load/b/b/l$a;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/b/b/l$a;->l:F

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/load/b/b/l;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/b/l;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/b/l;-><init>(Lcom/bumptech/glide/load/b/b/l$a;)V

    return-object v0
.end method
