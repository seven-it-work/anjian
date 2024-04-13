.class public final Lcom/android/volley/toolbox/k$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final b:Lcom/android/volley/toolbox/k$d;

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/android/volley/toolbox/k;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/k$d;)V
    .registers 6

    iput-object p1, p0, Lcom/android/volley/toolbox/k$c;->d:Lcom/android/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/volley/toolbox/k$c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    return-void
.end method

.method private static synthetic a(Lcom/android/volley/toolbox/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private static synthetic a(Lcom/android/volley/toolbox/k$c;)Lcom/android/volley/toolbox/k$d;
    .registers 1

    iget-object p0, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    return-object p0
.end method

.method private b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->b:Lcom/android/volley/toolbox/k$d;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->d:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/volley/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$c;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->d:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/volley/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->d:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/volley/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k$a;

    if-eqz v0, :cond_45

    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/k$a;->a(Lcom/android/volley/toolbox/k$c;)Z

    iget-object v0, v0, Lcom/android/volley/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/volley/toolbox/k$c;->d:Lcom/android/volley/toolbox/k;

    iget-object v0, v0, Lcom/android/volley/toolbox/k;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/volley/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    return-void
.end method
