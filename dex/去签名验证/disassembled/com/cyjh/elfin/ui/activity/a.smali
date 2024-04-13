.class final synthetic Lcom/cyjh/elfin/ui/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/ui/activity/a;

    invoke-direct {v0}, Lcom/cyjh/elfin/ui/activity/a;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/ui/activity/a;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->f()V

    return-void
.end method
