.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_80

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    array-length v2, p1

    if-lt v1, v2, :cond_18

    return-void

    :cond_18
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7a

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_7a

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_74

    const/16 v5, 0x41

    if-eq v3, v5, :cond_71

    const/16 v5, 0x44

    if-eq v3, v5, :cond_4f

    const/16 v4, 0x46

    if-eq v3, v4, :cond_4c

    packed-switch v3, :pswitch_data_82

    goto :goto_7a

    :pswitch_46
    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :pswitch_49
    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :cond_4c
    sget-object v2, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_7a

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_6e

    const/16 v3, 0x45

    if-ne v2, v3, :cond_63

    goto :goto_6e

    :cond_63
    const/16 v3, 0x72

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x52

    if-ne v2, v3, :cond_7d

    :cond_6b
    sget-object v2, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :cond_6e
    :goto_6e
    sget-object v2, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :cond_71
    sget-object v2, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    goto :goto_76

    :cond_74
    sget-object v2, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    :goto_76
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_7d

    :cond_7a
    :goto_7a
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    :cond_7d
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x52
        :pswitch_49
        :pswitch_46
    .end packed-switch
.end method
