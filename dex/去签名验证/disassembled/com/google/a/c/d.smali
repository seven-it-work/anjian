.class public final enum Lcom/google/a/c/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/c/d;

.field public static final enum ASCII:Lcom/google/a/c/d;

.field public static final enum Big5:Lcom/google/a/c/d;

.field public static final enum Cp1250:Lcom/google/a/c/d;

.field public static final enum Cp1251:Lcom/google/a/c/d;

.field public static final enum Cp1252:Lcom/google/a/c/d;

.field public static final enum Cp1256:Lcom/google/a/c/d;

.field public static final enum Cp437:Lcom/google/a/c/d;

.field public static final enum EUC_KR:Lcom/google/a/c/d;

.field public static final enum GB18030:Lcom/google/a/c/d;

.field public static final enum ISO8859_1:Lcom/google/a/c/d;

.field public static final enum ISO8859_10:Lcom/google/a/c/d;

.field public static final enum ISO8859_11:Lcom/google/a/c/d;

.field public static final enum ISO8859_13:Lcom/google/a/c/d;

.field public static final enum ISO8859_14:Lcom/google/a/c/d;

.field public static final enum ISO8859_15:Lcom/google/a/c/d;

.field public static final enum ISO8859_16:Lcom/google/a/c/d;

.field public static final enum ISO8859_2:Lcom/google/a/c/d;

.field public static final enum ISO8859_3:Lcom/google/a/c/d;

.field public static final enum ISO8859_4:Lcom/google/a/c/d;

.field public static final enum ISO8859_5:Lcom/google/a/c/d;

.field public static final enum ISO8859_6:Lcom/google/a/c/d;

.field public static final enum ISO8859_7:Lcom/google/a/c/d;

.field public static final enum ISO8859_8:Lcom/google/a/c/d;

.field public static final enum ISO8859_9:Lcom/google/a/c/d;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/a/c/d;

.field public static final enum UTF8:Lcom/google/a/c/d;

.field public static final enum UnicodeBigUnmarked:Lcom/google/a/c/d;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/a/c/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp437"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_2c0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->Cp437:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_1"

    new-array v3, v2, [I

    fill-array-data v3, :array_2c8

    const-string v5, "ISO-8859-1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_1:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_2"

    const-string v3, "ISO-8859-2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_2:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_3"

    const-string v3, "ISO-8859-3"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-direct {v0, v1, v8, v7, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_3:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_4"

    const-string v3, "ISO-8859-4"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x6

    invoke-direct {v0, v1, v5, v8, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_4:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_5"

    const-string v3, "ISO-8859-5"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x7

    invoke-direct {v0, v1, v7, v9, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_5:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_6"

    const-string v3, "ISO-8859-6"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x8

    invoke-direct {v0, v1, v8, v10, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_6:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_7"

    const-string v3, "ISO-8859-7"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x9

    invoke-direct {v0, v1, v9, v11, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_7:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_8"

    const-string v3, "ISO-8859-8"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0xa

    invoke-direct {v0, v1, v10, v12, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_8:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_9"

    const-string v3, "ISO-8859-9"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0xb

    invoke-direct {v0, v1, v11, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_9:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_10"

    const-string v3, "ISO-8859-10"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0xc

    invoke-direct {v0, v1, v12, v14, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_10:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_11"

    const-string v3, "ISO-8859-11"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0xd

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_11:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_13"

    const-string v3, "ISO-8859-13"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v13, 0xf

    invoke-direct {v0, v1, v14, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_13:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_14"

    const-string v3, "ISO-8859-14"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_14:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_15"

    const-string v3, "ISO-8859-15"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0xe

    const/16 v12, 0x11

    invoke-direct {v0, v1, v15, v12, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_15:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_16"

    const-string v3, "ISO-8859-16"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x12

    invoke-direct {v0, v1, v13, v12, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ISO8859_16:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "SJIS"

    const-string v3, "Shift_JIS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x14

    invoke-direct {v0, v1, v14, v12, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->SJIS:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1250"

    const-string v3, "windows-1250"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x11

    const/16 v15, 0x15

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->Cp1250:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1251"

    const-string v3, "windows-1251"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x12

    const/16 v15, 0x16

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->Cp1251:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1252"

    const-string v3, "windows-1252"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x13

    const/16 v15, 0x17

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->Cp1252:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1256"

    const-string v3, "windows-1256"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x14

    const/16 v15, 0x18

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->Cp1256:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "UnicodeBigUnmarked"

    const-string v3, "UTF-16BE"

    const-string v12, "UnicodeBig"

    filled-new-array {v3, v12}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x15

    const/16 v15, 0x19

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->UnicodeBigUnmarked:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "UTF8"

    const-string v3, "UTF-8"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x16

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->UTF8:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ASCII"

    new-array v3, v2, [I

    fill-array-data v3, :array_2d0

    const-string v12, "US-ASCII"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v3, v12}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->ASCII:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Big5"

    const/16 v3, 0x18

    const/16 v12, 0x1c

    invoke-direct {v0, v1, v3, v12}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/a/c/d;->Big5:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "GB18030"

    const-string v3, "GB2312"

    const-string v12, "EUC_CN"

    const-string v15, "GBK"

    filled-new-array {v3, v12, v15}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x19

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->GB18030:Lcom/google/a/c/d;

    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "EUC_KR"

    const-string v3, "EUC-KR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x1a

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v12, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->EUC_KR:Lcom/google/a/c/d;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/a/c/d;

    sget-object v1, Lcom/google/a/c/d;->Cp437:Lcom/google/a/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/c/d;->ISO8859_1:Lcom/google/a/c/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/c/d;->ISO8859_2:Lcom/google/a/c/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_3:Lcom/google/a/c/d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_4:Lcom/google/a/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/c/d;->ISO8859_5:Lcom/google/a/c/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/a/c/d;->ISO8859_6:Lcom/google/a/c/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/a/c/d;->ISO8859_7:Lcom/google/a/c/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/a/c/d;->ISO8859_8:Lcom/google/a/c/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/a/c/d;->ISO8859_9:Lcom/google/a/c/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/a/c/d;->ISO8859_10:Lcom/google/a/c/d;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_11:Lcom/google/a/c/d;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_13:Lcom/google/a/c/d;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_14:Lcom/google/a/c/d;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_15:Lcom/google/a/c/d;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ISO8859_16:Lcom/google/a/c/d;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/a/c/d;->SJIS:Lcom/google/a/c/d;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/a/c/d;->Cp1250:Lcom/google/a/c/d;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->Cp1251:Lcom/google/a/c/d;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->Cp1252:Lcom/google/a/c/d;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->Cp1256:Lcom/google/a/c/d;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->UnicodeBigUnmarked:Lcom/google/a/c/d;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->UTF8:Lcom/google/a/c/d;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->ASCII:Lcom/google/a/c/d;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->Big5:Lcom/google/a/c/d;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->GB18030:Lcom/google/a/c/d;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->EUC_KR:Lcom/google/a/c/d;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/c/d;->$VALUES:[Lcom/google/a/c/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/a/c/d;->VALUE_TO_ECI:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/a/c/d;->NAME_TO_ECI:Ljava/util/Map;

    invoke-static {}, Lcom/google/a/c/d;->values()[Lcom/google/a/c/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_28b
    if-ge v2, v1, :cond_2bf

    aget-object v3, v0, v2

    iget-object v5, v3, Lcom/google/a/c/d;->values:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_293
    if-ge v7, v6, :cond_2a3

    aget v8, v5, v7

    sget-object v9, Lcom/google/a/c/d;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_293

    :cond_2a3
    sget-object v5, Lcom/google/a/c/d;->NAME_TO_ECI:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/a/c/d;->otherEncodingNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2b0
    if-ge v7, v6, :cond_2bc

    aget-object v8, v5, v7

    sget-object v9, Lcom/google/a/c/d;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b0

    :cond_2bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_28b

    :cond_2bf
    return-void

    :array_2c0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2c8
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2d0
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    new-array p3, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p3, p1, p2

    iput-object p1, p0, Lcom/google/a/c/d;->values:[I

    iput-object p4, p0, Lcom/google/a/c/d;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/a/c/d;->values:[I

    iput-object p4, p0, Lcom/google/a/c/d;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/a/c/d;
    .registers 2

    sget-object v0, Lcom/google/a/c/d;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/a/c/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    if-ltz p0, :cond_14

    const/16 v0, 0x384

    if-lt p0, v0, :cond_7

    goto :goto_14

    :cond_7
    sget-object v0, Lcom/google/a/c/d;->VALUE_TO_ECI:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0

    :cond_14
    :goto_14
    invoke-static {}, Lcom/google/a/h;->getFormatInstance()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/d;
    .registers 2

    const-class v0, Lcom/google/a/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0
.end method

.method public static values()[Lcom/google/a/c/d;
    .registers 1

    sget-object v0, Lcom/google/a/c/d;->$VALUES:[Lcom/google/a/c/d;

    invoke-virtual {v0}, [Lcom/google/a/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/d;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 3

    iget-object v0, p0, Lcom/google/a/c/d;->values:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
