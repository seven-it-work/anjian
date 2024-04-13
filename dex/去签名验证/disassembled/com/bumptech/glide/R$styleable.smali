.class public final Lcom/bumptech/glide/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x6

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x3

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/bumptech/glide/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/bumptech/glide/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/bumptech/glide/R$styleable;->FontFamily:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/bumptech/glide/R$styleable;->FontFamilyFont:[I

    return-void

    :array_20
    .array-data 4
        0x7f010114
        0x7f010115
    .end array-data

    :array_28
    .array-data 4
        0x10100b3
        0x7f010116
        0x7f010117
        0x7f010118
        0x7f010119
        0x7f01011a
        0x7f01011b
    .end array-data

    :array_3a
    .array-data 4
        0x7f010131
        0x7f010132
        0x7f010133
        0x7f010134
        0x7f010135
        0x7f010136
    .end array-data

    :array_4a
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f010137
        0x7f010138
        0x7f010139
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
