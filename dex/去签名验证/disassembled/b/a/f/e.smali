.class public final Lb/a/f/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Lc/f;

.field static final b:I = 0x4000

.field static final c:B = 0x0t

.field static final d:B = 0x1t

.field static final e:B = 0x2t

.field static final f:B = 0x3t

.field static final g:B = 0x4t

.field static final h:B = 0x5t

.field static final i:B = 0x6t

.field static final j:B = 0x7t

.field static final k:B = 0x8t

.field static final l:B = 0x9t

.field static final m:B = 0x0t

.field static final n:B = 0x1t

.field static final o:B = 0x1t

.field static final p:B = 0x4t

.field static final q:B = 0x4t

.field static final r:B = 0x8t

.field static final s:B = 0x20t

.field static final t:B = 0x20t

.field static final u:[Ljava/lang/String;

.field static final v:[Ljava/lang/String;

.field private static final w:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/f/e;->a:Lc/f;

    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/f/e;->w:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lb/a/f/e;->u:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lb/a/f/e;->v:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_30
    sget-object v2, Lb/a/f/e;->v:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v1, v2, :cond_53

    sget-object v2, Lb/a/f/e;->v:[Ljava/lang/String;

    const-string v5, "%8s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v5, v4}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_53
    sget-object v1, Lb/a/f/e;->u:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    sget-object v1, Lb/a/f/e;->u:[Ljava/lang/String;

    const-string v2, "END_STREAM"

    aput-object v2, v1, v4

    new-array v1, v4, [I

    aput v4, v1, v0

    sget-object v2, Lb/a/f/e;->u:[Ljava/lang/String;

    const-string v4, "PADDED"

    const/16 v5, 0x8

    aput-object v4, v2, v5

    const/4 v2, 0x0

    :goto_6c
    if-gtz v2, :cond_8e

    aget v4, v1, v2

    sget-object v6, Lb/a/f/e;->u:[Ljava/lang/String;

    or-int/lit8 v7, v4, 0x8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v4, v9, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|PADDED"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_8e
    sget-object v2, Lb/a/f/e;->u:[Ljava/lang/String;

    const/4 v4, 0x4

    const-string v6, "END_HEADERS"

    aput-object v6, v2, v4

    sget-object v2, Lb/a/f/e;->u:[Ljava/lang/String;

    const-string v4, "PRIORITY"

    aput-object v4, v2, v3

    sget-object v2, Lb/a/f/e;->u:[Ljava/lang/String;

    const/16 v3, 0x24

    const-string v4, "END_HEADERS|PRIORITY"

    aput-object v4, v2, v3

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_116

    const/4 v4, 0x0

    :goto_aa
    if-ge v4, v2, :cond_ff

    aget v6, v3, v4

    const/4 v7, 0x0

    :goto_af
    if-gtz v7, :cond_fc

    aget v8, v1, v7

    sget-object v9, Lb/a/f/e;->u:[Ljava/lang/String;

    or-int v10, v8, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v13, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    sget-object v9, Lb/a/f/e;->u:[Ljava/lang/String;

    or-int/2addr v10, v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v8, v13, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v8, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|PADDED"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_af

    :cond_fc
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :cond_ff
    :goto_ff
    sget-object v1, Lb/a/f/e;->u:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_115

    sget-object v1, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_112

    sget-object v1, Lb/a/f/e;->u:[Ljava/lang/String;

    sget-object v2, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    :cond_115
    return-void

    :array_116
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(BB)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    packed-switch p0, :pswitch_data_46

    :pswitch_8
    sget-object v0, Lb/a/f/e;->u:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_22

    sget-object v0, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_26

    :pswitch_12
    const/4 p0, 0x1

    if-ne p1, p0, :cond_18

    const-string p0, "ACK"

    return-object p0

    :cond_18
    sget-object p0, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_1d
    sget-object p0, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_22
    sget-object v0, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_26
    const/4 v1, 0x5

    if-ne p0, v1, :cond_36

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_36

    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    if-nez p0, :cond_45

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_45

    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1d
        :pswitch_12
        :pswitch_8
        :pswitch_12
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .registers 11

    sget-object v0, Lb/a/f/e;->w:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_c

    sget-object v0, Lb/a/f/e;->w:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_1a

    :cond_c
    const-string v0, "0x%02x"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    const/4 v3, 0x5

    if-nez p4, :cond_20

    const-string p3, ""

    goto :goto_5b

    :cond_20
    packed-switch p3, :pswitch_data_80

    :pswitch_23
    sget-object v4, Lb/a/f/e;->u:[Ljava/lang/String;

    array-length v4, v4

    if-ge p4, v4, :cond_3c

    sget-object v4, Lb/a/f/e;->u:[Ljava/lang/String;

    aget-object v4, v4, p4

    goto :goto_40

    :pswitch_2d
    if-ne p4, v2, :cond_32

    const-string p3, "ACK"

    goto :goto_5b

    :cond_32
    sget-object p3, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_5b

    :pswitch_37
    sget-object p3, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_5b

    :cond_3c
    sget-object v4, Lb/a/f/e;->v:[Ljava/lang/String;

    aget-object v4, v4, p4

    :goto_40
    if-ne p3, v3, :cond_4f

    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_4f

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    :goto_4a
    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_5b

    :cond_4f
    if-nez p3, :cond_5a

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_5a

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    goto :goto_4a

    :cond_5a
    move-object p3, v4

    :goto_5b
    const-string p4, "%s 0x%08x %5d %-13s %s"

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p0, :cond_64

    const-string p0, "<<"

    goto :goto_66

    :cond_64
    const-string p0, ">>"

    :goto_66
    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x3

    aput-object v0, v3, p0

    const/4 p0, 0x4

    aput-object p3, v3, p0

    invoke-static {p4, v3}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_37
        :pswitch_37
        :pswitch_2d
        :pswitch_23
        :pswitch_2d
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
