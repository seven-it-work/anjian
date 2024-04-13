.class public final Lcom/bumptech/glide/b/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:[Ljava/io/File;

.field final synthetic b:Lcom/bumptech/glide/b/a;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .registers 7

    iput-object p1, p0, Lcom/bumptech/glide/b/a$d;->b:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/b/a$d;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bumptech/glide/b/a$d;->d:J

    iput-object p5, p0, Lcom/bumptech/glide/b/a$d;->a:[Ljava/io/File;

    iput-object p6, p0, Lcom/bumptech/glide/b/a$d;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[JB)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/b/a$d;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method

.method private a()Lcom/bumptech/glide/b/a$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->b:Lcom/bumptech/glide/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a$d;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bumptech/glide/b/a$d;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/bumptech/glide/b/a$d;->a:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)J
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method private b()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->a:[Ljava/io/File;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
