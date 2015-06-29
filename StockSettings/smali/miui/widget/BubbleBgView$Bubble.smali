.class Lmiui/widget/BubbleBgView$Bubble;
.super Ljava/lang/Object;
.source "BubbleBgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/BubbleBgView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bubble"
.end annotation


# static fields
.field private static final DURATION:I = 0xbb8

.field private static final MIN_DURATION:I = 0x7d0

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private final cX:I

.field private final cY:I

.field private final color:I

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private final radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "minDx"    # I
    .param p5, "maxDx"    # I
    .param p6, "minDy"    # I
    .param p7, "maxDy"    # I
    .param p8, "c"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    .line 128
    iput p2, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    .line 129
    iput p3, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    .line 130
    add-int v0, p4, p1

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    .line 131
    add-int v0, p5, p1

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    .line 132
    add-int v0, p6, p2

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    .line 133
    add-int v0, p7, p2

    iput v0, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    .line 134
    iput p8, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    .line 135
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/BubbleBgView$Bubble;

    .prologue
    .line 112
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->color:I

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/BubbleBgView$Bubble;

    .prologue
    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentX()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/BubbleBgView$Bubble;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/BubbleBgView$Bubble;

    .prologue
    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->getCurrentY()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/BubbleBgView$Bubble;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/BubbleBgView$Bubble;

    .prologue
    .line 112
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->radius:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/BubbleBgView$Bubble;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/BubbleBgView$Bubble;

    .prologue
    .line 112
    invoke-direct {p0}, Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V

    return-void
.end method

.method private getCurrentX()F
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 175
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v0, v0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private getCurrentY()F
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v0, v0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private resetAnimator()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 139
    sget-object v5, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v0, v5, 0x7d0

    .line 140
    .local v0, "duration":I
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    .line 141
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    .line 142
    .local v3, "v1":Landroid/animation/ValueAnimator;
    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 144
    .local v4, "v2":Landroid/animation/ValueAnimator;
    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v10, [Landroid/animation/Animator;

    aput-object v3, v6, v8

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 146
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lmiui/widget/BubbleBgView$Bubble$1;

    invoke-direct {v6, p0}, Lmiui/widget/BubbleBgView$Bubble$1;-><init>(Lmiui/widget/BubbleBgView$Bubble;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 166
    sget-object v5, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->maxX:I

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->minX:I

    add-int v1, v5, v6

    .line 167
    .local v1, "toX":I
    sget-object v5, Lmiui/widget/BubbleBgView$Bubble;->RANDOM:Ljava/util/Random;

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->maxY:I

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iget v6, p0, Lmiui/widget/BubbleBgView$Bubble;->minY:I

    add-int v2, v5, v6

    .line 168
    .local v2, "toY":I
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    new-array v6, v11, [F

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v7, v7

    aput v7, v6, v8

    int-to-float v7, v1

    aput v7, v6, v9

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->cX:I

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 169
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    new-array v6, v11, [F

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v7, v7

    aput v7, v6, v8

    int-to-float v7, v2

    aput v7, v6, v9

    iget v7, p0, Lmiui/widget/BubbleBgView$Bubble;->cY:I

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 170
    iget-object v5, p0, Lmiui/widget/BubbleBgView$Bubble;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 171
    return-void
.end method
