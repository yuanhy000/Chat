<view class="discovery-container"><view class="cu-bar search bg-white flex justify-center align-center"><block wx:if="{{display_location}}"><button data-event-opts="{{[['tap',[['navigateLocation',['$event']]]]]}}" class="cu-btn bg-f5-white round  shadow  margin-left" bindtap="__e"><text class="location-icon-size text-theme-color cuIcon-locationfill"></text><text class=" margin-left-xs location-text-color text-sm">{{''+userLocation}}</text></button></block><view class="search-form round shadow bg-white"><text class="cuIcon-search"></text><input adjust-position="{{false}}" type="text" placeholder="请输入关键词搜索" confirm-type="search" data-event-opts="{{[['focus',[['InputFocus',['$event']]]],['blur',[['InputBlur',['$event']]]]]}}" bindfocus="__e" bindblur="__e"/></view></view><scroll-view class="bg-white nav"><view class="flex text-center"><block wx:for="{{menu_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="{{['cu-item flex-sub',index==TabCur?'text-theme-color cur':'']}}" data-id="{{index}}" data-event-opts="{{[['tap',[['tabSelect',['$event']]]]]}}" bindtap="__e"><view></view>{{''+item+''}}</view></block></view></scroll-view><swiper class="discovery-swiper" duration="{{1000}}" id="swiper"><swiper-item><scroll-view class="padding-bottom-xl" style="{{'height:'+(scroll_height+'px')+';'}}" scroll-y><block wx:for="{{food_list}}" wx:for-item="item" wx:for-index="index" wx:key="index"><block class="swiper-item swiper-item-container"><view class=" bg-white margin-left margin-right margin-top  border-radius bg-white shadow flex align-center padding-top padding-left padding-bottom"><image class="cu-avatar xl border-radius bg-white shadow margin-right" src="{{item.photos.length!=0?item.photos[0].url:'./../../static/discovery/food_default.png'}}"></image><view class="flex-direction justify-start poi-info"><view class="text-sm poi-text poi-text-bold">{{item.name}}</view><view class="text-sm poi-text">{{item.address}}</view><block wx:if="{{item.tel==''}}"><view class="flex align-end"><view class="text-sm poi-text">{{item.type}}</view><view class="poi-distance">{{item.distance}}</view></view></block><block wx:else><view class="flex align-end"><view class="text-sm poi-text">{{"联系方式: "+item.tel}}</view><view class="poi-distance">{{item.distance}}</view></view></block></view></view></block></block><view class="cu-tabbar-height tabbar-height"></view></scroll-view></swiper-item><swiper-item><view class="swiper-item swiper-item-container" style="background-color:red;">123</view></swiper-item><swiper-item><view class="swiper-item swiper-item-container" style="background-color:#1CBBB4;">123</view></swiper-item></swiper></view>