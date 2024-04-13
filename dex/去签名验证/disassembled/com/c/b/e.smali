.class public final Lcom/c/b/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/graphics/Bitmap;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/e;->a:Z

    iput-boolean v0, p0, Lcom/c/b/e;->b:Z

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/c/b/e;->j:F

    return-void
.end method
