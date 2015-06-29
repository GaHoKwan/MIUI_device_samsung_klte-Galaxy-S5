.class final Lmiui/net/http/HttpSession$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "HttpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton",
        "<",
        "Lmiui/net/http/HttpSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lmiui/net/http/HttpSession$1;->createInstance()Lmiui/net/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/net/http/HttpSession;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lmiui/net/http/HttpSession;

    invoke-direct {v0}, Lmiui/net/http/HttpSession;-><init>()V

    return-object v0
.end method
