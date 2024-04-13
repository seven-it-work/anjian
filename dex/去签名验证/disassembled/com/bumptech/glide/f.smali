.class public Lcom/bumptech/glide/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final h:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final i:Ljava/lang/String; = "Glide"

.field private static volatile j:Lcom/bumptech/glide/f;

.field private static volatile k:Z


# instance fields
.field public final a:Lcom/bumptech/glide/load/b/a/e;

.field public final b:Lcom/bumptech/glide/h;

.field public final c:Lcom/bumptech/glide/m;

.field public final d:Lcom/bumptech/glide/load/b/a/b;

.field public final e:Lcom/bumptech/glide/manager/k;

.field final f:Lcom/bumptech/glide/manager/d;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/o;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/bumptech/glide/load/b/j;

.field private final m:Lcom/bumptech/glide/load/b/b/j;

.field private final n:Lcom/bumptech/glide/load/b/d/b;

.field private o:Lcom/bumptech/glide/j;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/j;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/g;Ljava/util/Map;)V
    .registers 34
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/b/b/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/j;",
            "Lcom/bumptech/glide/load/b/b/j;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/manager/k;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/request/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/p<",
            "**>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    sget-object v5, Lcom/bumptech/glide/j;->NORMAL:Lcom/bumptech/glide/j;

    iput-object v5, v0, Lcom/bumptech/glide/f;->o:Lcom/bumptech/glide/j;

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/bumptech/glide/f;->l:Lcom/bumptech/glide/load/b/j;

    iput-object v3, v0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    iput-object v4, v0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    iput-object v1, v0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/manager/k;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/manager/d;

    move-object/from16 v6, p9

    iget-object v5, v6, Lcom/bumptech/glide/request/g;->p:Lcom/bumptech/glide/load/j;

    sget-object v7, Lcom/bumptech/glide/load/d/a/o;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/b;

    new-instance v7, Lcom/bumptech/glide/load/b/d/b;

    invoke-direct {v7, v1, v3, v5}, Lcom/bumptech/glide/load/b/d/b;-><init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b;)V

    iput-object v7, v0, Lcom/bumptech/glide/f;->n:Lcom/bumptech/glide/load/b/d/b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v5, Lcom/bumptech/glide/m;

    invoke-direct {v5}, Lcom/bumptech/glide/m;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-lt v5, v7, :cond_58

    iget-object v5, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    new-instance v7, Lcom/bumptech/glide/load/d/a/r;

    invoke-direct {v7}, Lcom/bumptech/glide/load/d/a/r;-><init>()V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/m;

    :cond_58
    iget-object v5, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    new-instance v7, Lcom/bumptech/glide/load/d/a/m;

    invoke-direct {v7}, Lcom/bumptech/glide/load/d/a/m;-><init>()V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/m;

    new-instance v5, Lcom/bumptech/glide/load/d/a/o;

    iget-object v7, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v7}, Lcom/bumptech/glide/m;->a()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-direct {v5, v7, v9, v3, v4}, Lcom/bumptech/glide/load/d/a/o;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    new-instance v7, Lcom/bumptech/glide/load/d/e/a;

    iget-object v9, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v9}, Lcom/bumptech/glide/m;->a()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v2, v9, v3, v4}, Lcom/bumptech/glide/load/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/d/a/ac;->b(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/k;

    move-result-object v9

    new-instance v10, Lcom/bumptech/glide/load/d/a/i;

    invoke-direct {v10, v5}, Lcom/bumptech/glide/load/d/a/i;-><init>(Lcom/bumptech/glide/load/d/a/o;)V

    new-instance v11, Lcom/bumptech/glide/load/d/a/y;

    invoke-direct {v11, v5, v4}, Lcom/bumptech/glide/load/d/a/y;-><init>(Lcom/bumptech/glide/load/d/a/o;Lcom/bumptech/glide/load/b/a/b;)V

    new-instance v5, Lcom/bumptech/glide/load/d/c/e;

    invoke-direct {v5, v2}, Lcom/bumptech/glide/load/d/c/e;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/bumptech/glide/load/c/s$c;

    invoke-direct {v12, v1}, Lcom/bumptech/glide/load/c/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v13, Lcom/bumptech/glide/load/c/s$d;

    invoke-direct {v13, v1}, Lcom/bumptech/glide/load/c/s$d;-><init>(Landroid/content/res/Resources;)V

    new-instance v14, Lcom/bumptech/glide/load/c/s$b;

    invoke-direct {v14, v1}, Lcom/bumptech/glide/load/c/s$b;-><init>(Landroid/content/res/Resources;)V

    new-instance v15, Lcom/bumptech/glide/load/c/s$a;

    invoke-direct {v15, v1}, Lcom/bumptech/glide/load/c/s$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v8, Lcom/bumptech/glide/load/d/a/e;

    invoke-direct {v8, v4}, Lcom/bumptech/glide/load/d/a/e;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    new-instance v6, Lcom/bumptech/glide/load/d/f/a;

    invoke-direct {v6}, Lcom/bumptech/glide/load/d/f/a;-><init>()V

    move-object/from16 v16, v6

    new-instance v6, Lcom/bumptech/glide/load/d/f/d;

    invoke-direct {v6}, Lcom/bumptech/glide/load/d/f/d;-><init>()V

    move-object/from16 v17, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    const-class v2, Ljava/nio/ByteBuffer;

    move-object/from16 v19, v15

    new-instance v15, Lcom/bumptech/glide/load/c/c;

    invoke-direct {v15}, Lcom/bumptech/glide/load/c/c;-><init>()V

    invoke-virtual {v6, v2, v15}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Ljava/io/InputStream;

    new-instance v15, Lcom/bumptech/glide/load/c/t;

    invoke-direct {v15, v4}, Lcom/bumptech/glide/load/c/t;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    invoke-virtual {v2, v6, v15}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v15, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v13

    const-class v13, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v15, v13, v10}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v13, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v13, v15, v11}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v13, Landroid/os/ParcelFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v13, v15, v9}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v13, Landroid/content/res/AssetFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v21, v14

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/d/a/ac;->a(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/k;

    move-result-object v14

    invoke-virtual {v2, v6, v13, v15, v14}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Landroid/graphics/Bitmap;

    const-class v13, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->b()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v14

    invoke-virtual {v2, v6, v13, v14}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v13, Landroid/graphics/Bitmap;

    const-class v14, Landroid/graphics/Bitmap;

    new-instance v15, Lcom/bumptech/glide/load/d/a/aa;

    invoke-direct {v15}, Lcom/bumptech/glide/load/d/a/aa;-><init>()V

    invoke-virtual {v2, v6, v13, v14, v15}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "BitmapDrawable"

    const-class v13, Ljava/nio/ByteBuffer;

    const-class v14, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lcom/bumptech/glide/load/d/a/a;

    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-direct {v15, v1, v10, v12}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;B)V

    invoke-virtual {v2, v6, v13, v14, v15}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "BitmapDrawable"

    const-class v10, Ljava/io/InputStream;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v14, Lcom/bumptech/glide/load/d/a/a;

    invoke-direct {v14, v1, v11, v12}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;B)V

    invoke-virtual {v2, v6, v10, v13, v14}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "BitmapDrawable"

    const-class v10, Landroid/os/ParcelFileDescriptor;

    const-class v11, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v13, Lcom/bumptech/glide/load/d/a/a;

    invoke-direct {v13, v1, v9, v12}, Lcom/bumptech/glide/load/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;B)V

    invoke-virtual {v2, v6, v10, v11, v13}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/bumptech/glide/load/d/a/b;

    invoke-direct {v9, v3, v8}, Lcom/bumptech/glide/load/d/a/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/l;)V

    invoke-virtual {v2, v6, v9}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Gif"

    const-class v8, Ljava/io/InputStream;

    const-class v9, Lcom/bumptech/glide/load/d/e/c;

    new-instance v10, Lcom/bumptech/glide/load/d/e/j;

    iget-object v11, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v11}, Lcom/bumptech/glide/m;->a()Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11, v7, v4}, Lcom/bumptech/glide/load/d/e/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/k;Lcom/bumptech/glide/load/b/a/b;)V

    invoke-virtual {v2, v6, v8, v9, v10}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Gif"

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v9, Lcom/bumptech/glide/load/d/e/c;

    invoke-virtual {v2, v6, v8, v9, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Lcom/bumptech/glide/load/d/e/c;

    new-instance v7, Lcom/bumptech/glide/load/d/e/d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/d/e/d;-><init>()V

    invoke-virtual {v2, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Lcom/bumptech/glide/c/b;

    const-class v7, Lcom/bumptech/glide/c/b;

    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->b()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-string v6, "Bitmap"

    const-class v7, Lcom/bumptech/glide/c/b;

    const-class v8, Landroid/graphics/Bitmap;

    new-instance v9, Lcom/bumptech/glide/load/d/e/h;

    invoke-direct {v9, v3}, Lcom/bumptech/glide/load/d/e/h;-><init>(Lcom/bumptech/glide/load/b/a/e;)V

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v7, v5}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/bumptech/glide/load/d/a/w;

    invoke-direct {v8, v5, v3}, Lcom/bumptech/glide/load/d/a/w;-><init>(Lcom/bumptech/glide/load/d/c/e;Lcom/bumptech/glide/load/b/a/e;)V

    invoke-virtual {v2, v6, v7, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/load/d/b/a$a;

    invoke-direct {v5}, Lcom/bumptech/glide/load/d/b/a$a;-><init>()V

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/c/d$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/d$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/f$e;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/f$e;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/d/d/a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/d/d/a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/f$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/f$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->b()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    new-instance v5, Lcom/bumptech/glide/load/a/k$a;

    invoke-direct {v5, v4}, Lcom/bumptech/glide/load/a/k$a;-><init>(Lcom/bumptech/glide/load/b/a/b;)V

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/a/e$a;)Lcom/bumptech/glide/m;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    move-object/from16 v7, v22

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v8, v21

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    move-object/from16 v7, v20

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v8, v19

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2, v5, v6, v8}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/e$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/e$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/e$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/e$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/u$c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/u$c;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/u$b;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/u$b;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/u$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/u$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a/c$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/a/c$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a$c;

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a/d$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/c/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a/e$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/c/a/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/w$d;

    move-object/from16 v9, v18

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/c/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/w$b;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/c/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    new-instance v7, Lcom/bumptech/glide/load/c/w$a;

    invoke-direct {v7, v9}, Lcom/bumptech/glide/load/c/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/x$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/x$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a/f$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/a/f$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lcom/bumptech/glide/load/c/k$a;

    invoke-direct {v7, v8}, Lcom/bumptech/glide/load/c/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Lcom/bumptech/glide/load/c/g;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/a/b$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/a/b$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, [B

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/bumptech/glide/load/c/b$a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/b$a;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, [B

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lcom/bumptech/glide/load/c/b$d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/c/b$d;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->b()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/bumptech/glide/load/c/v$a;->b()Lcom/bumptech/glide/load/c/v$a;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/o;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/bumptech/glide/load/d/c/f;

    invoke-direct {v7}, Lcom/bumptech/glide/load/d/c/f;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/m;

    move-result-object v2

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/bumptech/glide/load/d/f/b;

    invoke-direct {v7, v1, v12}, Lcom/bumptech/glide/load/d/f/b;-><init>(Landroid/content/res/Resources;B)V

    invoke-virtual {v2, v5, v6, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)Lcom/bumptech/glide/m;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v5, [B

    move-object/from16 v6, v16

    invoke-virtual {v1, v2, v5, v6}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)Lcom/bumptech/glide/m;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-class v5, [B

    new-instance v7, Lcom/bumptech/glide/load/d/f/c;

    move-object/from16 v9, v17

    invoke-direct {v7, v3, v6, v9}, Lcom/bumptech/glide/load/d/f/c;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/f/e;Lcom/bumptech/glide/load/d/f/e;)V

    invoke-virtual {v1, v2, v5, v7}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)Lcom/bumptech/glide/m;

    move-result-object v1

    const-class v2, Lcom/bumptech/glide/load/d/e/c;

    const-class v3, [B

    invoke-virtual {v1, v2, v3, v9}, Lcom/bumptech/glide/m;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/e;)Lcom/bumptech/glide/m;

    new-instance v5, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    new-instance v10, Lcom/bumptech/glide/h;

    iget-object v6, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    move-object v1, v10

    move-object v2, v8

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/m;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/request/g;Ljava/util/Map;Lcom/bumptech/glide/load/b/j;I)V

    iput-object v10, v0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    return-void
.end method

.method private a(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/j;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/b/j;->a(F)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/j;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->a(F)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->o:Lcom/bumptech/glide/j;

    iput-object p1, p0, Lcom/bumptech/glide/f;->o:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/bumptech/glide/o;
    .registers 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;
    .registers 2
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;
    .registers 2
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;
    .registers 2
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;)Lcom/bumptech/glide/o;
    .registers 8
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string v1, "Argument must not be null"

    invoke-static {p0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/manager/k;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_e

    :cond_34
    instance-of v2, v1, Landroid/support/v4/app/FragmentActivity;

    const v3, 0x1020002

    const/4 v4, 0x0

    if-eqz v2, :cond_86

    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    iget-object v5, v0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v5, v6}, Lcom/bumptech/glide/manager/k;->a(Ljava/util/Collection;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_55
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, v0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/Fragment;

    if-nez v4, :cond_75

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_75

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_55

    :cond_75
    iget-object p0, v0, Lcom/bumptech/glide/manager/k;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    if-eqz v4, :cond_81

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0

    :cond_81
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0

    :cond_86
    iget-object v2, v0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->clear()V

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v5, v0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2, v5}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/FragmentManager;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_98
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    iget-object v3, v0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Fragment;

    if-nez v4, :cond_b8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_b8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_98

    :cond_b8
    iget-object p0, v0, Lcom/bumptech/glide/manager/k;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    if-nez v4, :cond_c4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0

    :cond_c4
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Fragment;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_1e
    return-object v0

    :cond_1f
    return-object v1

    :cond_20
    const-string p0, "Glide"

    const/4 p1, 0x6

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "Glide"

    const-string p1, "default disk cache dir is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-eqz v1, :cond_69

    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->l:Lcom/bumptech/glide/load/b/j;

    iget-object v2, v1, Lcom/bumptech/glide/load/b/j;->d:Lcom/bumptech/glide/load/b/j$b;

    iget-object v3, v2, Lcom/bumptech/glide/load/b/j$b;->a:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v3}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v3, v2, Lcom/bumptech/glide/load/b/j$b;->b:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v3}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v3, v2, Lcom/bumptech/glide/load/b/j$b;->c:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v3}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v2, v2, Lcom/bumptech/glide/load/b/j$b;->d:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v2}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v2, v1, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/j$c;->b()V

    iget-object v1, v1, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/b/a;->f:Z

    iget-object v2, v1, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    if-eqz v2, :cond_69

    iget-object v2, v1, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_6e

    :try_start_45
    iget-object v2, v1, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    iget-object v1, v1, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_69

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to join in time"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_62} :catch_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_6e

    :catch_62
    :try_start_62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_69
    const/4 v1, 0x0

    sput-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6e

    monitor-exit v0

    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(I)V
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->a(I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/bumptech/glide/f;->a()V

    :cond_a
    invoke-static {p0, p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/bumptech/glide/f;)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/bumptech/glide/f;->a()V

    :cond_a
    sput-object p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/bumptech/glide/o;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    iget-object v1, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private static a(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private varargs a([Lcom/bumptech/glide/load/b/d/d$a;)V
    .registers 12
    .param p1    # [Lcom/bumptech/glide/load/b/d/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/f;->n:Lcom/bumptech/glide/load/b/d/b;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bumptech/glide/load/b/d/a;->f:Z

    :cond_b
    array-length v1, p1

    new-array v1, v1, [Lcom/bumptech/glide/load/b/d/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    array-length v4, p1

    if-ge v3, v4, :cond_38

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v5, :cond_26

    iget-object v5, v0, Lcom/bumptech/glide/load/b/d/b;->c:Lcom/bumptech/glide/load/b;

    sget-object v6, Lcom/bumptech/glide/load/b;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/b;

    if-ne v5, v6, :cond_22

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_24

    :cond_22
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_24
    iput-object v5, v4, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    :cond_26
    new-instance v5, Lcom/bumptech/glide/load/b/d/d;

    iget v6, v4, Lcom/bumptech/glide/load/b/d/d$a;->a:I

    iget v7, v4, Lcom/bumptech/glide/load/b/d/d$a;->b:I

    iget-object v8, v4, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    iget v4, v4, Lcom/bumptech/glide/load/b/d/d$a;->d:I

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/bumptech/glide/load/b/d/d;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_38
    iget-object p1, v0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/j;->b()J

    move-result-wide v3

    iget-object p1, v0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/j;->a()J

    move-result-wide v5

    sub-long v7, v3, v5

    iget-object p1, v0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/a/e;->a()J

    move-result-wide v3

    add-long v5, v7, v3

    array-length p1, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_51
    if-ge v3, p1, :cond_5b

    aget-object v7, v1, v3

    iget v7, v7, Lcom/bumptech/glide/load/b/d/d;->e:I

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_5b
    long-to-float p1, v5

    int-to-float v3, v4

    div-float/2addr p1, v3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, v1

    :goto_64
    if-ge v2, v4, :cond_86

    aget-object v5, v1, v2

    iget v6, v5, Lcom/bumptech/glide/load/b/d/d;->e:I

    int-to-float v6, v6

    mul-float v6, v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v5, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v8, v5, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget-object v9, v5, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_86
    new-instance p1, Lcom/bumptech/glide/load/b/d/c;

    invoke-direct {p1, v3}, Lcom/bumptech/glide/load/b/d/c;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/bumptech/glide/load/b/d/a;

    iget-object v2, v0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/j;

    invoke-direct {v1, v2, v3, p1}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/d/c;)V

    iput-object v1, v0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    iget-object p1, v0, Lcom/bumptech/glide/load/b/d/b;->d:Landroid/os/Handler;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b()Lcom/bumptech/glide/b;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "com.bumptech.glide.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    invoke-static {v0}, Lcom/bumptech/glide/f;->a(Ljava/lang/Exception;)V

    goto :goto_2b

    :catch_1b
    const-string v0, "Glide"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "Glide"

    const-string v1, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/f;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-nez v0, :cond_2a

    const-class v0, Lcom/bumptech/glide/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-nez v1, :cond_25

    sget-boolean v1, Lcom/bumptech/glide/f;->k:Z

    if-eqz v1, :cond_17

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bumptech/glide/f;->k:Z

    new-instance v1, Lcom/bumptech/glide/g;

    invoke-direct {v1}, Lcom/bumptech/glide/g;-><init>()V

    invoke-static {p0, v1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/bumptech/glide/f;->k:Z

    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    sget-object p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .registers 15
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/b;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    :goto_15
    move-object v11, v1

    goto :goto_21

    :cond_17
    :goto_17
    new-instance v1, Lcom/bumptech/glide/d/e;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/d/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/d/e;->a()Ljava/util/List;

    move-result-object v1

    goto :goto_15

    :goto_21
    const/4 v1, 0x3

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_36
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/d/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const-string v5, "Glide"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_67

    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_36

    :cond_6b
    const-string v2, "Glide"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/d/c;

    const-string v3, "Glide"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_9b
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Lcom/bumptech/glide/b;->b()Lcom/bumptech/glide/manager/k$a;

    move-result-object v1

    goto :goto_a3

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    iput-object v1, p1, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/manager/k$a;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/d/c;

    invoke-interface {v2, p0, p1}, Lcom/bumptech/glide/d/c;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    goto :goto_a9

    :cond_b9
    if-eqz v0, :cond_be

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    :cond_be
    iget-object v0, p1, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_c8

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->b()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    :cond_c8
    iget-object v0, p1, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_d2

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    :cond_d2
    iget-object v0, p1, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_dc

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->d()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lcom/bumptech/glide/g;->n:Lcom/bumptech/glide/load/b/c/a;

    :cond_dc
    iget-object v0, p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    if-nez v0, :cond_eb

    new-instance v0, Lcom/bumptech/glide/load/b/b/l$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/b/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/l$a;->a()Lcom/bumptech/glide/load/b/b/l;

    move-result-object v0

    iput-object v0, p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    :cond_eb
    iget-object v0, p1, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_f6

    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p1, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    :cond_f6
    iget-object v0, p1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    if-nez v0, :cond_110

    iget-object v0, p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v0, v0, Lcom/bumptech/glide/load/b/b/l;->b:I

    if-lez v0, :cond_109

    new-instance v1, Lcom/bumptech/glide/load/b/a/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/b/a/k;-><init>(J)V

    iput-object v1, p1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    goto :goto_110

    :cond_109
    new-instance v0, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/f;-><init>()V

    iput-object v0, p1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    :cond_110
    :goto_110
    iget-object v0, p1, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_11f

    new-instance v0, Lcom/bumptech/glide/load/b/a/j;

    iget-object v1, p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v1, v1, Lcom/bumptech/glide/load/b/b/l;->d:I

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/a/j;-><init>(I)V

    iput-object v0, p1, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    :cond_11f
    iget-object v0, p1, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    if-nez v0, :cond_12f

    new-instance v0, Lcom/bumptech/glide/load/b/b/i;

    iget-object v1, p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/load/b/b/l;

    iget v1, v1, Lcom/bumptech/glide/load/b/b/l;->c:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/b/i;-><init>(J)V

    iput-object v0, p1, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    :cond_12f
    iget-object v0, p1, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    if-nez v0, :cond_13a

    new-instance v0, Lcom/bumptech/glide/load/b/b/h;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    :cond_13a
    iget-object v0, p1, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    if-nez v0, :cond_158

    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v2, p1, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    iget-object v3, p1, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/b/b/a$a;

    iget-object v4, p1, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/load/b/c/a;

    iget-object v5, p1, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->c()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v6

    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->d()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v7

    iget-boolean v8, p1, Lcom/bumptech/glide/g;->o:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/load/b/j;-><init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Z)V

    iput-object v0, p1, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    :cond_158
    new-instance v6, Lcom/bumptech/glide/manager/k;

    iget-object v0, p1, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/manager/k$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/k$a;)V

    new-instance v12, Lcom/bumptech/glide/f;

    iget-object v2, p1, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/b/j;

    iget-object v3, p1, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/b/b/j;

    iget-object v4, p1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/b/a/e;

    iget-object v5, p1, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/b/a/b;

    iget-object v7, p1, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/manager/d;

    iget v8, p1, Lcom/bumptech/glide/g;->k:I

    iget-object v0, p1, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->n()Lcom/bumptech/glide/request/g;

    move-result-object v9

    iget-object v10, p1, Lcom/bumptech/glide/g;->a:Ljava/util/Map;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/j;Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/request/g;Ljava/util/Map;)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_188

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_17e

    :cond_188
    invoke-virtual {p0, v12}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v12, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    return-void
.end method

.method private b(Lcom/bumptech/glide/o;)V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    iget-object v1, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private c()Lcom/bumptech/glide/load/b/a/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/o;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/f;->f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object p0

    return-object p0
.end method

.method private d()Lcom/bumptech/glide/load/b/a/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/bumptech/glide/f;->k:Z

    if-eqz v0, :cond_c

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/f;->k:Z

    new-instance v0, Lcom/bumptech/glide/g;

    invoke-direct {v0}, Lcom/bumptech/glide/g;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/bumptech/glide/f;->k:Z

    return-void
.end method

.method private e()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/bumptech/glide/g;

    invoke-direct {v0}, Lcom/bumptech/glide/g;-><init>()V

    invoke-static {p0, v0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    return-void
.end method

.method private f()Lcom/bumptech/glide/manager/d;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Lcom/bumptech/glide/manager/k;
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object p0

    iget-object p0, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/manager/k;

    return-object p0
.end method

.method private g()Lcom/bumptech/glide/h;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method private h()V
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/j;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/e;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/b;->a()V

    return-void
.end method

.method private i()V
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/util/k;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->l:Lcom/bumptech/glide/load/b/j;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/j$c;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/a;->a()V

    return-void
.end method

.method private j()Lcom/bumptech/glide/manager/k;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/manager/k;

    return-object v0
.end method

.method private k()Lcom/bumptech/glide/m;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/request/target/Target;)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/o;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/o;->b(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1e
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/j;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/e;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/b;->a()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/f;->m:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->a(I)V

    return-void
.end method
