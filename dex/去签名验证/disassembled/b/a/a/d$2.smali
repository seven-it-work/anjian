.class final Lb/a/a/d$2;
.super Lb/a/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/d;->l()Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z = true


# instance fields
.field final synthetic b:Lb/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/a/a/d;

    return-void
.end method

.method constructor <init>(Lb/a/a/d;Lc/x;)V
    .registers 3

    iput-object p1, p0, Lb/a/a/d$2;->b:Lb/a/a/d;

    invoke-direct {p0, p2}, Lb/a/a/e;-><init>(Lc/x;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    sget-boolean v0, Lb/a/a/d$2;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/a/a/d$2;->b:Lb/a/a/d;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lb/a/a/d$2;->b:Lb/a/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/a/d;->n:Z

    return-void
.end method
