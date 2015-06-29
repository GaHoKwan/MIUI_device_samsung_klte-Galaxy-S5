.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$1;,
        Lmiui/media/Mp3Recorder$EventHandler;,
        Lmiui/media/Mp3Recorder$RecordingThread;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field private static final AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final MP3_RECORDER_EVENT_ERROR:I = 0x1

.field private static final STATE_IDEL:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PREPARED:I = 0x1

.field private static final STATE_RECORDING:I = 0x2

.field private static final STATE_STOPED:I = 0x4


# instance fields
.field private bufferMP3:[B

.field private bufferPCM:[S

.field private mAudioChannel:I

.field private mAudioSource:I

.field private mChannelCount:I

.field private mCountRecordingSamples:J

.field private mCurrentRecordingSize:J

.field private mEventHandler:Landroid/os/Handler;

.field private mMaxAmplitude:I

.field private mMaxFileSize:J

.field private mMinBufferSize:I

.field private mMp3Encoder:Lmiui/media/Mp3Encoder;

.field private mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

.field private mOutBitRate:I

.field private mOutMode:I

.field private mOutputFile:Ljava/io/File;

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParams:Ljava/lang/String;

.field private mQuality:I

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecordingState:I

.field private mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    .line 110
    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    .line 111
    return-void

    .line 104
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v1, Lmiui/media/Mp3Recorder$EventHandler;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$EventHandler;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "Mp3Recorder"

    const-string v2, "Could not create event handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$100(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    return v0
.end method

.method static synthetic access$1000(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    return v0
.end method

.method static synthetic access$1100(Lmiui/media/Mp3Recorder;)[B
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/media/Mp3Recorder;)I
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget v0, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1500(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1514(Lmiui/media/Mp3Recorder;J)J
    .locals 3
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method static synthetic access$1600(Lmiui/media/Mp3Recorder;)J
    .locals 2
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/media/Mp3Recorder;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/media/Mp3Recorder;)[S
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    return-object v0
.end method

.method static synthetic access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$614(Lmiui/media/Mp3Recorder;J)J
    .locals 3
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    return-wide v0
.end method

.method static synthetic access$702(Lmiui/media/Mp3Recorder;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return p1
.end method

.method static synthetic access$800(Lmiui/media/Mp3Recorder;[SI)I
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;
    .param p1, "x1"    # [S
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .locals 1
    .param p0, "x0"    # Lmiui/media/Mp3Recorder;

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    return-object v0
.end method

.method private findMaxAmplitude([SI)I
    .locals 4
    .param p1, "buffer"    # [S
    .param p2, "size"    # I

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 437
    aget-short v3, p1, v0

    if-gez v3, :cond_1

    aget-short v3, p1, v0

    neg-int v2, v3

    .line 438
    .local v2, "tmp":I
    :goto_1
    if-le v2, v1, :cond_0

    .line 439
    move v1, v2

    .line 436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "tmp":I
    :cond_1
    aget-short v2, p1, v0

    goto :goto_1

    .line 442
    :cond_2
    return v1
.end method

.method private notifyError(I)V
    .locals 3
    .param p1, "err"    # I

    .prologue
    .line 530
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 533
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMaxAmplitude:I

    return v0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    .prologue
    .line 324
    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v1, :cond_1

    .line 341
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Recording not started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 344
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v1}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :goto_0
    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 352
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 354
    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord released"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 356
    const-string v1, "Mp3Recorder"

    const-string v2, "Mp3Recorder paused"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v4, 0x2

    .line 254
    iget v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    invoke-static {v0, v1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    .line 256
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    if-gez v0, :cond_0

    .line 257
    const-string v0, "Mp3Recorder"

    const-string v1, "Error when getting min buffer size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not calculate the min buffer size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mMinBufferSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    .line 261
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 263
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result v6

    .line 266
    .local v6, "ok":I
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v6    # "ok":I
    :cond_1
    :goto_0
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    if-ne v0, v8, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    .line 273
    iget v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    if-ne v0, v8, :cond_4

    :goto_2
    iput v4, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    .line 276
    const-wide v0, 0x40bc200000000000L    # 7200.0

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    .line 277
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setInSampleRate(I)V

    .line 278
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mOutMode:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutMode(I)V

    .line 279
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mChannelCount:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setChannelCount(I)V

    .line 280
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutSampleRate(I)V

    .line 281
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setOutBitRate(I)V

    .line 282
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->setQuality(I)V

    .line 283
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->init()Z

    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    .line 286
    iput v7, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 287
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    const-string v0, "Mp3Recorder"

    const-string v1, "Do not support extra parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    move v4, v7

    .line 273
    goto :goto_2
.end method

.method public release()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 428
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->close()I

    .line 431
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 232
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 235
    const v0, 0xac44

    iput v0, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 236
    const/16 v0, 0x10

    iput v0, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    .line 237
    iput v1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 238
    iput v1, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 239
    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 240
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 241
    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 242
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 243
    new-instance v0, Lmiui/media/Mp3Encoder;

    invoke-direct {v0}, Lmiui/media/Mp3Encoder;-><init>()V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    .line 244
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 364
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    if-ne v0, v6, :cond_1

    .line 365
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    iget v2, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    iget v3, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    const/4 v4, 0x2

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferPCM:[S

    array-length v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    .line 367
    const-string v0, "Mp3Recorder"

    const-string v1, "Apply new AudioRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 369
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_0
    :try_start_1
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 374
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 375
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 376
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 378
    :cond_1
    :try_start_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setAudioChannel(I)V
    .locals 0
    .param p1, "audioChannel"    # I

    .prologue
    .line 198
    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioChannel:I

    .line 199
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0
    .param p1, "samplingRate"    # I

    .prologue
    .line 138
    iput p1, p0, Lmiui/media/Mp3Recorder;->mSampleRate:I

    .line 139
    return-void
.end method

.method public setAudioSource(I)V
    .locals 0
    .param p1, "audio_source"    # I

    .prologue
    .line 129
    iput p1, p0, Lmiui/media/Mp3Recorder;->mAudioSource:I

    .line 130
    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lmiui/media/Mp3Recorder;->AudioRecordClass:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not support extra parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMaxDuration(J)V
    .locals 3
    .param p1, "maxDurByMillis"    # J

    .prologue
    .line 221
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 222
    iget v0, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setMaxFileSize(J)V
    .locals 3
    .param p1, "maxSizeByByte"    # J

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 208
    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mMaxFileSize:J

    goto :goto_0
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .prologue
    .line 156
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    .line 157
    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0
    .param p1, "brate"    # I

    .prologue
    .line 147
    iput p1, p0, Lmiui/media/Mp3Recorder;->mOutBitRate:I

    .line 148
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 166
    iput p1, p0, Lmiui/media/Mp3Recorder;->mQuality:I

    .line 167
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 302
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I

    .line 308
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 309
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    .line 313
    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Lmiui/media/Mp3Recorder$RecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 315
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder$RecordingThread;->start()V

    .line 316
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    iput v3, p0, Lmiui/media/Mp3Recorder;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :try_start_1
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder$RecordingThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lmiui/media/Mp3Recorder;->mRecordingThread:Lmiui/media/Mp3Recorder$RecordingThread;

    .line 398
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;

    iget-object v4, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    iget-object v5, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v5}, Lmiui/media/Mp3Encoder;->flush([BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 400
    .local v2, "flushSize":I
    if-lez v2, :cond_2

    .line 401
    :try_start_3
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmiui/media/Mp3Recorder;->bufferMP3:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    :try_start_4
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 413
    :goto_1
    :try_start_5
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 415
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    :goto_2
    const-string v3, "Mp3Recorder"

    const-string v4, "Mp3Recorder stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 393
    .end local v2    # "flushSize":I
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e1":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "Mp3Recorder"

    const-string v4, "InterruptedException when stop"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 388
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 403
    .restart local v2    # "flushSize":I
    :cond_2
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Buffer flush must greater than 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 405
    :catch_1
    move-exception v0

    .line 406
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be written when flush"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 409
    :try_start_9
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 413
    :goto_3
    :try_start_a
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 415
    const-string v3, "Mp3Recorder"

    const-string v4, "AudioRecord stoped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 410
    :catch_3
    move-exception v0

    .line 411
    const-string v3, "Mp3Recorder"

    const-string v4, "Error file cannot be closed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 409
    :try_start_b
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 413
    :goto_4
    :try_start_c
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_3

    .line 414
    iget-object v4, p0, Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 415
    const-string v4, "Mp3Recorder"

    const-string v5, "AudioRecord stoped"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v3

    .line 410
    :catch_4
    move-exception v0

    .line 411
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Mp3Recorder"

    const-string v5, "Error file cannot be closed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4
.end method
