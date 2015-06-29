.class public abstract Lcom/miui/internal/variable/Android_Preference_Preference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Preference_Preference_class.java"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/preference/Preference;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 62
    return-void
.end method

.method private onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/CheckBoxPreference;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 140
    const v2, 0x1020001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lmiui/widget/SlidingButton;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 142
    check-cast v1, Lmiui/widget/SlidingButton;

    .line 143
    .local v1, "slidingButton":Lmiui/widget/SlidingButton;
    new-instance v2, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/CheckBoxPreference;Landroid/view/View;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    .end local v1    # "slidingButton":Lmiui/widget/SlidingButton;
    :cond_0
    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "onBindView"

    const-string v1, "(Landroid/view/View;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 69
    return-void
.end method

.method protected abstract getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
.end method

.method protected handle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 15
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/preference/Preference;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 77
    move-object/from16 v9, p3

    .line 78
    .local v9, "preference":Landroid/preference/Preference;
    instance-of v11, v9, Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_7

    .line 81
    move-object/from16 v0, p4

    instance-of v11, v0, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    move-object/from16 v10, p4

    .line 82
    check-cast v10, Landroid/view/ViewGroup;

    .line 83
    .local v10, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 86
    .end local v10    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 87
    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v11

    if-nez v11, :cond_5

    .line 88
    sget v11, Lcom/miui/internal/R$drawable;->preference_category_background_first_no_title:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    :goto_0
    instance-of v11, v9, Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_1

    move-object v11, v9

    .line 101
    check-cast v11, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->onBindViewForCheckBoxPreference(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V

    .line 104
    :cond_1
    sget v11, Lcom/miui/internal/R$id;->arrow_right:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "arrowRight":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v9}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 115
    .local v5, "horizontalExtraPadding":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 118
    .local v3, "backgroundPadding":Landroid/graphics/Rect;
    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 121
    :cond_3
    instance-of v11, v9, Lmiui/preference/RadioButtonPreference;

    if-eqz v11, :cond_4

    .line 122
    invoke-virtual {v9}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$dimen;->preference_item_padding_side_zero:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 124
    .local v6, "left":I
    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 126
    .end local v6    # "left":I
    :cond_4
    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v5, v11

    .line 127
    .local v7, "paddingLeft":I
    iget v11, v3, Landroid/graphics/Rect;->right:I

    add-int v8, v5, v11

    .line 129
    .local v8, "paddingRight":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v11, v8, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    invoke-virtual/range {p0 .. p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 132
    return-void

    .line 90
    .end local v1    # "arrowRight":Landroid/view/View;
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v5    # "horizontalExtraPadding":I
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    :cond_5
    sget v11, Lcom/miui/internal/R$drawable;->preference_category_background_no_title:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 93
    :cond_6
    sget v11, Lcom/miui/internal/R$drawable;->preference_category_background:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {v9}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$attr;->preferenceBackground:I

    invoke-static {v11, v12}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 98
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 106
    .end local v4    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "arrowRight":Landroid/view/View;
    :cond_8
    const/16 v11, 0x8

    goto :goto_1
.end method

.method protected originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/preference/Preference;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
