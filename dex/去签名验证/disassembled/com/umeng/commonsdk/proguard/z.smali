.class public Lcom/umeng/commonsdk/proguard/z;
.super Lcom/umeng/commonsdk/proguard/ag;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lcom/umeng/commonsdk/proguard/be;

.field private static final k:Lcom/umeng/commonsdk/proguard/au;

.field private static final l:Lcom/umeng/commonsdk/proguard/au;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/z;->j:Lcom/umeng/commonsdk/proguard/be;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/z;->k:Lcom/umeng/commonsdk/proguard/au;

    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/z;->l:Lcom/umeng/commonsdk/proguard/au;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/az;)Lcom/umeng/commonsdk/proguard/z;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->j()Lcom/umeng/commonsdk/proguard/be;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->l()Lcom/umeng/commonsdk/proguard/au;

    move-result-object v2

    iget-byte v3, v2, Lcom/umeng/commonsdk/proguard/au;->b:B

    if-eqz v3, :cond_31

    iget-short v3, v2, Lcom/umeng/commonsdk/proguard/au;->c:S

    packed-switch v3, :pswitch_data_3a

    :cond_12
    iget-byte v2, v2, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-static {p0, v2}, Lcom/umeng/commonsdk/proguard/bc;->a(Lcom/umeng/commonsdk/proguard/az;B)V

    goto :goto_2d

    :pswitch_18
    iget-byte v3, v2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_12

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->w()I

    move-result v1

    goto :goto_2d

    :pswitch_23
    iget-byte v3, v2, Lcom/umeng/commonsdk/proguard/au;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_12

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->z()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->m()V

    goto :goto_5

    :cond_31
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/az;->k()V

    new-instance p0, Lcom/umeng/commonsdk/proguard/z;

    invoke-direct {p0, v1, v0}, Lcom/umeng/commonsdk/proguard/z;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    return v0
.end method

.method public b(Lcom/umeng/commonsdk/proguard/az;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    sget-object v0, Lcom/umeng/commonsdk/proguard/z;->j:Lcom/umeng/commonsdk/proguard/be;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/be;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/z;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/umeng/commonsdk/proguard/z;->k:Lcom/umeng/commonsdk/proguard/au;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/z;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    :cond_1a
    sget-object v0, Lcom/umeng/commonsdk/proguard/z;->l:Lcom/umeng/commonsdk/proguard/au;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(Lcom/umeng/commonsdk/proguard/au;)V

    iget v0, p0, Lcom/umeng/commonsdk/proguard/z;->i:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/az;->a(I)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->c()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->d()V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->b()V

    return-void
.end method
