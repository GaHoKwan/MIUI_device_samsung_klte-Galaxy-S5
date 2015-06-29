.class Lmiui/widget/Rotation3DLayout$4;
.super Ljava/lang/Object;
.source "Rotation3DLayout.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/Rotation3DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 463
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v4, 0x42340000    # 45.0f

    .line 449
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 450
    .local v0, "y":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v1, v2, v3

    .line 451
    .local v1, "z":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 452
    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    iget-object v3, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F
    invoke-static {v3}, Lmiui/widget/Rotation3DLayout;->access$400(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v4

    # setter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F
    invoke-static {v2, v3}, Lmiui/widget/Rotation3DLayout;->access$302(Lmiui/widget/Rotation3DLayout;F)F

    .line 453
    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    iget-object v3, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F
    invoke-static {v3}, Lmiui/widget/Rotation3DLayout;->access$300(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/Rotation3DLayout;->setRotationX(F)V

    .line 455
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 456
    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    iget-object v3, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F
    invoke-static {v3}, Lmiui/widget/Rotation3DLayout;->access$400(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v4

    # setter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F
    invoke-static {v2, v3}, Lmiui/widget/Rotation3DLayout;->access$502(Lmiui/widget/Rotation3DLayout;F)F

    .line 457
    iget-object v2, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    iget-object v3, p0, Lmiui/widget/Rotation3DLayout$4;->this$0:Lmiui/widget/Rotation3DLayout;

    # getter for: Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F
    invoke-static {v3}, Lmiui/widget/Rotation3DLayout;->access$500(Lmiui/widget/Rotation3DLayout;)F

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/Rotation3DLayout;->setRotationY(F)V

    .line 459
    :cond_1
    return-void
.end method
