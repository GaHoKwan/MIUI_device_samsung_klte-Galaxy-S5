.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source "ProgressBarDelegate.java"


# static fields
.field private static final AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final ON_SIZE_CHANGED:Lmiui/reflect/Method;

.field private static final SET_INDETERMINATE:Lmiui/reflect/Method;

.field private static final SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

.field private static final SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

.field static final TAG:Ljava/lang/String; = "ProgressBarDelegate"


# instance fields
.field private final mActaul:Landroid/widget/ProgressBar;

.field private mIndeterminateDrawableChanged:Z

.field private mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

.field private mInitialized:Z

.field private final mProgressBarClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDrawableChanged:Z

.field private mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminate"

    const-string v2, "(Z)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE:Lmiui/reflect/Method;

    .line 31
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminateDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

    .line 34
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgressDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

    .line 37
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "onSizeChanged"

    const-string v2, "(IIII)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->ON_SIZE_CHANGED:Lmiui/reflect/Method;

    .line 39
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    return-void
.end method

.method private constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V
    .locals 1
    .param p1, "actual"    # Landroid/widget/ProgressBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/widget/ProgressBar;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    .line 54
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    .line 55
    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    .line 56
    return-void
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1
    .param p0, "actual"    # Landroid/widget/ProgressBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;)",
            "Lcom/miui/internal/widget/ProgressBarDelegate;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/widget/ProgressBar;>;"
    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private initMaskPaint(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "paint":Landroid/graphics/Paint;
    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 165
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 170
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 171
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 175
    :goto_1
    return-void

    .line 166
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 167
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    const-string v1, "ProgressBarDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private superOnSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 213
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->ON_SIZE_CHANGED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method private superSetIndeterminate(Z)V
    .locals 6
    .param p1, "indeterminate"    # Z

    .prologue
    .line 186
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method private superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 194
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_INDETERMINATE_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method private superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->SET_PROGRESS_DRAWABLE:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressBarClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private updateDrawable()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v6, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    .line 134
    .local v6, "actaul":Landroid/widget/ProgressBar;
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v7

    .line 135
    .local v7, "indeterminate":Z
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int v3, v0, v1

    .line 136
    .local v3, "width":I
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 139
    .local v4, "height":I
    if-ge v3, v4, :cond_2

    .line 140
    move v8, v3

    .line 141
    .local v8, "tmp":I
    move v3, v4

    .line 142
    move v4, v8

    .line 145
    .end local v8    # "tmp":I
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10, v10, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    :cond_3
    if-eqz v7, :cond_4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    if-eqz v0, :cond_4

    .line 150
    iput-boolean v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    .line 151
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 153
    .local v9, "wrapped":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v9}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    .end local v9    # "wrapped":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v7, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    .line 156
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    move v5, v10

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 158
    .restart local v9    # "wrapped":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v9}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    .line 123
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    .line 124
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->superOnSizeChanged(IIII)V

    .line 126
    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    iget-object v6, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    .local v1, "context":Landroid/content/Context;
    sget-object v6, Lmiui/R$styleable;->ProgressBar:[I

    invoke-virtual {v1, p1, v6, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 62
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    const/16 v6, 0x30

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 66
    .local v3, "framesCount":I
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v6, v2, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 67
    const/4 v6, 0x2

    const/16 v7, 0x19

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 70
    .local v4, "framesDuration":I
    sget-object v6, Lcom/miui/internal/widget/ProgressBarDelegate;->AnimatedRotateDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v6, v2, v4}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    .line 73
    .end local v3    # "framesCount":I
    .end local v4    # "framesDuration":I
    :cond_0
    iput-boolean v9, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mInitialized:Z

    .line 74
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 75
    .local v5, "mask":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 76
    invoke-direct {p0, v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->initMaskPaint(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 2
    .param p1, "indeterminate"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 86
    .local v0, "old":Z
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->superSetIndeterminate(Z)V

    .line 87
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mActaul:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    .line 90
    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 102
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    .line 104
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    .line 106
    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 94
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableOrignal:Landroid/graphics/drawable/Drawable;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    .line 96
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V

    .line 98
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressMask:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mProgressDrawableChanged:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->mIndeterminateDrawableChanged:Z

    .line 113
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->updateDrawable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
