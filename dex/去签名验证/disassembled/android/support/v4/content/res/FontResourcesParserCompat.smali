.class public Landroid/support/v4/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroid/support/v4/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :cond_a
    if-eq v0, v1, :cond_14

    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object p0

    return-object p0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 6
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lez v2, :cond_42

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_37

    const/4 p1, 0x0

    :goto_1f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_42

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_37
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_45
    if-eqz v0, :cond_48

    return-object v0

    :cond_48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "font-family"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "font-family"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Landroid/support/compat/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/compat/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/support/compat/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/compat/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/support/compat/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    sget v5, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    sget v6, Landroid/support/compat/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x3

    if-eqz v1, :cond_55

    if-eqz v2, :cond_55

    if-eqz v3, :cond_55

    :goto_3c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v0, :cond_46

    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3c

    :cond_46
    invoke-static {p1, v4}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v0, Landroid/support/v4/provider/FontRequest;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/support/v4/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p1, v0, v5, v6}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroid/support/v4/provider/FontRequest;II)V

    return-object p1

    :cond_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_5a
    :goto_5a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v0, :cond_7f

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-static {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_7b
    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5a

    :cond_7f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_87

    const/4 p0, 0x0

    return-object p0

    :cond_87
    new-instance p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {p0, p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object p0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Landroid/support/compat/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_17

    :cond_15
    sget v0, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_17
    const/16 v1, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_28

    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_2a

    :cond_28
    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_android_fontStyle:I

    :goto_2a
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_font:I

    goto :goto_41

    :cond_3f
    sget v1, Landroid/support/compat/R$styleable;->FontFamilyFont_android_font:I

    :goto_41
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_4c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_57

    invoke-static {p0}, Landroid/support/v4/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4c

    :cond_57
    new-instance p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {p0, v1, v0, v3, v2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZI)V

    return-object p0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    goto :goto_1

    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method
