.class public Lmiui/widget/DropDownImageView;
.super Landroid/widget/ImageView;
.source "DropDownImageView.java"


# instance fields
.field private mAnimCollapse:Landroid/animation/AnimatorSet;

.field private mAnimExpand:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/DropDownImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 34
    sget v0, Lcom/miui/internal/R$attr;->dropdownImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v1, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    .line 23
    iput-object v1, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    .line 36
    iput-object p1, p0, Lmiui/widget/DropDownImageView;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lmiui/widget/DropDownImageView;->setupAnimations()V

    .line 38
    return-void
.end method

.method private setupAnimations()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x2

    .line 42
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    .line 43
    iget-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 45
    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 46
    .local v1, "collapseBefore":Landroid/animation/ObjectAnimator;
    new-instance v4, Lmiui/widget/DropDownImageView$1;

    invoke-direct {v4, p0}, Lmiui/widget/DropDownImageView$1;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 56
    .local v0, "collapseAfter":Landroid/animation/ObjectAnimator;
    new-instance v4, Lmiui/widget/DropDownImageView$2;

    invoke-direct {v4, p0}, Lmiui/widget/DropDownImageView$2;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 63
    iget-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 66
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    .line 68
    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 70
    .local v3, "expandBefore":Landroid/animation/ObjectAnimator;
    new-instance v4, Lmiui/widget/DropDownImageView$3;

    invoke-direct {v4, p0}, Lmiui/widget/DropDownImageView$3;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    const-string v4, "rotationX"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 81
    .local v2, "expandAfter":Landroid/animation/ObjectAnimator;
    new-instance v4, Lmiui/widget/DropDownImageView$4;

    invoke-direct {v4, p0}, Lmiui/widget/DropDownImageView$4;-><init>(Lmiui/widget/DropDownImageView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v4, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 88
    return-void

    .line 45
    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 68
    :array_2
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 79
    :array_3
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 92
    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 93
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 97
    iget-object v0, p0, Lmiui/widget/DropDownImageView;->mAnimExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 98
    return-void
.end method
