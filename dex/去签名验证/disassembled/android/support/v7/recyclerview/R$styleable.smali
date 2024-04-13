.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
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

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x6

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x9

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0xa

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x7

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x8

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->CoordinatorLayout_Layout:[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Landroid/support/v7/recyclerview/R$styleable;->FontFamily:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->FontFamilyFont:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    nop

    :array_2a
    .array-data 4
        0x7f010114
        0x7f010115
    .end array-data

    :array_32
    .array-data 4
        0x10100b3
        0x7f010116
        0x7f010117
        0x7f010118
        0x7f010119
        0x7f01011a
        0x7f01011b
    .end array-data

    :array_44
    .array-data 4
        0x7f010131
        0x7f010132
        0x7f010133
        0x7f010134
        0x7f010135
        0x7f010136
    .end array-data

    :array_54
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f010137
        0x7f010138
        0x7f010139
    .end array-data

    :array_64
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f010169
        0x7f01016a
        0x7f01016b
        0x7f01016c
        0x7f01016d
        0x7f01016e
        0x7f01016f
        0x7f010170
        0x7f010171
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
