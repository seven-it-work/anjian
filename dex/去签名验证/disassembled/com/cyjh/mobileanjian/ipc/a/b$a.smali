.class public final Lcom/cyjh/mobileanjian/ipc/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x10


# instance fields
.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field final synthetic o:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method public constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->o:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->g:I

    iput-object p3, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->k:Ljava/lang/String;

    iput p7, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->l:I

    iput p8, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->m:I

    iput-object p9, p0, Lcom/cyjh/mobileanjian/ipc/a/b$a;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
