.class Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
.super Ljava/lang/Object;
.source "TaskInfoDeliverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/TaskInfoDeliverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDeliveryInfo"
.end annotation


# instance fields
.field public delivery:Lmiui/util/async/Task$Delivery;

.field public info:Ljava/lang/Object;

.field public task:Lmiui/util/async/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/async/Task",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->task:Lmiui/util/async/Task;

    .line 47
    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->delivery:Lmiui/util/async/Task$Delivery;

    .line 48
    iput-object v0, p0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    .line 49
    return-void
.end method
