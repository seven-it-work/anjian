.class public final Lcom/hlzn/socketclient/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/hlzn/socketclient/e/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/c;->a:Lcom/hlzn/socketclient/e/a;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

.method private a(Lcom/hlzn/socketclient/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/c;->a:Lcom/hlzn/socketclient/e/a;

    return-void
.end method
