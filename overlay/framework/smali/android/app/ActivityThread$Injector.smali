.class Landroid/app/ActivityThread$Injector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHardwareRenderer()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->isOPENGLDisableNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 148
    :cond_0
    return-void
.end method

