.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private debug:Z

.field private input:Ljava/io/DataInputStream;

.field private out:Ljava/io/PrintStream;

.field private output:Ljava/io/PrintWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    iput-object p4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apop.enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    const/4 v2, -0x1

    if-ne p2, v2, :cond_34

    const/16 p2, 0x6e

    :cond_34
    if-eqz p3, :cond_5b

    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG POP3: connecting to host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isSSL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5b

    :catch_58
    move-exception p1

    goto/16 :goto_d6

    :cond_5b
    :goto_5b
    invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    new-instance p1, Ljava/io/DataInputStream;

    new-instance p2, Ljava/io/BufferedInputStream;

    iget-object p5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {p5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-direct {p2, p5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    new-instance p1, Ljava/io/PrintWriter;

    new-instance p2, Ljava/io/BufferedWriter;

    new-instance p5, Ljava/io/OutputStreamWriter;

    iget-object p6, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {p6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p6

    const-string p7, "iso-8859-1"

    invoke-direct {p5, p6, p7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p2, p5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_90} :catch_58

    iget-boolean p2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez p2, :cond_a1

    :try_start_94
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_99

    :catchall_99
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connect failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    if-eqz v0, :cond_d5

    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 p5, 0x3c

    invoke-virtual {p2, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    iget-object p5, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 p6, 0x3e

    invoke-virtual {p5, p6, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p5

    if-eq p2, v2, :cond_c0

    if-eq p5, v2, :cond_c0

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/2addr p5, v3

    invoke-virtual {p1, p2, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    :cond_c0
    if-eqz p3, :cond_d5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DEBUG POP3: APOP challenge: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d5
    return-void

    :goto_d6
    :try_start_d6
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_db

    :catchall_db
    throw p1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_13
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_23} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_23} :catch_28

    invoke-static {p1}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_28
    return-object v0
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    new-instance v0, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;

    invoke-direct {v0, p2}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;-><init>(I)V

    const/16 p2, 0xa

    const/16 v1, 0xa

    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    if-gez v2, :cond_1b

    goto :goto_4c

    :cond_1b
    if-ne v1, p2, :cond_5d

    const/16 v1, 0x2e

    if-ne v2, v1, :cond_5d

    iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    :cond_2a
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5e

    iget-boolean p2, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz p2, :cond_3d

    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->write(I)V

    :cond_3d
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iget-boolean p2, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz p2, :cond_4c

    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->write(I)V

    :cond_4c
    :goto_4c
    if-gez v2, :cond_56

    new-instance p1, Ljava/io/EOFException;

    const-string p2, "EOF on socket"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    invoke-virtual {v0}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    return-object p1

    :cond_5d
    move v1, v2

    :cond_5e
    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->write(I)V

    iget-boolean v2, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->write(I)V

    goto :goto_12
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-nez v0, :cond_c

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Folder is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    if-eqz p1, :cond_41

    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_41
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5c

    iget-boolean p1, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    const-string v0, "S: EOF"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_54
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF on socket"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_73
    new-instance v0, Lcom/sun/mail/pop3/Response;

    invoke-direct {v0}, Lcom/sun/mail/pop3/Response;-><init>()V

    const-string v1, "+OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_84

    iput-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_8f

    :cond_84
    const-string v1, "-ERR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    :goto_8f
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_9e

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    :cond_9e
    return-object v0

    :cond_9f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 8

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p0

    if-lt v1, v3, :cond_10

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_10
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method


# virtual methods
.method declared-synchronized dele(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    :cond_a
    return-void
.end method

.method declared-synchronized list(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    const/4 v0, -0x1

    iget-boolean v1, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_32

    if-eqz v1, :cond_2f

    :try_start_1c
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2e} :catch_2f
    .catchall {:try_start_1c .. :try_end_2e} :catchall_32

    goto :goto_30

    :catch_2f
    :cond_2f
    const/4 p1, -0x1

    :goto_30
    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "LIST"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "APOP "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_28
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    goto :goto_5e

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "USER "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_4f

    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_4b

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_4b
    :try_start_4b
    const-string p1, "USER command failed"
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_4f
    :try_start_4f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PASS "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :goto_5e
    iget-boolean p2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez p2, :cond_6e

    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_6a

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_6a
    :try_start_6a
    const-string p1, "login failed"
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_70

    monitor-exit p0

    return-object p1

    :cond_6e
    monitor-exit p0

    return-object v1

    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized noop()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized quit()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "QUIT"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1f

    :try_start_a
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_17

    :try_start_f
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_34

    monitor-exit p0

    return v1

    :catchall_17
    move-exception v1

    :try_start_18
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    throw v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    :catchall_1f
    move-exception v1

    :try_start_20
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2c

    :try_start_25
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    throw v1

    :catchall_2c
    move-exception v1

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    throw v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RETR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized rset()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "RSET"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "STAT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    if-eqz v2, :cond_2f

    :try_start_14
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v0, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/pop3/Status;->total:I

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/pop3/Status;->size:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_31

    :catch_2f
    :cond_2f
    monitor-exit p0

    return-object v1

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIDL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_30

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    monitor-exit p0

    return-object v1

    :cond_1a
    :try_start_1a
    iget-object v0, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2e

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_30

    monitor-exit p0

    return-object p1

    :cond_2e
    monitor-exit p0

    return-object v1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "UIDL"

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_47

    const/4 v2, 0x0

    if-nez v1, :cond_11

    monitor-exit p0

    return v2

    :cond_11
    :try_start_11
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_18
    :goto_18
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_47

    if-nez v0, :cond_21

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_21
    const/16 v3, 0x20

    :try_start_23
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    array-length v5, p1

    if-gt v4, v5, :cond_18

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_47

    goto :goto_18

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method
