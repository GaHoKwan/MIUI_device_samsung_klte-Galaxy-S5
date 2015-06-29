.class Lmiui/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 1933
    iput-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 1938
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 1958
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1959
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 1960
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1961
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1962
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 1965
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1966
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 1967
    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1968
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1969
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1944
    iput v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 1945
    iput v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1946
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1947
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1000(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->access$1002(Lmiui/widget/NumberPicker;Z)Z

    .line 1949
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1100(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 1951
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->access$1202(Lmiui/widget/NumberPicker;Z)Z

    .line 1953
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1300(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 1955
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1973
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2007
    :goto_0
    return-void

    .line 1975
    :pswitch_0
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1977
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->access$1002(Lmiui/widget/NumberPicker;Z)Z

    .line 1978
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1100(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1981
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->access$1202(Lmiui/widget/NumberPicker;Z)Z

    .line 1982
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1300(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1987
    :pswitch_3
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1989
    :pswitch_4
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1000(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1993
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # ^= operator for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->access$1080(Lmiui/widget/NumberPicker;I)Z

    .line 1994
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1100(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1997
    :pswitch_5
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1998
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2001
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # ^= operator for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->access$1280(Lmiui/widget/NumberPicker;I)Z

    .line 2002
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lmiui/widget/NumberPicker;->access$1300(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1975
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1987
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
