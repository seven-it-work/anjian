.class final Lcom/google/a/a/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/a/c/d;->a()Lcom/google/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/a/a/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/c/d;


# direct methods
.method constructor <init>(Lcom/google/a/a/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/a/c/d$1;->a:Lcom/google/a/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/a/c/f;Lcom/google/a/a/c/f;)I
    .registers 2

    iget p0, p0, Lcom/google/a/a/c/f;->d:I

    iget p1, p1, Lcom/google/a/a/c/f;->d:I

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/a/a/c/f;

    check-cast p2, Lcom/google/a/a/c/f;

    iget p1, p1, Lcom/google/a/a/c/f;->d:I

    iget p2, p2, Lcom/google/a/a/c/f;->d:I

    sub-int/2addr p1, p2

    return p1
.end method
