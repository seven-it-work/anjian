.class public final Lcom/cyjh/common/util/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/common/util/ac$a;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/common/util/ac$a;->a:I

    iput-object p2, p0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/common/util/ac$a;->c:Ljava/lang/String;

    return-void
.end method
