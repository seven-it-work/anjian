.class public final Lcom/a/a/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/io/BufferedReader;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/a/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/a/a/a/c;->a:Ljava/io/BufferedReader;

    iput-object p2, p0, Lcom/a/a/a/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/a/a/a/c;->b:Ljava/util/List;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/a/a/a/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, p0, Lcom/a/a/a/c;->c:Lcom/a/a/a/d;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_0

    :catch_14
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/a/a/a/c;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
