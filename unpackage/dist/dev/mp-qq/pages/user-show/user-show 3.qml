<view id="scroll"><scroll-view style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y><view class="user-avatar-container" style="background:url(../../static/user/user.jpg);"><view class="user-avatar-container flex align-center"><image class="cu-avatar xl avatar-shadow margin-left-lg margin-right" style="border-radius:20rpx;" src="{{userInfo.user_avatar}}"></image><view class="flex-column justify-around"><view class="text-white text-bold text-lg margin-bottom-xs" style="letter-spacing:2rpx;">{{userInfo.user_name}}</view><view class="text-white text-school margin-bottom-xs"><label class="margin-right-xs _span">用户ID:</label>{{userInfo.user_number}}</view><view class="flex align-center"><text class="text-school cuIcon-locationfill margin-right-xs"></text><block wx:if="{{userInfo.user_school!=''&&userInfo.user_school!=null}}"><view class="text-white text-school">{{userInfo.user_school}}</view></block></view></view></view></view><view class="user-info-container flex align-center justify-around"><view class="flex-column align-center"><view class="user-info-title-ftext margin-bottom-sm">关注</view><view class="text-bold text-theme-color">{{userInfo.user_attentions}}</view></view><view class="flex-column align-center"><view class="user-info-title-ftext margin-bottom-sm">粉丝</view><view class="text-bold text-theme-color">{{userInfo.user_followers}}</view></view><view class="flex-column align-center"><view class="user-info-title-ftext margin-bottom-sm">动态</view><view class="text-bold text-theme-color">{{userInfo.user_article_count}}</view></view></view><view class="cu-list menu sm-border card-menu margin-bottom-xl shadow-lg" style="position:relative;top:-50rpx;"></view></scroll-view><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="{{['cu-modal',showToast?'show':'']}}" bindtap="__e"><view class="cu-dialog"><view class="cu-bar bg-white justify-end"><view class="content">操作提示</view><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="action" bindtap="__e"><text class="cuIcon-close text-theme-color"></text></view></view><view class="padding-xl" style="letter-spacing:2rpx;font-size:26rpx;">{{''+toastContent+''}}</view></view></view><notification class="vue-ref" style="z-index:999;" vue-id="1" isdistance="{{true}}" data-ref="notification" bind:__l="__l"></notification></view>