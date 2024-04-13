.class public final Lcom/google/a/g/a/a/a/b;
.super Lcom/google/a/g/a/a/a/f;


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/f;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    return p1

    :cond_5
    sub-int/2addr p1, v0

    return p1
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/16 v0, 0x2710

    if-ge p2, v0, :cond_a

    const-string p2, "(3202)"

    :goto_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    const-string p2, "(3203)"

    goto :goto_6
.end method
