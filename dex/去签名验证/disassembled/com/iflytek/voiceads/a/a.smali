.class public Lcom/iflytek/voiceads/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/iflytek/voiceads/a/a;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/voiceads/a/b;->a:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/voiceads/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/voiceads/a/c;->a:[Ljava/lang/String;

    :cond_e
    if-lez p0, :cond_16

    array-length v1, v0

    if-ge p0, v1, :cond_16

    aget-object p0, v0, p0

    return-object p0

    :cond_16
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/iflytek/voiceads/a/a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/voiceads/a/b;->b:[Ljava/lang/String;

    sget-object v1, Lcom/iflytek/voiceads/a/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/iflytek/voiceads/a/c;->b:[Ljava/lang/String;

    :cond_e
    if-ltz p0, :cond_16

    array-length v1, v0

    if-ge p0, v1, :cond_16

    aget-object p0, v0, p0

    return-object p0

    :cond_16
    const-string p0, ""

    return-object p0
.end method
