.class Lcom/android/camera/fragment/FragmentBottomAction$4;
.super Landroid/view/animation/DecelerateInterpolator;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomAction;

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    .line 862
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 865
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 866
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get4(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_4

    sub-float v1, v3, v0

    :goto_0
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 867
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get1(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get2(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_5

    sub-float v1, v3, v0

    :goto_1
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get10(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_6

    sub-float v1, v3, v0

    :goto_2
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 873
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-wrap0(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get13(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_7

    move v1, v0

    :goto_3
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 878
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get12(Lcom/android/camera/fragment/FragmentBottomAction;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->this$0:Lcom/android/camera/fragment/FragmentBottomAction;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomAction;->-get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction$4;->val$start:Z

    if-eqz v1, :cond_8

    move v1, v0

    :goto_4
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 883
    :cond_3
    return v0

    :cond_4
    move v1, v0

    .line 866
    goto :goto_0

    :cond_5
    move v1, v0

    .line 868
    goto :goto_1

    :cond_6
    move v1, v0

    .line 870
    goto :goto_2

    .line 875
    :cond_7
    sub-float v1, v3, v0

    goto :goto_3

    .line 879
    :cond_8
    sub-float v1, v3, v0

    goto :goto_4
.end method
