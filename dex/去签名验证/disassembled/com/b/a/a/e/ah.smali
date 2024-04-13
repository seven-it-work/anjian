.class final Lcom/b/a/a/e/ah;
.super Ljava/lang/Object;


# instance fields
.field final a:[Lcom/b/a/a/e/ah;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/b/a/a/e/ah;

    iput-object v0, p0, Lcom/b/a/a/e/ah;->a:[Lcom/b/a/a/e/ah;

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/e/ah;->b:I

    iput v0, p0, Lcom/b/a/a/e/ah;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/e/ah;->a:[Lcom/b/a/a/e/ah;

    iput p1, p0, Lcom/b/a/a/e/ah;->b:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_e

    const/16 p1, 0x8

    :cond_e
    iput p1, p0, Lcom/b/a/a/e/ah;->c:I

    return-void
.end method
