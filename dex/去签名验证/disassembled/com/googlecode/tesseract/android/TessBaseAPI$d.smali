.class public final Lcom/googlecode/tesseract/android/TessBaseAPI$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private final b:I

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->a:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->b:I

    iput-object p3, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->b:I

    return v0
.end method

.method private b()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method private c()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->d:Landroid/graphics/Rect;

    return-object v0
.end method
