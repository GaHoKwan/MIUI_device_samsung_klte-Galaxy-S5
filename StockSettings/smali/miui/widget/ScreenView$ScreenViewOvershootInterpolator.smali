.class Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenViewOvershootInterpolator"
.end annotation


# instance fields
.field private mTension:F

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 1

    .prologue
    .line 2098
    iput-object p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    # getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {p1}, Lmiui/widget/ScreenView;->access$700(Lmiui/widget/ScreenView;)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2100
    return-void
.end method

.method static synthetic access$202(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;
    .param p1, "x1"    # F

    .prologue
    .line 2094
    iput p1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    return p1
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    .prologue
    .line 2109
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2110
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2113
    sub-float/2addr p1, v3

    .line 2114
    mul-float v0, p1, p1

    iget v1, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(II)V
    .locals 2
    .param p1, "distance"    # I
    .param p2, "velocity"    # I

    .prologue
    .line 2103
    if-lez p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$700(Lmiui/widget/ScreenView;)F

    move-result v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F

    .line 2106
    return-void

    .line 2103
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mOvershootTension:F
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$700(Lmiui/widget/ScreenView;)F

    move-result v0

    goto :goto_0
.end method
