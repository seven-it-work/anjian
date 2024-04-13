.class final Lcom/cyjh/event/Injector$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/event/Injector;->h(Lcom/cyjh/event/b;)V
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
.method public final a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/cyjh/event/Injector;->setSyncReturnValue(ILjava/lang/String;)V

    return-void
.end method
