.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x4

    .line 95
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get4(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get2(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get0(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 96
    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v1, v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get2(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v2, v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get1(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-set0(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I

    .line 103
    return-void
.end method
