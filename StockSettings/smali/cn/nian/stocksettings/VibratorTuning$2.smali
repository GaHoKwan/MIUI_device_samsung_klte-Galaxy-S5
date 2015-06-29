.class Lcn/nian/stocksettings/VibratorTuning$2;
.super Ljava/lang/Object;
.source "VibratorTuning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nian/stocksettings/VibratorTuning;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nian/stocksettings/VibratorTuning;


# direct methods
.method constructor <init>(Lcn/nian/stocksettings/VibratorTuning;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcn/nian/stocksettings/VibratorTuning$2;->this$0:Lcn/nian/stocksettings/VibratorTuning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nian/stocksettings/VibratorTuning$2;->this$0:Lcn/nian/stocksettings/VibratorTuning;

    # getter for: Lcn/nian/stocksettings/VibratorTuning;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcn/nian/stocksettings/VibratorTuning;->access$100(Lcn/nian/stocksettings/VibratorTuning;)Landroid/widget/SeekBar;

    move-result-object v0

    # getter for: Lcn/nian/stocksettings/VibratorTuning;->DEFAULT_VALUE:I
    invoke-static {}, Lcn/nian/stocksettings/VibratorTuning;->access$000()I

    move-result v1

    invoke-static {v1}, Lcn/nian/stocksettings/VibratorTuning;->strengthToPercent(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    return-void
.end method
