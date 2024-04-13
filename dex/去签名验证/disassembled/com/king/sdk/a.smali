.class public final Lcom/king/sdk/a;
.super Landroid/app/Service;


# static fields
.field private static a:Lcom/king/sdk/b;


# instance fields
.field private b:Lcom/king/sdk/f;


# direct methods
.method public static a()Lcom/king/sdk/b;
    .registers 1

    sget-object v0, Lcom/king/sdk/a;->a:Lcom/king/sdk/b;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/king/sdk/a;->b:Lcom/king/sdk/f;

    return-object p1
.end method
