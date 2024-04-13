.class public abstract Lcom/cyjh/event/accessibility/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/event/accessibility/a$d;,
        Lcom/cyjh/event/accessibility/a$e;,
        Lcom/cyjh/event/accessibility/a$a;,
        Lcom/cyjh/event/accessibility/a$b;,
        Lcom/cyjh/event/accessibility/a$g;,
        Lcom/cyjh/event/accessibility/a$f;,
        Lcom/cyjh/event/accessibility/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static c:Landroid/graphics/Rect; = null

.field public static final d:Ljava/lang/String; = "android.view.View"

.field public static final e:Ljava/lang/String; = "android.widget.TextView"

.field public static final f:Ljava/lang/String; = "android.widget.ImageView"

.field public static final g:Ljava/lang/String; = "android.widget.Button"

.field public static final h:Ljava/lang/String; = "android.widget.ImageButton"

.field public static final i:Ljava/lang/String; = "android.widget.EditText"

.field public static final j:Ljava/lang/String; = "android.widget.ListView"

.field public static final k:Ljava/lang/String; = "android.widget.LinearLayout"

.field public static final l:Ljava/lang/String; = "android.view.ViewGroup"

.field public static final m:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field protected final a:Z

.field protected final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/cyjh/event/accessibility/a;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/event/accessibility/a;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/cyjh/event/accessibility/a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ZB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/cyjh/event/accessibility/a;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method private static a(Landroid/graphics/Rect;)Lcom/cyjh/event/accessibility/a;
    .registers 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$e;

    invoke-direct {v0, p0}, Lcom/cyjh/event/accessibility/a$e;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/cyjh/event/accessibility/a;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/event/accessibility/a$c;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/event/accessibility/a;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":id/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/cyjh/event/accessibility/a$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cyjh/event/accessibility/a$c;-><init>(Ljava/lang/String;B)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;Z)Lcom/cyjh/event/accessibility/a;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cyjh/event/accessibility/a$f;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/cyjh/event/accessibility/a;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/event/accessibility/a$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Z)Lcom/cyjh/event/accessibility/a;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cyjh/event/accessibility/a$g;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Lcom/cyjh/event/accessibility/a;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/cyjh/event/accessibility/a$b;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;Z)Lcom/cyjh/event/accessibility/a;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/cyjh/event/accessibility/a$a;

    invoke-direct {v0, p0, p1}, Lcom/cyjh/event/accessibility/a$a;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end method
