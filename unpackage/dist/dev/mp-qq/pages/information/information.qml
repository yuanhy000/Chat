<view id="information" class="data-v-34b500aa"><scroll-view class="padding-bottom-xl data-v-34b500aa" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y scroll-top="{{page_scroll}}" data-event-opts="{{[['scroll',[['pageScroll',['$event']]]],['scrolltolower',[['loadNextPage']]]]}}" bindscroll="__e" bindscrolltolower="__e"><scroll-view class="nav text-center data-v-34b500aa" style="border-bottom:1px solid #c8c8c8;" scroll-x scroll-with-animation="true" scroll-left="{{scroll_left}}"><view data-event-opts="{{[['tap',[['navSelect',[0]]]]]}}" class="{{['cu-item tab-item-container data-v-34b500aa',currentNav==0?'text-theme-color active-text-border':'']}}" bindtap="__e">头条</view><view data-event-opts="{{[['tap',[['navSelect',[1]]]]]}}" class="{{['cu-item tab-item-container data-v-34b500aa',currentNav==1?'text-theme-color active-text-border':'']}}" bindtap="__e">动态</view></scroll-view><block wx:if="{{currentNav==0}}"><view class="animation-fade data-v-34b500aa"><block wx:if="{{loading}}"><loading class="animation-fade data-v-34b500aa" vue-id="1" bind:__l="__l"></loading></block><block wx:for="{{newsInfo}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view data-event-opts="{{[['tap',[['navigateNews',['$0'],[[['newsInfo','',index,'news_id']]]]]]]}}" class="cu-card article bg-white shadow margin-top margin-left margin-bottom-xl margin-right data-v-34b500aa" style="border-radius:20rpx;" bindtap="__e"><view class="cu-item shadow data-v-34b500aa" style="margin:0;"><view class="title data-v-34b500aa"><view class="text-cut data-v-34b500aa">{{item.news_title}}</view></view><view class="content data-v-34b500aa"><view class="desc margin-right-sm data-v-34b500aa"><view class="text-content data-v-34b500aa" style="font-size:24rpx!important;line-height:40rpx;">{{item.news_content}}</view><view class="data-v-34b500aa"><text class="article-create-time  text-bold text-theme-color margin-right data-v-34b500aa">{{'#'+item.news_author+'#'}}</text><text class="article-create-time data-v-34b500aa">{{item.news_created}}</text></view></view><image src="{{item.news_images[0].image_url}}" mode="aspectFill" data-url="{{item.news_images[0].image_url}}" data-event-opts="{{[['tap',[['viewImage',['$event']]]]]}}" catchtap="__e" class="data-v-34b500aa"></image></view></view></view></block></block><view class="max-width data-v-34b500aa" style="height:50rpx;"></view></view></block><block wx:else><view class="animation-fade data-v-34b500aa"><view class="{{['bg-white nav shadow max-width  data-v-34b500aa',fixTabbar?'fixTabbar':'']}}" style="{{'border-bottom:1px solid #c8c8c8;'+(fixTabbar?'margin-top:-92rpx':'')}}" id="tabbar"><view class="max-width flex align-center data-v-34b500aa" style="height:89rpx;"><block wx:for="{{menu_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="tab-item-width text-center select-container data-v-34b500aa" style="width:25%;" data-id="{{index}}" data-event-opts="{{[['tap',[['tabSelect',['$event']]]]]}}" bindtap="__e"><text class="{{['tab-item-text data-v-34b500aa',index==currentTab?'item-select-container':'']}}" data-id="{{index}}">{{item}}</text></view></block></view></view><block wx:if="{{fixTabbar}}"><view style="height:90rpx;" class="data-v-34b500aa"></view></block><block wx:if="{{loading}}"><loading class="animation-fade data-v-34b500aa" vue-id="2" bind:__l="__l"></loading></block><block wx:else><swiper class="discovery-swiper animation-fade data-v-34b500aa" style="{{'height:'+(currentScrollHeight+'px')+';'}}" duration="{{400}}" id="swiper" current="{{currentTab}}" circular="true" data-event-opts="{{[['change',[['tabSwiper',['$event']]]]]}}" bindchange="__e"><swiper-item class="data-v-34b500aa"><block wx:if="{{!loadingItem&&attentionInfo.length==0}}"><image class="none-default-image data-v-34b500aa" style="margin-bottom:200px;" src="../../static/article/no-attention.png" mode="widthFix"></image></block><block wx:if="{{!loadingItem&&attentionInfo.length!=0}}"><view class="padding-bottom-xl padding-top animation-fade data-v-34b500aa" id="attention"><block wx:for="{{attentionInfo}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view data-event-opts="{{[['tap',[['navigateArticle',['$0',0],[[['attentionInfo','',index,'article_id']]]]]]]}}" class="cu-item shadow bg-white margin-bottom-xl margin-left margin-right data-v-34b500aa" style="border-radius:20rpx;" bindtap="__e"><view class="padding-top-sm padding-bottom-sm padding-left padding-right flex align-center info-border-bottom bg-white data-v-34b500aa" style="border-radius:20rpx;"><image class="cu-avatar article-avatar avatar-shadow margin-right round avatar-border data-v-34b500aa" src="{{item.article_user.user_avatar}}"></image><view class="flex-column justify-center data-v-34b500aa"><text class="aricle-user-name margin-bottom-xs data-v-34b500aa">{{item.article_user.user_name}}</text><view class="data-v-34b500aa"><text class="article-create-time data-v-34b500aa">{{item.display_time}}</text><block wx:if="{{item.article_display_location}}"><text class="article-create-time margin-left data-v-34b500aa">{{"来自"+item.article_user.user_school}}</text></block></view></view></view><block wx:if="{{item.article_title}}"><view class="text-content padding-left padding-right  text-bold text-black margin-top-xs data-v-34b500aa">{{''+item.article_title+''}}</view></block><view class="text-content padding-left padding-right margin-top-xs margin-bottom activity_content data-v-34b500aa"><text decode="true" class="data-v-34b500aa">{{item.article_content}}</text></view><view class="grid flex-sub padding-lr col-3 grid-square margin-bottom data-v-34b500aa"><block wx:for="{{item.article_images}}" wx:for-item="imgItem" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view class="bg-img data-v-34b500aa" style="{{'background-image:'+('url('+imgItem.image_url+')')+';'}}" data-url="{{imgItem.image_url}}" data-event-opts="{{[['tap',[['viewImage',['$event']]]]]}}" catchtap="__e"></view></block></block></view><view class="max-width flex align-center operation-border-top data-v-34b500aa" style="height:90rpx;"><view data-event-opts="{{[['tap',[['likeAttention',[index,'$0'],[[['attentionInfo','',index,'article_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><block wx:if="{{item.article_like}}"><text class="cuIcon-appreciatefill text-theme-color operation-icon data-v-34b500aa"></text></block><block wx:else><text class="cuIcon-appreciate text-theme-color operation-icon data-v-34b500aa"></text></block><text class="text-theme-color data-v-34b500aa">{{item.article_likes}}</text></view><view data-event-opts="{{[['tap',[['navigateArticle',['$0',1],[[['attentionInfo','',index,'article_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><text class="cuIcon-comment text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">{{item.article_comments_count}}</text></view><button class="operation-item flex align-center justify-center icon-button data-v-34b500aa" open-type="share"><text class="cuIcon-share text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">分享</text></button></view></view></block></block></view></block></swiper-item><swiper-item class="data-v-34b500aa"><block wx:if="{{!loadingItem}}"><view class="padding-bottom-xl padding-top animation-fade data-v-34b500aa" id="activity"><block wx:for="{{activityInfo}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view data-event-opts="{{[['tap',[['navigateActivity',['$0',0],[[['activityInfo','',index,'activity_id']]]]]]]}}" class="cu-item shadow bg-white margin-bottom-xl margin-left margin-right data-v-34b500aa" style="border-radius:20rpx;" bindtap="__e"><view class="padding-top-sm padding-bottom-sm padding-left padding-right flex align-center info-border-bottom bg-white data-v-34b500aa" style="border-radius:20rpx;"><image class="cu-avatar article-avatar avatar-shadow margin-right round avatar-border data-v-34b500aa" src="{{item.activity_user.user_avatar}}"></image><view class="flex-column justify-center data-v-34b500aa"><text class="aricle-user-name margin-bottom-xs data-v-34b500aa">{{item.activity_user.user_name}}</text><view class="data-v-34b500aa"><text class="article-create-time data-v-34b500aa">{{item.display_time}}</text><text class="article-create-time margin-left data-v-34b500aa">{{"来自"+item.activity_user.user_school}}</text></view></view></view><view class="text-content padding-left padding-right margin-bottom-xs text-bold text-black margin-top-xs data-v-34b500aa">{{''+item.activity_name+''}}</view><view class="text-content padding-left padding-right margin-bottom activity_content data-v-34b500aa">{{''+item.activity_content+''}}</view><view class="text-content padding-left padding-right margin-bottom-xs text-bold text-black margin-top-xs data-v-34b500aa">注意事项</view><view class="text-content padding-left padding-right margin-bottom activity_attention data-v-34b500aa">{{''+item.activity_attention+''}}</view><view class="grid flex-sub padding-lr col-3 grid-square margin-bottom-xs data-v-34b500aa"><block wx:for="{{item.activity_images}}" wx:for-item="imgItem" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view class="bg-img data-v-34b500aa" style="{{'background-image:'+('url('+imgItem.image_url+')')+';'}}" data-url="{{imgItem.image_url}}" data-event-opts="{{[['tap',[['viewImage',['$event']]]]]}}" catchtap="__e"></view></block></block></view><view class="article-create-time margin-left margin-bottom data-v-34b500aa">{{item.activity_school+" ·\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t"+item.activity_organization}}</view><view class="max-width flex align-center operation-border-top data-v-34b500aa" style="height:90rpx;"><view data-event-opts="{{[['tap',[['likeActivity',[index,'$0'],[[['activityInfo','',index,'activity_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><block wx:if="{{item.activity_like}}"><text class="cuIcon-appreciatefill text-theme-color operation-icon data-v-34b500aa"></text></block><block wx:else><text class="cuIcon-appreciate text-theme-color operation-icon data-v-34b500aa"></text></block><text class="text-theme-color data-v-34b500aa">{{item.activity_likes}}</text></view><view data-event-opts="{{[['tap',[['navigateActivity',['$0',1],[[['activityInfo','',index,'activity_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><text class="cuIcon-comment text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">{{item.activity_comments_count}}</text></view><button class="operation-item flex align-center justify-center icon-button data-v-34b500aa" open-type="share"><text class="cuIcon-share text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">分享</text></button></view></view></block></block></view></block></swiper-item><swiper-item class="data-v-34b500aa"><block wx:if="{{!loadingItem}}"><view class="padding-bottom-xl padding-top animation-fade data-v-34b500aa" id="article"><block wx:for="{{articleInfo}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view data-event-opts="{{[['tap',[['navigateArticle',['$0',0],[[['articleInfo','',index,'article_id']]]]]]]}}" class="cu-item shadow bg-white margin-bottom-xl margin-left margin-right data-v-34b500aa" style="border-radius:20rpx;" bindtap="__e"><view class="padding-top-sm padding-bottom-sm padding-left padding-right flex align-center info-border-bottom bg-white data-v-34b500aa" style="border-radius:20rpx;"><block wx:if="{{!item.article_anonymity}}"><image class="cu-avatar article-avatar avatar-shadow margin-right round avatar-border data-v-34b500aa" src="{{item.article_user.user_avatar}}"></image></block><block wx:else><image class="cu-avatar article-avatar avatar-shadow margin-right round avatar-border data-v-34b500aa" style="background-color:#F1F1F1;" src="../../static/article/anonymity.png"></image></block><view class="flex-column justify-center data-v-34b500aa"><block wx:if="{{!item.article_anonymity}}"><text class="aricle-user-name margin-bottom-xs data-v-34b500aa">{{item.article_user.user_name}}</text></block><block wx:else><text class="aricle-user-name margin-bottom-xs data-v-34b500aa">匿名用户</text></block><view class="data-v-34b500aa"><text class="article-create-time data-v-34b500aa">{{item.display_time}}</text><block wx:if="{{item.article_display_location}}"><text class="article-create-time margin-left data-v-34b500aa">{{"来自"+item.article_user.user_school}}</text></block></view></view></view><block wx:if="{{tem.article_title}}"><view class="text-content padding-left padding-right text-bold text-black margin-top-xs data-v-34b500aa">{{''+item.article_title+''}}</view></block><view class="text-content padding-left padding-right margin-top-xs margin-bottom activity_content data-v-34b500aa"><text decode="true" class="data-v-34b500aa">{{item.article_content}}</text></view><view class="grid flex-sub padding-lr col-3 grid-square margin-bottom data-v-34b500aa"><block wx:for="{{item.article_images}}" wx:for-item="imgItem" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view class="bg-img data-v-34b500aa" style="{{'background-image:'+('url('+imgItem.image_url+')')+';'}}" data-url="{{imgItem.image_url}}" data-event-opts="{{[['tap',[['viewImage',['$event']]]]]}}" catchtap="__e"></view></block></block></view><view class="max-width flex align-center operation-border-top data-v-34b500aa" style="height:90rpx;"><view data-event-opts="{{[['tap',[['likeArticle',[index,'$0'],[[['articleInfo','',index,'article_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><block wx:if="{{item.article_like}}"><text class="cuIcon-appreciatefill text-theme-color operation-icon data-v-34b500aa"></text></block><block wx:else><text class="cuIcon-appreciate text-theme-color operation-icon data-v-34b500aa"></text></block><text class="text-theme-color data-v-34b500aa">{{item.article_likes}}</text></view><view data-event-opts="{{[['tap',[['navigateArticle',['$0',1],[[['articleInfo','',index,'article_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><text class="cuIcon-comment text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">{{item.article_comments_count}}</text></view><button class="operation-item flex align-center justify-center icon-button data-v-34b500aa" open-type="share"><text class="cuIcon-share text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">分享</text></button></view></view></block></block></view></block></swiper-item><swiper-item class="data-v-34b500aa"><block wx:if="{{!loadingItem}}"><view class="padding-bottom-xl padding-top animation-fade data-v-34b500aa" id="recruit"><block wx:for="{{recruitInfo}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view data-event-opts="{{[['tap',[['navigateRecruit',['$0',0],[[['recruitInfo','',index,'recruit_id']]]]]]]}}" class="cu-item shadow bg-white margin-bottom-xl margin-left margin-right data-v-34b500aa" style="border-radius:20rpx;" bindtap="__e"><view class="padding-top-sm padding-bottom-sm padding-left padding-right flex align-center info-border-bottom bg-white data-v-34b500aa" style="border-radius:20rpx;"><image class="cu-avatar article-avatar avatar-shadow margin-right round avatar-border data-v-34b500aa" src="{{item.recruit_user.user_avatar}}"></image><view class="flex-column justify-center data-v-34b500aa"><text class="aricle-user-name margin-bottom-xs data-v-34b500aa">{{item.recruit_user.user_name}}</text><view class="data-v-34b500aa"><text class="article-create-time data-v-34b500aa">{{item.display_time}}</text><block wx:if="{{item.recruit_display_location}}"><text class="article-create-time margin-left data-v-34b500aa">{{"来自"+item.recruit_user.user_school}}</text></block></view></view></view><view class="text-content padding-left padding-right margin-bottom-xs text-bold text-theme-color margin-top-xs data-v-34b500aa">{{'#'+item.recruit_target+'#'}}</view><view class="text-content padding-left padding-right margin-bottom-xs text-bold text-black margin-top-xs data-v-34b500aa">{{''+item.recruit_title+''}}</view><view class="text-content padding-left padding-right margin-bottom activity_content data-v-34b500aa">{{''+item.recruit_content+''}}</view><view class="grid flex-sub padding-lr col-3 grid-square margin-bottom data-v-34b500aa"><block wx:for="{{item.recruit_images}}" wx:for-item="imgItem" wx:for-index="index" wx:key="index"><block class="data-v-34b500aa"><view class="bg-img data-v-34b500aa" style="{{'background-image:'+('url('+imgItem.image_url+')')+';'}}" data-url="{{imgItem.image_url}}" data-event-opts="{{[['tap',[['viewImage',['$event']]]]]}}" catchtap="__e"></view></block></block></view><view class="max-width flex align-center operation-border-top data-v-34b500aa" style="height:90rpx;"><view data-event-opts="{{[['tap',[['likeRecruit',[index,'$0'],[[['recruitInfo','',index,'recruit_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><block wx:if="{{item.recruit_like}}"><text class="cuIcon-appreciatefill text-theme-color operation-icon data-v-34b500aa"></text></block><block wx:else><text class="cuIcon-appreciate text-theme-color operation-icon data-v-34b500aa"></text></block><text class="text-theme-color data-v-34b500aa">{{item.recruit_likes}}</text></view><view data-event-opts="{{[['tap',[['navigateRecruit',['$0',1],[[['recruitInfo','',index,'recruit_id']]]]]]]}}" class="operation-item flex align-center justify-center data-v-34b500aa" catchtap="__e"><text class="cuIcon-comment text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">{{item.recruit_comments_count}}</text></view><button class="operation-item flex align-center justify-center icon-button data-v-34b500aa" open-type="share"><text class="cuIcon-share text-theme-color operation-icon data-v-34b500aa"></text><text class="text-theme-color data-v-34b500aa">分享</text></button></view></view></block></block></view></block></swiper-item></swiper></block></view></block><block wx:if="{{loadingNext}}"><loading class="animation-fade data-v-34b500aa" vue-id="3" bind:__l="__l"></loading></block><notification vue-id="4" isdistance="{{true}}" data-ref="notification" class="data-v-34b500aa vue-ref" bind:__l="__l"></notification></scroll-view><block wx:if="{{loadingItem}}"><loading class="animation-fade fix-loading data-v-34b500aa" vue-id="5" bind:__l="__l"></loading></block></view>