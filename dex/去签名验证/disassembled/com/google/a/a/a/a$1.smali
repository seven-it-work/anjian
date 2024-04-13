.class final synthetic Lcom/google/a/a/a/a$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/google/a/a/a/a$a;->values$17d9718f()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/a/a/a/a$1;->a:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/a/a/a/a$1;->a:[I

    sget v2, Lcom/google/a/a/a/a$a;->UPPER$2679db95:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/google/a/a/a/a$1;->a:[I

    sget v2, Lcom/google/a/a/a/a$a;->LOWER$2679db95:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/google/a/a/a/a$1;->a:[I

    sget v2, Lcom/google/a/a/a/a$a;->MIXED$2679db95:I

    sub-int/2addr v2, v0

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    sget-object v1, Lcom/google/a/a/a/a$1;->a:[I

    sget v2, Lcom/google/a/a/a/a$a;->PUNCT$2679db95:I

    sub-int/2addr v2, v0

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_29} :catch_29

    :catch_29
    :try_start_29
    sget-object v1, Lcom/google/a/a/a/a$1;->a:[I

    sget v2, Lcom/google/a/a/a/a$a;->DIGIT$2679db95:I

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    aput v0, v1, v2
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_31} :catch_31

    :catch_31
    return-void
.end method
