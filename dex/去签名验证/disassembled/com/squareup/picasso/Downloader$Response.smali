.class public Lcom/squareup/picasso/Downloader$Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final cached:Z

.field final contentLength:J

.field final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/squareup/picasso/Downloader$Response;->contentLength:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZJ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/squareup/picasso/Downloader$Response;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;ZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/squareup/picasso/Downloader$Response;->cached:Z

    iput-wide p3, p0, Lcom/squareup/picasso/Downloader$Response;->contentLength:J

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/squareup/picasso/Downloader$Response;->contentLength:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/Downloader$Response;->stream:Ljava/io/InputStream;

    return-object v0
.end method
