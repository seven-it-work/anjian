.class final Lcom/cyjh/event/Injector$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/event/Injector;->g(Lcom/cyjh/event/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/cyjh/event/Injector;->setSyncReturnValue(ILjava/lang/String;)V

    return-void
.end method
