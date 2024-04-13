.class public Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "Invocator"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "want method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "types: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_32

    if-nez p4, :cond_44

    :cond_32
    if-eqz p3, :cond_36

    if-eqz p4, :cond_44

    :cond_36
    if-eqz p3, :cond_46

    if-eqz p4, :cond_46

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_46

    :cond_44
    const/4 p0, 0x6

    return p0

    :cond_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_71

    :try_start_4a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_71

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_57
    array-length v3, v0

    if-ge v2, v3, :cond_71

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/utils/n;->j:Lcom/cyjh/mobileanjian/ipc/utils/h;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/utils/h;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :catch_6b
    move-exception p0

    goto :goto_a5

    :catch_6d
    move-exception p0

    goto :goto_aa

    :catch_6f
    move-exception p0

    goto :goto_af

    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Get method: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/ipc/utils/q;->a(Ljava/util/List;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_a1

    if-nez p2, :cond_a1

    const/4 p0, 0x7

    return p0

    :cond_a1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4a .. :try_end_a4} :catch_b6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_a4} :catch_b4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_a4} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_a4} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4a .. :try_end_a4} :catch_6b

    return v1

    :goto_a5
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const/4 v1, 0x5

    return v1

    :goto_aa
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v1, 0x4

    return v1

    :goto_af
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 v1, 0x3

    return v1

    :catch_b4
    const/4 v1, 0x2

    return v1

    :catch_b6
    const/4 v1, 0x1

    return v1
.end method

.method public static invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "want method: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "types: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "value: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p5, 0x0

    if-nez p3, :cond_33

    if-nez p4, :cond_45

    :cond_33
    if-eqz p3, :cond_37

    if-eqz p4, :cond_45

    :cond_37
    if-eqz p3, :cond_46

    if-eqz p4, :cond_46

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_46

    :cond_45
    return-object p5

    :cond_46
    if-eqz p3, :cond_6f

    :try_start_48
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6f

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_55
    array-length v2, v0

    if-ge v1, v2, :cond_70

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/utils/n;->j:Lcom/cyjh/mobileanjian/ipc/utils/h;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/utils/h;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :catch_69
    move-exception p0

    goto :goto_ae

    :catch_6b
    move-exception p0

    goto :goto_b2

    :catch_6d
    move-exception p0

    goto :goto_b6

    :cond_6f
    move-object v0, p5

    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Get method: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/ipc/utils/q;->a(Ljava/util/List;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_9f

    if-nez p2, :cond_9f

    return-object p5

    :cond_9f
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "result: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_ad} :catch_b9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_48 .. :try_end_ad} :catch_b9
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_ad} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_ad} :catch_6b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_ad} :catch_69

    return-object p0

    :goto_ae
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-object p5

    :goto_b2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object p5

    :goto_b6
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :catch_b9
    return-object p5
.end method

.method public static isListEmpty(Ljava/util/List;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method
