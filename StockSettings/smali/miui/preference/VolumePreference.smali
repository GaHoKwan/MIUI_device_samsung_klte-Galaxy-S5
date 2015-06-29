.class public Lmiui/preference/VolumePreference;
.super Lmiui/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/preference/VolumePreference$SeekBarVolumizer;,
        Lmiui/preference/VolumePreference$SavedState;,
        Lmiui/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

.field private static final PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "VolumePreference"

.field private static final VolumePreference_streamType:I


# instance fields
.field private mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "registerOnActivityStopListener"

    const-string v2, "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

    .line 54
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "unregisterOnActivityStopListener"

    const-string v2, "(Landroid/preference/PreferenceManager$OnActivityStopListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/preference/VolumePreference;->PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

    .line 57
    invoke-static {}, Lmiui/preference/VolumePreference;->getVolumePreferenceStreamType()I

    move-result v0

    sput v0, Lmiui/preference/VolumePreference;->VolumePreference_streamType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lmiui/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    sget-object v1, Lcom/miui/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lmiui/preference/VolumePreference;->VolumePreference_streamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method private cleanup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 150
    sget-object v2, Lmiui/preference/VolumePreference;->PreferenceManager_unregisterOnActivityStopListener:Lmiui/reflect/Method;

    const-class v3, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 155
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 160
    :cond_0
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 162
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 163
    iput-object v7, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    .line 166
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method

.method private static getVolumePreferenceStreamType()I
    .locals 5

    .prologue
    .line 63
    :try_start_0
    const-string v2, "android.R.styleable"

    const-string v3, "VolumePreference_streamType"

    const-string v4, "I"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    .line 64
    .local v1, "field":Lmiui/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    :goto_0
    return v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # invokes: Lmiui/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V
    invoke-static {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$000(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 89
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 91
    sget v1, Lcom/miui/internal/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 92
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;-><init>(Lmiui/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    .line 94
    sget-object v1, Lmiui/preference/VolumePreference;->PreferenceManager_registerOnActivityStopListener:Lmiui/reflect/Method;

    const-class v2, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 100
    invoke-virtual {p1, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 102
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 131
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 133
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 137
    :cond_0
    invoke-direct {p0}, Lmiui/preference/VolumePreference;->cleanup()V

    .line 138
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    iget-object v3, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 108
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 125
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 107
    goto :goto_1

    .line 110
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 115
    :sswitch_1
    if-eqz v0, :cond_0

    .line 116
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 120
    :sswitch_2
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lmiui/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 197
    check-cast v0, Lmiui/preference/VolumePreference$SavedState;

    .line 198
    .local v0, "myState":Lmiui/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lmiui/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 199
    iget-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lmiui/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Lmiui/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    .line 169
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 172
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lmiui/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 177
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lmiui/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 182
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lmiui/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Lmiui/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 183
    .local v0, "myState":Lmiui/preference/VolumePreference$SavedState;
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lmiui/preference/VolumePreference;->mSeekBarVolumizer:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lmiui/preference/VolumePreference$SavedState;->getVolumeStore()Lmiui/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lmiui/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 186
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 84
    iput p1, p0, Lmiui/preference/VolumePreference;->mStreamType:I

    .line 85
    return-void
.end method
