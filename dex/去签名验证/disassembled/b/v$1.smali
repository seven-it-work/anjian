.class final synthetic Lb/v$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lb/v$a$a;->values()[Lb/v$a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/v$1;->a:[I

    :try_start_9
    sget-object v0, Lb/v$1;->a:[I

    sget-object v1, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lb/v$1;->a:[I

    sget-object v1, Lb/v$a$a;->INVALID_HOST:Lb/v$a$a;

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lb/v$1;->a:[I

    sget-object v1, Lb/v$a$a;->UNSUPPORTED_SCHEME:Lb/v$a$a;

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lb/v$1;->a:[I

    sget-object v1, Lb/v$a$a;->MISSING_SCHEME:Lb/v$a$a;

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v0, Lb/v$1;->a:[I

    sget-object v1, Lb/v$a$a;->INVALID_PORT:Lb/v$a$a;

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
