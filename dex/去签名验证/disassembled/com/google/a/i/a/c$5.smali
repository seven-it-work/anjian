.class final enum Lcom/google/a/i/a/c$5;
.super Lcom/google/a/i/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/i/a/c;-><init>(Ljava/lang/String;ILcom/google/a/i/a/c$1;)V

    return-void
.end method


# virtual methods
.method final isMasked(II)Z
    .registers 3

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_a

    return p2

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
