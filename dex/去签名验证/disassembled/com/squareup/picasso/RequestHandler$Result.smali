.class public final Lcom/squareup/picasso/RequestHandler$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final exifOrientation:I

.field private final loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 5

    const-string v0, "bitmap == null"

    invoke-static {p1, v0}, Lcom/squareup/picasso/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-eqz p2, :cond_d

    const/4 v0, 0x1

    :cond_d
    xor-int/2addr v0, v2

    if-nez v0, :cond_16

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    iput-object p1, p0, Lcom/squareup/picasso/RequestHandler$Result;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/squareup/picasso/RequestHandler$Result;->stream:Ljava/io/InputStream;

    const-string p1, "loadedFrom == null"

    invoke-static {p3, p1}, Lcom/squareup/picasso/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object p1, p0, Lcom/squareup/picasso/RequestHandler$Result;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput p4, p0, Lcom/squareup/picasso/RequestHandler$Result;->exifOrientation:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 5

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Lcom/squareup/picasso/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/RequestHandler$Result;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final getExifOrientation()I
    .registers 2

    iget v0, p0, Lcom/squareup/picasso/RequestHandler$Result;->exifOrientation:I

    return v0
.end method

.method public final getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/RequestHandler$Result;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/RequestHandler$Result;->stream:Ljava/io/InputStream;

    return-object v0
.end method
