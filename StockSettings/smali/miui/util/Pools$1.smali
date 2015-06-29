.class final Lmiui/util/Pools$1;
.super Lmiui/util/Pools$Manager;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lmiui/util/Pools$1;->createInstance()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/Pools$1;->onRelease(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public onRelease(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/StringBuilder;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 276
    return-void
.end method
