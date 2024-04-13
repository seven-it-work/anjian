.class public abstract Lcom/bumptech/glide/load/d/a/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/n$g;,
        Lcom/bumptech/glide/load/d/a/n$c;,
        Lcom/bumptech/glide/load/d/a/n$f;,
        Lcom/bumptech/glide/load/d/a/n$b;,
        Lcom/bumptech/glide/load/d/a/n$a;,
        Lcom/bumptech/glide/load/d/a/n$d;,
        Lcom/bumptech/glide/load/d/a/n$e;
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/d/a/n;

.field public static final b:Lcom/bumptech/glide/load/d/a/n;

.field public static final c:Lcom/bumptech/glide/load/d/a/n;

.field public static final d:Lcom/bumptech/glide/load/d/a/n;

.field public static final e:Lcom/bumptech/glide/load/d/a/n;

.field public static final f:Lcom/bumptech/glide/load/d/a/n;

.field public static final g:Lcom/bumptech/glide/load/d/a/n;

.field public static final h:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Lcom/bumptech/glide/load/d/a/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->a:Lcom/bumptech/glide/load/d/a/n;

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->b:Lcom/bumptech/glide/load/d/a/n;

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->c:Lcom/bumptech/glide/load/d/a/n;

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->d:Lcom/bumptech/glide/load/d/a/n;

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->e:Lcom/bumptech/glide/load/d/a/n;

    new-instance v0, Lcom/bumptech/glide/load/d/a/n$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/n$f;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->f:Lcom/bumptech/glide/load/d/a/n;

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->b:Lcom/bumptech/glide/load/d/a/n;

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->g:Lcom/bumptech/glide/load/d/a/n;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    sget-object v1, Lcom/bumptech/glide/load/d/a/n;->g:Lcom/bumptech/glide/load/d/a/n;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/n;->h:Lcom/bumptech/glide/load/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)F
.end method

.method public abstract a()I
.end method
