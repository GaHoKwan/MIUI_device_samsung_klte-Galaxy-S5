.class Lmiui/widget/NavigationLayout$WidthDescription;
.super Ljava/lang/Object;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthDescription"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;
    .locals 5
    .param p0, "value"    # Landroid/util/TypedValue;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const v4, 0x3e99999a    # 0.3f

    const/4 v3, 0x1

    .line 1013
    new-instance v0, Lmiui/widget/NavigationLayout$WidthDescription;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$WidthDescription;-><init>()V

    .line 1014
    .local v0, "d":Lmiui/widget/NavigationLayout$WidthDescription;
    if-nez p0, :cond_1

    .line 1015
    iput v3, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1016
    iput v4, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1034
    :cond_0
    iput v3, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1035
    iput v4, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    .line 1037
    :goto_0
    return-object v0

    .line 1018
    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1019
    iput v3, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1020
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_0

    .line 1022
    :cond_2
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1023
    iput v3, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1024
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_0

    .line 1026
    :cond_3
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1027
    const/4 v1, 0x0

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    .line 1028
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_0
.end method
