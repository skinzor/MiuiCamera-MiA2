.class Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StillImageData"
.end annotation


# instance fields
.field public mId:I

.field public mImage:Ljava/nio/ByteBuffer;

.field public mMotionData:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;II[B[B)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/module/MorphoPanoramaModule;
    .param p2, "imageId"    # I
    .param p3, "previewCnt"    # I
    .param p4, "stillImage"    # [B
    .param p5, "motionData"    # [B

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mId:I

    .line 919
    invoke-static {p4}, Lcom/android/camera/PanoUtil;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    .line 920
    invoke-static {p5}, Lcom/android/camera/PanoUtil;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    .line 921
    return-void
.end method
