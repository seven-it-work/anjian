.class public final Lcom/google/a/a/a;
.super Lcom/google/a/c/g;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;[Lcom/google/a/t;ZII)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/a/c/g;-><init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V

    iput-boolean p3, p0, Lcom/google/a/a/a;->a:Z

    iput p4, p0, Lcom/google/a/a/a;->b:I

    iput p5, p0, Lcom/google/a/a/a;->c:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/a/a;->c:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/a/a;->b:I

    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/a/a;->a:Z

    return v0
.end method
