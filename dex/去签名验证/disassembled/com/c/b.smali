.class public abstract Lcom/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/c/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/c/d/d;"
    }
.end annotation


# static fields
.field private static final Y:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static Z:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static aa:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ab:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ac:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ad:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ae:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static af:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private R:Landroid/view/View;

.field private S:Landroid/app/Activity;

.field private T:Landroid/content/Context;

.field private U:Lcom/c/b/h;

.field private V:I

.field private W:Lorg/apache/http/HttpHost;

.field private X:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected a:Landroid/view/View;

.field protected b:Ljava/lang/Object;

.field protected c:Lcom/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/c/b;->Y:[Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/widget/AdapterView;

    aput-object v4, v2, v3

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sput-object v2, Lcom/c/b;->Z:[Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Landroid/widget/AbsListView;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    sput-object v2, Lcom/c/b;->aa:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sput-object v1, Lcom/c/b;->ab:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Lcom/c/b;->ac:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sput-object v1, Lcom/c/b;->ad:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/Paint;

    aput-object v2, v1, v0

    sput-object v1, Lcom/c/b;->ae:[Ljava/lang/Class;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/c/b;->af:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b;->V:I

    iput-object p1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b;->V:I

    iput-object p2, p0, Lcom/c/b;->R:Landroid/view/View;

    iput-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    iput-object p1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b;->V:I

    iput-object p1, p0, Lcom/c/b;->T:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/b;->V:I

    iput-object p1, p0, Lcom/c/b;->R:Landroid/view/View;

    iput-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    return-void
.end method

.method private A()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private B()I
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method private C()Lcom/c/d/c;
    .registers 4

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/d/c;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/c/d/c;

    invoke-direct {v2}, Lcom/c/d/c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    const-string v0, "set scroll listenr"

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/lang/Object;)V

    :cond_1f
    return-object v2
.end method

.method private D()Lcom/c/b;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/c/b;->a:Landroid/view/View;

    const-string v2, "setLayerType"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/c/b;->ae:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    const/4 v0, 0x0

    aput-object v0, v6, v7

    invoke-static/range {v1 .. v6}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object p0
.end method

.method private E()Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_f
    return-object p0
.end method

.method private F()Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-object p0

    :cond_19
    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    return-object p0

    :cond_2d
    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3c
    return-object p0
.end method

.method private G()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/c/b;->T:Landroid/content/Context;

    return-object v0
.end method

.method private H()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b;->c:Lcom/c/a/a;

    iput-object v0, p0, Lcom/c/b;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/c/b;->U:Lcom/c/b/h;

    const/4 v1, 0x0

    iput v1, p0, Lcom/c/b;->V:I

    iput-object v0, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    return-void
.end method

.method private I()Lcom/c/b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/c/b/b;->c()V

    return-object p0
.end method

.method private J()Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_9
    return-object p0
.end method

.method private K()Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    :cond_9
    return-object p0
.end method

.method private L()Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/c/b;->af:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-object p0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    :try_start_17
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a
.end method

.method private a(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const v0, 0x40ff0003

    if-eqz p1, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_14

    return-object p1

    :cond_14
    iget-object p1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_2b

    :cond_1f
    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    :goto_2b
    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_6

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs a([I)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/c/b;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_17

    if-nez v0, :cond_e

    return-object v0

    :cond_e
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method private a(F)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_d
    return-object p0
.end method

.method private a(FFFF)Lcom/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2d

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/c/d/a;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-static {v1, p2}, Lcom/c/d/a;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-static {v1, p3}, Lcom/c/d/a;->a(Landroid/content/Context;F)I

    move-result p3

    invoke-static {v1, p4}, Lcom/c/d/a;->a(Landroid/content/Context;F)I

    move-result p4

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    return-object p0
.end method

.method private a(II)Lcom/c/b;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/c/b;->ac:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, p1

    invoke-static/range {v1 .. v6}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object p0
.end method

.method private a(ILjava/lang/Object;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method private a(IZ)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/c/b;->a(ZIZ)V

    return-object p0
.end method

.method private varargs a(I[Ljava/lang/Object;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/c/b;->a(Ljava/lang/CharSequence;)Lcom/c/b;

    :cond_d
    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14
    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;F)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/d;

    invoke-direct {v0}, Lcom/c/b/d;-><init>()V

    iput p2, v0, Lcom/c/b/d;->y:F

    iput-object p1, v0, Lcom/c/b/d;->x:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/d;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Typeface;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_d
    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-object p0
.end method

.method private a(Landroid/text/Spanned;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-object p0
.end method

.method private a(Landroid/view/View$OnClickListener;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-object p0
.end method

.method private a(Landroid/view/View$OnLongClickListener;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_9
    return-object p0
.end method

.method private a(Landroid/view/View;)Lcom/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/c/b;->a()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_1b

    :try_start_11
    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    iput-object v0, p1, Lcom/c/b;->S:Landroid/app/Activity;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1c

    :catch_1b
    move-exception p1

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    return-object p1
.end method

.method private a(Landroid/view/animation/Animation;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    return-object p0
.end method

.method private a(Landroid/widget/AbsListView$OnScrollListener;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/c/b;->C()Lcom/c/d/c;

    move-result-object v0

    iput-object p1, v0, Lcom/c/d/c;->c:Landroid/widget/AbsListView$OnScrollListener;

    :cond_c
    return-object p0
.end method

.method private a(Landroid/widget/Adapter;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_d
    return-object p0
.end method

.method private a(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_d
    return-object p0
.end method

.method private a(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_d
    return-object p0
.end method

.method private a(Landroid/widget/ExpandableListAdapter;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_d
    return-object p0
.end method

.method private a(Lcom/c/b/a;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/c/b/a<",
            "*TK;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->c:Lcom/c/a/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->c:Lcom/c/a/a;

    invoke-virtual {p1, v0}, Lcom/c/b/a;->a(Lcom/c/a/a;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/c/b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/c/b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v0, p0, Lcom/c/b;->U:Lcom/c/b/h;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/c/b;->U:Lcom/c/b/h;

    iput-object v0, p1, Lcom/c/b/a;->h:Lcom/c/b/h;

    :cond_1a
    iget v0, p0, Lcom/c/b;->V:I

    iput v0, p1, Lcom/c/b/a;->j:I

    iget-object v0, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/c/b/a;->a(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_31
    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/c/b/a;->a(Landroid/app/Activity;)V

    goto :goto_42

    :cond_3b
    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/c/b/a;->a(Landroid/content/Context;)V

    :goto_42
    invoke-direct {p0}, Lcom/c/b;->H()V

    return-object p0
.end method

.method private a(Lcom/c/b/d;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/d;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/c/b/d;->a(Landroid/widget/ImageView;)Lcom/c/b/d;

    invoke-direct {p0, p1}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    :cond_10
    return-object p0
.end method

.method private a(Lcom/c/b/h;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/b/h;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->U:Lcom/c/b/h;

    return-object p0
.end method

.method private a(Ljava/io/File;I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/d;

    invoke-direct {v0}, Lcom/c/b/d;-><init>()V

    iput-object p1, v0, Lcom/c/b/d;->w:Ljava/io/File;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput p2, v0, Lcom/c/b/d;->u:I

    const/4 p2, 0x0

    iput p2, v0, Lcom/c/b/d;->v:I

    iput-object p1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/c/b/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/c/b/d;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/d;

    invoke-virtual {p1, p2}, Lcom/c/b/d;->a(Z)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/d;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;Z)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_11

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_11

    :cond_a
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/c/b;->k(I)Lcom/c/b;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-direct {p0, p1}, Lcom/c/b;->a(Ljava/lang/CharSequence;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    sget-object v1, Lcom/c/b;->Y:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    move-result-object p1

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-object p0
.end method

.method private a(Ljava/lang/String;I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method private a(Ljava/lang/String;J)Lcom/c/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    const-class v0, [B

    new-instance v1, Lcom/c/b/b;

    invoke-direct {v1}, Lcom/c/b/b;-><init>()V

    iput-object v0, v1, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Lcom/c/b/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/b/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/c/b/b;->a(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/b/b;

    iput-wide p2, v2, Lcom/c/b/a;->p:J

    invoke-direct {p0, p1, v0, v1}, Lcom/c/b;->b(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/c/b/e;)Lcom/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/c/b/e;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v6, p0, Lcom/c/b;->c:Lcom/c/a/a;

    iget-object v8, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/a;Lcom/c/b/e;Lorg/apache/http/HttpHost;)V

    invoke-direct {p0}, Lcom/c/b;->H()V

    :cond_1f
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Lcom/c/b/b;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/c/b/b<",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    iput-object p1, p3, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p3

    check-cast p1, Lcom/c/b/b;

    const-class v0, Ljava/io/File;

    iput-object v0, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    iput-object p2, p1, Lcom/c/b/a;->k:Ljava/io/File;

    invoke-direct {p0, p3}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/b;

    invoke-direct {v0}, Lcom/c/b/b;-><init>()V

    invoke-virtual {v0, p3, p4}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/c/b/b;

    const-class p3, Ljava/io/File;

    iput-object p3, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    iput-object p2, p1, Lcom/c/b/a;->k:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;J)Lcom/c/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J)TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/b;

    invoke-direct {v0}, Lcom/c/b/b;-><init>()V

    iput-object p2, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lcom/c/b/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/c/b/b;->a(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/b;

    iput-wide p3, v1, Lcom/c/b/a;->p:J

    invoke-direct {p0, p1, p2, v0}, Lcom/c/b;->b(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/b;

    invoke-direct {v0}, Lcom/c/b/b;-><init>()V

    iput-object p2, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lcom/c/b/b;

    invoke-virtual {v1, p3, p4}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/c/b;->b(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p1, p5, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p5

    check-cast p1, Lcom/c/b/b;

    iput-object p4, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p4, 0x3

    iput p4, p1, Lcom/c/b/a;->q:I

    check-cast p1, Lcom/c/b/b;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/b;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p5}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p3, p4, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object p3, p4

    check-cast p3, Lcom/c/b/b;

    iput-object p1, p3, Lcom/c/b/a;->c:Ljava/lang/String;

    check-cast p3, Lcom/c/b/b;

    invoke-virtual {p3, p2}, Lcom/c/b/b;->a(Ljava/util/Map;)Ljava/lang/Object;

    invoke-direct {p0, p4}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/b;

    invoke-direct {v0}, Lcom/c/b/b;-><init>()V

    iput-object p3, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lcom/c/b/b;

    invoke-virtual {v1, p4, p5}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, v0, Lcom/c/b/a;->b:Ljava/lang/Class;

    iput-object p1, v1, Lcom/c/b/a;->c:Ljava/lang/String;

    check-cast v1, Lcom/c/b/b;

    invoke-virtual {v1, p2}, Lcom/c/b/b;->a(Ljava/util/Map;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "application/json"

    iput-object p1, p4, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p4

    check-cast p1, Lcom/c/b/b;

    iput-object p3, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p3, 0x1

    iput p3, p1, Lcom/c/b/a;->q:I

    check-cast p1, Lcom/c/b/b;

    const-string p3, "Content-Type"

    invoke-virtual {p1, p3, p2}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/b;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, v0}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p1

    :catch_2d
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Ljava/lang/String;ZILcom/c/b/d;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/c/b/d;",
            ")TT;"
        }
    .end annotation

    iput p3, p4, Lcom/c/b/d;->u:I

    const/4 p3, 0x0

    iput p3, p4, Lcom/c/b/d;->v:I

    iput-object p1, p4, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p4

    check-cast p1, Lcom/c/b/d;

    invoke-virtual {p1, p2}, Lcom/c/b/d;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/c/b/d;->a(Z)Ljava/lang/Object;

    invoke-direct {p0, p4}, Lcom/c/b;->a(Lcom/c/b/d;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;ZZ)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/c/b;->b(Ljava/lang/String;ZZ)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;ZZII)Lcom/c/b;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_37

    iget-object v2, v0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v15, v0, Lcom/c/b;->c:Lcom/c/a/a;

    iget v1, v0, Lcom/c/b;->V:I

    const/16 v17, 0x0

    iget-object v9, v0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v18, v9

    move/from16 v9, p5

    move/from16 v16, v1

    invoke-static/range {v2 .. v18}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->H()V

    :cond_37
    return-object v0
.end method

.method private a(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/c/b;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_39

    iget-object v2, v0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const/4 v12, 0x0

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v15, v0, Lcom/c/b;->c:Lcom/c/a/a;

    iget v1, v0, Lcom/c/b;->V:I

    const/16 v17, 0x0

    iget-object v11, v0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v18, v11

    move/from16 v11, p7

    move/from16 v16, v1

    invoke-static/range {v2 .. v18}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->H()V

    :cond_39
    return-object v0
.end method

.method private a(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/c/b;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3a

    iget-object v2, v0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v15, v0, Lcom/c/b;->c:Lcom/c/a/a;

    iget v1, v0, Lcom/c/b;->V:I

    const/16 v17, 0x0

    iget-object v12, v0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v18, v12

    move/from16 v12, p8

    move/from16 v16, v1

    invoke-static/range {v2 .. v18}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->H()V

    :cond_3a
    return-object v0
.end method

.method private a(Z)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/c/d/a;->a(Landroid/view/View;Z)V

    :cond_9
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/c/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_55

    invoke-static {}, Lcom/c/d/a;->c()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_55

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_51

    :try_start_12
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_4e

    const-wide/16 v4, 0x0

    :try_start_29
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v3, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_40

    :try_start_32
    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    return-object v0

    :catchall_40
    move-exception v3

    invoke-static {p2}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/c/d/a;->a(Ljava/io/Closeable;)V

    throw v3
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p1

    move-object v0, v2

    goto :goto_52

    :catch_51
    move-exception p1

    :goto_52
    invoke-static {p1}, Lcom/c/d/a;->a(Ljava/lang/Throwable;)V

    :cond_55
    return-object v0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    :cond_6
    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->X:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1b

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b;->X:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/c/b;->X:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private a(ZIZ)V
    .registers 6

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v1

    if-lez p2, :cond_17

    if-eqz p3, :cond_17

    int-to-float p2, p2

    invoke-static {v1, p2}, Lcom/c/d/a;->a(Landroid/content/Context;F)I

    move-result p2

    :cond_17
    if-eqz p1, :cond_1c

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1e

    :cond_1c
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1e
    iget-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    return-void
.end method

.method private static a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/c/d/c;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/c/d/c;->a(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/c/d/c;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()Lcom/c/b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private b(F)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_d
    return-object p0
.end method

.method private b(IZ)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/c/b;->a(ZIZ)V

    return-object p0
.end method

.method private b(Landroid/view/View;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->R:Landroid/view/View;

    iput-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/c/b;->H()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/c/b;->T:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/c/b/b;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    invoke-static {}, Lcom/c/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot block UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    iget-boolean v0, p1, Lcom/c/b/a;->r:Z

    if-nez v0, :cond_26

    :try_start_15
    monitor-enter p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_26

    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p1, Lcom/c/b/a;->s:Z

    sget v0, Lcom/c/b/a;->a:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p1

    return-object p0

    :catchall_23
    move-exception v0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    :try_start_25
    throw v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-object p0
.end method

.method private b(Ljava/io/File;I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/d;

    invoke-direct {v0}, Lcom/c/b/d;-><init>()V

    iput-object p1, v0, Lcom/c/b/d;->w:Ljava/io/File;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput p2, v0, Lcom/c/b/d;->u:I

    const/4 p2, 0x0

    iput p2, v0, Lcom/c/b/d;->v:I

    iput-object p1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/c/b/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/c/b/d;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/d;

    invoke-virtual {p1, p2}, Lcom/c/b/d;->a(Z)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/d;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    sget-object v1, Lcom/c/b;->Y:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    move-result-object p1

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_14
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b;->R:Landroid/view/View;

    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_23

    :cond_b
    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/c/b;->S:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_6

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-direct {p0, p1}, Lcom/c/b;->c(Landroid/view/View;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/c/b/e;)Lcom/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/c/b/e;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v6, p0, Lcom/c/b;->c:Lcom/c/a/a;

    iget-object v8, p0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/a;Lcom/c/b/e;Lorg/apache/http/HttpHost;)V

    invoke-direct {p0}, Lcom/c/b;->H()V

    :cond_1f
    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p2, p3, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object p2, p3

    check-cast p2, Lcom/c/b/b;

    iput-object p1, p2, Lcom/c/b/a;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/b/b;

    invoke-direct {v0}, Lcom/c/b/b;-><init>()V

    invoke-virtual {v0, p3, p4}, Lcom/c/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/c/b/b;

    iput-object p2, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p2, 0x2

    iput p2, p1, Lcom/c/b/a;->q:I

    invoke-direct {p0, v0}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p1, p5, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p5

    check-cast p1, Lcom/c/b/b;

    iput-object p4, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p4, 0x1

    iput p4, p1, Lcom/c/b/a;->q:I

    check-cast p1, Lcom/c/b/b;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/b;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p5}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "application/json"

    iput-object p1, p4, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p4

    check-cast p1, Lcom/c/b/b;

    iput-object p3, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p3, 0x3

    iput p3, p1, Lcom/c/b/a;->q:I

    check-cast p1, Lcom/c/b/b;

    const-string p3, "Content-Type"

    invoke-virtual {p1, p3, p2}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/b;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, v0}, Lcom/c/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p1

    :catch_2d
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(Ljava/lang/String;ZZ)Lcom/c/b;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_35

    iget-object v2, v0, Lcom/c/b;->S:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/c/b;->a:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/c/b;->b:Ljava/lang/Object;

    iget-object v15, v0, Lcom/c/b;->c:Lcom/c/a/a;

    iget v1, v0, Lcom/c/b;->V:I

    const/16 v17, 0x0

    iget-object v7, v0, Lcom/c/b;->W:Lorg/apache/http/HttpHost;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v18, v7

    move/from16 v7, p3

    move/from16 v16, v1

    invoke-static/range {v2 .. v18}, Lcom/c/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/c/a/a;IILorg/apache/http/HttpHost;)V

    invoke-direct/range {p0 .. p0}, Lcom/c/b;->H()V

    :cond_35
    return-object v0
.end method

.method private b(Z)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    return-object p0
.end method

.method private varargs b([I)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/c/b;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_17

    if-nez v0, :cond_e

    goto :goto_17

    :cond_e
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    :goto_17
    invoke-direct {p0, v0}, Lcom/c/b;->c(Landroid/view/View;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private static b(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 5

    instance-of v0, p2, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {p0, p1, p2, p3}, Lcom/c/d/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/c/d/c;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    return-object v0
.end method

.method private c(I)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/c/b;->a(Landroid/view/View;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private c(IZ)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    if-eqz p2, :cond_10

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-object p0

    :cond_10
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_13
    return-object p0
.end method

.method private c(Landroid/app/Dialog;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Landroid/view/View;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/c/b;->H()V

    return-object p0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    sget-object v1, Lcom/c/b;->Z:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    move-result-object p1

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of p2, p2, Landroid/widget/AdapterView;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast p2, Landroid/widget/AdapterView;

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_18
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/c/b;->b(Ljava/lang/String;ZZ)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p1, p3, Lcom/c/b/a;->c:Ljava/lang/String;

    move-object p1, p3

    check-cast p1, Lcom/c/b/b;

    iput-object p2, p1, Lcom/c/b/a;->b:Ljava/lang/Class;

    check-cast p1, Lcom/c/b/b;

    const/4 p2, 0x2

    iput p2, p1, Lcom/c/b/a;->q:I

    invoke-direct {p0, p3}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private c(Z)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_d
    return-object p0
.end method

.method private d(I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    :goto_2
    if-nez v0, :cond_5

    goto :goto_17

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_c

    goto :goto_18

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    goto :goto_2

    :cond_17
    :goto_17
    const/4 v0, 0x0

    :goto_18
    invoke-direct {p0, v0}, Lcom/c/b;->a(Landroid/view/View;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/c/d/c;

    invoke-direct {v0}, Lcom/c/d/c;-><init>()V

    sget-object v1, Lcom/c/b;->Z:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    move-result-object p1

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of p2, p2, Landroid/widget/AdapterView;

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast p2, Landroid/widget/AdapterView;

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_18
    return-object p0
.end method

.method private d(Z)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_9
    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/c/d/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/c/d/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private e()Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/c/b;->k(I)Lcom/c/b;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->b(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/c/b;->c(Landroid/view/View;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/c/b;->C()Lcom/c/d/c;

    move-result-object v0

    sget-object v1, Lcom/c/b;->aa:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    :cond_f
    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-object p0
.end method

.method private e(Z)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-lt v2, v1, :cond_18

    return-object p0

    :cond_18
    if-eqz p1, :cond_1e

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_21

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    return-object p0
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p1}, Lcom/c/b/d;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/c/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/c/b/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private f()Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/c/b;->k(I)Lcom/c/b;

    move-result-object v0

    return-object v0
.end method

.method private f(I)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/c/b;->V:I

    return-object p0
.end method

.method private f(Ljava/lang/Object;Ljava/lang/String;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/c/d/c;

    invoke-direct {v1}, Lcom/c/d/c;-><init>()V

    sget-object v2, Lcom/c/b;->ab:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Lcom/c/d/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_18
    return-object p0
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p1}, Lcom/c/b/d;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/c/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/c/b/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private g()Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/b;->k(I)Lcom/c/b;

    move-result-object v0

    return-object v0
.end method

.method private g(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    return-object p0
.end method

.method private h()Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_17
    return-object p0
.end method

.method private h(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    return-object p0
.end method

.method private h(Ljava/lang/String;)Lcom/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/c/b;->a:Landroid/view/View;

    const-string v4, "setLayerType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/c/b;->ae:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    aput-object v1, v8, v2

    invoke-static/range {v3 .. v8}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-instance v0, Lcom/c/d/h;

    iget-object v3, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/c/b;->b:Ljava/lang/Object;

    invoke-direct {v0, v3, p1, v4}, Lcom/c/d/h;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const v4, 0x40ff0001

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget-object v3, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt p1, v3, :cond_51

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    :cond_51
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/c/d/h;->a(Landroid/content/Context;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v3, v0, Lcom/c/d/h;->d:Z

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v3, v0, Lcom/c/d/h;->d:Z

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-boolean v3, v0, Lcom/c/d/h;->e:Z

    if-nez v3, :cond_73

    iget-object v3, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-static {v3}, Lcom/c/d/h;->a(Landroid/webkit/WebView;)V

    :cond_73
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v3, v0, Lcom/c/d/h;->f:I

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p1, v0, Lcom/c/d/h;->a:Ljava/lang/Object;

    if-eqz p1, :cond_88

    iget-object p1, v0, Lcom/c/d/h;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_88
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    if-lez p1, :cond_94

    invoke-virtual {v0}, Lcom/c/d/h;->a()V

    goto :goto_b0

    :cond_94
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/c/d/h$1;

    invoke-direct {v2, v0}, Lcom/c/d/h$1;-><init>(Lcom/c/d/h;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {p1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v0, v0, Lcom/c/d/h;->f:I

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_b0
    :goto_b0
    iput-object v1, p0, Lcom/c/b;->b:Ljava/lang/Object;

    :cond_b2
    return-object p0
.end method

.method private i(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    return-object p0
.end method

.method private i(Ljava/lang/String;)Lcom/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/c/b;->a:Landroid/view/View;

    const-string v4, "setLayerType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/c/b;->ae:[Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    aput-object v1, v8, v2

    invoke-static/range {v3 .. v8}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-instance v0, Lcom/c/d/h;

    iget-object v3, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/c/b;->b:Ljava/lang/Object;

    invoke-direct {v0, v3, p1, v4}, Lcom/c/d/h;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const v4, 0x40ff0001

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget-object v3, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt p1, v3, :cond_51

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    :cond_51
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/c/d/h;->a(Landroid/content/Context;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v3, v0, Lcom/c/d/h;->d:Z

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v3, v0, Lcom/c/d/h;->d:Z

    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-boolean v3, v0, Lcom/c/d/h;->e:Z

    if-nez v3, :cond_73

    iget-object v3, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-static {v3}, Lcom/c/d/h;->a(Landroid/webkit/WebView;)V

    :cond_73
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v3, v0, Lcom/c/d/h;->f:I

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p1, v0, Lcom/c/d/h;->a:Ljava/lang/Object;

    if-eqz p1, :cond_88

    iget-object p1, v0, Lcom/c/d/h;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/c/d/h;->c:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/c/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_88
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result p1

    if-lez p1, :cond_94

    invoke-virtual {v0}, Lcom/c/d/h;->a()V

    goto :goto_b0

    :cond_94
    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/c/d/h$1;

    invoke-direct {v2, v0}, Lcom/c/d/h$1;-><init>(Lcom/c/d/h;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    const-string v2, "<html></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {p1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/c/d/h;->b:Landroid/webkit/WebView;

    iget v0, v0, Lcom/c/d/h;->f:I

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_b0
    :goto_b0
    iput-object v1, p0, Lcom/c/b;->b:Ljava/lang/Object;

    :cond_b2
    return-object p0
.end method

.method private i()Z
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private j(I)Lcom/c/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_17
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1a
    return-object p0
.end method

.method private j()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private k()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private k(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-object p0
.end method

.method private l()Landroid/widget/Gallery;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method private l(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0

    :cond_c
    iget-object p1, p0, Lcom/c/b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-object p0
.end method

.method private m()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private m(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    return-object p0
.end method

.method private n()Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private n(I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_15
    return-object p0
.end method

.method private o()Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private o(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private p()Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method private p(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_d
    return-object p0
.end method

.method private q()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method private q(I)Lcom/c/b;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/c/b;->a:Landroid/view/View;

    const-string v2, "setOverScrollMode"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/c/b;->ad:[Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v0

    invoke-static/range {v1 .. v6}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object p0
.end method

.method private r()Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private r(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/c/b;->a(ZIZ)V

    return-object p0
.end method

.method private s()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method private s(I)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/c/b;->a(ZIZ)V

    return-object p0
.end method

.method private t(I)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/c/b/d;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private t()Landroid/widget/ExpandableListView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private u()Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method private u(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    return-object p0
.end method

.method private v()Landroid/widget/RatingBar;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method private v(I)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/c/b;->G()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_17
    return-object p0
.end method

.method private w()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private x()Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method private y()Landroid/text/Editable;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private z()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/c/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->b(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/c/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Landroid/app/Dialog;)Lcom/c/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_b

    :try_start_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/c/b;->af:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-object p0
.end method

.method public final a(Lcom/c/a/a;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/c/b;->c:Lcom/c/a/a;

    return-object p0
.end method

.method public final a(Lcom/c/b/b;)Lcom/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;Lcom/c/b/b;)Lcom/c/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/c/b/b<",
            "TK;>;)TT;"
        }
    .end annotation

    iput-object p2, p3, Lcom/c/b/a;->b:Ljava/lang/Class;

    move-object p2, p3

    check-cast p2, Lcom/c/b/b;

    iput-object p1, p2, Lcom/c/b/a;->c:Ljava/lang/String;

    check-cast p2, Lcom/c/b/b;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/c/b/b;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/b/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/c/b/a;->p:J

    invoke-direct {p0, p3}, Lcom/c/b;->a(Lcom/c/b/a;)Lcom/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/app/Dialog;)Lcom/c/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_a

    :try_start_2
    sget-object v0, Lcom/c/b;->af:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-object p0
.end method
