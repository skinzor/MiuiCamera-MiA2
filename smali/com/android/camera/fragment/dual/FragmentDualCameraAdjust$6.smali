.class Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->hideSlideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-set0(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;Z)Z

    .line 608
    iget-object v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$6;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-get1(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 609
    return-void
.end method
