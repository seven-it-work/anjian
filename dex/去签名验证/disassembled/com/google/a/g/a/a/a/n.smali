.class final Lcom/google/a/g/a/a/a/n;
.super Lcom/google/a/g/a/a/a/q;


# static fields
.field static final b:C = '$'


# instance fields
.field final a:C


# direct methods
.method constructor <init>(IC)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/q;-><init>(I)V

    iput-char p2, p0, Lcom/google/a/g/a/a/a/n;->a:C

    return-void
.end method

.method private b()C
    .registers 2

    iget-char v0, p0, Lcom/google/a/g/a/a/a/n;->a:C

    return v0
.end method


# virtual methods
.method final a()Z
    .registers 3

    iget-char v0, p0, Lcom/google/a/g/a/a/a/n;->a:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
