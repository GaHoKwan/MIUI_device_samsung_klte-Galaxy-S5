.class public Lmiui/preference/AnimatedPreference;
.super Landroid/preference/CheckBoxPreference;
.source "AnimatedPreference.java"


# static fields
.field private static final STATE_ANIMATE_FINISH:I = 0x4

.field private static final STATE_ANIMATE_INVISIBLE:I = 0x0

.field private static final STATE_ANIMATE_VISIBLE:I = 0x1

.field private static final STATE_ANIMATING:I = 0x2


# instance fields
.field private mAnimateDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnimateState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/AnimatedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    .line 70
    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    .line 56
    sget v0, Lcom/miui/internal/R$layout;->preference_widget_animated:I

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setWidgetLayoutResource(I)V

    .line 57
    return-void
.end method

.method private updateAnimateState(IZ)V
    .locals 2
    .param p1, "newState"    # I
    .param p2, "applyNewState"    # Z

    .prologue
    .line 174
    if-eqz p2, :cond_0

    .line 175
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    .line 179
    :goto_0
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 180
    return-void

    .line 177
    :cond_0
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    goto :goto_0
.end method


# virtual methods
.method public isAnimateFinish()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimateVisible()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lmiui/preference/AnimatedPreference;->mAnimateState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 76
    sget v3, Lcom/miui/internal/R$id;->animate:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/AnimatedImageView;

    .line 78
    .local v1, "animatedView":Lcom/miui/internal/widget/AnimatedImageView;
    sget v3, Lcom/miui/internal/R$id;->animate_finish:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "animatedFinishView":Landroid/widget/ImageView;
    iget-object v3, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    iget-object v3, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/AnimatedImageView;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimating()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/AnimatedImageView;->setAnimating(Z)V

    .line 88
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isAnimateFinish()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 92
    return-void

    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_2
    move v3, v5

    .line 86
    goto :goto_0

    :cond_3
    move v4, v5

    .line 88
    goto :goto_1

    .line 91
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    :cond_4
    const v3, 0x3e99999a    # 0.3f

    goto :goto_2
.end method

.method public setAnimateDrawable(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setAnimateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 144
    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 146
    return-void
.end method

.method public setAnimateFinish(Z)V
    .locals 1
    .param p1, "isAnimateFinish"    # Z

    .prologue
    .line 129
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    .line 130
    return-void
.end method

.method public setAnimateFinishDrawable(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/AnimatedPreference;->setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method

.method public setAnimateFinishDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/preference/AnimatedPreference;->mAnimateFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Lmiui/preference/AnimatedPreference;->notifyChanged()V

    .line 163
    return-void
.end method

.method public setAnimateVisible(Z)V
    .locals 1
    .param p1, "isAnimateVisible"    # Z

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    .line 100
    return-void
.end method

.method public setAnimating(Z)V
    .locals 1
    .param p1, "isAnimating"    # Z

    .prologue
    .line 114
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmiui/preference/AnimatedPreference;->updateAnimateState(IZ)V

    .line 115
    return-void
.end method
