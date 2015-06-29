.class Lmiui/media/Mp3Recorder$RecordingThread;
.super Ljava/lang/Thread;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/Mp3Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/Mp3Recorder;


# direct methods
.method private constructor <init>(Lmiui/media/Mp3Recorder;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/media/Mp3Recorder;Lmiui/media/Mp3Recorder$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/media/Mp3Recorder;
    .param p2, "x1"    # Lmiui/media/Mp3Recorder$1;

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder$RecordingThread;-><init>(Lmiui/media/Mp3Recorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 464
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 465
    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v0

    if-eq v0, v11, :cond_0

    .line 467
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x1

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    .line 526
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 472
    const-string v0, "Mp3Recorder"

    const-string v1, "Error out put stream not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v11}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_0

    .line 484
    .local v3, "readSize":I
    :cond_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    # invokes: Lmiui/media/Mp3Recorder;->findMaxAmplitude([SI)I
    invoke-static {v1, v2, v3}, Lmiui/media/Mp3Recorder;->access$800(Lmiui/media/Mp3Recorder;[SI)I

    move-result v1

    # setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    .line 485
    const/4 v7, 0x0

    .line 486
    .local v7, "encodeSize":I
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->getSamplesToEncode()I

    move-result v8

    .line 487
    .local v8, "lastSamplesToEncode":I
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mAudioChannel:I
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1000(Lmiui/media/Mp3Recorder;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 488
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual/range {v0 .. v5}, Lmiui/media/Mp3Encoder;->encode([S[SI[BI)I

    move-result v7

    .line 492
    :goto_1
    if-gtz v7, :cond_6

    .line 493
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->getSamplesToEncode()I

    move-result v9

    .line 494
    .local v9, "samplesToEncode":I
    if-nez v7, :cond_5

    if-le v9, v8, :cond_5

    .line 495
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a complete frame samples to encode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skiped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v3    # "readSize":I
    .end local v7    # "encodeSize":I
    .end local v8    # "lastSamplesToEncode":I
    .end local v9    # "samplesToEncode":I
    :cond_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecordingState:I
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$100(Lmiui/media/Mp3Recorder;)I

    move-result v0

    if-ne v0, v11, :cond_3

    .line 477
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$500(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v10, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    .line 478
    .restart local v3    # "readSize":I
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v4, v3

    # += operator for: Lmiui/media/Mp3Recorder;->mCountRecordingSamples:J
    invoke-static {v0, v4, v5}, Lmiui/media/Mp3Recorder;->access$614(Lmiui/media/Mp3Recorder;J)J

    .line 479
    if-gtz v3, :cond_1

    .line 480
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error record sample failed, read size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x3

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    .line 524
    .end local v3    # "readSize":I
    :cond_3
    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # setter for: Lmiui/media/Mp3Recorder;->mMaxAmplitude:I
    invoke-static {v0, v10}, Lmiui/media/Mp3Recorder;->access$702(Lmiui/media/Mp3Recorder;I)I

    .line 525
    const-string v0, "Mp3Recorder"

    const-string v1, "RecordingThread stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 490
    .restart local v3    # "readSize":I
    .restart local v7    # "encodeSize":I
    .restart local v8    # "lastSamplesToEncode":I
    :cond_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMp3Encoder:Lmiui/media/Mp3Encoder;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$900(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferPCM:[S
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$400(Lmiui/media/Mp3Recorder;)[S

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mChannelCount:I
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1200(Lmiui/media/Mp3Recorder;)I

    move-result v2

    div-int v2, v3, v2

    iget-object v4, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v4}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v4

    iget-object v5, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v5}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lmiui/media/Mp3Encoder;->encodeInterleaved([SI[BI)I

    move-result v7

    goto/16 :goto_1

    .line 498
    .restart local v9    # "samplesToEncode":I
    :cond_5
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encode PCM failed, encode size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and no new samples added lastSamples = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curSamples = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOnErrorListener:Lmiui/media/Mp3Recorder$RecordingErrorListener;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1300(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x4

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto :goto_2

    .line 507
    .end local v9    # "samplesToEncode":I
    :cond_6
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputFile:Ljava/io/File;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1400(Lmiui/media/Mp3Recorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 508
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/16 v1, 0x8

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2

    .line 512
    :cond_7
    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$300(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    iget-object v1, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->bufferMP3:[B
    invoke-static {v1}, Lmiui/media/Mp3Recorder;->access$1100(Lmiui/media/Mp3Recorder;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 513
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    int-to-long v4, v7

    # += operator for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v0, v4, v5}, Lmiui/media/Mp3Recorder;->access$1514(Lmiui/media/Mp3Recorder;J)J

    .line 514
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mCurrentRecordingSize:J
    invoke-static {v0}, Lmiui/media/Mp3Recorder;->access$1500(Lmiui/media/Mp3Recorder;)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mMaxFileSize:J
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1600(Lmiui/media/Mp3Recorder;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 515
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x7

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 518
    :catch_0
    move-exception v6

    .line 519
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when write sample to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    # getter for: Lmiui/media/Mp3Recorder;->mOutputFilePath:Ljava/lang/String;
    invoke-static {v2}, Lmiui/media/Mp3Recorder;->access$1700(Lmiui/media/Mp3Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lmiui/media/Mp3Recorder$RecordingThread;->this$0:Lmiui/media/Mp3Recorder;

    const/4 v1, 0x5

    # invokes: Lmiui/media/Mp3Recorder;->notifyError(I)V
    invoke-static {v0, v1}, Lmiui/media/Mp3Recorder;->access$200(Lmiui/media/Mp3Recorder;I)V

    goto/16 :goto_2
.end method
