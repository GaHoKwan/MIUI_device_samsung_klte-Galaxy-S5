.class Lmiui/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lmiui/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 267
    iput-object p1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 271
    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$200(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$300(Lmiui/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 273
    .local v0, "volume":I
    iget-object v1, p0, Lmiui/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Lmiui/preference/VolumePreference$SeekBarVolumizer;

    # getter for: Lmiui/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lmiui/preference/VolumePreference$SeekBarVolumizer;->access$100(Lmiui/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 275
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
