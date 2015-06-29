.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final CHECK_MARK_PADDING:I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/widget/CheckedTextView;->setPadding(IIII)V

    .line 50
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 130
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 133
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 134
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    .line 136
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 146
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 120
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 121
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 124
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 95
    iget v2, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    .line 96
    .local v2, "x":I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v3

    .line 97
    .local v3, "y":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 98
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 110
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    add-int v5, v3, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    .end local v1    # "height":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    return-void

    .line 101
    .restart local v1    # "height":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 106
    :sswitch_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    goto :goto_0

    .line 103
    :sswitch_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    .line 104
    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 61
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 66
    sget-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 67
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    .line 68
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 70
    :cond_1
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 75
    iput p1, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    .line 76
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x0

    .line 79
    .local v0, "newPadding":I
    :goto_0
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    .line 80
    return-void

    .end local v0    # "newPadding":I
    :cond_0
    move v0, p1

    .line 76
    goto :goto_0
.end method

.method public setPaddingRelative(IIII)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 84
    iput p1, p0, Lmiui/widget/CheckedTextView;->mBasePadding:I

    .line 85
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x0

    .line 88
    .local v0, "newPadding":I
    :goto_0
    invoke-super {p0, v0, p2, p3, p4}, Landroid/widget/CheckedTextView;->setPaddingRelative(IIII)V

    .line 89
    return-void

    .end local v0    # "newPadding":I
    :cond_0
    move v0, p1

    .line 85
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
