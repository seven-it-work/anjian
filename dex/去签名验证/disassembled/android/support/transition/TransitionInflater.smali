.class public Landroid/support/transition/TransitionInflater;
.super Ljava/lang/Object;


# static fields
.field private static final CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10

    const-string v0, "class"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance p1, Landroid/view/InflateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " tag must have a \'class\' attribute"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :try_start_20
    sget-object p3, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    monitor-enter p3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_5f

    :try_start_23
    sget-object v1, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    if-nez v1, :cond_4c

    iget-object v3, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_4c

    sget-object v1, Landroid/support/transition/TransitionInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v3, Landroid/support/transition/TransitionInflater;->CONSTRUCTORS:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p3

    return-object p1

    :catchall_5c
    move-exception p1

    monitor-exit p3
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p1

    new-instance p3, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not instantiate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " class "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    instance-of v1, p3, Landroid/support/transition/TransitionSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, p3

    check-cast v1, Landroid/support/transition/TransitionSet;

    goto :goto_e

    :cond_d
    move-object v1, v2

    :goto_e
    move-object v3, v2

    :cond_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_177

    :cond_1c
    const/4 v5, 0x1

    if-eq v4, v5, :cond_177

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fade"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    new-instance v3, Landroid/support/transition/Fade;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Fade;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_37
    const-string v5, "changeBounds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    new-instance v3, Landroid/support/transition/ChangeBounds;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_48
    const-string v5, "slide"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    new-instance v3, Landroid/support/transition/Slide;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_59
    const-string v5, "explode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    new-instance v3, Landroid/support/transition/Explode;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/Explode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_6a
    const-string v5, "changeImageTransform"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    new-instance v3, Landroid/support/transition/ChangeImageTransform;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeImageTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_7b
    const-string v5, "changeTransform"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    new-instance v3, Landroid/support/transition/ChangeTransform;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeTransform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_8c
    const-string v5, "changeClipBounds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    new-instance v3, Landroid/support/transition/ChangeClipBounds;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeClipBounds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_9d
    const-string v5, "autoTransition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    new-instance v3, Landroid/support/transition/AutoTransition;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/AutoTransition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_ae
    const-string v5, "changeScroll"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    new-instance v3, Landroid/support/transition/ChangeScroll;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/ChangeScroll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_bf
    const-string v5, "transitionSet"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    new-instance v3, Landroid/support/transition/TransitionSet;

    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_143

    :cond_d0
    const-string v5, "transition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e3

    const-class v3, Landroid/support/transition/Transition;

    const-string v4, "transition"

    invoke-direct {p0, p2, v3, v4}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    goto :goto_143

    :cond_e3
    const-string v5, "targets"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ef

    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/TransitionInflater;->getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V

    goto :goto_143

    :cond_ef
    const-string v5, "arcMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    if-nez p3, :cond_101

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of arcMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_101
    new-instance v4, Landroid/support/transition/ArcMotion;

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/support/transition/ArcMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_108
    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    goto :goto_143

    :cond_10c
    const-string v5, "pathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    if-nez p3, :cond_11e

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of pathMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11e
    const-class v4, Landroid/support/transition/PathMotion;

    const-string v5, "pathMotion"

    invoke-direct {p0, p2, v4, v5}, Landroid/support/transition/TransitionInflater;->createCustom(Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/PathMotion;

    goto :goto_108

    :cond_129
    const-string v5, "patternPathMotion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15f

    if-nez p3, :cond_13b

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid use of patternPathMotion element"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13b
    new-instance v4, Landroid/support/transition/PatternPathMotion;

    iget-object v5, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p2}, Landroid/support/transition/PatternPathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_108

    :goto_143
    if-eqz v3, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-nez v4, :cond_14e

    invoke-direct {p0, p1, p2, v3}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    :cond_14e
    if-eqz v1, :cond_155

    invoke-virtual {v1, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    goto/16 :goto_e

    :cond_155
    if-eqz p3, :cond_f

    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Could not add transition to another transition."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15f
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown scene name: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_177
    return-object v3
.end method

.method private createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_50

    :cond_12
    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transitionManager"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    new-instance v1, Landroid/support/transition/TransitionManager;

    invoke-direct {v1}, Landroid/support/transition/TransitionManager;-><init>()V

    goto :goto_5

    :cond_2a
    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-eqz v1, :cond_38

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/transition/TransitionInflater;->loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V

    goto :goto_5

    :cond_38
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown scene name: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_50
    return-object v1
.end method

.method public static from(Landroid/content/Context;)Landroid/support/transition/TransitionInflater;
    .registers 2

    new-instance v0, Landroid/support/transition/TransitionInflater;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTargetIds(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_b7

    :cond_11
    const/4 v3, 0x1

    if-eq v1, v3, :cond_b7

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "target"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-object v1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/transition/Styleable;->TRANSITION_TARGET:[I

    invoke-virtual {v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v5, "targetId"

    const/4 v6, 0x0

    invoke-static {v1, p1, v5, v3, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {p3, v5}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    goto :goto_83

    :cond_38
    const-string v5, "excludeId"

    invoke-static {v1, p1, v5, v4, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    goto :goto_83

    :cond_44
    const-string v4, "targetName"

    const/4 v5, 0x4

    invoke-static {v1, p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_51

    invoke-virtual {p3, v4}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    goto :goto_83

    :cond_51
    const-string v4, "excludeName"

    const/4 v5, 0x5

    invoke-static {v1, p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5e

    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    goto :goto_83

    :cond_5e
    const-string v4, "excludeClass"

    invoke-static {v1, p1, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    :try_start_66
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3, v4, v3}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    goto :goto_83

    :catch_6e
    move-exception p1

    goto :goto_88

    :cond_70
    const-string v3, "targetClass"

    invoke-static {v1, p1, v3, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_76} :catch_6e

    if-eqz v3, :cond_83

    :try_start_78
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_83

    :catch_80
    move-exception p1

    move-object v2, v3

    goto :goto_88

    :cond_83
    :goto_83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_4

    :goto_88
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not create "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_9f
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown scene name: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b7
    return-void
.end method

.method private loadTransition(Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroid/support/transition/TransitionManager;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/transition/Styleable;->TRANSITION_MANAGER:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "transition"

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    const-string v2, "fromScene"

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1c

    move-object v2, v3

    goto :goto_22

    :cond_1c
    iget-object v4, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, v2, v4}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v2

    :goto_22
    const-string v4, "toScene"

    const/4 v5, 0x1

    invoke-static {p1, p2, v4, v5, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    if-gez p2, :cond_2c

    goto :goto_32

    :cond_2c
    iget-object v1, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, v1}, Landroid/support/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;

    move-result-object v3

    :goto_32
    if-ltz v0, :cond_59

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionInflater;->inflateTransition(I)Landroid/support/transition/Transition;

    move-result-object p2

    if-eqz p2, :cond_59

    if-nez v3, :cond_50

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No toScene for transition ID "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    if-nez v2, :cond_56

    invoke-virtual {p4, v3, p2}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    goto :goto_59

    :cond_56
    invoke-virtual {p4, v2, v3, p2}, Landroid/support/transition/TransitionManager;->setTransition(Landroid/support/transition/Scene;Landroid/support/transition/Scene;Landroid/support/transition/Transition;)V

    :cond_59
    :goto_59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public inflateTransition(I)Landroid/support/transition/Transition;
    .registers 6

    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/transition/TransitionInflater;->createTransitionFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/support/transition/Transition;)Landroid/support/transition/Transition;

    move-result-object v0
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_13} :catch_3c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_19
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v0

    :catchall_17
    move-exception v0

    goto :goto_47

    :catch_19
    move-exception v0

    :try_start_1a
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3c
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_17

    :goto_47
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method public inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;
    .registers 6

    iget-object v0, p0, Landroid/support/transition/TransitionInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    :try_start_a
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/transition/TransitionInflater;->createTransitionManagerFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/ViewGroup;)Landroid/support/transition/TransitionManager;

    move-result-object p2
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_12} :catch_3e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_18
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p2

    :catchall_16
    move-exception p2

    goto :goto_4c

    :catch_18
    move-exception p2

    :try_start_19
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_3e
    move-exception p2

    new-instance v0, Landroid/view/InflateException;

    invoke-virtual {p2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_16

    :goto_4c
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p2
.end method
