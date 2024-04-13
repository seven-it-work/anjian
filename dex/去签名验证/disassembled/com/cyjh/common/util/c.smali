.class public final Lcom/cyjh/common/util/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private e()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method private f()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/common/util/c;->a:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/cyjh/common/util/c;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/common/util/c;

    invoke-direct {v0}, Lcom/cyjh/common/util/c;-><init>()V

    return-object v0
.end method
