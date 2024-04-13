.class public Lcom/lidroid/xutils/ViewUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/preference/PreferenceActivity;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/view/View;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceActivity;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceGroup;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceGroup;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method private static injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/lidroid/xutils/view/annotation/ContentView;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/view/annotation/ContentView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_39

    :try_start_14
    const-string v7, "setContentView"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/ContentView;->value()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_b2

    array-length v7, v4

    if-lez v7, :cond_b2

    array-length v7, v4

    const/4 v8, 0x0

    :goto_44
    if-lt v8, v7, :cond_47

    goto :goto_b2

    :cond_47
    aget-object v9, v4, v8

    const-class v10, Lcom/lidroid/xutils/view/annotation/ViewInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/ViewInject;

    if-eqz v10, :cond_72

    :try_start_53
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ViewInject;->value()I

    move-result v11

    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ViewInject;->parentId()I

    move-result v10

    invoke-virtual {v2, v11, v10}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_af

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_67} :catch_68

    goto :goto_af

    :catch_68
    move-exception v0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_af

    :cond_72
    const-class v10, Lcom/lidroid/xutils/view/annotation/ResInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/ResInject;

    if-eqz v10, :cond_95

    :try_start_7c
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ResInject;->type()Lcom/lidroid/xutils/view/ResType;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/lidroid/xutils/view/ViewFinder;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/ResInject;->id()I

    move-result v10

    invoke-static {v11, v12, v10}, Lcom/lidroid/xutils/view/ResLoader;->loadRes(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_af

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_94} :catch_68

    goto :goto_af

    :cond_95
    const-class v10, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    if-eqz v10, :cond_af

    :try_start_9f
    invoke-interface {v10}, Lcom/lidroid/xutils/view/annotation/PreferenceInject;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/lidroid/xutils/view/ViewFinder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_af

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_af} :catch_68

    :cond_af
    :goto_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_b2
    :goto_b2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_16a

    array-length v4, v3

    if-lez v4, :cond_16a

    array-length v4, v3

    const/4 v7, 0x0

    :goto_bd
    if-lt v7, v4, :cond_c0

    return-void

    :cond_c0
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_15c

    array-length v10, v9

    if-lez v10, :cond_15c

    array-length v10, v9

    const/4 v11, 0x0

    :goto_cd
    if-lt v11, v10, :cond_d1

    goto/16 :goto_15c

    :cond_d1
    aget-object v12, v9, v11

    invoke-interface {v12}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_14e

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_e2
    const-string v14, "value"

    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_ea} :catch_140

    :try_start_ea
    const-string v5, "parentId"

    new-array v15, v6, [Ljava/lang/Class;

    invoke-virtual {v13, v5, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_f2} :catch_f3

    goto :goto_f4

    :catch_f3
    const/4 v15, 0x0

    :goto_f4
    :try_start_f4
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v14, v12, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v15, :cond_fe

    const/4 v15, 0x0

    goto :goto_104

    :cond_fe
    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v15, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :goto_104
    if-nez v15, :cond_108

    const/4 v13, 0x0

    goto :goto_10c

    :cond_108
    invoke-static {v15}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    :goto_10c
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_110} :catch_140

    :goto_110
    if-lt v6, v14, :cond_113

    goto :goto_14e

    :cond_113
    move-object/from16 v16, v3

    :try_start_115
    new-instance v3, Lcom/lidroid/xutils/view/ViewInjectInfo;

    invoke-direct {v3}, Lcom/lidroid/xutils/view/ViewInjectInfo;-><init>()V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_11a} :catch_13e

    move/from16 v17, v4

    :try_start_11c
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-le v13, v6, :cond_12f

    invoke-static {v15, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_130

    :cond_12f
    const/4 v4, 0x0

    :goto_130
    iput v4, v3, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    invoke-static {v2, v3, v12, v1, v8}, Lcom/lidroid/xutils/view/EventListenerManager;->addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_135} :catch_13c

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_110

    :catch_13c
    move-exception v0

    goto :goto_145

    :catch_13e
    move-exception v0

    goto :goto_143

    :catch_140
    move-exception v0

    move-object/from16 v16, v3

    :goto_143
    move/from16 v17, v4

    :goto_145
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_152

    :cond_14e
    :goto_14e
    move-object/from16 v16, v3

    move/from16 v17, v4

    :goto_152
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_cd

    :cond_15c
    :goto_15c
    move-object/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_bd

    :cond_16a
    return-void
.end method
