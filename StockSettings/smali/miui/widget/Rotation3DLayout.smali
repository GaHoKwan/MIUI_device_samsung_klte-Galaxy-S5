.class public Lmiui/widget/Rotation3DLayout;
.super Landroid/widget/FrameLayout;
.source "Rotation3DLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/Rotation3DLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static final LAYOUT_DIRECTION_LTR:I = 0x0

.field private static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final MAX_GRAVITY_DEGREE:I = 0x2d

.field private static final MAX_ROTATION_DEGREE_WIDTH:I = 0xa

.field private static final RESET_ANIM_DURATION:I = 0x12c

.field private static final RESET_BOUNCE_PATTERNS:[F

.field private static final ROTATION_DEGRREE_PER_PIXEL:F


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mEnableTouchRotation:Z

.field private mIsAutoRotationByGravity:Z

.field private mIsDoingAnimation:Z

.field private mIsTouch:Z

.field private mLastTouchDownEventTime:J

.field private mMaxRotationDegree:F

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mResetAnimDuration:I

.field private mResetBouncePatterns:[F

.field private mResetBounceValuesX:[F

.field private mResetBounceValuesY:[F

.field private mRotationDegreePerPixel:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTargetRotationX:F

.field private mTargetRotationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lmiui/widget/Rotation3DLayout;->computeRotationPerPixel(F)F

    move-result v0

    sput v0, Lmiui/widget/Rotation3DLayout;->ROTATION_DEGRREE_PER_PIXEL:F

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/Rotation3DLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    .line 49
    sget v1, Lmiui/widget/Rotation3DLayout;->ROTATION_DEGRREE_PER_PIXEL:F

    iput v1, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    .line 54
    const/16 v1, 0x12c

    iput v1, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    .line 55
    sget-object v1, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    .line 56
    sget-object v1, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    .line 57
    sget-object v1, Lmiui/widget/Rotation3DLayout;->RESET_BOUNCE_PATTERNS:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    .line 59
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    .line 60
    iput-boolean v5, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    .line 62
    iput-boolean v4, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    .line 63
    iput-boolean v4, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    .line 64
    iput-boolean v4, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    .line 445
    new-instance v1, Lmiui/widget/Rotation3DLayout$4;

    invoke-direct {v1, p0}, Lmiui/widget/Rotation3DLayout$4;-><init>(Lmiui/widget/Rotation3DLayout;)V

    iput-object v1, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 84
    sget-object v1, Lcom/miui/internal/R$styleable;->Rotation3DLayout:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/Rotation3DLayout;->setMaxRotationDegree(F)V

    .line 86
    iget-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lmiui/widget/Rotation3DLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/Rotation3DLayout;FZ)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/Rotation3DLayout;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    return v0
.end method

.method static synthetic access$302(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    return p1
.end method

.method static synthetic access$400(Lmiui/widget/Rotation3DLayout;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/Rotation3DLayout;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;

    .prologue
    .line 37
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    return v0
.end method

.method static synthetic access$502(Lmiui/widget/Rotation3DLayout;F)F
    .locals 0
    .param p0, "x0"    # Lmiui/widget/Rotation3DLayout;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    return p1
.end method

.method private computeOffset(IF)I
    .locals 4
    .param p1, "distance"    # I
    .param p2, "degree"    # F

    .prologue
    .line 438
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static computeRotationPerPixel(F)F
    .locals 2
    .param p0, "maxDegree"    # F

    .prologue
    .line 442
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v0, p0, v0

    return v0
.end method

.method private getAbsoluteGravity(II)I
    .locals 5
    .param p1, "gravity"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 406
    move v0, p1

    .line 408
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 409
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    .line 411
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 412
    if-ne p2, v2, :cond_2

    .line 414
    or-int/lit8 v0, v0, 0x5

    .line 432
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 434
    :cond_1
    return v0

    .line 417
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 419
    :cond_3
    and-int v1, v0, v4

    if-ne v1, v4, :cond_0

    .line 421
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 422
    if-ne p2, v2, :cond_4

    .line 424
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 427
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method private setRotationXInternal(FZ)V
    .locals 6
    .param p1, "rotationX"    # F
    .param p2, "forceSet"    # Z

    .prologue
    .line 289
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget p1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 301
    :cond_1
    :goto_1
    return-void

    .line 290
    :cond_2
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    neg-float p1, v0

    goto :goto_0

    .line 297
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    if-nez v0, :cond_1

    .line 298
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationX(F)V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    goto :goto_1
.end method

.method private setRotationYInternal(FZ)V
    .locals 6
    .param p1, "rotationY"    # F
    .param p2, "forceSet"    # Z

    .prologue
    .line 304
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 305
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget p1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    .line 308
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 316
    :cond_1
    :goto_1
    return-void

    .line 305
    :cond_2
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    neg-float p1, v0

    goto :goto_0

    .line 312
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z

    if-nez v0, :cond_1

    .line 313
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setRotationY(F)V

    .line 314
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/Rotation3DLayout;->onLayout(ZIIII)V

    goto :goto_1
.end method

.method private startGravityDetect(Z)V
    .locals 4
    .param p1, "start"    # Z

    .prologue
    const/4 v3, 0x0

    .line 108
    if-eqz p1, :cond_3

    .line 109
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    .line 112
    :cond_0
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 115
    :cond_1
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    :cond_2
    :goto_0
    return-void

    .line 116
    :cond_3
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 118
    iput-object v3, p0, Lmiui/widget/Rotation3DLayout;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 119
    iput-object v3, p0, Lmiui/widget/Rotation3DLayout;->mSensorManager:Landroid/hardware/SensorManager;

    .line 120
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    goto :goto_0
.end method


# virtual methods
.method public enableAutoRotationByGravity(Z)V
    .locals 1
    .param p1, "isAutoRotation"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    .line 104
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    invoke-direct {p0, v0}, Lmiui/widget/Rotation3DLayout;->startGravityDetect(Z)V

    .line 105
    return-void
.end method

.method public enableTouchRotation(Z)V
    .locals 0
    .param p1, "enableRotation"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    .line 96
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 332
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/Rotation3DLayout;->startGravityDetect(Z)V

    .line 334
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 468
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lmiui/widget/Rotation3DLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 478
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 473
    new-instance v0, Lmiui/widget/Rotation3DLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/Rotation3DLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMaxRotationDegree()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 338
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getChildCount()I

    move-result v7

    .line 340
    .local v7, "count":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingLeft()I

    move-result v14

    .line 341
    .local v14, "parentLeft":I
    sub-int v19, p4, p2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .line 343
    .local v15, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingTop()I

    move-result v16

    .line 344
    .local v16, "parentTop":I
    sub-int v19, p5, p3

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getPaddingBottom()I

    move-result v20

    sub-int v13, v19, v20

    .line 346
    .local v13, "parentBottom":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_3

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/widget/Rotation3DLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 349
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lmiui/widget/Rotation3DLayout$LayoutParams;

    .line 351
    .local v12, "lp":Lmiui/widget/Rotation3DLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 352
    .local v18, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 357
    .local v9, "height":I
    iget v8, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->gravity:I

    .line 358
    .local v8, "gravity":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_0

    .line 359
    const v8, 0x800033

    .line 362
    :cond_0
    const/4 v11, 0x0

    .line 363
    .local v11, "layoutDirection":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lmiui/widget/Rotation3DLayout;->getAbsoluteGravity(II)I

    move-result v3

    .line 364
    .local v3, "absoluteGravity":I
    and-int/lit8 v17, v8, 0x70

    .line 366
    .local v17, "verticalGravity":I
    and-int/lit8 v19, v3, 0x7

    packed-switch v19, :pswitch_data_0

    .line 378
    :pswitch_0
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v5, v14, v19

    .line 381
    .local v5, "childLeft":I
    :goto_1
    sparse-switch v17, :sswitch_data_0

    .line 393
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v6, v16, v19

    .line 396
    .local v6, "childTop":I
    :goto_2
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lmiui/widget/Rotation3DLayout;->computeOffset(IF)I

    move-result v19

    add-int v5, v5, v19

    .line 397
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lmiui/widget/Rotation3DLayout;->computeOffset(IF)I

    move-result v19

    sub-int v6, v6, v19

    .line 398
    if-nez p1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    .line 399
    :cond_1
    add-int v19, v5, v18

    add-int v20, v6, v9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 346
    .end local v3    # "absoluteGravity":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v8    # "gravity":I
    .end local v9    # "height":I
    .end local v11    # "layoutDirection":I
    .end local v12    # "lp":Lmiui/widget/Rotation3DLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 368
    .restart local v3    # "absoluteGravity":I
    .restart local v8    # "gravity":I
    .restart local v9    # "height":I
    .restart local v11    # "layoutDirection":I
    .restart local v12    # "lp":Lmiui/widget/Rotation3DLayout$LayoutParams;
    .restart local v17    # "verticalGravity":I
    .restart local v18    # "width":I
    :pswitch_1
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v5, v14, v19

    .line 369
    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 371
    .end local v5    # "childLeft":I
    :pswitch_2
    sub-int v19, v15, v14

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v14

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 373
    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 375
    .end local v5    # "childLeft":I
    :pswitch_3
    sub-int v19, v15, v18

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 376
    .restart local v5    # "childLeft":I
    goto :goto_1

    .line 383
    :sswitch_0
    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v6, v16, v19

    .line 384
    .restart local v6    # "childTop":I
    goto :goto_2

    .line 386
    .end local v6    # "childTop":I
    :sswitch_1
    sub-int v19, v13, v16

    sub-int v19, v19, v9

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v16

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 388
    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 390
    .end local v6    # "childTop":I
    :sswitch_2
    sub-int v19, v13, v9

    iget v0, v12, Lmiui/widget/Rotation3DLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 391
    .restart local v6    # "childTop":I
    goto/16 :goto_2

    .line 403
    .end local v3    # "absoluteGravity":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v8    # "gravity":I
    .end local v9    # "height":I
    .end local v11    # "layoutDirection":I
    .end local v12    # "lp":Lmiui/widget/Rotation3DLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_3
    return-void

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 381
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 241
    iget-boolean v5, p0, Lmiui/widget/Rotation3DLayout;->mEnableTouchRotation:Z

    if-nez v5, :cond_0

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 275
    :goto_0
    return v4

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 274
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 247
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    sub-long/2addr v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 248
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 252
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lmiui/widget/Rotation3DLayout;->mLastTouchDownEventTime:J

    .line 255
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 256
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 257
    .local v3, "y":F
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 258
    .local v0, "cX":I
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 259
    .local v1, "cY":I
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_3

    .line 260
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 262
    :cond_3
    int-to-float v5, v1

    sub-float/2addr v5, v3

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    mul-float/2addr v5, v6

    invoke-direct {p0, v5, v4}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    .line 263
    int-to-float v5, v0

    sub-float v5, v2, v5

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    mul-float/2addr v5, v6

    invoke-direct {p0, v5, v4}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    .line 264
    iput-boolean v4, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    goto :goto_1

    .line 268
    .end local v0    # "cX":I
    .end local v1    # "cY":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->resetRotation()V

    .line 269
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/widget/Rotation3DLayout;->mIsTouch:Z

    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 321
    if-nez p2, :cond_1

    .line 322
    iget-boolean v0, p0, Lmiui/widget/Rotation3DLayout;->mIsAutoRotationByGravity:Z

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/widget/Rotation3DLayout;->startGravityDetect(Z)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/Rotation3DLayout;->startGravityDetect(Z)V

    goto :goto_0
.end method

.method protected resetRotation()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    .line 131
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_0

    .line 132
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    .line 133
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lmiui/widget/Rotation3DLayout$1;

    invoke-direct {v6, p0}, Lmiui/widget/Rotation3DLayout$1;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 155
    .local v3, "xA":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    new-instance v5, Lmiui/widget/Rotation3DLayout$2;

    invoke-direct {v5, p0}, Lmiui/widget/Rotation3DLayout$2;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    iget v5, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 166
    .local v4, "yA":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    new-instance v5, Lmiui/widget/Rotation3DLayout$3;

    invoke-direct {v5, p0}, Lmiui/widget/Rotation3DLayout$3;-><init>(Lmiui/widget/Rotation3DLayout;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    iget v5, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 177
    .end local v3    # "xA":Landroid/animation/ValueAnimator;
    .end local v4    # "yA":Landroid/animation/ValueAnimator;
    :cond_0
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 178
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationX()F

    move-result v1

    .line 179
    .local v1, "rX":F
    invoke-virtual {p0}, Lmiui/widget/Rotation3DLayout;->getRotationY()F

    move-result v2

    .line 181
    .local v2, "rY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 182
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationX:F

    iget-object v7, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    aget v7, v7, v0

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v0

    .line 183
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    iget v6, p0, Lmiui/widget/Rotation3DLayout;->mTargetRotationY:F

    iget-object v7, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    aget v7, v7, v0

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v5, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 186
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 187
    iget-object v5, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 188
    return-void
.end method

.method public setMaxRotationDegree(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 218
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mMaxRotationDegree:F

    .line 219
    invoke-static {p1}, Lmiui/widget/Rotation3DLayout;->computeRotationPerPixel(F)F

    move-result v0

    iput v0, p0, Lmiui/widget/Rotation3DLayout;->mRotationDegreePerPixel:F

    .line 220
    return-void
.end method

.method public setResetAnimDuration(I)V
    .locals 0
    .param p1, "resetAnimDuration"    # I

    .prologue
    .line 196
    iput p1, p0, Lmiui/widget/Rotation3DLayout;->mResetAnimDuration:I

    .line 197
    return-void
.end method

.method public setResetBouncePatterns([F)V
    .locals 2
    .param p1, "resetBouncePatterns"    # [F

    .prologue
    .line 206
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 207
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout;->mResetBouncePatterns:[F

    .line 208
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesX:[F

    .line 209
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/Rotation3DLayout;->mResetBounceValuesY:[F

    .line 211
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1
    .param p1, "rotationX"    # F

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->setRotationXInternal(FZ)V

    .line 281
    return-void
.end method

.method public setRotationY(F)V
    .locals 1
    .param p1, "rotationY"    # F

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->setRotationYInternal(FZ)V

    .line 286
    return-void
.end method

.method protected stopResetRotation()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 128
    :cond_0
    return-void
.end method
