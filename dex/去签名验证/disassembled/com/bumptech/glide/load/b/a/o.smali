.class public final Lcom/bumptech/glide/load/b/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/l;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/o$a;,
        Lcom/bumptech/glide/load/b/a/o$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x8

.field private static final b:[Landroid/graphics/Bitmap$Config;

.field private static final c:[Landroid/graphics/Bitmap$Config;

.field private static final d:[Landroid/graphics/Bitmap$Config;

.field private static final e:[Landroid/graphics/Bitmap$Config;

.field private static final f:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final g:Lcom/bumptech/glide/load/b/a/o$b;

.field private final h:Lcom/bumptech/glide/load/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/a/h<",
            "Lcom/bumptech/glide/load/b/a/o$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1f

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$Config;

    array-length v3, v0

    sub-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v4, v0, v3

    :cond_1f
    sput-object v0, Lcom/bumptech/glide/load/b/a/o;->b:[Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/b/a/o;->c:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/b/a/o;->d:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/b/a/o;->e:[Landroid/graphics/Bitmap$Config;

    new-array v0, v1, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/b/a/o;->f:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/a/o$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/o$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    new-instance v0, Lcom/bumptech/glide/load/b/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->h:Lcom/bumptech/glide/load/b/a/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->i:Ljava/util/Map;

    return-void
.end method

.method static a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/o;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_38

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to decrement empty size, size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", removed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/b/a/o;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_43

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;
    .registers 11

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/a/o$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_18

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/bumptech/glide/load/b/a/o;->c:[Landroid/graphics/Bitmap$Config;

    goto :goto_34

    :cond_18
    sget-object v1, Lcom/bumptech/glide/load/b/a/o$1;->a:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_76

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap$Config;

    aput-object p2, v1, v2

    goto :goto_34

    :pswitch_29
    sget-object v1, Lcom/bumptech/glide/load/b/a/o;->f:[Landroid/graphics/Bitmap$Config;

    goto :goto_34

    :pswitch_2c
    sget-object v1, Lcom/bumptech/glide/load/b/a/o;->e:[Landroid/graphics/Bitmap$Config;

    goto :goto_34

    :pswitch_2f
    sget-object v1, Lcom/bumptech/glide/load/b/a/o;->d:[Landroid/graphics/Bitmap$Config;

    goto :goto_34

    :pswitch_32
    sget-object v1, Lcom/bumptech/glide/load/b/a/o;->b:[Landroid/graphics/Bitmap$Config;

    :goto_34
    array-length v3, v1

    :goto_35
    if-ge v2, v3, :cond_75

    aget-object v4, v1, v2

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/b/a/o;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v7, p1, 0x8

    if-gt v6, v7, :cond_72

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_62

    if-nez v4, :cond_5c

    if-eqz p2, :cond_75

    goto :goto_62

    :cond_5c
    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/a/o$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lcom/bumptech/glide/load/b/a/o$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;

    move-result-object v0

    return-object v0

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_75
    return-object v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private static b(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/bumptech/glide/load/b/a/o;->c:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_11
    sget-object v0, Lcom/bumptech/glide/load/b/a/o$1;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :pswitch_23
    sget-object p0, Lcom/bumptech/glide/load/b/a/o;->f:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/bumptech/glide/load/b/a/o;->e:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/bumptech/glide/load/b/a/o;->d:[Landroid/graphics/Bitmap$Config;

    return-object p0

    :pswitch_2c
    sget-object p0, Lcom/bumptech/glide/load/b/a/o;->b:[Landroid/graphics/Bitmap$Config;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/o;->h:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/b/a/o;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    :cond_15
    return-object v0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {v1, v0, p3}, Lcom/bumptech/glide/load/b/a/o$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_1c

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/bumptech/glide/load/b/a/o;->c:[Landroid/graphics/Bitmap$Config;

    goto :goto_38

    :cond_1c
    sget-object v2, Lcom/bumptech/glide/load/b/a/o$1;->a:[I

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_9e

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap$Config;

    aput-object p3, v2, v3

    goto :goto_38

    :pswitch_2d
    sget-object v2, Lcom/bumptech/glide/load/b/a/o;->f:[Landroid/graphics/Bitmap$Config;

    goto :goto_38

    :pswitch_30
    sget-object v2, Lcom/bumptech/glide/load/b/a/o;->e:[Landroid/graphics/Bitmap$Config;

    goto :goto_38

    :pswitch_33
    sget-object v2, Lcom/bumptech/glide/load/b/a/o;->d:[Landroid/graphics/Bitmap$Config;

    goto :goto_38

    :pswitch_36
    sget-object v2, Lcom/bumptech/glide/load/b/a/o;->b:[Landroid/graphics/Bitmap$Config;

    :goto_38
    array-length v4, v2

    :goto_39
    if-ge v3, v4, :cond_79

    aget-object v5, v2, v3

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/b/a/o;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_76

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v8, v0, 0x8

    if-gt v7, v8, :cond_76

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_66

    if-nez v5, :cond_60

    if-eqz p3, :cond_79

    goto :goto_66

    :cond_60
    invoke-virtual {v5, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_79

    :cond_66
    :goto_66
    iget-object p3, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/load/b/a/o$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    iget-object p3, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0, v5}, Lcom/bumptech/glide/load/b/a/o$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;

    move-result-object v1

    goto :goto_79

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_79
    :goto_79
    iget-object p3, p0, Lcom/bumptech/glide/load/b/a/o;->h:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    if-eqz p3, :cond_9c

    iget v0, v1, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/b/a/o;->a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_99

    :cond_97
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_99
    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_9c
    return-object p3

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->g:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/b/a/o$b;->a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/a/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->h:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a/o;->a(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v1, v0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget v0, v0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v1, :cond_31

    goto :goto_36

    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :goto_36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    invoke-static {p1, p3}, Lcom/bumptech/glide/load/b/a/o;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/b/a/o;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)I
    .registers 2

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeConfigStrategy{groupedMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->h:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortedSizes=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_40
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
