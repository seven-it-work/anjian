.class final Lcom/android/volley/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/m;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/android/volley/m;


# direct methods
.method constructor <init>(Lcom/android/volley/m;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/android/volley/m$1;->b:Lcom/android/volley/m;

    iput-object p2, p0, Lcom/android/volley/m$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p1, Lcom/android/volley/l;->l:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/volley/m$1;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
