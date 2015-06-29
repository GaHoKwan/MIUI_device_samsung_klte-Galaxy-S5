.class final Lmiui/util/async/TaskInfoDeliverer$1;
.super Lmiui/util/Pools$Manager;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager",
        "<",
        "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lmiui/util/async/TaskInfoDeliverer$1;->createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/async/TaskInfoDeliverer$1;->onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V

    return-void
.end method

.method public onRelease(Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;)V
    .locals 0
    .param p1, "element"    # Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    .prologue
    .line 102
    invoke-virtual {p1}, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->clear()V

    .line 103
    return-void
.end method
