.class public final Lcom/bumptech/glide/util/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = false

.field private static final b:I = 0x7f


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    const/16 v1, 0x7e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method private static a()V
    .registers 0

    return-void
.end method

.method private static b()V
    .registers 0

    return-void
.end method

.method private static c()V
    .registers 0

    return-void
.end method

.method private static d()V
    .registers 0

    return-void
.end method

.method private static e()V
    .registers 0

    return-void
.end method
