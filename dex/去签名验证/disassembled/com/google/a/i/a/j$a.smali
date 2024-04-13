.class public final Lcom/google/a/i/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/i/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/i/a/j$a;->a:I

    iput p2, p0, Lcom/google/a/i/a/j$a;->b:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/a/j$a;->a:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/a/j$a;->b:I

    return v0
.end method
