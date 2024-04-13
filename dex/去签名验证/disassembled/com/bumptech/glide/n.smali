.class public Lcom/bumptech/glide/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/k;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/k<",
        "Lcom/bumptech/glide/n<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/request/g;


# instance fields
.field protected b:Lcom/bumptech/glide/request/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/o;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/request/g;

.field private final g:Lcom/bumptech/glide/f;

.field private final h:Lcom/bumptech/glide/h;

.field private i:Lcom/bumptech/glide/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/n;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/n;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/request/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/g;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/l;->LOW:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->d(Z)Lcom/bumptech/glide/request/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/o;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/n;->o:Z

    iput-object p1, p0, Lcom/bumptech/glide/n;->g:Lcom/bumptech/glide/f;

    iput-object p2, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    iput-object p3, p0, Lcom/bumptech/glide/n;->e:Ljava/lang/Class;

    iget-object v0, p2, Lcom/bumptech/glide/o;->f:Lcom/bumptech/glide/request/g;

    iput-object v0, p0, Lcom/bumptech/glide/n;->f:Lcom/bumptech/glide/request/g;

    iput-object p4, p0, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/o;->b(Ljava/lang/Class;)Lcom/bumptech/glide/p;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object p2, p0, Lcom/bumptech/glide/n;->f:Lcom/bumptech/glide/request/g;

    iput-object p2, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object p1, p1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/h;

    iput-object p1, p0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/n<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/bumptech/glide/n;->g:Lcom/bumptech/glide/f;

    iget-object v1, p2, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    iget-object v2, p2, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/f;Lcom/bumptech/glide/o;Ljava/lang/Class;Landroid/content/Context;)V

    iget-object p1, p2, Lcom/bumptech/glide/n;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/n;->j:Ljava/lang/Object;

    iget-boolean p1, p2, Lcom/bumptech/glide/n;->p:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/n;->p:Z

    iget-object p1, p2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iput-object p1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    return-void
.end method

.method private a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;
    .registers 4
    .param p1    # Lcom/bumptech/glide/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/n$2;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/l;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object v1, v1, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_23
    sget-object p1, Lcom/bumptech/glide/l;->IMMEDIATE:Lcom/bumptech/glide/l;

    return-object p1

    :pswitch_26
    sget-object p1, Lcom/bumptech/glide/l;->HIGH:Lcom/bumptech/glide/l;

    return-object p1

    :pswitch_29
    sget-object p1, Lcom/bumptech/glide/l;->NORMAL:Lcom/bumptech/glide/l;

    return-object p1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private a(II)Lcom/bumptech/glide/request/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/n;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 34
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/l;",
            "II",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    iget-object v0, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/bumptech/glide/request/a;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_19

    :cond_14
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_19
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    if-eqz v0, :cond_ab

    iget-boolean v0, v9, Lcom/bumptech/glide/n;->q:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-boolean v1, v1, Lcom/bumptech/glide/n;->o:Z

    if-eqz v1, :cond_36

    move-object/from16 v20, p4

    goto :goto_38

    :cond_36
    move-object/from16 v20, v0

    :goto_38
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object v0, v0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    :goto_4a
    move-object/from16 v21, v0

    goto :goto_52

    :cond_4d
    invoke-direct {v9, v10}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object v0

    goto :goto_4a

    :goto_52
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v0, v0, Lcom/bumptech/glide/request/g;->j:I

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v1, v1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v1, v1, Lcom/bumptech/glide/request/g;->i:I

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/k;->a(II)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v2, v2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/g;->p()Z

    move-result v2

    if-nez v2, :cond_72

    iget v0, v11, Lcom/bumptech/glide/request/g;->j:I

    iget v1, v11, Lcom/bumptech/glide/request/g;->i:I

    :cond_72
    move/from16 v22, v0

    move/from16 v23, v1

    new-instance v12, Lcom/bumptech/glide/request/j;

    invoke-direct {v12, v4}, Lcom/bumptech/glide/request/j;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/bumptech/glide/n;->q:Z

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v2, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v2, v2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, v12

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/bumptech/glide/n;->q:Z

    invoke-virtual {v12, v0, v1}, Lcom/bumptech/glide/request/j;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    goto :goto_e2

    :cond_ab
    iget-object v0, v9, Lcom/bumptech/glide/n;->n:Ljava/lang/Float;

    if-eqz v0, :cond_e4

    new-instance v12, Lcom/bumptech/glide/request/j;

    invoke-direct {v12, v4}, Lcom/bumptech/glide/request/j;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v13

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/n;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(F)Lcom/bumptech/glide/request/g;

    move-result-object v3

    invoke-direct {v9, v10}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lcom/bumptech/glide/request/j;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    :goto_e2
    move-object v0, v12

    goto :goto_f6

    :cond_e4
    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v12

    goto :goto_e2

    :goto_f6
    if-nez v15, :cond_f9

    return-object v0

    :cond_f9
    iget-object v1, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v1, v1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v1, v1, Lcom/bumptech/glide/request/g;->j:I

    iget-object v2, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v2, v2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v2, v2, Lcom/bumptech/glide/request/g;->i:I

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/k;->a(II)Z

    move-result v3

    if-eqz v3, :cond_119

    iget-object v3, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v3, v3, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/g;->p()Z

    move-result v3

    if-nez v3, :cond_119

    iget v1, v11, Lcom/bumptech/glide/request/g;->j:I

    iget v2, v11, Lcom/bumptech/glide/request/g;->i:I

    :cond_119
    move/from16 v16, v1

    move/from16 v17, v2

    iget-object v10, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v1, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v14, v1, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object v1, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v1, v1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object v1, v1, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iget-object v2, v9, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    iget-object v2, v2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    iput-object v0, v3, Lcom/bumptech/glide/request/a;->a:Lcom/bumptech/glide/request/c;

    iput-object v1, v3, Lcom/bumptech/glide/request/a;->b:Lcom/bumptech/glide/request/c;

    return-object v3
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/l;",
            "II)",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    iget-object v3, v0, Lcom/bumptech/glide/n;->j:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/n;->e:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/n;->k:Ljava/util/List;

    iget-object v5, v0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    iget-object v13, v5, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/load/b/j;

    move-object/from16 v5, p5

    iget-object v14, v5, Lcom/bumptech/glide/p;->a:Lcom/bumptech/glide/request/a/g;

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v14}, Lcom/bumptech/glide/request/i;->a(Landroid/content/Context;Lcom/bumptech/glide/h;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/g;IILcom/bumptech/glide/l;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Ljava/util/List;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/load/b/j;Lcom/bumptech/glide/request/a/g;)Lcom/bumptech/glide/request/i;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/target/Target;
    .registers 13
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bumptech/glide/n;->p:Z

    if-nez v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-virtual {p3}, Lcom/bumptech/glide/request/g;->o()Lcom/bumptech/glide/request/g;

    move-result-object p3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object v5, p3, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iget v6, p3, Lcom/bumptech/glide/request/g;->j:I

    iget v7, p3, Lcom/bumptech/glide/request/g;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object p2

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/c;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/request/c;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean p3, p3, Lcom/bumptech/glide/request/g;->h:Z

    if-nez p3, :cond_3f

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->d()Z

    move-result p3

    if-eqz p3, :cond_3f

    const/4 p3, 0x1

    goto :goto_40

    :cond_3f
    const/4 p3, 0x0

    :goto_40
    if-nez p3, :cond_57

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->h()V

    const-string p2, "Argument must not be null"

    invoke-static {v0, p2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/c;

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->c()Z

    move-result p2

    if-nez p2, :cond_56

    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->a()V

    :cond_56
    return-object p1

    :cond_57
    iget-object p3, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/o;->a(Lcom/bumptech/glide/request/target/Target;)V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/c;)V

    iget-object p3, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    iget-object v0, p3, Lcom/bumptech/glide/o;->e:Lcom/bumptech/glide/manager/n;

    iget-object v0, v0, Lcom/bumptech/glide/manager/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p3, p3, Lcom/bumptech/glide/o;->d:Lcom/bumptech/glide/manager/m;

    iget-object v0, p3, Lcom/bumptech/glide/manager/m;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p3, Lcom/bumptech/glide/manager/m;->c:Z

    if-nez v0, :cond_77

    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->a()V

    return-object p1

    :cond_77
    invoke-interface {p2}, Lcom/bumptech/glide/request/c;->b()V

    const-string v0, "RequestTracker"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "RequestTracker"

    const-string v1, "Paused, delaying request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    iget-object p3, p3, Lcom/bumptech/glide/manager/m;->b:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private static a(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/c;)Z
    .registers 2

    iget-boolean p0, p0, Lcom/bumptech/glide/request/g;->h:Z

    if-nez p0, :cond_c

    invoke-interface {p1}, Lcom/bumptech/glide/request/c;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private b(II)Lcom/bumptech/glide/request/b;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/e;

    iget-object v1, p0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    iget-object v1, v1, Lcom/bumptech/glide/h;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/e;-><init>(Landroid/os/Handler;II)V

    invoke-static {}, Lcom/bumptech/glide/util/k;->d()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    iget-object p1, p1, Lcom/bumptech/glide/h;->b:Landroid/os/Handler;

    new-instance p2, Lcom/bumptech/glide/n$1;

    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/n$1;-><init>(Lcom/bumptech/glide/n;Lcom/bumptech/glide/request/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_1c
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 28
    .param p3    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/l;",
            "II",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p8

    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    if-eqz v0, :cond_95

    iget-boolean v0, v9, Lcom/bumptech/glide/n;->q:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-boolean v1, v1, Lcom/bumptech/glide/n;->o:Z

    if-eqz v1, :cond_25

    move-object/from16 v14, p4

    goto :goto_26

    :cond_25
    move-object v14, v0

    :goto_26
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object v0, v0, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    :goto_38
    move-object v15, v0

    goto :goto_3f

    :cond_3a
    invoke-direct {v9, v10}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object v0

    goto :goto_38

    :goto_3f
    iget-object v0, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v0, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v0, v0, Lcom/bumptech/glide/request/g;->j:I

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v1, v1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget v1, v1, Lcom/bumptech/glide/request/g;->i:I

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/k;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v2, v2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/g;->p()Z

    move-result v2

    if-nez v2, :cond_5f

    iget v0, v11, Lcom/bumptech/glide/request/g;->j:I

    iget v1, v11, Lcom/bumptech/glide/request/g;->i:I

    :cond_5f
    move/from16 v16, v0

    move/from16 v17, v1

    new-instance v13, Lcom/bumptech/glide/request/j;

    invoke-direct {v13, v4}, Lcom/bumptech/glide/request/j;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/bumptech/glide/n;->q:Z

    iget-object v10, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v1, v9, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    iget-object v1, v1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/bumptech/glide/n;->q:Z

    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/request/j;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v2

    :cond_95
    iget-object v0, v9, Lcom/bumptech/glide/n;->n:Ljava/lang/Float;

    if-eqz v0, :cond_cd

    new-instance v12, Lcom/bumptech/glide/request/j;

    invoke-direct {v12, v4}, Lcom/bumptech/glide/request/j;-><init>(Lcom/bumptech/glide/request/d;)V

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v13

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/n;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->a(F)Lcom/bumptech/glide/request/g;

    move-result-object v3

    invoke-direct {v9, v10}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/l;

    move-result-object v6

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lcom/bumptech/glide/request/j;->a(Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/c;)V

    return-object v12

    :cond_cd
    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v5, p4

    move-object v6, v10

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;II)Lcom/bumptech/glide/request/c;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;
    .registers 13
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/request/c;"
        }
    .end annotation

    iget-object v4, p0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    iget-object v5, p3, Lcom/bumptech/glide/request/g;->c:Lcom/bumptech/glide/l;

    iget v6, p3, Lcom/bumptech/glide/request/g;->j:I

    iget v7, p3, Lcom/bumptech/glide/request/g;->i:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/p;Lcom/bumptech/glide/l;IILcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/c;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->d()Lcom/bumptech/glide/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/n;->j:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/n;->p:Z

    return-object p0
.end method

.method private c(II)Lcom/bumptech/glide/request/b;
    .registers 4
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/b<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->d()Lcom/bumptech/glide/n;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/n;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object p1

    return-object p1
.end method

.method private e()Lcom/bumptech/glide/request/b;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/b<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/n;->b(II)Lcom/bumptech/glide/request/b;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1, v1}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lcom/bumptech/glide/o;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    goto :goto_13

    :cond_c
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/n;->n:Ljava/lang/Float;

    return-object p0

    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/n;->m:Lcom/bumptech/glide/n;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/p;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Lcom/bumptech/glide/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/p<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/p;

    iput-object p1, p0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/n;->o:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/n;->k:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/g;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 5
    .param p1    # [Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_20

    :cond_7
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1b

    aget-object v2, p1, v1

    if-eqz v2, :cond_18

    if-nez v0, :cond_14

    move-object v0, v2

    goto :goto_18

    :cond_14
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object v0

    :cond_18
    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1

    :cond_20
    :goto_20
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/n;->b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Lcom/bumptech/glide/request/g;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/n;->f:Lcom/bumptech/glide/request/g;

    iget-object v1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    return-object v0
.end method

.method public final a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    .registers 5
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/ViewTarget<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v1

    if-nez v1, :cond_46

    iget-boolean v1, v0, Lcom/bumptech/glide/request/g;->m:Z

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/bumptech/glide/n$2;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    goto :goto_46

    :pswitch_2c
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->f()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_46

    :pswitch_35
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->h()Lcom/bumptech/glide/request/g;

    move-result-object v0

    goto :goto_46

    :pswitch_3e
    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/g;->d()Lcom/bumptech/glide/request/g;

    move-result-object v0

    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/bumptech/glide/n;->h:Lcom/bumptech/glide/h;

    iget-object v2, p0, Lcom/bumptech/glide/n;->e:Ljava/lang/Class;

    iget-object v1, v1, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/target/ViewTarget;

    return-object p1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method public synthetic a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Landroid/net/Uri;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/io/File;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/io/File;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/lang/String;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/net/URL;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b(Ljava/net/URL;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([B)Ljava/lang/Object;
    .registers 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/n;->b([B)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/n;

    iget-object v1, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/g;->b()Lcom/bumptech/glide/request/g;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    iget-object v1, v0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;

    invoke-virtual {v1}, Lcom/bumptech/glide/p;->a()Lcom/bumptech/glide/p;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/n;->i:Lcom/bumptech/glide/p;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/n;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Lcom/bumptech/glide/n;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/n;->l:Lcom/bumptech/glide/n;

    return-object p0
.end method

.method public b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/bumptech/glide/n;->k:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/n;->k:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/n;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lcom/bumptech/glide/n;
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/f/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/net/URL;)Lcom/bumptech/glide/n;
    .registers 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    return-object p1
.end method

.method public b([B)Lcom/bumptech/glide/n;
    .registers 4
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/n<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/n;->c(Ljava/lang/Object;)Lcom/bumptech/glide/n;

    move-result-object p1

    iget-object v0, p1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-static {v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    :cond_17
    iget-object v0, p1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/request/g;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/g;->g(I)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {}, Lcom/bumptech/glide/request/g;->a()Lcom/bumptech/glide/request/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object p1

    :cond_29
    return-object p1
.end method

.method public final c()Lcom/bumptech/glide/request/target/Target;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/n;->d:Lcom/bumptech/glide/o;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1, v1}, Lcom/bumptech/glide/request/target/PreloadTarget;->obtain(Lcom/bumptech/glide/o;II)Lcom/bumptech/glide/request/target/PreloadTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/n;->b()Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/bumptech/glide/n;
    .registers 3
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/n<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/n;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/n;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/n;)V

    sget-object v1, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/request/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->a(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/n;

    move-result-object v0

    return-object v0
.end method
