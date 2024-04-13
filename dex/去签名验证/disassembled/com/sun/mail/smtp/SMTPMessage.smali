.class public Lcom/sun/mail/smtp/SMTPMessage;
.super Ljavax/mail/internet/MimeMessage;


# static fields
.field public static final NOTIFY_DELAY:I = 0x4

.field public static final NOTIFY_FAILURE:I = 0x2

.field public static final NOTIFY_NEVER:I = -0x1

.field public static final NOTIFY_SUCCESS:I = 0x1

.field public static final RETURN_FULL:I = 0x1

.field public static final RETURN_HDRS:I = 0x2

.field private static final returnOptionString:[Ljava/lang/String;


# instance fields
.field private allow8bitMIME:Z

.field private envelopeFrom:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private notifyOptions:I

.field private returnOption:I

.field private sendPartial:Z

.field private submitter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FULL"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HDRS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/mail/smtp/SMTPMessage;->returnOptionString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .registers 2

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/internet/MimeMessage;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllow8bitMIME()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    return v0
.end method

.method getDSNNotify()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const-string v0, "NEVER"

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2c

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2f
    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_34
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_43
    const-string v1, "DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDSNRet()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/sun/mail/smtp/SMTPMessage;->returnOptionString:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEnvelopeFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->envelopeFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMailExtension()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyOptions()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    return v0
.end method

.method public getReturnOption()I
    .registers 2

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    return v0
.end method

.method public getSendPartial()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    return v0
.end method

.method public getSubmitter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow8bitMIME(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->allow8bitMIME:Z

    return-void
.end method

.method public setEnvelopeFrom(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->envelopeFrom:Ljava/lang/String;

    return-void
.end method

.method public setMailExtension(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public setNotifyOptions(I)V
    .registers 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_b

    const/16 v0, 0x8

    if-lt p1, v0, :cond_8

    goto :goto_b

    :cond_8
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->notifyOptions:I

    return-void

    :cond_b
    :goto_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad return option"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReturnOption(I)V
    .registers 3

    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    goto :goto_9

    :cond_6
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->returnOption:I

    return-void

    :cond_9
    :goto_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad return option"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSendPartial(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->sendPartial:Z

    return-void
.end method

.method public setSubmitter(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->submitter:Ljava/lang/String;

    return-void
.end method
