<view class="addition-container "><block wx:if="{{loading}}"><loading style="position:relative;top:400rpx;" vue-id="1" bind:__l="__l"></loading></block><block wx:else><swiper class="card-swiper square-dot animation-fade" style="{{'height:'+(swiper_height+'px!important')+';'}}" id="swiper" indicator-dots="{{true}}" circular="{{true}}" interval="5000" duration="400" indicator-color="#8799a3" indicator-active-color="#416276"><swiper-item class="{{[cardCur==index?'cur':'']}}"><image class="swiper-image bg-white shadow" src="../../static/add/addition-article.jpg" mode="aspectFill" data-id="{{0}}" data-event-opts="{{[['tap',[['buttonSelect',['$event']]]]]}}" bindtap="__e"></image></swiper-item><swiper-item class="{{[cardCur==index?'cur':'']}}"><image class="swiper-image bg-white shadow" src="../../static/add/addition-activity.jpg" mode="aspectFill" data-id="{{1}}" data-event-opts="{{[['tap',[['buttonSelect',['$event']]]]]}}" bindtap="__e"></image></swiper-item><swiper-item class="{{[cardCur==index?'cur':'']}}"><image class="swiper-image bg-white shadow" src="../../static/add/addition-commodity.jpg" mode="aspectFill" data-id="{{2}}" data-event-opts="{{[['tap',[['buttonSelect',['$event']]]]]}}" bindtap="__e"></image></swiper-item><swiper-item class="{{[cardCur==index?'cur':'']}}"><image class="swiper-image bg-white shadow" src="../../static/add/addition-recruit.jpg" mode="aspectFill" data-id="{{3}}" data-event-opts="{{[['tap',[['buttonSelect',['$event']]]]]}}" bindtap="__e"></image></swiper-item></swiper></block><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="{{['cu-modal',showToast?'show':'']}}" bindtap="__e"><view class="cu-dialog"><view class="cu-bar bg-white justify-end"><view class="content">发布提示</view><view data-event-opts="{{[['tap',[['hideModal',['$event']]]]]}}" class="action" bindtap="__e"><text class="cuIcon-close text-theme-color"></text></view></view><view class="padding-xl" style="letter-spacing:2rpx;font-size:26rpx;">{{''+toastContent+''}}</view></view></view></view>