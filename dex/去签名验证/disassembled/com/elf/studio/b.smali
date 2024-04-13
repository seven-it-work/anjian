.class public final Lcom/elf/studio/b;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0xbb8

.field private static final B:Ljava/lang/String; = "ElfStudioUtil"

.field public static final a:I = -0x1

.field public static final b:I = 0x2711

.field public static final c:I = 0x2712

.field public static final d:I = 0x2713

.field public static final e:I = 0x2714

.field public static final f:I = 0x2715

.field public static final g:I = 0x2716

.field public static final h:I = 0x2775

.field public static final i:I = 0x2776

.field public static final j:I = 0x2777

.field public static final k:I = 0x2778

.field public static final l:I = 0x2779

.field public static final m:I = 0x277a

.field public static final n:I = 0x277b

.field public static final o:I = 0x277c

.field public static final p:I = 0x277d

.field public static final q:I = 0x277e

.field public static final r:I = 0x277f

.field public static final s:I = 0x2780

.field public static final t:I = 0x2781

.field public static final u:I = 0x2782

.field public static final v:I = 0x0

.field public static final w:I = -0x1

.field public static final x:I = 0x3f1

.field public static final y:I = 0xbb8

.field public static final z:I = 0x3f2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/hlzn/socketclient/c/a;)Lcom/elf/studio/a/a;
    .registers 12

    new-instance v10, Lcom/elf/studio/a/a;

    iget v1, p0, Lcom/hlzn/socketclient/c/a;->a:I

    iget v2, p0, Lcom/hlzn/socketclient/c/a;->b:I

    iget-object v3, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/hlzn/socketclient/c/a;->d:J

    iget-object v6, p0, Lcom/hlzn/socketclient/c/a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/hlzn/socketclient/c/a;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/hlzn/socketclient/c/a;->g:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/hlzn/socketclient/c/a;->h:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/elf/studio/a/a;-><init>(IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method private static a()Lcom/elf/studio/b;
    .registers 1

    new-instance v0, Lcom/elf/studio/b;

    invoke-direct {v0}, Lcom/elf/studio/b;-><init>()V

    return-object v0
.end method

.method private static b()V
    .registers 0

    return-void
.end method

.method private static c()V
    .registers 2

    const-string v0, "ElfStudioUtil"

    const-string v1, "cloudIMInit --> "

    invoke-static {v0, v1}, Lcom/hlzn/socketclient/f/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d()V
    .registers 0

    return-void
.end method

.method private static e()V
    .registers 0

    return-void
.end method

.method private static f()V
    .registers 0

    return-void
.end method

.method private static g()V
    .registers 0

    return-void
.end method

.method private static h()V
    .registers 0

    return-void
.end method

.method private static i()V
    .registers 0

    return-void
.end method

.method private static j()V
    .registers 0

    return-void
.end method

.method private static k()V
    .registers 0

    return-void
.end method

.method private static l()V
    .registers 0

    return-void
.end method

.method private static m()V
    .registers 0

    return-void
.end method

.method private static n()V
    .registers 0

    return-void
.end method

.method private static o()V
    .registers 0

    return-void
.end method

.method private static p()V
    .registers 0

    return-void
.end method

.method private static q()V
    .registers 0

    return-void
.end method

.method private static r()V
    .registers 0

    return-void
.end method

.method private static s()V
    .registers 0

    return-void
.end method

.method private static t()V
    .registers 0

    return-void
.end method

.method private static u()Z
    .registers 1

    sget-boolean v0, Lcom/hlzn/socketclient/b/a;->v:Z

    return v0
.end method

.method private static v()V
    .registers 0

    return-void
.end method

.method private static w()V
    .registers 0

    return-void
.end method
