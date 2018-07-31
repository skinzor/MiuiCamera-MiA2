.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTAG:I

.field private mTextNormalColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "supportedConfigs"    # Lcom/android/camera/data/data/config/SupportedConfigs;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    .line 47
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 48
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 50
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    .line 51
    const v0, -0x4c000001

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    .line 52
    const v0, -0x141415

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .line 53
    const v0, -0xe66d19

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 54
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 22
    .param p1, "holder"    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v9

    .line 76
    .local v9, "config":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/16 v17, 0x0

    .line 80
    .local v17, "topResourceId":I
    const/4 v15, -0x1

    .line 82
    .local v15, "textResource":I
    const/4 v13, 0x0

    .line 84
    .local v13, "selected":Z
    packed-switch v9, :pswitch_data_0

    .line 197
    .end local v13    # "selected":Z
    :goto_0
    :pswitch_0
    const v18, 0x7f0a005e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 198
    .local v16, "textView":Landroid/widget/TextView;
    const v18, 0x7f0a005d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/ColorImageView;

    .line 199
    .local v11, "imageView":Lcom/android/camera/ui/ColorImageView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(I)V

    .line 201
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 202
    .local v14, "textColor":I
    :goto_1
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 203
    .local v10, "imageColor":I
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    invoke-virtual {v11, v10}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 205
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/camera/ui/ColorImageView;->setImageResource(I)V

    .line 206
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v9, :cond_0

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 210
    if-eqz v13, :cond_5

    .line 211
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0123

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 216
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/fragment/top/ExtraAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/top/ExtraAdapter$1;-><init>(Lcom/android/camera/fragment/top/ExtraAdapter;Lcom/android/camera/fragment/CommonRecyclerViewHolder;)V

    .line 221
    const-wide/16 v20, 0x64

    .line 216
    invoke-virtual/range {v18 .. v21}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 86
    .end local v10    # "imageColor":I
    .end local v11    # "imageView":Lcom/android/camera/ui/ColorImageView;
    .end local v14    # "textColor":I
    .end local v16    # "textView":Landroid/widget/TextView;
    .restart local v13    # "selected":Z
    :pswitch_1
    const v17, 0x7f02009b

    .line 87
    const v15, 0x7f0f0285

    .line 88
    goto/16 :goto_0

    .line 91
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v8

    .line 92
    .local v8, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v8}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v13

    .line 93
    .local v13, "selected":Z
    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueSelectedDrawable(I)I

    move-result v17

    .line 94
    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueDisplayString(I)I

    move-result v15

    goto/16 :goto_0

    .line 98
    .end local v8    # "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .local v13, "selected":Z
    :pswitch_3
    const v17, 0x7f0200b3

    .line 99
    const v15, 0x7f0f0287

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_audio_capture"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 104
    .local v13, "selected":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v7

    .line 105
    .local v7, "componentRunningTiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_tilt_shift_mode"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .line 106
    .local v13, "selected":Z
    if-eqz v13, :cond_1

    .line 107
    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueDisplayString(I)I

    move-result v15

    .line 108
    const/16 v18, 0xa0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueSelectedDrawable(I)I

    move-result v17

    goto/16 :goto_0

    .line 110
    :cond_1
    const v15, 0x7f0f028b

    .line 111
    const v17, 0x7f0200b5

    goto/16 :goto_0

    .line 116
    .end local v7    # "componentRunningTiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    .local v13, "selected":Z
    :pswitch_5
    const v17, 0x7f0200b4

    .line 117
    const v15, 0x7f0f0288

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_gradienter_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 122
    .local v13, "selected":Z
    :pswitch_6
    const v17, 0x7f0200ac

    .line 123
    const v15, 0x7f0f0289

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_hand_night_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 128
    .local v13, "selected":Z
    :pswitch_7
    const v17, 0x7f0200ad

    .line 129
    const v15, 0x7f0f028d

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_ubifocus_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 134
    .local v13, "selected":Z
    :pswitch_8
    const v17, 0x7f0200a7

    .line 135
    const v15, 0x7f0f028a

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_groupshot_mode_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 140
    .local v13, "selected":Z
    :pswitch_9
    const v17, 0x7f0200b0

    .line 141
    const v15, 0x7f0f028c

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_scenemode_setting_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 146
    .local v13, "selected":Z
    :pswitch_a
    const v17, 0x7f0200b2

    .line 147
    const v15, 0x7f0f01b7

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_video_speed_slow_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 152
    .local v13, "selected":Z
    :pswitch_b
    const v17, 0x7f02009c

    .line 153
    const v15, 0x7f0f01b6

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_video_speed_fast_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 158
    .local v13, "selected":Z
    :pswitch_c
    const v17, 0x7f0200ae

    .line 159
    const v15, 0x7f0f0217

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_magic_mirror_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 164
    .local v13, "selected":Z
    :pswitch_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v6

    .line 165
    .local v6, "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    const v17, 0x7f0200af

    .line 166
    const v15, 0x7f0f0047

    .line 167
    goto/16 :goto_0

    .line 170
    .end local v6    # "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    :pswitch_e
    const v17, 0x7f0200a6

    .line 171
    const v15, 0x7f0f0189

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    move-object/from16 v18, v0

    const-string/jumbo v19, "pref_camera_show_gender_age_key"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 176
    .local v13, "selected":Z
    :pswitch_f
    const v17, 0x7f02009a

    .line 177
    sget-boolean v18, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v18, :cond_2

    const v15, 0x7f0f0162

    .line 179
    :goto_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v13

    .local v13, "selected":Z
    goto/16 :goto_0

    .line 178
    .local v13, "selected":Z
    :cond_2
    const v15, 0x7f0f0161

    goto :goto_4

    .line 183
    :pswitch_10
    const/4 v13, 0x0

    .line 184
    const v17, 0x7f020096

    .line 185
    const v15, 0x7f0f01fa

    .line 186
    goto/16 :goto_0

    .line 189
    :pswitch_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v12

    .line 190
    .local v12, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    .line 191
    .local v4, "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v13

    .line 192
    .local v13, "selected":Z
    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueSelectedDrawable(I)I

    move-result v17

    .line 193
    invoke-virtual {v4, v12}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueDisplayString(I)I

    move-result v15

    goto/16 :goto_0

    .line 201
    .end local v4    # "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .end local v12    # "mode":I
    .end local v13    # "selected":Z
    .restart local v11    # "imageView":Lcom/android/camera/ui/ColorImageView;
    .restart local v16    # "textView":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    .restart local v14    # "textColor":I
    goto/16 :goto_1

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .restart local v10    # "imageColor":I
    goto/16 :goto_2

    .line 213
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0124

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040023

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz v1, :cond_0

    .line 65
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 67
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setNewDegree(I)V
    .locals 0
    .param p1, "newDegree"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    .line 58
    return-void
.end method

.method public setOnClictTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTAG:I

    .line 233
    return-void
.end method
