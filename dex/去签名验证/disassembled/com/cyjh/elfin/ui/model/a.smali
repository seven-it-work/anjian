.class final synthetic Lcom/cyjh/elfin/ui/model/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/ui/model/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/ui/model/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/ui/model/a;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    const-string v2, "\u5de5\u4f5c\u5ba4\u89e3\u7ed1\uff01"

    const/16 v3, 0x2713

    invoke-direct {v1, v3, v2}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
