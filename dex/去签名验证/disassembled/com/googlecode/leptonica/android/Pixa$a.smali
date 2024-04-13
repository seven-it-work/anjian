.class final Lcom/googlecode/leptonica/android/Pixa$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Pixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/googlecode/leptonica/android/Pix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/leptonica/android/Pixa;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/googlecode/leptonica/android/Pixa;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/leptonica/android/Pixa;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/googlecode/leptonica/android/Pixa$a;-><init>(Lcom/googlecode/leptonica/android/Pixa;)V

    return-void
.end method

.method private a()Lcom/googlecode/leptonica/android/Pix;
    .registers 6

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v2, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const/4 v0, 0x0

    return-object v0

    :cond_20
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    iget-boolean v1, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-wide v0, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetCount(J)I

    move-result v0

    if-lez v0, :cond_1a

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    if-ge v1, v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v2, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const/4 v0, 0x0

    return-object v0

    :cond_20
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
