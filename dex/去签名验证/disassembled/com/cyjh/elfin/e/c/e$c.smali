.class final Lcom/cyjh/elfin/e/c/e$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/e/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/cyjh/elfin/e/c/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/elfin/e/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/e/c/e;-><init>(B)V

    sput-object v0, Lcom/cyjh/elfin/e/c/e$c;->a:Lcom/cyjh/elfin/e/c/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cyjh/elfin/e/c/e;
    .registers 1

    sget-object v0, Lcom/cyjh/elfin/e/c/e$c;->a:Lcom/cyjh/elfin/e/c/e;

    return-object v0
.end method
