.class final Lcom/android/volley/toolbox/f$b;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f$b;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/f$b;)I
    .registers 1

    iget p0, p0, Lcom/android/volley/toolbox/f$b;->a:I

    return p0
.end method


# virtual methods
.method public final read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/volley/toolbox/f$b;->a:I

    :cond_d
    return v0
.end method

.method public final read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c

    iget p2, p0, Lcom/android/volley/toolbox/f$b;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/volley/toolbox/f$b;->a:I

    :cond_c
    return p1
.end method
