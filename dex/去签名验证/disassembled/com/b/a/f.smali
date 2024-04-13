.class public final Lcom/b/a/f;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/f;->c:I

    iput v0, p0, Lcom/b/a/f;->d:I

    iput v0, p0, Lcom/b/a/f;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/e;
    .registers 2

    new-instance v0, Lcom/b/a/e;

    invoke-direct {v0, p0}, Lcom/b/a/e;-><init>(Lcom/b/a/f;)V

    return-object v0
.end method
