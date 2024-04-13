.class final synthetic Lcom/bumptech/glide/load/b/g$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/bumptech/glide/load/c;->values()[Lcom/bumptech/glide/load/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bumptech/glide/load/b/g$1;->c:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/bumptech/glide/load/b/g$1;->c:[I

    sget-object v2, Lcom/bumptech/glide/load/c;->SOURCE:Lcom/bumptech/glide/load/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/c;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/bumptech/glide/load/b/g$1;->c:[I

    sget-object v3, Lcom/bumptech/glide/load/c;->TRANSFORMED:Lcom/bumptech/glide/load/c;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/c;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    invoke-static {}, Lcom/bumptech/glide/load/b/g$g;->values()[Lcom/bumptech/glide/load/b/g$g;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/bumptech/glide/load/b/g$1;->b:[I

    :try_start_28
    sget-object v2, Lcom/bumptech/glide/load/b/g$1;->b:[I

    sget-object v3, Lcom/bumptech/glide/load/b/g$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g$g;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v2, Lcom/bumptech/glide/load/b/g$1;->b:[I

    sget-object v3, Lcom/bumptech/glide/load/b/g$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g$g;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    const/4 v2, 0x3

    :try_start_3d
    sget-object v3, Lcom/bumptech/glide/load/b/g$1;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/b/g$g;->SOURCE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g$g;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v3, Lcom/bumptech/glide/load/b/g$1;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/b/g$g;->FINISHED:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g$g;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v3, Lcom/bumptech/glide/load/b/g$1;->b:[I

    sget-object v4, Lcom/bumptech/glide/load/b/g$g;->INITIALIZE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g$g;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_5d

    :catch_5d
    invoke-static {}, Lcom/bumptech/glide/load/b/g$f;->values()[Lcom/bumptech/glide/load/b/g$f;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/bumptech/glide/load/b/g$1;->a:[I

    :try_start_66
    sget-object v3, Lcom/bumptech/glide/load/b/g$1;->a:[I

    sget-object v4, Lcom/bumptech/glide/load/b/g$f;->INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/g$f;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    sget-object v0, Lcom/bumptech/glide/load/b/g$1;->a:[I

    sget-object v3, Lcom/bumptech/glide/load/b/g$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/g$f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g$f;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v0, Lcom/bumptech/glide/load/b/g$1;->a:[I

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/g$f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/g$f;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method
