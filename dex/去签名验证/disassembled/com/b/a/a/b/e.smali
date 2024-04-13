.class public final Lcom/b/a/a/b/e;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 v0, 0x0

    :goto_12
    sput-object v0, Lcom/b/a/a/b/e;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/b/a/a/b/e;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/b/e;->b:Ljava/io/IOException;

    return-object v0
.end method

.method public final a(Ljava/io/IOException;)V
    .registers 6

    iget-object v0, p0, Lcom/b/a/a/b/e;->b:Ljava/io/IOException;

    sget-object v1, Lcom/b/a/a/b/e;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_11

    :try_start_6
    sget-object v1, Lcom/b/a/a/b/e;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_11} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    iput-object p1, p0, Lcom/b/a/a/b/e;->b:Ljava/io/IOException;

    return-void
.end method
