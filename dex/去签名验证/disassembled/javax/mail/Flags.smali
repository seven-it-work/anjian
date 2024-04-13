.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# static fields
.field private static final ANSWERED_BIT:I = 0x1

.field private static final DELETED_BIT:I = 0x2

.field private static final DRAFT_BIT:I = 0x4

.field private static final FLAGGED_BIT:I = 0x8

.field private static final RECENT_BIT:I = 0x10

.field private static final SEEN_BIT:I = 0x20

.field private static final USER_BIT:I = -0x80000000

.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_1b

    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_1b
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_c
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .registers 3

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public add(Ljavax/mail/Flags;)V
    .registers 6

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_36

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_17
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_24

    return-void

    :cond_24
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_36
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_18

    if-eqz v0, :cond_18

    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_18
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .registers 3

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .registers 5

    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v0, v1

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    return v2

    :cond_b
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_14

    return v2

    :cond_14
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2e

    :cond_21
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    :cond_2e
    :goto_2e
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/mail/Flags;

    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v2, p0, Ljavax/mail/Flags;->system_flags:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    const/4 v2, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_19

    return v2

    :cond_19
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_48

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_48

    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ne v0, v3, :cond_48

    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :cond_35
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_3c

    return v2

    :cond_3c
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    :cond_48
    return v1
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_10
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1b
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_26

    sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_26
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_31

    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_31
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3c

    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3c
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_47

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_47
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_53

    sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_53
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getUserFlags()[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1e

    :cond_16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1e
    :goto_1e
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_13

    return v0

    :cond_13
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_c

    :cond_1f
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .registers 3

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method

.method public remove(Ljavax/mail/Flags;)V
    .registers 4

    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_29
    return-void
.end method
