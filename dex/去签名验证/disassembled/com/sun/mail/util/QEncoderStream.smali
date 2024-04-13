.class public Lcom/sun/mail/util/QEncoderStream;
.super Lcom/sun/mail/util/QPEncoderStream;


# static fields
.field private static TEXT_SPECIALS:Ljava/lang/String; = "=_?"

.field private static WORD_SPECIALS:Ljava/lang/String; = "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"


# instance fields
.field private specials:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-eqz p2, :cond_b

    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    :goto_d
    iput-object p1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    return-void
.end method

.method public static encodedLength([BZ)I
    .registers 6

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-lt v0, v2, :cond_d

    return v1

    :cond_d
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_23

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_20

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x3

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_d

    const/16 p1, 0x5f

    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    return-void

    :cond_d
    if-lt p1, v1, :cond_20

    const/16 v1, 0x7f

    if-ge p1, v1, :cond_20

    iget-object v1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    return-void

    :cond_20
    :goto_20
    const/4 v0, 0x1

    goto :goto_9
.end method
