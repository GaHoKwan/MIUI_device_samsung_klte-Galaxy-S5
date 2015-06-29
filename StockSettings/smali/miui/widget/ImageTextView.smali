.class public Lmiui/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# static fields
.field private static final ENTRIES_INDEX:I = 0x0

.field private static final ENTRYVALUES_INDEX:I = 0x1

.field private static final ImageTextView_Styleable:[I


# instance fields
.field private final VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mCharMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100b2
        0x10101f8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    invoke-virtual {p0, v7}, Lmiui/widget/ImageTextView;->setOrientation(I)V

    .line 48
    sget-object v4, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    .local v2, "keys":[Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lmiui/widget/ImageTextView;->getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;

    move-result-object v3

    .line 52
    .local v3, "values":[Ljava/lang/Integer;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 53
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_0

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 56
    iget-object v4, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    aget-object v5, v2, v1

    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void
.end method

.method private getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;
    .locals 6
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 64
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v2, "outValue":Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 66
    .local v4, "result":[Ljava/lang/Integer;
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 68
    .local v3, "res":Landroid/content/res/Resources;
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Integer;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "i":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCharMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "charMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iget-object v3, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    return-void

    .line 105
    :cond_1
    iput-object p1, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 108
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "v":Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 116
    .local v1, "resId":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "resId":Ljava/lang/Integer;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    .restart local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0, v2}, Lmiui/widget/ImageTextView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 120
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 121
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lmiui/widget/ImageTextView;->removeViewAt(I)V

    .line 120
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
