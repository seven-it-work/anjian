.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I = 0x2

.field private static NESTED:I = 0x3

.field private static SINGLE:I = 0x1

.field static final name:[C

.field private static parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_20

    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    :try_start_9
    const-string v0, "mail.imap.parse.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    nop

    :array_20
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_32

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: msgno "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_45

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x6e

    const/16 v4, 0x4e

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/16 v8, 0x29

    if-ne v0, v1, :cond_1dc

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_61

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_61
    const-string v0, "multipart"

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    :cond_6e
    new-instance v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v9, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v9

    if-eq v9, v1, :cond_6e

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_ab

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: subtype "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ab
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_bd

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_bc

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: parse DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_bc
    return-void

    :cond_bd
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_c8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_e0

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_df

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_df
    return-void

    :cond_e0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_130

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_f1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: parse disposition"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_110

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: disposition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_110
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v8, :cond_124

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_124
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_16b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: disposition DONE"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16b

    :cond_130
    if-eq v0, v4, :cond_15d

    if-ne v0, v3, :cond_135

    goto :goto_15d

    :cond_135
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BODYSTRUCTURE parse error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": bad multipart disposition, b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15d
    :goto_15d
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_168

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_168
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    :cond_16b
    :goto_16b
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_17d

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_17c

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_17c
    return-void

    :cond_17d
    if-eq v0, v6, :cond_187

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing space after disposition"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_187
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v1, :cond_1ae

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1d1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: language len "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1d1

    :cond_1ae
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d1

    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_1d1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d1
    :goto_1d1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v6, :cond_1d8

    return-void

    :cond_1d8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_1d1

    :cond_1dc
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1e7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: single part"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e7
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_206

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_206
    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_229

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: subtype "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_229
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v0, :cond_235

    const-string v0, "application"

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v0, "octet-stream"

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    :cond_235
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_254

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: cParams "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_254
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_273

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: id "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_273
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_292

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: description "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_292
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_2b1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: encoding "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_2d0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: size "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2d0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-gez v0, :cond_2dc

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2dc
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v9, "text"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_311

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_305

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: lines "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_305
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v0, :cond_394

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_311
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v9, "message"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_366

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v9, "rfc822"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_366

    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    new-array v0, v7, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    new-instance v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v9, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    aput-object v9, v0, v5

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_35a

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: lines "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_35a
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v0, :cond_394

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_366
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_394

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_394
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v8, :cond_3a9

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_3a8

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: parse DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3a8
    return-void

    :cond_3a9
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_3c1

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_3c0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c0
    return-void

    :cond_3c1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_413

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_3e6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: disposition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3e6
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_405

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: dParams "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_405
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v8, :cond_44e

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_413
    if-eq v0, v4, :cond_440

    if-ne v0, v3, :cond_418

    goto :goto_440

    :cond_418
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BODYSTRUCTURE parse error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": bad single part disposition, b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_440
    :goto_440
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_44b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_44b
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    :cond_44e
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_460

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_45f

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: disposition DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_45f
    return-void

    :cond_460
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v1, :cond_487

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_4aa

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: language len "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4aa

    :cond_487
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4aa

    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_4aa

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4aa
    :goto_4aa
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v6, :cond_4bc

    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_4bb

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: all DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4bb
    return-void

    :cond_4bc
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_4aa
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    :cond_f
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_f

    return-void

    :cond_1b
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_80

    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    :cond_11
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_2c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: parameter name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2c
    if-nez v0, :cond_53

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": null name in parameter list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_6e

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6e
    invoke-virtual {v2, v0, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_11

    const-string p1, "DONE"

    invoke-virtual {v2, v1, p1}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    return-object v1

    :cond_80
    const/16 v2, 0x4e

    if-eq v0, v2, :cond_91

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_89

    goto :goto_91

    :cond_89
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "Parameter list parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    :goto_91
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_9c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9c
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    return-object v1
.end method


# virtual methods
.method public isMulti()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isNested()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isSingle()Z
    .registers 3

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
