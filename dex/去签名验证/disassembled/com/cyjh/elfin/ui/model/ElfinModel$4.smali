.class public final Lcom/cyjh/elfin/ui/model/ElfinModel$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/common/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/model/ElfinModel;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/model/ElfinModel;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/model/ElfinModel;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$4;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/cyjh/elfin/ui/model/ElfinModel$4;->a:Lcom/cyjh/elfin/ui/model/ElfinModel;

    invoke-static {v0, p1}, Lcom/cyjh/elfin/ui/model/ElfinModel;->a(Lcom/cyjh/elfin/ui/model/ElfinModel;Ljava/util/ArrayList;)V

    :cond_9
    return-void
.end method
