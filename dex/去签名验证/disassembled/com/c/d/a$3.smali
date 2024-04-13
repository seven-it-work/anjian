.class final Lcom/c/d/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/c/d/a;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/Class;

.field private final synthetic d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/c/d/a$3;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/c/d/a$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/c/d/a$3;->c:[Ljava/lang/Class;

    iput-object p4, p0, Lcom/c/d/a$3;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/c/d/a$3;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/c/d/a$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/c/d/a$3;->c:[Ljava/lang/Class;

    iget-object v5, p0, Lcom/c/d/a$3;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/c/d/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
