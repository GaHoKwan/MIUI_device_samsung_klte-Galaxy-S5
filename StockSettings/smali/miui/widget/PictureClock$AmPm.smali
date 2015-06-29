.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget v1, Lcom/miui/internal/R$id;->am_pm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 141
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "ampm":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    .line 143
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .param p1, "isMorning"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
