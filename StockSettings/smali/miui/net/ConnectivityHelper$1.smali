.class final Lmiui/net/ConnectivityHelper$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "ConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/ConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton",
        "<",
        "Lmiui/net/ConnectivityHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lmiui/net/ConnectivityHelper$1;->createInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/net/ConnectivityHelper;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lmiui/net/ConnectivityHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/net/ConnectivityHelper;-><init>(Lmiui/net/ConnectivityHelper$1;)V

    return-object v0
.end method
