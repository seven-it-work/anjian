.class public abstract Lcom/cyjh/common/util/toast/q$f;
.super Lcom/cyjh/common/util/toast/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cyjh/common/util/toast/o$b<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/cyjh/common/util/toast/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cyjh/common/util/toast/q$b<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/cyjh/common/util/toast/q$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyjh/common/util/toast/q$b<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cyjh/common/util/toast/o$b;-><init>()V

    iput-object p1, p0, Lcom/cyjh/common/util/toast/q$f;->d:Lcom/cyjh/common/util/toast/q$b;

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method
