.class public final Lcom/bumptech/glide/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/String; = "com.bumptech.glide.gifdecoder"

.field public static final c:Ljava/lang/String; = "debug"

.field public static final d:Ljava/lang/String; = ""

.field public static final e:I = -0x1

.field public static final f:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/c/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
