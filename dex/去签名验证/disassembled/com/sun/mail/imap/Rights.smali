.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object p1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .registers 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_18

    const/16 v1, 0x80

    :try_start_8
    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v2, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_17} :catch_19

    return-object v0

    :catch_18
    const/4 v0, 0x0

    :catch_19
    return-object v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean p1, v0, p1

    return p1
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/sun/mail/imap/Rights;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/sun/mail/imap/Rights;

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v0

    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v3, v3, v0

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights$Right;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_15
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_23

    int-to-char v2, v1

    invoke-static {v2}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char p1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_8

    return-void

    :cond_8
    iget-object v2, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aput-boolean v0, v2, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v2

    if-lt v1, v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1a

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
