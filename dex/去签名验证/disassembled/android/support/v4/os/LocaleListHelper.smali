.class final Landroid/support/v4/os/LocaleListHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    new-instance v1, Landroid/support/v4/os/LocaleListHelper;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    const-string v0, "en-Latn"

    invoke-static {v0}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V
    .registers 11
    .param p1    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "topLocale is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const/4 v0, 0x0

    if-nez p2, :cond_12

    const/4 v1, 0x0

    goto :goto_15

    :cond_12
    iget-object v1, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    :goto_15
    const/4 v2, 0x0

    :goto_16
    const/4 v3, -0x1

    if-ge v2, v1, :cond_27

    iget-object v4, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_28

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    const/4 v2, -0x1

    :goto_28
    const/4 v4, 0x1

    if-ne v2, v3, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    add-int/2addr v5, v1

    new-array v6, v5, [Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v0

    if-ne v2, v3, :cond_4e

    const/4 p1, 0x0

    :goto_3c
    if-ge p1, v1, :cond_73

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v2

    move p1, v2

    goto :goto_3c

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    if-ge p1, v2, :cond_61

    add-int/lit8 v3, p1, 0x1

    iget-object v7, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object p1, v7, p1

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v3

    move p1, v3

    goto :goto_4f

    :cond_61
    add-int/2addr v2, v4

    :goto_62
    if-ge v2, v1, :cond_73

    iget-object p1, p2, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_78
    if-ge v0, v5, :cond_8f

    aget-object p2, v6, v0

    invoke-static {p2}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, v5, -0x1

    if-ge v0, p2, :cond_8c

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    :cond_8f
    iput-object v6, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .registers 8
    .param p1    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-nez v0, :cond_f

    sget-object p1, Landroid/support/v4/os/LocaleListHelper;->sEmptyList:[Ljava/util/Locale;

    iput-object p1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    const-string p1, ""

    :goto_c
    iput-object p1, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-void

    :cond_f
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1d
    array-length v4, p1

    if-ge v3, v4, :cond_7b

    aget-object v4, p1, v3

    if-nez v4, :cond_3d

    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is a repetition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    aput-object v4, v0, v3

    invoke-static {v4}, Landroid/support/v4/os/LocaleHelper;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_75

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_75
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_7b
    iput-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_9

    const/4 p1, 0x0

    return-object p1

    :cond_9
    iget-object p2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object p1, p2, p1

    return-object p1
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_f

    const/4 p1, -0x1

    return p1

    :cond_f
    const v0, 0x7fffffff

    if-eqz p2, :cond_20

    sget-object p2, Landroid/support/v4/os/LocaleListHelper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, p2}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result p2

    if-nez p2, :cond_1d

    return v1

    :cond_1d
    if-ge p2, v0, :cond_20

    goto :goto_23

    :cond_20
    const p2, 0x7fffffff

    :goto_23
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v4/os/LocaleListHelper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v2

    if-nez v2, :cond_3e

    return v1

    :cond_3e
    if-ge v2, p2, :cond_27

    move p2, v2

    goto :goto_27

    :cond_42
    if-ne p2, v0, :cond_45

    return v1

    :cond_45
    return p2
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/os/LocaleListHelper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    if-lez v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const p1, 0x7fffffff

    return p1
.end method

.method static forLanguageTags(Ljava/lang/String;)Landroid/support/v4/os/LocaleListHelper;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_27

    :cond_9
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_21

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    new-instance p0, Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {p0, v0}, Landroid/support/v4/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    return-object p0

    :cond_27
    :goto_27
    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;

    move-result-object p0

    return-object p0
.end method

.method static getAdjustedDefault()Landroid/support/v4/os/LocaleListHelper;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    invoke-static {}, Landroid/support/v4/os/LocaleListHelper;->getDefault()Landroid/support/v4/os/LocaleListHelper;

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static getDefault()Landroid/support/v4/os/LocaleListHelper;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    sput-object v0, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    if-eqz v2, :cond_26

    sget-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v1

    return-object v0

    :cond_26
    new-instance v2, Landroid/support/v4/os/LocaleListHelper;

    sget-object v3, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {v2, v0, v3}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    sput-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object v2, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    :cond_31
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    monitor-exit v1

    return-object v0

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v0
.end method

.method static getEmptyLocaleList()Landroid/support/v4/os/LocaleListHelper;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListHelper;

    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    return-object p0

    :cond_11
    const-string p0, ""

    return-object p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .registers 2

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .registers 7
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_a

    return v3

    :cond_a
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v4}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    return v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    return v0
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .registers 6
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    return v2

    :cond_18
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v2

    :cond_25
    invoke-static {p0}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v1

    :cond_44
    return v2

    :cond_45
    return v1

    :cond_46
    invoke-static {p1}, Landroid/support/v4/os/LocaleListHelper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    return v1

    :cond_51
    return v2
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;)V
    .registers 2
    .param p0    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/os/LocaleListHelper;->setDefault(Landroid/support/v4/os/LocaleListHelper;I)V

    return-void
.end method

.method static setDefault(Landroid/support/v4/os/LocaleListHelper;I)V
    .registers 4
    .param p0    # Landroid/support/v4/os/LocaleListHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locales is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "locales is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    sget-object v0, Landroid/support/v4/os/LocaleListHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0, p1}, Landroid/support/v4/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sLastExplicitlySetLocaleList:Landroid/support/v4/os/LocaleListHelper;

    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    if-nez p1, :cond_2f

    sget-object p0, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    :goto_2c
    sput-object p0, Landroid/support/v4/os/LocaleListHelper;->sDefaultAdjustedLocaleList:Landroid/support/v4/os/LocaleListHelper;

    goto :goto_39

    :cond_2f
    new-instance p0, Landroid/support/v4/os/LocaleListHelper;

    sget-object p1, Landroid/support/v4/os/LocaleListHelper;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v1, Landroid/support/v4/os/LocaleListHelper;->sDefaultLocaleList:Landroid/support/v4/os/LocaleListHelper;

    invoke-direct {p0, p1, v1}, Landroid/support/v4/os/LocaleListHelper;-><init>(Ljava/util/Locale;Landroid/support/v4/os/LocaleListHelper;)V

    goto :goto_2c

    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3b

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/support/v4/os/LocaleListHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroid/support/v4/os/LocaleListHelper;

    iget-object p1, p1, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    array-length v3, p1

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iget-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    iget-object v3, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2b
    return v0
.end method

.method final get(I)Ljava/util/Locale;
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object p1, v0, p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method final getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method final getFirstMatchIndex([Ljava/lang/String;)I
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    return p1
.end method

.method final getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    return p1
.end method

.method final getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/os/LocaleListHelper;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method final getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/os/LocaleListHelper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method final indexOf(Ljava/util/Locale;)I
    .registers 4
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method final isEmpty()Z
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method final size()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method final toLanguageTags()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/os/LocaleListHelper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/os/LocaleListHelper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_23

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_26
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
