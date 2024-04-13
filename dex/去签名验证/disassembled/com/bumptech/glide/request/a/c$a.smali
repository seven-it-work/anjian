.class public final Lcom/bumptech/glide/request/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x12c


# instance fields
.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/a/c$a;->b:I

    return-void
.end method

.method private a(Z)Lcom/bumptech/glide/request/a/c$a;
    .registers 2

    iput-boolean p1, p0, Lcom/bumptech/glide/request/a/c$a;->c:Z

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/request/a/c;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/request/a/c;

    iget v1, p0, Lcom/bumptech/glide/request/a/c$a;->b:I

    iget-boolean v2, p0, Lcom/bumptech/glide/request/a/c$a;->c:Z

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/a/c;-><init>(IZ)V

    return-object v0
.end method
