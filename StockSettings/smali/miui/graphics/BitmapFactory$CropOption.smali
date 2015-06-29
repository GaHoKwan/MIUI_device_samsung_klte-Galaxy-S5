.class public Lmiui/graphics/BitmapFactory$CropOption;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropOption"
.end annotation


# instance fields
.field public borderColor:I

.field public borderWidth:I

.field public rx:I

.field public ry:I

.field public srcBmpDrawingArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "rx"    # I
    .param p2, "ry"    # I
    .param p3, "borderSize"    # I
    .param p4, "borderColor"    # I

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput p1, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 617
    iput p2, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 618
    iput p3, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 619
    iput p4, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 620
    return-void
.end method

.method public constructor <init>(Lmiui/graphics/BitmapFactory$CropOption;)V
    .locals 1
    .param p1, "cOpt"    # Lmiui/graphics/BitmapFactory$CropOption;

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->rx:I

    .line 624
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->ry:I

    .line 625
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderWidth:I

    .line 626
    iget v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    iput v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->borderColor:I

    .line 627
    iget-object v0, p1, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    iput-object v0, p0, Lmiui/graphics/BitmapFactory$CropOption;->srcBmpDrawingArea:Landroid/graphics/Rect;

    .line 628
    return-void
.end method
