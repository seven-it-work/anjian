.class public final Lcom/cyjh/mq/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/b/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/cyjh/mq/b/a$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/cyjh/mq/b/a$a;->a:I

    iput v0, p0, Lcom/cyjh/mq/b/a;->a:I

    iget v0, p1, Lcom/cyjh/mq/b/a$a;->b:I

    iput v0, p0, Lcom/cyjh/mq/b/a;->b:I

    iget-boolean p1, p1, Lcom/cyjh/mq/b/a$a;->c:Z

    iput-boolean p1, p0, Lcom/cyjh/mq/b/a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mq/b/a$a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;)V

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mq/b/a;->a:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mq/b/a;->b:I

    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mq/b/a;->c:Z

    return v0
.end method
