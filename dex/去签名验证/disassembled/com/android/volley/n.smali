.class public final Lcom/android/volley/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/n$a;,
        Lcom/android/volley/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/volley/b$a;

.field public final c:Lcom/android/volley/s;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/s;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/n;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/n;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/volley/n;->b:Lcom/android/volley/b$a;

    iput-object p1, p0, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/n;->d:Z

    iput-object p1, p0, Lcom/android/volley/n;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/volley/n;->b:Lcom/android/volley/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    return-void
.end method

.method public static a(Lcom/android/volley/s;)Lcom/android/volley/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/s;",
            ")",
            "Lcom/android/volley/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/volley/n;

    invoke-direct {v0, p0}, Lcom/android/volley/n;-><init>(Lcom/android/volley/s;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/b$a;",
            ")",
            "Lcom/android/volley/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/volley/n;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/n;-><init>(Ljava/lang/Object;Lcom/android/volley/b$a;)V

    return-object v0
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lcom/android/volley/n;->c:Lcom/android/volley/s;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
